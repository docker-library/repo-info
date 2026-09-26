## `haproxy:latest`

```console
$ docker pull haproxy@sha256:76928c0d6b39bdd5f1c15d519cf48c47a6aa18c1dc552f7af1c146d2aa003c14
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

### `haproxy:latest` - linux; amd64

```console
$ docker pull haproxy@sha256:07bc3cbc8fb7276e991124c24277a7c5de59a1bf4626ae2f3a30f73d6712114f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.2 MB (47177978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54b155181b531d05943c7f778694fae2236eaf3ce4a6e3fa24e4f0a193fd385e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Thu, 24 Sep 2026 21:02:47 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Thu, 24 Sep 2026 21:02:47 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Thu, 24 Sep 2026 21:03:33 GMT
ENV HAPROXY_VERSION=3.4.5
# Thu, 24 Sep 2026 21:03:33 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.5.tar.gz
# Thu, 24 Sep 2026 21:03:33 GMT
ENV HAPROXY_SHA256=ec5095095bce7db2e0e6e971f616dded1bb505717e692ec6c3cc8dab6a31678a
# Thu, 24 Sep 2026 21:03:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Thu, 24 Sep 2026 21:03:33 GMT
STOPSIGNAL SIGUSR1
# Thu, 24 Sep 2026 21:03:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 21:03:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 Sep 2026 21:03:34 GMT
USER haproxy
# Thu, 24 Sep 2026 21:03:34 GMT
WORKDIR /var/lib/haproxy
# Thu, 24 Sep 2026 21:03:34 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e10f846bc01e27be9a4632a99f9070a7d39715bb52fd6fd626196f020bd2764`  
		Last Modified: Thu, 24 Sep 2026 21:03:42 GMT  
		Size: 1.6 MB (1582551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:269332ec10fcf2cad5d7aa7ca3cd8763372f447e9192200ec7aa785296c628e3`  
		Last Modified: Thu, 24 Sep 2026 21:03:42 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d616866a957afc072fca44e038d244f38cf1617a5b5ecb10e92b730b70777174`  
		Last Modified: Thu, 24 Sep 2026 21:03:43 GMT  
		Size: 15.8 MB (15763367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b7ed8aa401581f75d6c5122cd7aa633bcb2805b82259e89e83f0d65133f9874`  
		Last Modified: Thu, 24 Sep 2026 21:03:42 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:latest` - unknown; unknown

```console
$ docker pull haproxy@sha256:72c45754315965299288cdf2f7b435c34667c6ec7446470754ac1ed145d52b94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2143344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af5fcce04c794b67082b81fbb5233fbf4333611275d5fc68055b8b33d06789e7`

```dockerfile
```

-	Layers:
	-	`sha256:9086601a7a5cf6979c3a9b44edb1a8121ebd4788e816770df176e92244e51699`  
		Last Modified: Thu, 24 Sep 2026 21:03:42 GMT  
		Size: 2.1 MB (2120404 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9599dded28800f754293a83eda422987a26e83105d3ab9de01f15e7ab22df12a`  
		Last Modified: Thu, 24 Sep 2026 21:03:42 GMT  
		Size: 22.9 KB (22940 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:latest` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:d49cc748c7c9f174b9979349c4f9530376f965b42aee7ea27c7fe6a3c05d5443
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45514263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c79ae3fb75001cab4820ddb5e2b3e28663b9bd269b4452952957a90083db5369`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1789689600'
# Thu, 24 Sep 2026 21:01:38 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Thu, 24 Sep 2026 21:01:38 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Thu, 24 Sep 2026 21:02:39 GMT
ENV HAPROXY_VERSION=3.4.5
# Thu, 24 Sep 2026 21:02:39 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.5.tar.gz
# Thu, 24 Sep 2026 21:02:39 GMT
ENV HAPROXY_SHA256=ec5095095bce7db2e0e6e971f616dded1bb505717e692ec6c3cc8dab6a31678a
# Thu, 24 Sep 2026 21:02:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Thu, 24 Sep 2026 21:02:39 GMT
STOPSIGNAL SIGUSR1
# Thu, 24 Sep 2026 21:02:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 21:02:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 Sep 2026 21:02:39 GMT
USER haproxy
# Thu, 24 Sep 2026 21:02:39 GMT
WORKDIR /var/lib/haproxy
# Thu, 24 Sep 2026 21:02:39 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6779b1da15e3aae8ffc697263f547a05eaff7ea80f63924ba5376253a6f3a12b`  
		Last Modified: Sat, 19 Sep 2026 00:03:25 GMT  
		Size: 28.0 MB (27998032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:462414adb91d6e2fbb880c8c4d7fc35d3259930706641ea4bcde5a81b58d6438`  
		Last Modified: Thu, 24 Sep 2026 21:02:47 GMT  
		Size: 1.5 MB (1536659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b5a9ce1bb073e66b224c03ef3fa788f8915c5c358b46daffce1e5749f8b7ea9`  
		Last Modified: Thu, 24 Sep 2026 21:02:47 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:161d60255cd7ece6ad4f4df80c8207c6ab727f6b33cea6a12b5e4f875af6a354`  
		Last Modified: Thu, 24 Sep 2026 21:02:47 GMT  
		Size: 16.0 MB (15977932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:291b79e5c92bdcb62016179df1618fd30ca6b6f44b878388ca4f1ad6e53721e5`  
		Last Modified: Thu, 24 Sep 2026 21:02:47 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:latest` - unknown; unknown

```console
$ docker pull haproxy@sha256:c96d909b091a12895a79a8c0041a0c58fa9ff5d1f7f95a27e0e9528822e2a19c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2146477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed431b86ec5dd3ca4815fc9fedc59a1332f3c4f9bd66ee8bafad5977df31c8a7`

```dockerfile
```

-	Layers:
	-	`sha256:a937f2a25953b77c0dfa01c13d43dda6fbf6aae9e8eaf5a66f5c0f916950268c`  
		Last Modified: Thu, 24 Sep 2026 21:02:47 GMT  
		Size: 2.1 MB (2123400 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aced1e2d1e2fa4786cf639edf8e0e5aa493905a61b1e71586acf5588e7a2bebc`  
		Last Modified: Thu, 24 Sep 2026 21:02:46 GMT  
		Size: 23.1 KB (23077 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:latest` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:6247848c00e6a31dd9a81ec49618433dabfcabaeee7a5b3f364ac18f6450c4d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.5 MB (43498315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fef76657eb80bec95c56239a8d7c9a3b522cd8b6ece70bced12a26552ffb8fad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Thu, 24 Sep 2026 21:01:13 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Thu, 24 Sep 2026 21:01:13 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Thu, 24 Sep 2026 21:02:06 GMT
ENV HAPROXY_VERSION=3.4.5
# Thu, 24 Sep 2026 21:02:06 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.5.tar.gz
# Thu, 24 Sep 2026 21:02:06 GMT
ENV HAPROXY_SHA256=ec5095095bce7db2e0e6e971f616dded1bb505717e692ec6c3cc8dab6a31678a
# Thu, 24 Sep 2026 21:02:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Thu, 24 Sep 2026 21:02:06 GMT
STOPSIGNAL SIGUSR1
# Thu, 24 Sep 2026 21:02:06 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 21:02:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 Sep 2026 21:02:06 GMT
USER haproxy
# Thu, 24 Sep 2026 21:02:06 GMT
WORKDIR /var/lib/haproxy
# Thu, 24 Sep 2026 21:02:06 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3aabe374f6c1e0caa8cebd5435227ee228b862b680f0060d77c6ceb8f670c65`  
		Last Modified: Thu, 24 Sep 2026 21:02:13 GMT  
		Size: 1.5 MB (1490269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3734d11408bc34e3a0402f9a50f9ffc566add7b1e6ba99c821e1e7beeb9b8072`  
		Last Modified: Thu, 24 Sep 2026 21:02:13 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e206ef4b0a72f7e35ec3b6e7ef8a36f22cc552660dfa33021acc379e69d3b19e`  
		Last Modified: Thu, 24 Sep 2026 21:02:14 GMT  
		Size: 15.8 MB (15757479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e7341dfaf6b6cb9f34c2e7dd88739ad14eb7a111c70b507d35696f692c9ee99`  
		Last Modified: Thu, 24 Sep 2026 21:02:13 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:latest` - unknown; unknown

```console
$ docker pull haproxy@sha256:26f8c91942ef63fd883f6759c391ec5f5f779e27282b30ec3b1cdfae92059e48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2144920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd24101f3fa03bf2223b8f2801e44bd95732b12623285235c87339a516ffcd0f`

```dockerfile
```

-	Layers:
	-	`sha256:b565b16fa0f3817b437977c1c46886eaf7c93ff3ed852be423c753994c934fc4`  
		Last Modified: Thu, 24 Sep 2026 21:02:13 GMT  
		Size: 2.1 MB (2121843 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f5a7fa09b9312fdc0a2435f79af52ba481ce4a66a8f9a02be8b87ea18df0054e`  
		Last Modified: Thu, 24 Sep 2026 21:02:13 GMT  
		Size: 23.1 KB (23077 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:latest` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:bfdded6c27b8b56dc801f90f177c69a39ec573b59b7e647830b2fe00431d4d53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.4 MB (47380795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbd30620d40f396eb95e606a66f835ab7aed6897d0fc8bb964fda877d673899c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Thu, 24 Sep 2026 21:02:17 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Thu, 24 Sep 2026 21:02:17 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Thu, 24 Sep 2026 21:03:01 GMT
ENV HAPROXY_VERSION=3.4.5
# Thu, 24 Sep 2026 21:03:01 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.5.tar.gz
# Thu, 24 Sep 2026 21:03:01 GMT
ENV HAPROXY_SHA256=ec5095095bce7db2e0e6e971f616dded1bb505717e692ec6c3cc8dab6a31678a
# Thu, 24 Sep 2026 21:03:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Thu, 24 Sep 2026 21:03:01 GMT
STOPSIGNAL SIGUSR1
# Thu, 24 Sep 2026 21:03:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 21:03:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 Sep 2026 21:03:01 GMT
USER haproxy
# Thu, 24 Sep 2026 21:03:01 GMT
WORKDIR /var/lib/haproxy
# Thu, 24 Sep 2026 21:03:01 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c45a80cb2ff8f7749deedd53a986e43985b1a15ba2234458a950dec4c1a36b0`  
		Last Modified: Thu, 24 Sep 2026 21:03:10 GMT  
		Size: 1.6 MB (1565122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de47060acc9998ea294d0e2c7a32ffe7847a85d4928ec71fb4b79dd091eff3e7`  
		Last Modified: Thu, 24 Sep 2026 21:03:09 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:837dc0adc1ae9477b2f618c0128641d2021f3a8f8c90ec773ad347c488c267f7`  
		Last Modified: Thu, 24 Sep 2026 21:03:10 GMT  
		Size: 15.6 MB (15624343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cba6a510f4bffa00cb945874dcb720e20141ddc2bac017c752931b8202490174`  
		Last Modified: Thu, 24 Sep 2026 21:03:09 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:latest` - unknown; unknown

```console
$ docker pull haproxy@sha256:948aaac58b481bc5eca1c8b7cf6855d93328a09521c256b1de6514cb8e4e889f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2143827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2817ccb7641d461d7b33de3505f17ccffba380567c994af9eca2e0b54edb8e2`

```dockerfile
```

-	Layers:
	-	`sha256:4999197b3288e4c91c38235d08f3f0173d9289ec4b2bd9435f46b13fbdd70a96`  
		Last Modified: Thu, 24 Sep 2026 21:03:09 GMT  
		Size: 2.1 MB (2120705 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ae8b7378847caa1fdac945926fc569182d9ae33d402a936e3f134844798fb9f`  
		Last Modified: Thu, 24 Sep 2026 21:03:09 GMT  
		Size: 23.1 KB (23122 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:latest` - linux; 386

```console
$ docker pull haproxy@sha256:74da52e8293c92ab7dd0bf991b537961f43a7e5cf2e37a1135635bcae9a09683
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48469114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38a39748378587bbcf2020a247189005970d81363776190e6f1cb04d48271f02`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Thu, 24 Sep 2026 21:02:48 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Thu, 24 Sep 2026 21:02:48 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Thu, 24 Sep 2026 21:03:44 GMT
ENV HAPROXY_VERSION=3.4.5
# Thu, 24 Sep 2026 21:03:44 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.5.tar.gz
# Thu, 24 Sep 2026 21:03:44 GMT
ENV HAPROXY_SHA256=ec5095095bce7db2e0e6e971f616dded1bb505717e692ec6c3cc8dab6a31678a
# Thu, 24 Sep 2026 21:03:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Thu, 24 Sep 2026 21:03:44 GMT
STOPSIGNAL SIGUSR1
# Thu, 24 Sep 2026 21:03:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 21:03:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 Sep 2026 21:03:44 GMT
USER haproxy
# Thu, 24 Sep 2026 21:03:44 GMT
WORKDIR /var/lib/haproxy
# Thu, 24 Sep 2026 21:03:44 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:8fa51aa063d1c9d8582b37a45055739eef6ee879e1364bcb6b75a064ad0d1906`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 31.3 MB (31340398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd35262f492a1d4e3c2c7114792d9fa89cb7f3ad4bfe587fe6b53298559c4f6d`  
		Last Modified: Thu, 24 Sep 2026 21:03:52 GMT  
		Size: 1.6 MB (1604905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b14f56d2ee7bbe111f9b57004cedf6eec726896c07025a8b474084db0301fc2b`  
		Last Modified: Thu, 24 Sep 2026 21:03:52 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:247823c0d496725fb7526a84144671b323d550a676fa214f950422630b9f9f38`  
		Last Modified: Thu, 24 Sep 2026 21:03:52 GMT  
		Size: 15.5 MB (15522173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcb58a15733f269d8e2f450eac28af84f2c23869453a4a721fb6037b3f71b8e5`  
		Last Modified: Thu, 24 Sep 2026 21:03:52 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:latest` - unknown; unknown

```console
$ docker pull haproxy@sha256:db46ef50e2064d534c09e29752bfa0bc9e775f5957e0091f7c191152e9d5f9b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2140459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c5d13d361b1633414e9c8549a4e53b3d73785f28e18df1b31a33bb9cfae78ee`

```dockerfile
```

-	Layers:
	-	`sha256:2caeb120e632d2d751df540ad48379206be42a73078f6ee89a668077e1e7b2a6`  
		Last Modified: Thu, 24 Sep 2026 21:03:52 GMT  
		Size: 2.1 MB (2117575 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d3fd1e611e9bb6be9c62a23d97d38e72b0d023759aa94172e3a7db9c46967a4`  
		Last Modified: Thu, 24 Sep 2026 21:03:52 GMT  
		Size: 22.9 KB (22884 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:latest` - linux; ppc64le

```console
$ docker pull haproxy@sha256:8a580aca8093a7d4207be10ea11bd5b72f16bc222bade5fe1718a89bfd8b5a3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.8 MB (51816243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88d89cf998fa7fc538919eeea2d44c0b14e1f6090901c2b0ac137b68696299b7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Thu, 24 Sep 2026 21:29:30 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Thu, 24 Sep 2026 21:29:31 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Thu, 24 Sep 2026 21:30:47 GMT
ENV HAPROXY_VERSION=3.4.5
# Thu, 24 Sep 2026 21:30:47 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.5.tar.gz
# Thu, 24 Sep 2026 21:30:47 GMT
ENV HAPROXY_SHA256=ec5095095bce7db2e0e6e971f616dded1bb505717e692ec6c3cc8dab6a31678a
# Thu, 24 Sep 2026 21:30:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Thu, 24 Sep 2026 21:30:47 GMT
STOPSIGNAL SIGUSR1
# Thu, 24 Sep 2026 21:30:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 21:30:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 Sep 2026 21:30:48 GMT
USER haproxy
# Thu, 24 Sep 2026 21:30:48 GMT
WORKDIR /var/lib/haproxy
# Thu, 24 Sep 2026 21:30:48 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f955b29d21cfa9d2ebe0f08df2bdf8c361a056efcd53fc6b2410c7e90aa8e614`  
		Last Modified: Thu, 24 Sep 2026 21:31:03 GMT  
		Size: 1.6 MB (1639998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e699d8772845aa4249112310f88399cb9c3d0ac0bad8bac3982786a60211b906`  
		Last Modified: Thu, 24 Sep 2026 21:31:03 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b1a82e3024336522e672cb3ffc528fedaa67a00a236a0fdc5488f1cc85dd15d`  
		Last Modified: Thu, 24 Sep 2026 21:31:04 GMT  
		Size: 16.5 MB (16533365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:711f68e142e71477009f8b395d1e562a67cd5246bf2feb47ddeef85bb8dde72f`  
		Last Modified: Thu, 24 Sep 2026 21:31:03 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:latest` - unknown; unknown

```console
$ docker pull haproxy@sha256:a2558a6de9109727e2862c5e4bb15e8bd95ccc20decb56e02529d9979a720b3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2146974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4b2d6d5c1ea14d034cf5ce89d4be967fc6bcf6189cf4ba8617e6575a91c76f4`

```dockerfile
```

-	Layers:
	-	`sha256:f958cdd4808cd3221609bfacc6397808344dfb1f5aa0e9478c741e92781010d5`  
		Last Modified: Thu, 24 Sep 2026 21:31:03 GMT  
		Size: 2.1 MB (2123962 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d667b6ed6a66c1f269b051736525e2ae967f016c68b2c97836db33d36e990ca`  
		Last Modified: Thu, 24 Sep 2026 21:31:03 GMT  
		Size: 23.0 KB (23012 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:latest` - linux; riscv64

```console
$ docker pull haproxy@sha256:46ecf00bc8a7a16b1eef82961aa63d7cd108727a09e2d17b7cca88bc53aad8d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.0 MB (45049964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:972cd478a49d477c06de4483baada29bdd7c855ad6d450dcb4992ae59017547b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1789689600'
# Wed, 23 Sep 2026 04:56:00 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Wed, 23 Sep 2026 04:56:01 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Sat, 26 Sep 2026 10:00:50 GMT
ENV HAPROXY_VERSION=3.4.5
# Sat, 26 Sep 2026 10:00:50 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.5.tar.gz
# Sat, 26 Sep 2026 10:00:50 GMT
ENV HAPROXY_SHA256=ec5095095bce7db2e0e6e971f616dded1bb505717e692ec6c3cc8dab6a31678a
# Sat, 26 Sep 2026 10:00:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Sat, 26 Sep 2026 10:00:50 GMT
STOPSIGNAL SIGUSR1
# Sat, 26 Sep 2026 10:00:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 26 Sep 2026 10:00:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 26 Sep 2026 10:00:50 GMT
USER haproxy
# Sat, 26 Sep 2026 10:00:50 GMT
WORKDIR /var/lib/haproxy
# Sat, 26 Sep 2026 10:00:50 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:3cf0197a69ba5d69d9f03c7d97786aaa146cd8fdfd45fb00f5109d193ccbe81e`  
		Last Modified: Sat, 19 Sep 2026 04:09:02 GMT  
		Size: 28.3 MB (28324384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79800594f0257c6a1da3564669c9dda4d9c6e1ee621e174e3a40b1d5a61b1f3e`  
		Last Modified: Wed, 23 Sep 2026 05:14:00 GMT  
		Size: 1.5 MB (1536360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17cec8fee08e151e93b1e15416b6e04f82fd3d84e8e0c5ab17adddcd311e5005`  
		Last Modified: Wed, 23 Sep 2026 05:13:59 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ab487553eb3089eb7acb82be418e0aa349d01b277e5ddb91dc8bbf902e11279`  
		Last Modified: Sat, 26 Sep 2026 10:02:01 GMT  
		Size: 15.2 MB (15187577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3390fbabf0d61337bc70420dc104434fd6b8b51d316562b3934073a95438e357`  
		Last Modified: Sat, 26 Sep 2026 10:01:59 GMT  
		Size: 452.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:latest` - unknown; unknown

```console
$ docker pull haproxy@sha256:180c186e80d58d14c5a2360e603cb7edf7ada1a731843580a1ed57093a6e3958
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2137365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9c33aae7865999b3663cea4e48ffc51be10d1536265eb760fc0e67e9fd30a7a`

```dockerfile
```

-	Layers:
	-	`sha256:750b9dbb2983ba7ecf4463d809cffa8c1595118f36252a96ad4f4834a3e0a591`  
		Last Modified: Sat, 26 Sep 2026 10:01:59 GMT  
		Size: 2.1 MB (2114353 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e0283fa82e226c0ce923dfab0c200c7dcef56dc50598ba0d6eff070973e614ac`  
		Last Modified: Sat, 26 Sep 2026 10:01:59 GMT  
		Size: 23.0 KB (23012 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:latest` - linux; s390x

```console
$ docker pull haproxy@sha256:25acf2be76f622d253ce6be7329e028aec993ce5693c7a6116f803fad640347d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 MB (47673395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d98a8e7f7f988ae2746a4b3d89ac43248d0d3cfb7c3302ffdfac054fb8749d3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Thu, 24 Sep 2026 21:02:13 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Thu, 24 Sep 2026 21:02:16 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Thu, 24 Sep 2026 21:07:07 GMT
ENV HAPROXY_VERSION=3.4.5
# Thu, 24 Sep 2026 21:07:07 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.5.tar.gz
# Thu, 24 Sep 2026 21:07:07 GMT
ENV HAPROXY_SHA256=ec5095095bce7db2e0e6e971f616dded1bb505717e692ec6c3cc8dab6a31678a
# Thu, 24 Sep 2026 21:07:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Thu, 24 Sep 2026 21:07:07 GMT
STOPSIGNAL SIGUSR1
# Thu, 24 Sep 2026 21:07:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 21:07:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 Sep 2026 21:07:08 GMT
USER haproxy
# Thu, 24 Sep 2026 21:07:08 GMT
WORKDIR /var/lib/haproxy
# Thu, 24 Sep 2026 21:07:08 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:555a5a78bd257b9d7b09de43229384b94c86d3f5dbe0cba427af91f324e5a527`  
		Last Modified: Sat, 19 Sep 2026 00:03:06 GMT  
		Size: 29.9 MB (29899149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef9dc920295605925fec4e1881b1ad8fb51cee91f90c8e271dcf689105ea7168`  
		Last Modified: Thu, 24 Sep 2026 21:07:22 GMT  
		Size: 1.6 MB (1601419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b208bffed432a7876533878f248c276769a1f958e6ef699a90540f830e4d4af`  
		Last Modified: Thu, 24 Sep 2026 21:07:22 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9e8b891733e3ee03655c59f2c53b2beb86926a0d7e2a1660041ee8c465aaba7`  
		Last Modified: Thu, 24 Sep 2026 21:07:23 GMT  
		Size: 16.2 MB (16171177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b6e314ace2d3cc53866a6085eeee49eac8e7666b42c91aae9511b87e99c54f2`  
		Last Modified: Thu, 24 Sep 2026 21:07:22 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:latest` - unknown; unknown

```console
$ docker pull haproxy@sha256:82f87f15a317d04aefab24e51680505a0e87eac7f2b9734bcd8641012c62e2c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2144788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1db40c0f1df7b326b17bcf8765c704e1e8e1144f917b1eea8183dbc21c22b56d`

```dockerfile
```

-	Layers:
	-	`sha256:42952ce7066cae250fca8c4805d2952f2ab09efe4f59b78792bccbac537275f0`  
		Last Modified: Thu, 24 Sep 2026 21:07:22 GMT  
		Size: 2.1 MB (2121848 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0cd8e3e7354259a89ae38412eac9bf36cff4997a9e0bfd47703748b611da467c`  
		Last Modified: Thu, 24 Sep 2026 21:07:22 GMT  
		Size: 22.9 KB (22940 bytes)  
		MIME: application/vnd.in-toto+json
