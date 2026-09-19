## `haproxy:lts`

```console
$ docker pull haproxy@sha256:6877fcd766a4e85559158c945b4080e1e8b00874391086e57e2b9fc11bb54625
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
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
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `haproxy:lts` - linux; amd64

```console
$ docker pull haproxy@sha256:1fc351581a4fce770989113b5276981313fd2aeba5fc6667a9e804d450ff65aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.2 MB (47167037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4980d461b4df8f8d796425e78184866da0cf92056ec4ed67528e0767bbd6ebf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:12:46 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 00:12:46 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Sat, 19 Sep 2026 00:13:33 GMT
ENV HAPROXY_VERSION=3.4.4
# Sat, 19 Sep 2026 00:13:33 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.4.tar.gz
# Sat, 19 Sep 2026 00:13:33 GMT
ENV HAPROXY_SHA256=b0c5053c4d46840ecdee3925736fe9a3de6472559b43c69183d70e593d9133df
# Sat, 19 Sep 2026 00:13:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Sat, 19 Sep 2026 00:13:33 GMT
STOPSIGNAL SIGUSR1
# Sat, 19 Sep 2026 00:13:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:13:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:13:33 GMT
USER haproxy
# Sat, 19 Sep 2026 00:13:33 GMT
WORKDIR /var/lib/haproxy
# Sat, 19 Sep 2026 00:13:33 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:285cfa3a0c606d9e83df130dc81a9e2dc91ac04b175ccda7a5b791bc775750d4`  
		Last Modified: Sat, 19 Sep 2026 00:13:41 GMT  
		Size: 1.6 MB (1582615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9afef3d79b55f296c776337777bde33605ffacbbc57692906f943b18f28869f1`  
		Last Modified: Sat, 19 Sep 2026 00:13:41 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9a935d2bf8071ec6ba65292921ecd35bc9146db3f1615cf48e3aa1c845cb72a`  
		Last Modified: Sat, 19 Sep 2026 00:13:41 GMT  
		Size: 15.8 MB (15752365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d9ff0f1ff4597938a73e48bef1dc8983c7fe3afb8ca0a97666b8b9dd54cb197`  
		Last Modified: Sat, 19 Sep 2026 00:13:41 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts` - unknown; unknown

```console
$ docker pull haproxy@sha256:4e1b23dde5af9a665b7aa98ede996ea180db4276bc6b71b73a6801a00acbf4af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2143344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef032ac33ba9bda64cc913c4ceed093f71f2ec7415fc758a5dcf8a2dea71aaa0`

```dockerfile
```

-	Layers:
	-	`sha256:e6fa668801a5bb82be939f17de1d396339460487a9450ee224fd9d0283977346`  
		Last Modified: Sat, 19 Sep 2026 00:13:41 GMT  
		Size: 2.1 MB (2120404 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:439f368fcce05dbdba06662a8a06fdb62997c8eb2305826f5eab39252aaed690`  
		Last Modified: Sat, 19 Sep 2026 00:13:41 GMT  
		Size: 22.9 KB (22940 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:cf166fd3da334672ed9ff9efe9881b7ea4663e26c59748acf161b5c63dc97465
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47851448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6480e1d9c113a2ffc62cfb5e9511b1c4b9d42a785d45c50549723ed5125d6e41`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 20:29:00 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Thu, 27 Aug 2026 20:29:00 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Thu, 27 Aug 2026 20:30:00 GMT
ENV HAPROXY_VERSION=3.4.4
# Thu, 27 Aug 2026 20:30:00 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.4.tar.gz
# Thu, 27 Aug 2026 20:30:00 GMT
ENV HAPROXY_SHA256=b0c5053c4d46840ecdee3925736fe9a3de6472559b43c69183d70e593d9133df
# Thu, 27 Aug 2026 20:30:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Thu, 27 Aug 2026 20:30:00 GMT
STOPSIGNAL SIGUSR1
# Thu, 27 Aug 2026 20:30:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:30:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 20:30:00 GMT
USER haproxy
# Thu, 27 Aug 2026 20:30:00 GMT
WORKDIR /var/lib/haproxy
# Thu, 27 Aug 2026 20:30:00 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:b66794b20e8e770c1e565d310eba254c92677ca1aa2b4db6a81ff11f1d21e516`  
		Last Modified: Mon, 24 Aug 2026 23:20:06 GMT  
		Size: 28.0 MB (27968942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca1de3439484bd253239df72ff940de3f54f2536d46999ce7df64804466c9cf9`  
		Last Modified: Thu, 27 Aug 2026 20:30:08 GMT  
		Size: 3.9 MB (3916204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc6dfb5066dcdf5cf7808e93caeea61645fefc3ead3e6c90f8ad5c38eca6371f`  
		Last Modified: Thu, 27 Aug 2026 20:30:07 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f63caf8ca3e66276e45b6fcdea641192f83de8921f905be295e53bc98ff784c`  
		Last Modified: Thu, 27 Aug 2026 20:30:08 GMT  
		Size: 16.0 MB (15964659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd6bde1389d1ab9b9f4d828c2b6f2d26824763ddff8aa7f2e602ef94d7b53df6`  
		Last Modified: Thu, 27 Aug 2026 20:30:08 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts` - unknown; unknown

```console
$ docker pull haproxy@sha256:f712e8b3c82684e32b9d2811d3733de8293e82892869733825c99ace7bf0152d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2140750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa9b817ffb6338923972a80d74514b86c1f460608b4e3666ff6c64743348287b`

```dockerfile
```

-	Layers:
	-	`sha256:bf9a6be5c654ddbd5ac44679808bde77bbc03b59dcaf5f3d82d28e7cfb39238a`  
		Last Modified: Thu, 27 Aug 2026 20:30:08 GMT  
		Size: 2.1 MB (2117672 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c73f093f263ca8208598a9aed99d9de9410d6b7aad67ab9d86ffa2bf2104a1f`  
		Last Modified: Thu, 27 Aug 2026 20:30:08 GMT  
		Size: 23.1 KB (23078 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:00e27e99344b07b555204615a941a84c0e32350a647e1f0112e138d70da13b97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.5 MB (43482653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6605b1109596047602c7c796edceb04f4f045bc1b8794ea1deabd25e82ee439`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:17:55 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 00:17:55 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Sat, 19 Sep 2026 00:18:45 GMT
ENV HAPROXY_VERSION=3.4.4
# Sat, 19 Sep 2026 00:18:45 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.4.tar.gz
# Sat, 19 Sep 2026 00:18:45 GMT
ENV HAPROXY_SHA256=b0c5053c4d46840ecdee3925736fe9a3de6472559b43c69183d70e593d9133df
# Sat, 19 Sep 2026 00:18:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Sat, 19 Sep 2026 00:18:45 GMT
STOPSIGNAL SIGUSR1
# Sat, 19 Sep 2026 00:18:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:18:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:18:45 GMT
USER haproxy
# Sat, 19 Sep 2026 00:18:45 GMT
WORKDIR /var/lib/haproxy
# Sat, 19 Sep 2026 00:18:45 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08694bd4f23ef9ff2551f2b9f7a0151b9ac4b5afc7fc8510940d67bf0392dd44`  
		Last Modified: Sat, 19 Sep 2026 00:18:53 GMT  
		Size: 1.5 MB (1490287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60f40d1dd1b85c5bad9e62011ffe9ddae16cc51eea228f3df9b1bf4aad5e622e`  
		Last Modified: Sat, 19 Sep 2026 00:18:52 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b400748a2080ab80983ef3d913052cfbd2022da55bf53179b94fc61a1923d82`  
		Last Modified: Sat, 19 Sep 2026 00:18:53 GMT  
		Size: 15.7 MB (15741797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e2e60748cbaa77b34f19035216235abf615e865edc2ce8ae4f35bcad1b5896a`  
		Last Modified: Sat, 19 Sep 2026 00:18:53 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts` - unknown; unknown

```console
$ docker pull haproxy@sha256:0c2f1b327211098c403a47765e048e2477bdbc0cb0d33999fb6ef4f4b9859377
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2144921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b07b2ab73a4e45ef32ff1d6593d9569215aa736d715816b87cb8ac35f0908f1a`

```dockerfile
```

-	Layers:
	-	`sha256:5159013a968d2ce94c4d67c396a78355a78e2fa4c07ce283e7290b1abb20ab4e`  
		Last Modified: Sat, 19 Sep 2026 00:18:53 GMT  
		Size: 2.1 MB (2121843 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:292afe87e04212d42eb37bee3ad379eabab8a3bae5d14735d964edc76335b5d9`  
		Last Modified: Sat, 19 Sep 2026 00:18:52 GMT  
		Size: 23.1 KB (23078 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:236ba3b61524dbdacebf2513adecba3cc0ee2846f84f87bb5c3cb24bf67b2eb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.4 MB (47370381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cda1387666930d48b203930ad58e1e02f7c8ff3b954679fe47fe5f624b51ca02`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:14:28 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 00:14:28 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Sat, 19 Sep 2026 00:16:11 GMT
ENV HAPROXY_VERSION=3.4.4
# Sat, 19 Sep 2026 00:16:11 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.4.tar.gz
# Sat, 19 Sep 2026 00:16:11 GMT
ENV HAPROXY_SHA256=b0c5053c4d46840ecdee3925736fe9a3de6472559b43c69183d70e593d9133df
# Sat, 19 Sep 2026 00:16:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Sat, 19 Sep 2026 00:16:11 GMT
STOPSIGNAL SIGUSR1
# Sat, 19 Sep 2026 00:16:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:16:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:16:11 GMT
USER haproxy
# Sat, 19 Sep 2026 00:16:11 GMT
WORKDIR /var/lib/haproxy
# Sat, 19 Sep 2026 00:16:11 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95e16cb58434506a3d11345d93cfcafa40d6b8a4f5fcd3ed838cda30628752bf`  
		Last Modified: Sat, 19 Sep 2026 00:15:20 GMT  
		Size: 1.6 MB (1565148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59ed75936c37c44be754d9eef06cdaec90a471943859e1b489e3749c08329f88`  
		Last Modified: Sat, 19 Sep 2026 00:15:19 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b8a8fd296fcae848d4cccb5d45244eef8f2b26c938f7535aef78fe1293aa354`  
		Last Modified: Sat, 19 Sep 2026 00:16:19 GMT  
		Size: 15.6 MB (15613902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9c4f81ec6f99e71fbaf344042a76dabb66a18b2ab45efb4a53d544178521d16`  
		Last Modified: Sat, 19 Sep 2026 00:16:18 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts` - unknown; unknown

```console
$ docker pull haproxy@sha256:c71ad221d70499a5e8b3cefb59a01e614dfd95d013c7cc91c464df1460e9c3b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2143827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:def253ba88fe437740c40de3e302e97f1d2991bb3977a60d49f23aaf02f4d142`

```dockerfile
```

-	Layers:
	-	`sha256:99f6d7b0d2b23c34a5340489856b04376066e3f666bf2331b03faf44d0e319b2`  
		Last Modified: Sat, 19 Sep 2026 00:16:18 GMT  
		Size: 2.1 MB (2120705 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bc9b10e481ca11e5c6cc61e356bd3aad4fe38ddc01562bcd1725881d690a570`  
		Last Modified: Sat, 19 Sep 2026 00:16:18 GMT  
		Size: 23.1 KB (23122 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts` - linux; 386

```console
$ docker pull haproxy@sha256:c25e388b1676ff2b3eb0808f8edae595419e5b572d3292b7aba2ed937706417b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51317736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfb1e614910cd31225e2cf7611fe7005691a56fc336dd613d3b592e7d31170e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 20:31:29 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Thu, 27 Aug 2026 20:31:29 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Thu, 27 Aug 2026 20:32:26 GMT
ENV HAPROXY_VERSION=3.4.4
# Thu, 27 Aug 2026 20:32:26 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.4.tar.gz
# Thu, 27 Aug 2026 20:32:26 GMT
ENV HAPROXY_SHA256=b0c5053c4d46840ecdee3925736fe9a3de6472559b43c69183d70e593d9133df
# Thu, 27 Aug 2026 20:32:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Thu, 27 Aug 2026 20:32:26 GMT
STOPSIGNAL SIGUSR1
# Thu, 27 Aug 2026 20:32:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:32:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 20:32:26 GMT
USER haproxy
# Thu, 27 Aug 2026 20:32:26 GMT
WORKDIR /var/lib/haproxy
# Thu, 27 Aug 2026 20:32:26 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c916470605d169468d7114a5efa40f99f251db2046127edda69415067b761ef8`  
		Last Modified: Thu, 27 Aug 2026 20:32:33 GMT  
		Size: 4.5 MB (4501139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c2d55b6e823e37f0e978495d3716eb4eec7b015f19458109996bff8524379eb`  
		Last Modified: Thu, 27 Aug 2026 20:32:26 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c750014c2ec5213b2a57097622d848e48bdc374292af4549adb9f4d45b13e9f2`  
		Last Modified: Thu, 27 Aug 2026 20:32:34 GMT  
		Size: 15.5 MB (15511557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0daf0b5fc6d48376b6f5e7f6fee3a3834b506e6f1f6f553195f55bbe57bed9b5`  
		Last Modified: Thu, 27 Aug 2026 20:32:33 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts` - unknown; unknown

```console
$ docker pull haproxy@sha256:a0cc2d6d59d98fcc55f4be90a79b7d9597d5411f05506e8e35a58be53ed8e60d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2134731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:521c45333476dac974c8212ce07b070cfe976de3e47824dc939adcf3010d231c`

```dockerfile
```

-	Layers:
	-	`sha256:3ce9120ddfb1a6d2173a390d081d115784b68246ad2f0f436ad5ff03587c9a40`  
		Last Modified: Thu, 27 Aug 2026 20:32:33 GMT  
		Size: 2.1 MB (2111847 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:546eaab53a542951d16e1bb5f6fc77c98650d72cb3ba8f9e9e620dd57243c0cd`  
		Last Modified: Thu, 27 Aug 2026 20:32:33 GMT  
		Size: 22.9 KB (22884 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts` - linux; ppc64le

```console
$ docker pull haproxy@sha256:b938a6aad6a297a10db7e7d26961bb2255f2358bd4fb1acd89026078707c0444
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.8 MB (51800206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54adef6267be1e9621aee10c22587d9108dbbbc8d4590adf2dd7c1487f04cdf2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:14:19 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 00:14:20 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Sat, 19 Sep 2026 00:15:52 GMT
ENV HAPROXY_VERSION=3.4.4
# Sat, 19 Sep 2026 00:15:52 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.4.tar.gz
# Sat, 19 Sep 2026 00:15:52 GMT
ENV HAPROXY_SHA256=b0c5053c4d46840ecdee3925736fe9a3de6472559b43c69183d70e593d9133df
# Sat, 19 Sep 2026 00:15:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Sat, 19 Sep 2026 00:15:52 GMT
STOPSIGNAL SIGUSR1
# Sat, 19 Sep 2026 00:15:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:15:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:15:52 GMT
USER haproxy
# Sat, 19 Sep 2026 00:15:53 GMT
WORKDIR /var/lib/haproxy
# Sat, 19 Sep 2026 00:15:53 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89c767c12474a1656bd79ee073da8e8a65126cd8f7a7965cacbad34b588cdfd7`  
		Last Modified: Sat, 19 Sep 2026 00:15:59 GMT  
		Size: 1.6 MB (1640021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:078af9d0f239b6b2262fcabfb79da3995a7e750cf7c8912dad56d0d574437395`  
		Last Modified: Sat, 19 Sep 2026 00:15:59 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb21f938b2d653952dd1614f0725d673a1c28ba30a33f474170eecdee8db4a4c`  
		Last Modified: Sat, 19 Sep 2026 00:16:11 GMT  
		Size: 16.5 MB (16517313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71e7883a751c36a3b8948535fada521d8b6ec6c4803286d34d202f00fb55cfeb`  
		Last Modified: Sat, 19 Sep 2026 00:16:11 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts` - unknown; unknown

```console
$ docker pull haproxy@sha256:d02badaa220bde52d909736eba3ad4c53641603331d8f876f5961ff35689d593
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2146973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:358254a79d3c6633e76646fd649516a7ac930c847b30f8bf38decf670a28e531`

```dockerfile
```

-	Layers:
	-	`sha256:f91ff2c1c731b26555f517ea67c13f8980aca94efd04d2086f6769d93a045958`  
		Last Modified: Sat, 19 Sep 2026 00:16:11 GMT  
		Size: 2.1 MB (2123962 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f7742c806493cd49a71e6c566129bd4d71f03f3c951d81992b6b706960b3dfb`  
		Last Modified: Sat, 19 Sep 2026 00:16:11 GMT  
		Size: 23.0 KB (23011 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts` - linux; riscv64

```console
$ docker pull haproxy@sha256:119108ae84cec9fee5b8bbec14e5de29543558a4729c7b5711f02da4a424a203
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48052448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dce19f390839bea97c044b832ef468da97900603f29f16065da07cb8afe4842e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:26:28 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 00:26:28 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Sun, 30 Aug 2026 14:48:57 GMT
ENV HAPROXY_VERSION=3.4.4
# Sun, 30 Aug 2026 14:48:57 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.4.tar.gz
# Sun, 30 Aug 2026 14:48:57 GMT
ENV HAPROXY_SHA256=b0c5053c4d46840ecdee3925736fe9a3de6472559b43c69183d70e593d9133df
# Sun, 30 Aug 2026 14:48:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Sun, 30 Aug 2026 14:48:57 GMT
STOPSIGNAL SIGUSR1
# Sun, 30 Aug 2026 14:48:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sun, 30 Aug 2026 14:48:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 30 Aug 2026 14:48:57 GMT
USER haproxy
# Sun, 30 Aug 2026 14:48:58 GMT
WORKDIR /var/lib/haproxy
# Sun, 30 Aug 2026 14:48:58 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:898879578c55fb701875d173536c903e01570c7e5a01141f5aaffc67da50ec1d`  
		Last Modified: Tue, 25 Aug 2026 00:43:04 GMT  
		Size: 1.5 MB (1536254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3264d378008ed57d33ec0f40f1afe629e9e0a48cdb36267c7f1ee9290ae093e8`  
		Last Modified: Tue, 25 Aug 2026 00:43:03 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:535bd055ffc3b6b81d2d1805501e649a9b9aae3a3de6a43525ce94affd46b2e5`  
		Last Modified: Sun, 30 Aug 2026 14:50:11 GMT  
		Size: 18.2 MB (18218089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8ae9958a90f7b41a2d10a522db30b589a66836c5f691557538926e75dc95cda`  
		Last Modified: Sun, 30 Aug 2026 14:50:08 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts` - unknown; unknown

```console
$ docker pull haproxy@sha256:f8ae0819b6d7f5f697169ce9a7cd58bf083ba080976d79004f7eb1c85b465347
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2131637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f4449e6779d3b102ca9512af0400fabd4118d62d91c312081e9c31e9a7174c0`

```dockerfile
```

-	Layers:
	-	`sha256:20632ad8d0f961ce5c7f0b10488cddbfa3370fe162e71b32a4ad66dd564fffe9`  
		Last Modified: Sun, 30 Aug 2026 14:50:09 GMT  
		Size: 2.1 MB (2108625 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f4eff07608a6b1d734ef77d981f3f6cbc3c160b42f758bbe88fe3dc6a44b52d`  
		Last Modified: Sun, 30 Aug 2026 14:50:08 GMT  
		Size: 23.0 KB (23012 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts` - linux; s390x

```console
$ docker pull haproxy@sha256:d89d5f46b75fce1033189330d03373e360461172d48eb03fb6cc7e178aadbb2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50235511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe41ab4da19c84aa3b4f7c98034317d7f25971c3bb06c18422e83b31e622678c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 21:30:36 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Thu, 27 Aug 2026 21:30:40 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Thu, 27 Aug 2026 21:37:59 GMT
ENV HAPROXY_VERSION=3.4.4
# Thu, 27 Aug 2026 21:37:59 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.4.tar.gz
# Thu, 27 Aug 2026 21:37:59 GMT
ENV HAPROXY_SHA256=b0c5053c4d46840ecdee3925736fe9a3de6472559b43c69183d70e593d9133df
# Thu, 27 Aug 2026 21:37:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Thu, 27 Aug 2026 21:37:59 GMT
STOPSIGNAL SIGUSR1
# Thu, 27 Aug 2026 21:38:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 21:38:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 21:38:03 GMT
USER haproxy
# Thu, 27 Aug 2026 21:38:08 GMT
WORKDIR /var/lib/haproxy
# Thu, 27 Aug 2026 21:38:08 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8dd18bbe48511150f80a8e60d675c8f8c692f6a886ffc099d8d8ddac3782721`  
		Last Modified: Thu, 27 Aug 2026 21:38:58 GMT  
		Size: 4.2 MB (4210872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aca7eb2f6ec080a17aca99142925784fe16fdd7830fad7dbda2e6fdbb867e6d0`  
		Last Modified: Thu, 27 Aug 2026 21:38:56 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb8cbf5ef389162b42e842ec99bf9b8409a22611868bf813d75436d8f5564903`  
		Last Modified: Thu, 27 Aug 2026 21:38:58 GMT  
		Size: 16.2 MB (16155270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d38e838a4a3ccdaf36b72a841af12f5cdb2f937ec23ed19f16cd3d6628b24ef`  
		Last Modified: Thu, 27 Aug 2026 21:38:56 GMT  
		Size: 452.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts` - unknown; unknown

```console
$ docker pull haproxy@sha256:4c5deee2aae2c66a2fdfe326ba911ecbf1d2f391e1d6b6c4cab0fad77d6c7670
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2139060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64938e31573efd25b3383731096ba8cf5ab26c84bb50ba970413b89117604517`

```dockerfile
```

-	Layers:
	-	`sha256:dea5f88e61681d482a9b6481351be53209b1b5883f9fb51c0c82c9229c25f768`  
		Last Modified: Thu, 27 Aug 2026 21:38:57 GMT  
		Size: 2.1 MB (2116120 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a01be133666b6330871a2cdec9d71f838e16f546f724c8432b8613ce4bdae21`  
		Last Modified: Thu, 27 Aug 2026 21:38:55 GMT  
		Size: 22.9 KB (22940 bytes)  
		MIME: application/vnd.in-toto+json
