## `haproxy:latest`

```console
$ docker pull haproxy@sha256:f6d2ee87b47192d9cc8c22e88fef405122ff339859644883edc2a7d1827f87b3
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
$ docker pull haproxy@sha256:f30ff31d2e1d204d03e34ee1e58fc7e3bf3448944cb38cd031d33583343e1cf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.2 MB (47207976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e29e7d039a7927217f2c15e3b7644e536b8b3043da000060c785eb71f04810aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:13:09 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:13:10 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Thu, 05 Nov 2026 07:13:53 GMT
ENV HAPROXY_VERSION=3.4.7
# Thu, 05 Nov 2026 07:13:53 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.7.tar.gz
# Thu, 05 Nov 2026 07:13:53 GMT
ENV HAPROXY_SHA256=ccfd342f3724c2cd659574044d788f44e20b212467c6bd5edbbfc517a2775dca
# Thu, 05 Nov 2026 07:13:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Thu, 05 Nov 2026 07:13:53 GMT
STOPSIGNAL SIGUSR1
# Thu, 05 Nov 2026 07:13:53 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:13:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:13:53 GMT
USER haproxy
# Thu, 05 Nov 2026 07:13:53 GMT
WORKDIR /var/lib/haproxy
# Thu, 05 Nov 2026 07:13:53 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27a6b37deffad038fa8fadf1c7a90b24d1d1ccf507c053b9fde7801204012f25`  
		Last Modified: Thu, 05 Nov 2026 07:14:00 GMT  
		Size: 1.6 MB (1577781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fbb1df9e84710797f7ccf702752e0e6d8255feadaac7339549b441956365076`  
		Last Modified: Thu, 05 Nov 2026 07:14:00 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73adf528b2c8a348ff4641af2f1b995b28963df5a4cc37ef3713eb843bd09c2c`  
		Last Modified: Thu, 05 Nov 2026 07:14:01 GMT  
		Size: 15.8 MB (15772420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff767080f8029121909dcced542ef201f28ef43e9b655ad9b99819775ac708b`  
		Last Modified: Thu, 05 Nov 2026 07:14:00 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:latest` - unknown; unknown

```console
$ docker pull haproxy@sha256:b34a1a750811e73c8988d4fa4eebf5da8b717de6ecd6c84c9283f0dbfa0b00a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2142067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a155b0f4870b3d2674c06394a63ef7fa21a6e6cb1001cb3879ef79c3a19c8706`

```dockerfile
```

-	Layers:
	-	`sha256:c26341b27fb4dcd1948ad7d3a8f6c0f3718067ddbe17059b02980b8c8f56cc8e`  
		Last Modified: Thu, 05 Nov 2026 07:14:00 GMT  
		Size: 2.1 MB (2119127 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:117653283c4c124833eca99e774d01fe9a725d2e8a0453bc04b4a248576dc418`  
		Last Modified: Thu, 05 Nov 2026 07:14:00 GMT  
		Size: 22.9 KB (22940 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:latest` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:fc879b5629f07bba67145189ef007b71d1b5af71de7bddf97c83d9ddbde0e366
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45543874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d10617d30606379f5edcd99b6d4b8a3dc9cc0511806d55f4b0da4e9c209926a0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:12:45 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:12:46 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Thu, 05 Nov 2026 07:13:49 GMT
ENV HAPROXY_VERSION=3.4.7
# Thu, 05 Nov 2026 07:13:49 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.7.tar.gz
# Thu, 05 Nov 2026 07:13:49 GMT
ENV HAPROXY_SHA256=ccfd342f3724c2cd659574044d788f44e20b212467c6bd5edbbfc517a2775dca
# Thu, 05 Nov 2026 07:13:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Thu, 05 Nov 2026 07:13:49 GMT
STOPSIGNAL SIGUSR1
# Thu, 05 Nov 2026 07:13:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:13:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:13:49 GMT
USER haproxy
# Thu, 05 Nov 2026 07:13:49 GMT
WORKDIR /var/lib/haproxy
# Thu, 05 Nov 2026 07:13:49 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:a2cd843a82972cc66a24a17025d58e4b75019395058fd3a090b196a2b5d8ac77`  
		Last Modified: Thu, 05 Nov 2026 06:16:00 GMT  
		Size: 28.0 MB (28019610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3977a8e161ce6ccd14115186e38633195b2d87af77f89e4a1deb1031ba533e20`  
		Last Modified: Thu, 05 Nov 2026 07:13:57 GMT  
		Size: 1.5 MB (1532772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d63f90dd5d96e2c0434564f9dd188d06229fabd4de0c9e486f7486d5c054f98a`  
		Last Modified: Thu, 05 Nov 2026 07:13:57 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59e169a6358f283d27852709147eabd83ea92a8151c6944d7981c2913f7a9f65`  
		Last Modified: Thu, 05 Nov 2026 07:13:57 GMT  
		Size: 16.0 MB (15989852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cfcac0580a72076876b1a2f5451d3521b131d669f5be215176e538ed676c817`  
		Last Modified: Thu, 05 Nov 2026 07:13:57 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:latest` - unknown; unknown

```console
$ docker pull haproxy@sha256:d5aab5bc650af4469a64e954b7127205edd94333c306baee21366cb975d2a39d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2145201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07d473fe64031a78e574f4b57c0f427f0c1ddb5c04d980473e2b24e8ce6932fd`

```dockerfile
```

-	Layers:
	-	`sha256:c0de8976df72ca1e2af15255721a956f40b466f42a5fdcfca7576776d107829d`  
		Last Modified: Thu, 05 Nov 2026 07:13:57 GMT  
		Size: 2.1 MB (2122123 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3de98e633081c4ed7977e9eb59ed4a0979182d1597f9caa8a1471ecaa6b02b0`  
		Last Modified: Thu, 05 Nov 2026 07:13:57 GMT  
		Size: 23.1 KB (23078 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:latest` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:7659e67a74361d46cd58c4840a653ac56463625580e936c9202138c9d09f960a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.5 MB (43528315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa72a2dc107000891cad50301c6d27d7e6a2fa21172199719f3c7308de2d509c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:14:37 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:14:37 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Thu, 05 Nov 2026 07:15:29 GMT
ENV HAPROXY_VERSION=3.4.7
# Thu, 05 Nov 2026 07:15:29 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.7.tar.gz
# Thu, 05 Nov 2026 07:15:29 GMT
ENV HAPROXY_SHA256=ccfd342f3724c2cd659574044d788f44e20b212467c6bd5edbbfc517a2775dca
# Thu, 05 Nov 2026 07:15:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Thu, 05 Nov 2026 07:15:29 GMT
STOPSIGNAL SIGUSR1
# Thu, 05 Nov 2026 07:15:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:15:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:15:29 GMT
USER haproxy
# Thu, 05 Nov 2026 07:15:29 GMT
WORKDIR /var/lib/haproxy
# Thu, 05 Nov 2026 07:15:29 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f72b75670ac7e867940caf7d8f358240c2e500eef33410e7d001ea010f595b9c`  
		Last Modified: Thu, 05 Nov 2026 07:15:37 GMT  
		Size: 1.5 MB (1487626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90a2297ae33e987b5d09ac6e03672e0baf026eac5cc4858cbb9c43c615c2a910`  
		Last Modified: Thu, 05 Nov 2026 07:15:37 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6870c33f2c0d67dd77c177817bb807751fab980368cf0257215b8747d82139c`  
		Last Modified: Thu, 05 Nov 2026 07:15:38 GMT  
		Size: 15.8 MB (15766133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5d9fedec8161885bb20cd0e8d4dc9637cdab67e6b5176e4f3972b381f98b575`  
		Last Modified: Thu, 05 Nov 2026 07:15:37 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:latest` - unknown; unknown

```console
$ docker pull haproxy@sha256:9f4fdac038b4b12ccbb8e4a68af6d61afd3be9ec53d3875d9fd702a98f8dc89b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2143644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef5dcda1c4042e7f7000e9afde701425c677b7d0928423d758c6cec34d0f042e`

```dockerfile
```

-	Layers:
	-	`sha256:44f93c49348430457e6fcaa9a1d2d76d4aa9063e403f7bfeb8b8a18f73eed5ed`  
		Last Modified: Thu, 05 Nov 2026 07:15:37 GMT  
		Size: 2.1 MB (2120566 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e20980f45a6d156ea098d1495e96e2e9e3e3b9c8fffd8eea7a9fac4722e8ae7`  
		Last Modified: Thu, 05 Nov 2026 07:15:37 GMT  
		Size: 23.1 KB (23078 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:latest` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:66ae839309dec8ad1ca5fa8219b25ae73a0f1acd76f8d7aab46acd0bdf648fd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.4 MB (47407546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34262bd0a013a15e65e16e044e09316f200e4049f9151558bdf7eb86c159cf71`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:12:45 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:12:45 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Thu, 05 Nov 2026 07:13:29 GMT
ENV HAPROXY_VERSION=3.4.7
# Thu, 05 Nov 2026 07:13:29 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.7.tar.gz
# Thu, 05 Nov 2026 07:13:29 GMT
ENV HAPROXY_SHA256=ccfd342f3724c2cd659574044d788f44e20b212467c6bd5edbbfc517a2775dca
# Thu, 05 Nov 2026 07:13:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Thu, 05 Nov 2026 07:13:29 GMT
STOPSIGNAL SIGUSR1
# Thu, 05 Nov 2026 07:13:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:13:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:13:29 GMT
USER haproxy
# Thu, 05 Nov 2026 07:13:29 GMT
WORKDIR /var/lib/haproxy
# Thu, 05 Nov 2026 07:13:29 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a45962ac0b8b608816c8671cf79ba9c71eb405024d2b2e88b49580a4e4336b7`  
		Last Modified: Thu, 05 Nov 2026 07:13:37 GMT  
		Size: 1.6 MB (1559681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e06ab1c3ebc50b3bad70b0fca947b356431719ef6c4b7c1ca1cfb0665e96a932`  
		Last Modified: Thu, 05 Nov 2026 07:13:37 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc0b6b876b449e0314008f34938168463bb1c17fcdafb3cc0cef6024d356dec7`  
		Last Modified: Thu, 05 Nov 2026 07:13:37 GMT  
		Size: 15.6 MB (15632187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac1f051de16b813144d2196fe7763d78094d0c874ab489777b7704375af1eba6`  
		Last Modified: Thu, 05 Nov 2026 07:13:37 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:latest` - unknown; unknown

```console
$ docker pull haproxy@sha256:03ed4d96bdf90862f3519b8bed37532b9216ee23cffb9f4305827360605662b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2142550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b20f6429714862f6259a0ff87f53349f56a6e90d6ef7487248e506ad840603c6`

```dockerfile
```

-	Layers:
	-	`sha256:9608d7dfddb89723d0707653218011f8d3ccb86c1086ce9399be2edbf1a1fbde`  
		Last Modified: Thu, 05 Nov 2026 07:13:37 GMT  
		Size: 2.1 MB (2119428 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e92ba31ac9351561b84cdd93b4a52bc33082b91782b2324f94b416b67dac7f1`  
		Last Modified: Thu, 05 Nov 2026 07:13:37 GMT  
		Size: 23.1 KB (23122 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:latest` - linux; 386

```console
$ docker pull haproxy@sha256:eb46b2a5ffb1df63e4c5a9a497be709347895c0b3d9cc7394270dc114cc70338
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48503073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33a1cfdaceb8aa95b83f4b231b40ea6f8efe40b84c33087719e5d6f7614f35c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:13:10 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:13:10 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Thu, 05 Nov 2026 07:13:59 GMT
ENV HAPROXY_VERSION=3.4.7
# Thu, 05 Nov 2026 07:13:59 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.7.tar.gz
# Thu, 05 Nov 2026 07:13:59 GMT
ENV HAPROXY_SHA256=ccfd342f3724c2cd659574044d788f44e20b212467c6bd5edbbfc517a2775dca
# Thu, 05 Nov 2026 07:13:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Thu, 05 Nov 2026 07:13:59 GMT
STOPSIGNAL SIGUSR1
# Thu, 05 Nov 2026 07:13:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:13:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:13:59 GMT
USER haproxy
# Thu, 05 Nov 2026 07:13:59 GMT
WORKDIR /var/lib/haproxy
# Thu, 05 Nov 2026 07:13:59 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d6f809b732b1f80c4a8432d4b2833c08d1ce2f2bd63583642d44dfcac8d5e6c`  
		Last Modified: Thu, 05 Nov 2026 07:14:07 GMT  
		Size: 1.6 MB (1602249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eb375eda35786a686d381e342ab59251d520dd2eb856a3466d6c472e62e5278`  
		Last Modified: Thu, 05 Nov 2026 07:14:06 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fec725e453091bdb1773da611358cd20d3c13b6afdd5dead151b64278d5e031`  
		Last Modified: Thu, 05 Nov 2026 07:14:07 GMT  
		Size: 15.5 MB (15528425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94bab088ca02af1a849dea617fe240c758b7ac2924f216fecc177f3f53f5cae5`  
		Last Modified: Thu, 05 Nov 2026 07:14:07 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:latest` - unknown; unknown

```console
$ docker pull haproxy@sha256:2ce49ad06a6b9e6e42bafe93edb10e12892644b9b30a4a76878c74c9ff86f4d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2139182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba404ac82049975cc629ddcd36534fdb314c8df534cd50582455981f781cb768`

```dockerfile
```

-	Layers:
	-	`sha256:665e6218e04976d602cc4ada7809e50fd374d8f13d72bb7136db6223978449d0`  
		Last Modified: Thu, 05 Nov 2026 07:14:07 GMT  
		Size: 2.1 MB (2116298 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:59172d3122b8120401d78bea7a319335c7157e0a4164992cd2ba59279d927d9c`  
		Last Modified: Thu, 05 Nov 2026 07:14:07 GMT  
		Size: 22.9 KB (22884 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:latest` - linux; ppc64le

```console
$ docker pull haproxy@sha256:0576dae31dc4370696dc0ecd82aa23982df5a6cc7ae362a24e92791afe026852
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.8 MB (51844915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:005fd0ca4450f7a3c137a996691e2a3f9fca3e5dfb63fa32a8b2ee7bb6037dcb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:13:11 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:13:11 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Thu, 05 Nov 2026 07:15:13 GMT
ENV HAPROXY_VERSION=3.4.7
# Thu, 05 Nov 2026 07:15:13 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.7.tar.gz
# Thu, 05 Nov 2026 07:15:13 GMT
ENV HAPROXY_SHA256=ccfd342f3724c2cd659574044d788f44e20b212467c6bd5edbbfc517a2775dca
# Thu, 05 Nov 2026 07:15:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Thu, 05 Nov 2026 07:15:13 GMT
STOPSIGNAL SIGUSR1
# Thu, 05 Nov 2026 07:15:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:15:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:15:14 GMT
USER haproxy
# Thu, 05 Nov 2026 07:15:14 GMT
WORKDIR /var/lib/haproxy
# Thu, 05 Nov 2026 07:15:14 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f54b5c8041a3f13a5071183c3451d6353629a9984337ff72d0aa58c7047166c`  
		Last Modified: Thu, 05 Nov 2026 07:15:29 GMT  
		Size: 1.6 MB (1635307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1199c7f64f132288b3b69d3584ab85d4476ceebff30931d4ecadb15ec4ff9e9d`  
		Last Modified: Thu, 05 Nov 2026 07:15:29 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2cb1536b2e56a5f303393303a815d0716188c1a1472a157ab70733447b51d91`  
		Last Modified: Thu, 05 Nov 2026 07:15:30 GMT  
		Size: 16.5 MB (16540317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dc1fb5d2b078d078fd2496445f4556babffd404c596403025091cc66a15f573`  
		Last Modified: Thu, 05 Nov 2026 07:15:29 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:latest` - unknown; unknown

```console
$ docker pull haproxy@sha256:16e58f88562a01587ee6ca410c447f7f27d95f55a146ed91fe3a4fa2d9d2ae08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2145697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3d45c2e7bde4de01d99d2dbb18d0e768c04abb749f11f895c124482e4bdde40`

```dockerfile
```

-	Layers:
	-	`sha256:9cd04ca79c948c474499f3014f4316c40b6aa0572e926587f4535657eaa21a29`  
		Last Modified: Thu, 05 Nov 2026 07:15:29 GMT  
		Size: 2.1 MB (2122685 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9b6d5bb986cf41c27ce15ec1da6ff9b7fb3c5842e5edccb0d5c668f8b0094d5`  
		Last Modified: Thu, 05 Nov 2026 07:15:29 GMT  
		Size: 23.0 KB (23012 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:latest` - linux; riscv64

```console
$ docker pull haproxy@sha256:40ddb4c47f14546cd5d241d3a3cb027b27e5af35941406691b1b1a36a09a37e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45065583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bc82393034643dff58f5a9c7bffa942cfb5e3c6e73ccf955d9bc6aa226df116`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 09:03:08 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:03:08 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Thu, 05 Nov 2026 09:41:24 GMT
ENV HAPROXY_VERSION=3.4.7
# Thu, 05 Nov 2026 09:41:24 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.7.tar.gz
# Thu, 05 Nov 2026 09:41:24 GMT
ENV HAPROXY_SHA256=ccfd342f3724c2cd659574044d788f44e20b212467c6bd5edbbfc517a2775dca
# Thu, 05 Nov 2026 09:41:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Thu, 05 Nov 2026 09:41:24 GMT
STOPSIGNAL SIGUSR1
# Thu, 05 Nov 2026 09:41:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 09:41:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 09:41:24 GMT
USER haproxy
# Thu, 05 Nov 2026 09:41:24 GMT
WORKDIR /var/lib/haproxy
# Thu, 05 Nov 2026 09:41:24 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97362f9044eb8160bb5397d395ca85846dacb92a09ea3d5650e57cafb7418221`  
		Last Modified: Thu, 05 Nov 2026 09:21:57 GMT  
		Size: 1.5 MB (1532956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55abcd053b5a1ffff0e72f4afb1e96624e074f183c06c18cee2340326f2d0a55`  
		Last Modified: Thu, 05 Nov 2026 09:21:56 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51d8f9c3a4780cc0fc3676ed131300f2f8d63c6f2de7f3094d8962dedc6d02ec`  
		Last Modified: Thu, 05 Nov 2026 09:42:47 GMT  
		Size: 15.2 MB (15184801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a22081d72c339f5e0039fcea8c426378e136188a5d005b4f5f89a5c1997863e8`  
		Last Modified: Thu, 05 Nov 2026 09:42:44 GMT  
		Size: 451.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:latest` - unknown; unknown

```console
$ docker pull haproxy@sha256:d25863933f5a9c97f03ea74c354829d9641a99d2f274669a59b6af9a8f53a28a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2136088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3375bfb579e5484f240279cf4b7f0446ad06cabffe0fa0abc849ec0c9ada8048`

```dockerfile
```

-	Layers:
	-	`sha256:2a596daac670fb843123036d9919d3394b9c8f7a0fe172c86e448424e29bb60c`  
		Last Modified: Thu, 05 Nov 2026 09:42:45 GMT  
		Size: 2.1 MB (2113076 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d3ffa30e9a383ff743400cad699ffe7599e8883bc3b59a30aa74875c5c99176`  
		Last Modified: Thu, 05 Nov 2026 09:42:44 GMT  
		Size: 23.0 KB (23012 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:latest` - linux; s390x

```console
$ docker pull haproxy@sha256:6fefbd0b711ed29302cae80aa41364af08361d2bb575bf46b4ebdc75ce67c17c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 MB (47700191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79f83e53391d09f3c61da3254e1c35c3f3804c7048d015614f060b049ddc902f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:12:18 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:12:18 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Thu, 05 Nov 2026 07:13:40 GMT
ENV HAPROXY_VERSION=3.4.7
# Thu, 05 Nov 2026 07:13:40 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.7.tar.gz
# Thu, 05 Nov 2026 07:13:40 GMT
ENV HAPROXY_SHA256=ccfd342f3724c2cd659574044d788f44e20b212467c6bd5edbbfc517a2775dca
# Thu, 05 Nov 2026 07:13:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Thu, 05 Nov 2026 07:13:40 GMT
STOPSIGNAL SIGUSR1
# Thu, 05 Nov 2026 07:13:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:13:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:13:40 GMT
USER haproxy
# Thu, 05 Nov 2026 07:13:40 GMT
WORKDIR /var/lib/haproxy
# Thu, 05 Nov 2026 07:13:40 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bfbb66b0f64dcdd45fe452f2ba1db8905f0ca6e4dd60c879dcf16a0fc396e99`  
		Last Modified: Thu, 05 Nov 2026 07:13:57 GMT  
		Size: 1.6 MB (1597445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80d6d8d36406652c5466997e83b400bad6470af28c9b3411e2321a40eefe5236`  
		Last Modified: Thu, 05 Nov 2026 07:13:57 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdac0686ae173995ee3cd9b6dbbedbc51fcf525d4fdcce50f9a2e48baa1cccf8`  
		Last Modified: Thu, 05 Nov 2026 07:14:05 GMT  
		Size: 16.2 MB (16176988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a8068af784d3e56ccd38c88cf86e44dcca776c5c1694260254b13dae987a809`  
		Last Modified: Thu, 05 Nov 2026 07:14:05 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:latest` - unknown; unknown

```console
$ docker pull haproxy@sha256:b320b032f5b9e7be1d4db85d74f42390000fb0df7d5cfa68f399259b9d675616
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2143511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f4921880e10bbe4eb39f52b38d24da8cce01fa2734ce93d7a6a3efb8d16145d`

```dockerfile
```

-	Layers:
	-	`sha256:2eb5a26d2fa5429b9db00be874bea3df3fa6faf98aa125d31fcb7118edbe99fe`  
		Last Modified: Thu, 05 Nov 2026 07:14:05 GMT  
		Size: 2.1 MB (2120571 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b45b8ac15b3cefce3ea5c46230c3218d8e409da242134534a226a28d4b15619`  
		Last Modified: Thu, 05 Nov 2026 07:14:05 GMT  
		Size: 22.9 KB (22940 bytes)  
		MIME: application/vnd.in-toto+json
