## `haproxy:lts-trixie`

```console
$ docker pull haproxy@sha256:b3b426904258d74aa82c0439e009c29f2c480aacd07b2bbc07b75fb80b507a70
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

### `haproxy:lts-trixie` - linux; amd64

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

### `haproxy:lts-trixie` - unknown; unknown

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

### `haproxy:lts-trixie` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:9058fc5fe4125c21412246f2b03f1b366feb6e3bdef667735b63f7d9e6dc890f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45500758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dd756b82b9822d30b13a9ce25d1e9b7675506acf610a68205dc39e974c1cc6d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:17:57 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 00:17:57 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Sat, 19 Sep 2026 00:18:58 GMT
ENV HAPROXY_VERSION=3.4.4
# Sat, 19 Sep 2026 00:18:58 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.4.tar.gz
# Sat, 19 Sep 2026 00:18:58 GMT
ENV HAPROXY_SHA256=b0c5053c4d46840ecdee3925736fe9a3de6472559b43c69183d70e593d9133df
# Sat, 19 Sep 2026 00:18:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Sat, 19 Sep 2026 00:18:58 GMT
STOPSIGNAL SIGUSR1
# Sat, 19 Sep 2026 00:18:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:18:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:18:58 GMT
USER haproxy
# Sat, 19 Sep 2026 00:18:58 GMT
WORKDIR /var/lib/haproxy
# Sat, 19 Sep 2026 00:18:58 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6779b1da15e3aae8ffc697263f547a05eaff7ea80f63924ba5376253a6f3a12b`  
		Last Modified: Sat, 19 Sep 2026 00:03:25 GMT  
		Size: 28.0 MB (27998032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2074e675c251d08d39fdc0ea65bd20d85f59a55763f057f02feb7dd645a14fa`  
		Last Modified: Sat, 19 Sep 2026 00:19:06 GMT  
		Size: 1.5 MB (1536631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecbb055531789af235695aac79479289ac2d93cbd650feb55c3ea533076b9994`  
		Last Modified: Sat, 19 Sep 2026 00:18:46 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37d565eb8bffd17e2a275d73a004cba636e3af2c63c158f8f6b651eadd306ab3`  
		Last Modified: Sat, 19 Sep 2026 00:19:07 GMT  
		Size: 16.0 MB (15964456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a420a85f5ffcd571390f16a6a41b2c46d35ed3e6a7a5dbc0b6b8b0f006a2d584`  
		Last Modified: Sat, 19 Sep 2026 00:19:06 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts-trixie` - unknown; unknown

```console
$ docker pull haproxy@sha256:1c7a041993588107461418fc06e92234f80cbdc0f5532ab37df8e05b530df983
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2146478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16a61e3e03e50c3957e7a68f7eb3dcdd55b221b919811fc021cdee8ec1a3db39`

```dockerfile
```

-	Layers:
	-	`sha256:30f9fd334e4b420bb2b81846e001f42240797a2efd257b5c6441c7f894e1f892`  
		Last Modified: Sat, 19 Sep 2026 00:19:06 GMT  
		Size: 2.1 MB (2123400 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c499dc616aaea21b35c4887d4adfaea4221d441493028d431460a06a832070e`  
		Last Modified: Sat, 19 Sep 2026 00:19:06 GMT  
		Size: 23.1 KB (23078 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts-trixie` - linux; arm variant v7

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

### `haproxy:lts-trixie` - unknown; unknown

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

### `haproxy:lts-trixie` - linux; arm64 variant v8

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

### `haproxy:lts-trixie` - unknown; unknown

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

### `haproxy:lts-trixie` - linux; 386

```console
$ docker pull haproxy@sha256:c7895f0e77d8a6baeb87dd1e7cebefcf50191d7110b2e25efe997ca10b5d5af8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48458327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0881d531ed5d1a1e424b5a213d5eac9b669012132d32b259406cb85733c8a7bc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:15:11 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 00:15:11 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Sat, 19 Sep 2026 00:17:08 GMT
ENV HAPROXY_VERSION=3.4.4
# Sat, 19 Sep 2026 00:17:08 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.4.tar.gz
# Sat, 19 Sep 2026 00:17:08 GMT
ENV HAPROXY_SHA256=b0c5053c4d46840ecdee3925736fe9a3de6472559b43c69183d70e593d9133df
# Sat, 19 Sep 2026 00:17:08 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Sat, 19 Sep 2026 00:17:08 GMT
STOPSIGNAL SIGUSR1
# Sat, 19 Sep 2026 00:17:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:17:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:17:08 GMT
USER haproxy
# Sat, 19 Sep 2026 00:17:08 GMT
WORKDIR /var/lib/haproxy
# Sat, 19 Sep 2026 00:17:08 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:8fa51aa063d1c9d8582b37a45055739eef6ee879e1364bcb6b75a064ad0d1906`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 31.3 MB (31340398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53de6f1914d32b531a1127a803b4ee7065f135d8c53efc9358155c1357f6efa1`  
		Last Modified: Sat, 19 Sep 2026 00:16:10 GMT  
		Size: 1.6 MB (1604916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf833ddd6afd2172e358086ebe297846716da8f5b3be5298b8aa31efc9505130`  
		Last Modified: Sat, 19 Sep 2026 00:16:10 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39285c9b013b8d97aaae8277a4b49a8fc3f263cb64f5b0e2126c77236016833c`  
		Last Modified: Sat, 19 Sep 2026 00:17:15 GMT  
		Size: 15.5 MB (15511374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3bc4473d21c6e878dc5e54770699e059764a5b0c068e483a6ed300a8fb05ec0`  
		Last Modified: Sat, 19 Sep 2026 00:17:15 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts-trixie` - unknown; unknown

```console
$ docker pull haproxy@sha256:d81692873276cdb46c08a1dc43c1eb7529b0eaec5f627b6f958665ddf6e4e38c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2140459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4614d3396470a65076a14177abe4ab53605f0f570666fcdb3abeeb7e8a0faa1`

```dockerfile
```

-	Layers:
	-	`sha256:82d3c53ae1f9d419c56df2e94d335586eff33cf746535b22c2878f7e2c29836e`  
		Last Modified: Sat, 19 Sep 2026 00:17:15 GMT  
		Size: 2.1 MB (2117575 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26c56168fbd1e547ad59fea64883c5cd7492ec155f3101510ee747de1e390794`  
		Last Modified: Sat, 19 Sep 2026 00:17:15 GMT  
		Size: 22.9 KB (22884 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts-trixie` - linux; ppc64le

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

### `haproxy:lts-trixie` - unknown; unknown

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

### `haproxy:lts-trixie` - linux; riscv64

```console
$ docker pull haproxy@sha256:cf0d72a3111cd6717ea546b262e68362401f9d5a46f81f57731c0edbb55e1a56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.0 MB (45025707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee8e598bb963271ecf23bf72a2a29387b01128b34eb410c73e3e9e117899d2e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1789689600'
# Wed, 23 Sep 2026 04:56:00 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Wed, 23 Sep 2026 04:56:01 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Wed, 23 Sep 2026 05:31:57 GMT
ENV HAPROXY_VERSION=3.4.4
# Wed, 23 Sep 2026 05:31:57 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.4.tar.gz
# Wed, 23 Sep 2026 05:31:57 GMT
ENV HAPROXY_SHA256=b0c5053c4d46840ecdee3925736fe9a3de6472559b43c69183d70e593d9133df
# Wed, 23 Sep 2026 05:31:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Wed, 23 Sep 2026 05:31:57 GMT
STOPSIGNAL SIGUSR1
# Wed, 23 Sep 2026 05:31:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 05:31:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 05:31:57 GMT
USER haproxy
# Wed, 23 Sep 2026 05:31:58 GMT
WORKDIR /var/lib/haproxy
# Wed, 23 Sep 2026 05:31:58 GMT
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
	-	`sha256:19a577d2b648fb8f893ee4c0e06f1c0550fc06c796bb94d5d1e4ce0ab2d02f7f`  
		Last Modified: Wed, 23 Sep 2026 05:33:09 GMT  
		Size: 15.2 MB (15163323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a350b83d01e78baff3c58609bbb483432cc9db8d239f1612963772350d4f3bdd`  
		Last Modified: Wed, 23 Sep 2026 05:33:07 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts-trixie` - unknown; unknown

```console
$ docker pull haproxy@sha256:fac4cec1a830d5a720f548db3334658660c72607bd2f03552804341a5d7fdbed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2137365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd499d369ab8245f1d81b497fc94898724f7025f2f606d384540e685d97b95f2`

```dockerfile
```

-	Layers:
	-	`sha256:f3d11ecc9d5eb074ed84171023dba8c31b07274e47f5377430c6d4d04c6124c4`  
		Last Modified: Wed, 23 Sep 2026 05:33:07 GMT  
		Size: 2.1 MB (2114353 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f09e16af275f47cb0e3b3f3370cf69bb577fd04efb3101008ad3df6205da7a8c`  
		Last Modified: Wed, 23 Sep 2026 05:33:06 GMT  
		Size: 23.0 KB (23012 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts-trixie` - linux; s390x

```console
$ docker pull haproxy@sha256:66088d9d1f36d4a29194cd530c3d22dfb52f88fbe62673a5ea7cfe31d631dea9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 MB (47656234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d68971ca1b547580604f49fae5a02b668c6c1eb4330a2f5b9dafecd25bad1b76`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:12:59 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 00:12:59 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Sat, 19 Sep 2026 00:13:57 GMT
ENV HAPROXY_VERSION=3.4.4
# Sat, 19 Sep 2026 00:13:57 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.4.tar.gz
# Sat, 19 Sep 2026 00:13:57 GMT
ENV HAPROXY_SHA256=b0c5053c4d46840ecdee3925736fe9a3de6472559b43c69183d70e593d9133df
# Sat, 19 Sep 2026 00:13:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Sat, 19 Sep 2026 00:13:57 GMT
STOPSIGNAL SIGUSR1
# Sat, 19 Sep 2026 00:13:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:13:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:13:57 GMT
USER haproxy
# Sat, 19 Sep 2026 00:13:57 GMT
WORKDIR /var/lib/haproxy
# Sat, 19 Sep 2026 00:13:57 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:555a5a78bd257b9d7b09de43229384b94c86d3f5dbe0cba427af91f324e5a527`  
		Last Modified: Sat, 19 Sep 2026 00:03:06 GMT  
		Size: 29.9 MB (29899149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc0c0a6db384e99ce6dec1db19b06f460ee2e0753f04b77b8f7695c1963db6ad`  
		Last Modified: Sat, 19 Sep 2026 00:14:09 GMT  
		Size: 1.6 MB (1601308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:036370604ed8c82d7f2ee983a7f0b23d9c197f5dc7ced0f41d1926bfa6e6fdda`  
		Last Modified: Sat, 19 Sep 2026 00:14:10 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d2cc104189b24bded2f4cf21fb54f3e8d56079189016ef500ba580b4f65035b`  
		Last Modified: Sat, 19 Sep 2026 00:14:10 GMT  
		Size: 16.2 MB (16154139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eaf98558772f1cfee7ed1422535444350baefd3cd61245e532a78dbfab4c0c0`  
		Last Modified: Sat, 19 Sep 2026 00:14:10 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts-trixie` - unknown; unknown

```console
$ docker pull haproxy@sha256:a407aad59b6c96f75b197eda15bc8fed5af4b63c2937059934719b96be3e7d78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2144788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34364d322c8946dda6abf98b0d780a2a37154c4837319b81b41ac9c5e0c39d8a`

```dockerfile
```

-	Layers:
	-	`sha256:d799a0b9978d65e83108d60db497c4f82100e4cd98fcb02d4355f98657ad49b7`  
		Last Modified: Sat, 19 Sep 2026 00:14:10 GMT  
		Size: 2.1 MB (2121848 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d31a82293b05d6f2bb892a5c9234a722e4bef08a47640466db2cecccb6c28089`  
		Last Modified: Sat, 19 Sep 2026 00:14:09 GMT  
		Size: 22.9 KB (22940 bytes)  
		MIME: application/vnd.in-toto+json
