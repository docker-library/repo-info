## `haproxy:lts`

```console
$ docker pull haproxy@sha256:4def76cf5d2610255d01fa51b37973d67ddee52f979981fc19117e8d0197bbf5
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

### `haproxy:lts` - unknown; unknown

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

### `haproxy:lts` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:584973105603da93f140d767c657731ef0829db6ab8b36eab4f95b437d20c940
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45450903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48500a5e2d7b0153ca4207d620381a441fe61994fdfdb05f5fadd025c6b978cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:15:27 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 00:15:27 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Tue, 25 Aug 2026 00:16:28 GMT
ENV HAPROXY_VERSION=3.4.3
# Tue, 25 Aug 2026 00:16:28 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.3.tar.gz
# Tue, 25 Aug 2026 00:16:28 GMT
ENV HAPROXY_SHA256=7fa666d36d198275999e2a68dda44d3d37960f2f7aed3a595fb811f4fd0515b5
# Tue, 25 Aug 2026 00:16:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Tue, 25 Aug 2026 00:16:28 GMT
STOPSIGNAL SIGUSR1
# Tue, 25 Aug 2026 00:16:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:16:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:16:28 GMT
USER haproxy
# Tue, 25 Aug 2026 00:16:28 GMT
WORKDIR /var/lib/haproxy
# Tue, 25 Aug 2026 00:16:28 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:b66794b20e8e770c1e565d310eba254c92677ca1aa2b4db6a81ff11f1d21e516`  
		Last Modified: Mon, 24 Aug 2026 23:20:06 GMT  
		Size: 28.0 MB (27968942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af58ad8827283dfac606323abd5c6fd16cccdb44855c81f5221c5bd5b891d116`  
		Last Modified: Tue, 25 Aug 2026 00:16:36 GMT  
		Size: 1.5 MB (1536671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f2ddb4aff6792c976cea561997cf1ff23a8da8893b3e5833f405fe674353f71`  
		Last Modified: Tue, 25 Aug 2026 00:16:35 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d82be6ecac203a08946d4146841a17e577df0d6fa8408717650f6b76cd1cca87`  
		Last Modified: Tue, 25 Aug 2026 00:16:36 GMT  
		Size: 15.9 MB (15943648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11eeea6b6527ce8c7d44dfecae5c165fa4605b74b4b31ec6ccb960b364e97dfd`  
		Last Modified: Tue, 25 Aug 2026 00:16:35 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts` - unknown; unknown

```console
$ docker pull haproxy@sha256:5941988847a6ebc7ffebac9f55a2b91d38fe6ca8400da943e4bcdf466ce847cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2140750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f571d58d1f2d3cb4a0634d9ce2b5585018f962a53274dbc667556ce4278569e`

```dockerfile
```

-	Layers:
	-	`sha256:09900b71b5c8f70386fd6fb37a28f79f57f16caa8ac9a0168e359c0de6c8d923`  
		Last Modified: Tue, 25 Aug 2026 00:16:36 GMT  
		Size: 2.1 MB (2117672 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:468d140927632f057e1b7e5c05b3aabb4dfa12cbd5a09b07c2ed6d17b42a8bd3`  
		Last Modified: Tue, 25 Aug 2026 00:16:35 GMT  
		Size: 23.1 KB (23078 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts` - linux; arm variant v7

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

### `haproxy:lts` - unknown; unknown

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

### `haproxy:lts` - linux; arm64 variant v8

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

### `haproxy:lts` - unknown; unknown

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

### `haproxy:lts` - linux; 386

```console
$ docker pull haproxy@sha256:d17826dec08b2e4daf514de7ea1fa246b90cde4da6d744d7f9ed0217006a2630
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.4 MB (48402589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f66c4e2c33d178b84ec8c0a79d9d29453f0d9c73e90289ab2c2da91702d78c7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:16:16 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 00:16:16 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Tue, 25 Aug 2026 00:17:12 GMT
ENV HAPROXY_VERSION=3.4.3
# Tue, 25 Aug 2026 00:17:12 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.3.tar.gz
# Tue, 25 Aug 2026 00:17:12 GMT
ENV HAPROXY_SHA256=7fa666d36d198275999e2a68dda44d3d37960f2f7aed3a595fb811f4fd0515b5
# Tue, 25 Aug 2026 00:17:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Tue, 25 Aug 2026 00:17:12 GMT
STOPSIGNAL SIGUSR1
# Tue, 25 Aug 2026 00:17:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:17:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:17:12 GMT
USER haproxy
# Tue, 25 Aug 2026 00:17:12 GMT
WORKDIR /var/lib/haproxy
# Tue, 25 Aug 2026 00:17:12 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c83a25fee53ccf493afb7a6580a5a9d474e374fb31c6bc8833fe6d4869e0e375`  
		Last Modified: Tue, 25 Aug 2026 00:17:20 GMT  
		Size: 1.6 MB (1604844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ba600ded400707142287f32a279d5de018369c021672db915541b92eb5eab8f`  
		Last Modified: Tue, 25 Aug 2026 00:17:20 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d81b6c0d99b158b841a15dde58d429d769283e37db013ae5359858943bbd52e3`  
		Last Modified: Tue, 25 Aug 2026 00:17:21 GMT  
		Size: 15.5 MB (15492707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc6d111ac4bb856929425a0833bbf6348fa502b8da9c81674209b60a9ac90314`  
		Last Modified: Tue, 25 Aug 2026 00:17:20 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts` - unknown; unknown

```console
$ docker pull haproxy@sha256:14046b0207d2f2ca90bc6e593bec4b895ffd49d72517aad5145059c157c0c94d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2134731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05acb9b4814a599703f2e273d6eab9d2dc2512d1ae727f82ae1bcc46cadda5cc`

```dockerfile
```

-	Layers:
	-	`sha256:741af85397284751e4bf9745e7e487c7ea106e4837d78660014d2a3225928039`  
		Last Modified: Tue, 25 Aug 2026 00:17:20 GMT  
		Size: 2.1 MB (2111847 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b57dc5a45f1c215f5c871bad6215b9bb1c0a0061cac52e075a53a62005e46fb`  
		Last Modified: Tue, 25 Aug 2026 00:17:20 GMT  
		Size: 22.9 KB (22884 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts` - linux; ppc64le

```console
$ docker pull haproxy@sha256:b4aa850d625f05425e0a93aaa331f3096114ef459814ae8ce23b8ef1107822db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.8 MB (51752948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97dd2b0d4bfbdc4eeaed7fc6de4a312a12d908c0c73ce489a0583ea520198e28`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:16:12 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 00:16:12 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Tue, 25 Aug 2026 00:17:54 GMT
ENV HAPROXY_VERSION=3.4.3
# Tue, 25 Aug 2026 00:17:54 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.3.tar.gz
# Tue, 25 Aug 2026 00:17:54 GMT
ENV HAPROXY_SHA256=7fa666d36d198275999e2a68dda44d3d37960f2f7aed3a595fb811f4fd0515b5
# Tue, 25 Aug 2026 00:17:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Tue, 25 Aug 2026 00:17:54 GMT
STOPSIGNAL SIGUSR1
# Tue, 25 Aug 2026 00:17:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:17:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:17:54 GMT
USER haproxy
# Tue, 25 Aug 2026 00:17:54 GMT
WORKDIR /var/lib/haproxy
# Tue, 25 Aug 2026 00:17:54 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:098287acf0de26f2b69b0bba2c85c379cbce13bf8a6406e4bb1852390a535b16`  
		Last Modified: Tue, 25 Aug 2026 00:18:09 GMT  
		Size: 1.6 MB (1640113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0374d4b551b9376c0581696728b68e63bff8d794b362ee6239ea3de09ef3a615`  
		Last Modified: Tue, 25 Aug 2026 00:17:04 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7f0dfe2fdb8ab0fb62019a9fd1e4392373607ff5428ff4815b82dbc07698d87`  
		Last Modified: Tue, 25 Aug 2026 00:18:10 GMT  
		Size: 16.5 MB (16495733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa6a7cfd1ef3910ba16c9ddd835708503cce4c4db7c161f5eec083f24ca81445`  
		Last Modified: Tue, 25 Aug 2026 00:18:09 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts` - unknown; unknown

```console
$ docker pull haproxy@sha256:62290df7644f6af3bcdca3612b2f502602998401f90d37ca4e27babeecc9dfea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2141246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f366af0f919052d9025cfb027eb08269bcaea82dcf3fa5cd5112b00a8b2df668`

```dockerfile
```

-	Layers:
	-	`sha256:68cb196e183b0f0636ce059f3e242561dfaa3ca51adf08a7a56add7e015512f0`  
		Last Modified: Tue, 25 Aug 2026 00:18:09 GMT  
		Size: 2.1 MB (2118234 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c14f66de24351cfe8c471064b130d5cc1fa3f4213c84c31005d552ef46867cb2`  
		Last Modified: Tue, 25 Aug 2026 00:18:09 GMT  
		Size: 23.0 KB (23012 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts` - linux; riscv64

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

### `haproxy:lts` - unknown; unknown

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

### `haproxy:lts` - linux; s390x

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

### `haproxy:lts` - unknown; unknown

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
