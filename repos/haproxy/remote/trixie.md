## `haproxy:trixie`

```console
$ docker pull haproxy@sha256:8c86f10aec087b5cc7278c972daabf20c0739540af496369cf27c59d72af0499
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

### `haproxy:trixie` - linux; amd64

```console
$ docker pull haproxy@sha256:bced6006e2a3c6dc9723d286759e08d3f3bc29ca9879f1cc57d15e39c9c14be3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.1 MB (47111762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac39a2fab08ee83df947dacf0ffad38a3cd349d0f2c7a53ab84581c110174dcb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:15:46 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 00:15:46 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Tue, 25 Aug 2026 00:16:31 GMT
ENV HAPROXY_VERSION=3.4.3
# Tue, 25 Aug 2026 00:16:31 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.3.tar.gz
# Tue, 25 Aug 2026 00:16:31 GMT
ENV HAPROXY_SHA256=7fa666d36d198275999e2a68dda44d3d37960f2f7aed3a595fb811f4fd0515b5
# Tue, 25 Aug 2026 00:16:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Tue, 25 Aug 2026 00:16:31 GMT
STOPSIGNAL SIGUSR1
# Tue, 25 Aug 2026 00:16:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:16:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:16:31 GMT
USER haproxy
# Tue, 25 Aug 2026 00:16:31 GMT
WORKDIR /var/lib/haproxy
# Tue, 25 Aug 2026 00:16:31 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13e777406f2bfc87306b22539fafba3c5562366be1f8696ce0b7902e47ac2725`  
		Last Modified: Tue, 25 Aug 2026 00:16:39 GMT  
		Size: 1.6 MB (1582352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a03faa9a05f612b324f22f1af5410d6d9918c47f3bde613abb1b257bfb061093`  
		Last Modified: Tue, 25 Aug 2026 00:16:39 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe627b128e6543479503aea51155a1c02e75a0d1c461038f2bf3545ffc1e12f3`  
		Last Modified: Tue, 25 Aug 2026 00:16:39 GMT  
		Size: 15.7 MB (15735108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8693854f961761b584875ac2b19fd52e99eee5412b10835a06507e19a6820901`  
		Last Modified: Tue, 25 Aug 2026 00:16:39 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:trixie` - unknown; unknown

```console
$ docker pull haproxy@sha256:21a021d16461aa32fe452b6e642de400a6bbb8be1b0d7c27edf92c8ccb782ee5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2137616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df27dd3ed8da8b74f3fc85bb6084d559cada48fc028b5eb0a61436d2add3a7aa`

```dockerfile
```

-	Layers:
	-	`sha256:3b383fb59ccd0a04bfcd36d400da9e86648b497cf5a2137a93832c4720dcdf95`  
		Last Modified: Tue, 25 Aug 2026 00:16:39 GMT  
		Size: 2.1 MB (2114676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae9e0817a2a401950d3a6ef5c78d37d84366e57d2552bf10e5210bd3806f4bbd`  
		Last Modified: Tue, 25 Aug 2026 00:16:39 GMT  
		Size: 22.9 KB (22940 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:trixie` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:cb712801f98732b1f0fa2c01e9771d3ea00e00fc798f6c71fe5315a91b4bd03e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45435994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b325f59f55a4d7f98d34098f2c4f6e861bea4441bb26f6d749d6f2413f7c781`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:14:52 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 00:14:52 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Wed, 05 Aug 2026 00:15:56 GMT
ENV HAPROXY_VERSION=3.4.3
# Wed, 05 Aug 2026 00:15:56 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.3.tar.gz
# Wed, 05 Aug 2026 00:15:56 GMT
ENV HAPROXY_SHA256=7fa666d36d198275999e2a68dda44d3d37960f2f7aed3a595fb811f4fd0515b5
# Wed, 05 Aug 2026 00:15:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Wed, 05 Aug 2026 00:15:56 GMT
STOPSIGNAL SIGUSR1
# Wed, 05 Aug 2026 00:15:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:15:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:15:56 GMT
USER haproxy
# Wed, 05 Aug 2026 00:15:56 GMT
WORKDIR /var/lib/haproxy
# Wed, 05 Aug 2026 00:15:56 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:727d7256eca5389d64a19157e9315c80abc182ee4b0637b2fddda6136b155f96`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 28.0 MB (27954714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a4529812ad56874d8fd63400eae27b4e2fc7f08d5406c4f71e4cf40ddef3370`  
		Last Modified: Wed, 05 Aug 2026 00:16:05 GMT  
		Size: 1.5 MB (1535870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dcdb793d7eb31ac115d1b036e1ee8d61f6516e7e64601416d078c0433061f16`  
		Last Modified: Wed, 05 Aug 2026 00:16:04 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d1782c280f5b95ea76e2a45068073c0d0c5f1590e78cb1e8665580e897df355`  
		Last Modified: Wed, 05 Aug 2026 00:16:05 GMT  
		Size: 15.9 MB (15943768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c12d99d44247b3a2bc38a71b4cac31b70325927ff4e55aff56c3fa047e51e93`  
		Last Modified: Wed, 05 Aug 2026 00:16:05 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:trixie` - unknown; unknown

```console
$ docker pull haproxy@sha256:d5cb64b4febd19b5847b0e0e829b83ca2115420b365c5ab2f5d71f3f60daf139
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2140552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:640ac98021ff289ee7e021295182c6777c7ea94c31a5b420586852ed1e9a415d`

```dockerfile
```

-	Layers:
	-	`sha256:a4f319d439b4b9d30773cd5c6809d4616db3855091eb289c16af2047eea40c89`  
		Last Modified: Wed, 05 Aug 2026 00:16:05 GMT  
		Size: 2.1 MB (2117474 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cfdd1f68b625bd1fed6b8ec4102b7db5d67ee77dcdbaa05c9bf20a5b72bb5e63`  
		Last Modified: Wed, 05 Aug 2026 00:16:04 GMT  
		Size: 23.1 KB (23078 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:trixie` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:4ed53a75a80d2b3ecd5a45b2bd215baa4bc0433207c99c1fb9f7e01c025d2edc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.4 MB (43432555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aea89fc1f6c3c2292ff0671f35273860d9358312bcbfe4721a97482849416b69`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:15:57 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 00:15:57 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Tue, 25 Aug 2026 00:16:50 GMT
ENV HAPROXY_VERSION=3.4.3
# Tue, 25 Aug 2026 00:16:50 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.3.tar.gz
# Tue, 25 Aug 2026 00:16:50 GMT
ENV HAPROXY_SHA256=7fa666d36d198275999e2a68dda44d3d37960f2f7aed3a595fb811f4fd0515b5
# Tue, 25 Aug 2026 00:16:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Tue, 25 Aug 2026 00:16:50 GMT
STOPSIGNAL SIGUSR1
# Tue, 25 Aug 2026 00:16:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:16:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:16:50 GMT
USER haproxy
# Tue, 25 Aug 2026 00:16:50 GMT
WORKDIR /var/lib/haproxy
# Tue, 25 Aug 2026 00:16:50 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32156c4c7ac3e39b00f45278f0c5f6c9f61abece2f13f9e7c08daaee0a9933e8`  
		Last Modified: Tue, 25 Aug 2026 00:16:57 GMT  
		Size: 1.5 MB (1490100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd960df03ee82240e8e0eadc915cf388511be4a166f885e7a329eafa8a8f22ea`  
		Last Modified: Tue, 25 Aug 2026 00:16:38 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:402ced24cdb0a611cc7d19557123caf00ddccac26f3ae9625b1ca4e0a283e9a7`  
		Last Modified: Tue, 25 Aug 2026 00:16:58 GMT  
		Size: 15.7 MB (15721672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ef8afd7507ffcb7df042a1b50c4d71bf128541d4372c26a27297e9bf6c1999d`  
		Last Modified: Tue, 25 Aug 2026 00:16:57 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:trixie` - unknown; unknown

```console
$ docker pull haproxy@sha256:78ce2d926ef9df2ee7e867e670e2e810eb646d37637633537f447ea2ea455c49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2139193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c8f853e68347e10e0b2e7d3f665076274a88465656e4b7068bb0a4f583715c1`

```dockerfile
```

-	Layers:
	-	`sha256:48e8a36855af9661e237a71490e293f108179cd9f0ab776b84e0e0fe80112d67`  
		Last Modified: Tue, 25 Aug 2026 00:16:58 GMT  
		Size: 2.1 MB (2116115 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa7c955e23136aa4e14db3795e5ec6e2bd170b20aed9bebfb4e0c39afc90d433`  
		Last Modified: Tue, 25 Aug 2026 00:16:57 GMT  
		Size: 23.1 KB (23078 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:trixie` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:0bd5043db03e84eb79e560e7e08557cc119cf23eecf682d8ae242bf5d7064112
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.3 MB (47318968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:788da4f12a8e6cb5d845d872c10f21ff1217feb5ea3cb78051af901d0891e938`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:15:20 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 00:15:20 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Tue, 25 Aug 2026 00:16:09 GMT
ENV HAPROXY_VERSION=3.4.3
# Tue, 25 Aug 2026 00:16:09 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.3.tar.gz
# Tue, 25 Aug 2026 00:16:09 GMT
ENV HAPROXY_SHA256=7fa666d36d198275999e2a68dda44d3d37960f2f7aed3a595fb811f4fd0515b5
# Tue, 25 Aug 2026 00:16:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Tue, 25 Aug 2026 00:16:09 GMT
STOPSIGNAL SIGUSR1
# Tue, 25 Aug 2026 00:16:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:16:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:16:09 GMT
USER haproxy
# Tue, 25 Aug 2026 00:16:09 GMT
WORKDIR /var/lib/haproxy
# Tue, 25 Aug 2026 00:16:09 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73c7eaa68ce13c800191248ada9c60d01828b7d37f889fa0672bf797240a0d57`  
		Last Modified: Tue, 25 Aug 2026 00:16:17 GMT  
		Size: 1.6 MB (1564963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a73883789f3a83c8b51b0fd306ffef5e84df6135135747a48dce2b2704e760`  
		Last Modified: Tue, 25 Aug 2026 00:16:17 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a1dea602746b17591c3a791571393062dcc3cacaf430fe299201c6d5145c96d`  
		Last Modified: Tue, 25 Aug 2026 00:16:17 GMT  
		Size: 15.6 MB (15592781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:238f14fddfa36ee20c23a9b8b008fc781895b363b9f4379126a280633bd47979`  
		Last Modified: Tue, 25 Aug 2026 00:16:17 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:trixie` - unknown; unknown

```console
$ docker pull haproxy@sha256:384cbea39cf3c1d5c51acb92f9a212ff82436a94b62759c4b4854a5b26be4d54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2138099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c054bdf56ed50ce3789f06b0358fc867973d2be22754886f456cd50d399f4651`

```dockerfile
```

-	Layers:
	-	`sha256:31e24631eea9d91419acef85346c2fd5692477f98357c645f0290b8ee28dccbf`  
		Last Modified: Tue, 25 Aug 2026 00:16:18 GMT  
		Size: 2.1 MB (2114977 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:35e13db18c1079a3c8d48da5fe4cb3aedb15ef18f519f236206108ef78c937da`  
		Last Modified: Tue, 25 Aug 2026 00:16:17 GMT  
		Size: 23.1 KB (23122 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:trixie` - linux; 386

```console
$ docker pull haproxy@sha256:72a93206ca71772a0dc8121790da921cadd9f9e117328678a6f37e4a3046dc3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.4 MB (48394241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f4e7721c55bbbe9ee277bedbbfd79ae728d74ec2631382410abc60b3e0e250e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:15:35 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 00:15:35 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Wed, 05 Aug 2026 00:16:29 GMT
ENV HAPROXY_VERSION=3.4.3
# Wed, 05 Aug 2026 00:16:29 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.3.tar.gz
# Wed, 05 Aug 2026 00:16:29 GMT
ENV HAPROXY_SHA256=7fa666d36d198275999e2a68dda44d3d37960f2f7aed3a595fb811f4fd0515b5
# Wed, 05 Aug 2026 00:16:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Wed, 05 Aug 2026 00:16:29 GMT
STOPSIGNAL SIGUSR1
# Wed, 05 Aug 2026 00:16:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:16:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:16:29 GMT
USER haproxy
# Wed, 05 Aug 2026 00:16:29 GMT
WORKDIR /var/lib/haproxy
# Wed, 05 Aug 2026 00:16:29 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:311b26cfa6b9aedb9c35bd9a9ce5c9fb13add824446bae9f72de3efd7775647d`  
		Last Modified: Tue, 04 Aug 2026 23:52:24 GMT  
		Size: 31.3 MB (31296269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80801395cf624e72a3c767367403a311d61f8df8c9e4dad9b89b81d38f3d521e`  
		Last Modified: Wed, 05 Aug 2026 00:16:37 GMT  
		Size: 1.6 MB (1603725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c8b7a417e7fc8eabf048c7bda0e97851371589fc713220f84ccb6a6096bf952`  
		Last Modified: Wed, 05 Aug 2026 00:16:14 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc7344a642624cefb6917da8c616d5a8cdfe6cd26fe5d2f47d201a38dbf7e930`  
		Last Modified: Wed, 05 Aug 2026 00:16:37 GMT  
		Size: 15.5 MB (15492606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a7508feb67110fac01a3cd5d565a88114958d241077678eeb471084de798798`  
		Last Modified: Wed, 05 Aug 2026 00:16:36 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:trixie` - unknown; unknown

```console
$ docker pull haproxy@sha256:f4127b2ca1be07a573a0619609cba2205e6e58b6c68a59a0eca2c4e0e02fde7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2134533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aa67ab3376f94bce9f9210a61cd7d4be7862c72ef36aacbf26e9554482f6ccd`

```dockerfile
```

-	Layers:
	-	`sha256:b93165359a71cf7e817e977c4c9b2c56727d117d999166abbf9de17293454707`  
		Last Modified: Wed, 05 Aug 2026 00:16:36 GMT  
		Size: 2.1 MB (2111649 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dcd4a6c4e4de67d1ed297d82c24cf1ddd218165300957b56c0f612912eb9782a`  
		Last Modified: Wed, 05 Aug 2026 00:16:36 GMT  
		Size: 22.9 KB (22884 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:trixie` - linux; ppc64le

```console
$ docker pull haproxy@sha256:cfb9087ff337e047ab425f6c11d27415a428f7e81667e312de3b94f495af7c60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51738297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:434301e8adc19901ae76d928b7cdec81806ae14bfad8f0316964115f2adeb2f7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 03:53:00 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 03:53:01 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Wed, 05 Aug 2026 03:54:40 GMT
ENV HAPROXY_VERSION=3.4.3
# Wed, 05 Aug 2026 03:54:40 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.3.tar.gz
# Wed, 05 Aug 2026 03:54:40 GMT
ENV HAPROXY_SHA256=7fa666d36d198275999e2a68dda44d3d37960f2f7aed3a595fb811f4fd0515b5
# Wed, 05 Aug 2026 03:54:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Wed, 05 Aug 2026 03:54:40 GMT
STOPSIGNAL SIGUSR1
# Wed, 05 Aug 2026 03:54:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 03:54:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 03:54:48 GMT
USER haproxy
# Wed, 05 Aug 2026 03:54:49 GMT
WORKDIR /var/lib/haproxy
# Wed, 05 Aug 2026 03:54:49 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6fc5274ab740bb85de4c016c6c45df1fac6e323e5d2642be7448640edc2cf54`  
		Last Modified: Wed, 05 Aug 2026 03:54:36 GMT  
		Size: 1.6 MB (1639562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48b865dc09c757cf9af0e60aa8b303bf697315816a44c1bf4b0e5ae9dfb67577`  
		Last Modified: Wed, 05 Aug 2026 03:54:36 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18a96987ebd4e977e904a9e929ac6cf4c297fc639e6489c59e840a8359275ca1`  
		Last Modified: Wed, 05 Aug 2026 03:55:03 GMT  
		Size: 16.5 MB (16495748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d68392303d430b35dea9ba6c4a1bc952d8a7dd4162b24b454efa899d20c21bc7`  
		Last Modified: Wed, 05 Aug 2026 03:55:02 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:trixie` - unknown; unknown

```console
$ docker pull haproxy@sha256:608b91880784d25aac57c591816c23885e47ffebdc15cb2f7c1ea46c487cf95a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2141048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b03db9b2eb0cbacec2bb767d5415e6681a22f96191844ee616bb72ca0df95d8`

```dockerfile
```

-	Layers:
	-	`sha256:58ee8cfb448036a6dbfca5df5887b58acef36ee8274e5750cab71142ae581823`  
		Last Modified: Wed, 05 Aug 2026 03:55:02 GMT  
		Size: 2.1 MB (2118036 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:546c01608bf31477847e894b3e5e4983b1f3b07944b7aeef8e1db139cac64014`  
		Last Modified: Wed, 05 Aug 2026 03:55:02 GMT  
		Size: 23.0 KB (23012 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:trixie` - linux; riscv64

```console
$ docker pull haproxy@sha256:7f82288ddcc6cfeb67e0004ae6f245fdad225b7ad1cdd57cea8588730268cda5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.0 MB (44989261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48ce54b993d3cee768f20156c1016e9c97d611276e7ffec3aca198c473930a39`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:26:28 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 00:26:28 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Tue, 25 Aug 2026 00:59:24 GMT
ENV HAPROXY_VERSION=3.4.3
# Tue, 25 Aug 2026 00:59:24 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.3.tar.gz
# Tue, 25 Aug 2026 00:59:24 GMT
ENV HAPROXY_SHA256=7fa666d36d198275999e2a68dda44d3d37960f2f7aed3a595fb811f4fd0515b5
# Tue, 25 Aug 2026 00:59:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Tue, 25 Aug 2026 00:59:24 GMT
STOPSIGNAL SIGUSR1
# Tue, 25 Aug 2026 00:59:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:59:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:59:24 GMT
USER haproxy
# Tue, 25 Aug 2026 00:59:24 GMT
WORKDIR /var/lib/haproxy
# Tue, 25 Aug 2026 00:59:24 GMT
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
	-	`sha256:1c491db42873098d386262edde5ec53f70ab03438fcdf513dd05e8642517454d`  
		Last Modified: Tue, 25 Aug 2026 01:00:34 GMT  
		Size: 15.2 MB (15154900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6051be9f9607434bbe7677144c32391c84a7af525596768b51e82a50a038ada`  
		Last Modified: Tue, 25 Aug 2026 01:00:33 GMT  
		Size: 452.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:trixie` - unknown; unknown

```console
$ docker pull haproxy@sha256:3a64b38a9f6a300d89ce05dba7bb9d41e8cef17b8e003e889efc5f6e98a3d53e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2131637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7367d8bb99e138d145cee98540f8f380880eb651722bdf6816dfb5b4db303e8`

```dockerfile
```

-	Layers:
	-	`sha256:5993e10f077dbfdf5baad393e52c82fa06ad99657498e92dadb3982dab425390`  
		Last Modified: Tue, 25 Aug 2026 01:00:34 GMT  
		Size: 2.1 MB (2108625 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:148f0e89763a6fc6dd06e3a37f8d9779aee90fdd45b13b5867d55e2a09e0d5fd`  
		Last Modified: Tue, 25 Aug 2026 01:00:32 GMT  
		Size: 23.0 KB (23012 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:trixie` - linux; s390x

```console
$ docker pull haproxy@sha256:71a30a9b8e3ae8905516ec11205879840ab308c7144d8ad7967614ede9e77a23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47604503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c1ad94aae3803075d39d2668be9a4e05e06a3bae47e1c46ebf1687346fba306`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:15:09 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 00:15:10 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Tue, 25 Aug 2026 00:17:01 GMT
ENV HAPROXY_VERSION=3.4.3
# Tue, 25 Aug 2026 00:17:01 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.3.tar.gz
# Tue, 25 Aug 2026 00:17:01 GMT
ENV HAPROXY_SHA256=7fa666d36d198275999e2a68dda44d3d37960f2f7aed3a595fb811f4fd0515b5
# Tue, 25 Aug 2026 00:17:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Tue, 25 Aug 2026 00:17:01 GMT
STOPSIGNAL SIGUSR1
# Tue, 25 Aug 2026 00:17:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:17:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:17:01 GMT
USER haproxy
# Tue, 25 Aug 2026 00:17:01 GMT
WORKDIR /var/lib/haproxy
# Tue, 25 Aug 2026 00:17:01 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b005170360b08b10045430ab952718e30ecd86a87bbfcd8ee90e566e3a67fb36`  
		Last Modified: Tue, 25 Aug 2026 00:17:13 GMT  
		Size: 1.6 MB (1601230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee708c71d783d69195c06a5fe608f9f25711240e331e7ac74a73021485683d91`  
		Last Modified: Tue, 25 Aug 2026 00:17:12 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98f72d4bb32c7971d7468fd40e6121bddd041af0d94d0f1a5b44777a676f07c6`  
		Last Modified: Tue, 25 Aug 2026 00:17:15 GMT  
		Size: 16.1 MB (16133912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f6dbbfea7708d80e2578729cd43ba3d85c92b06c6117bbb412ec73635649d92`  
		Last Modified: Tue, 25 Aug 2026 00:17:14 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:trixie` - unknown; unknown

```console
$ docker pull haproxy@sha256:a4a5e9a480722b7bc5a4876e7841fde961ab38a628619a3205b1e89e63374e99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2139060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4b3c878a04aec6fd438e3c14b0b119ff46f1d09a22c2461d5e519044362f5db`

```dockerfile
```

-	Layers:
	-	`sha256:b398b8391c3c921f89910287c6d852a0fa29e0671c18d08b42571bc293c95b87`  
		Last Modified: Tue, 25 Aug 2026 00:17:14 GMT  
		Size: 2.1 MB (2116120 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c8dbfd3afc08340e2dfd9dd79a27b864174775236670f37d76ba2ee1da524df`  
		Last Modified: Tue, 25 Aug 2026 00:17:14 GMT  
		Size: 22.9 KB (22940 bytes)  
		MIME: application/vnd.in-toto+json
