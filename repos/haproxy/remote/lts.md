## `haproxy:lts`

```console
$ docker pull haproxy@sha256:1bbd45f957bcdaed81430834c755ac84f14f23cfc33f1519fa9044f2c77af7b8
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
$ docker pull haproxy@sha256:6ad3bce68cc37443c16f0a1be909d82af126e4ebf419aaa9b31db8ee9d6e8d94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.2 MB (47223958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:655ca9475698499c44f58ef02f72374f0d0222f84ab728e8136384cad7c8ef8f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:13:31 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 04:13:31 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Tue, 24 Nov 2026 04:14:18 GMT
ENV HAPROXY_VERSION=3.4.8
# Tue, 24 Nov 2026 04:14:18 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.8.tar.gz
# Tue, 24 Nov 2026 04:14:18 GMT
ENV HAPROXY_SHA256=024bd521a6cbbe32b426853147e6bbd6a89b107c5a34144846193fee5b7c6ed1
# Tue, 24 Nov 2026 04:14:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Tue, 24 Nov 2026 04:14:18 GMT
STOPSIGNAL SIGUSR1
# Tue, 24 Nov 2026 04:14:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:14:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:14:18 GMT
USER haproxy
# Tue, 24 Nov 2026 04:14:18 GMT
WORKDIR /var/lib/haproxy
# Tue, 24 Nov 2026 04:14:18 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f67c9ef927bacff9c4c6f5e6e4a66748a3f8ad887a12a093a4659436b35f8e4`  
		Last Modified: Tue, 24 Nov 2026 04:14:26 GMT  
		Size: 1.6 MB (1578451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1412a4b5b8eff627ab95488f153ae856a4671f11be0ec2733c4523c6c4ca4612`  
		Last Modified: Tue, 24 Nov 2026 04:14:26 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc404558052ae209f93e120ca2bf085b45040e27ea3fd1f286ec7dba415165b6`  
		Last Modified: Tue, 24 Nov 2026 04:14:26 GMT  
		Size: 15.8 MB (15801687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a359bdbc872d042cbad51766f81079904516a1873e3964a9faa9abd49f60cbe`  
		Last Modified: Tue, 24 Nov 2026 04:14:26 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts` - unknown; unknown

```console
$ docker pull haproxy@sha256:7d4ace21627ff997d15b51347f7e2f8a02690c71f42e76c9ede5db1e4aa38517
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2142093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11d85db8fd9d65843c9784edf05727b6a163f2030841757c07c235a285714d8a`

```dockerfile
```

-	Layers:
	-	`sha256:4c3761ab2b12e240f46f2d523f51e9317ccaeb93b0a6692a739f44b14fcadea6`  
		Last Modified: Tue, 24 Nov 2026 04:14:26 GMT  
		Size: 2.1 MB (2119155 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dbc2835b728659aeb3ac1446df1e8ea6c42a645046a46efaeb18c74df84fff3a`  
		Last Modified: Tue, 24 Nov 2026 04:14:26 GMT  
		Size: 22.9 KB (22938 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:1afec96da1c1296b751bd4a7dc2233f8237d1acca5b764afa009f1b55289c975
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45564536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:330fb7ce1fbaa46b35871b35437d35222c8795a2c762822e54fafc1b24a1ab82`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 22:29:59 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Wed, 18 Nov 2026 22:30:00 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Wed, 18 Nov 2026 22:31:04 GMT
ENV HAPROXY_VERSION=3.4.8
# Wed, 18 Nov 2026 22:31:04 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.8.tar.gz
# Wed, 18 Nov 2026 22:31:04 GMT
ENV HAPROXY_SHA256=024bd521a6cbbe32b426853147e6bbd6a89b107c5a34144846193fee5b7c6ed1
# Wed, 18 Nov 2026 22:31:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Wed, 18 Nov 2026 22:31:04 GMT
STOPSIGNAL SIGUSR1
# Wed, 18 Nov 2026 22:31:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 22:31:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 22:31:04 GMT
USER haproxy
# Wed, 18 Nov 2026 22:31:04 GMT
WORKDIR /var/lib/haproxy
# Wed, 18 Nov 2026 22:31:04 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:a2cd843a82972cc66a24a17025d58e4b75019395058fd3a090b196a2b5d8ac77`  
		Last Modified: Thu, 05 Nov 2026 06:16:00 GMT  
		Size: 28.0 MB (28019610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73b158bb166dfeb8ac1c337732a4ec8974e9f7247ad31c5727d66d449590b706`  
		Last Modified: Wed, 18 Nov 2026 22:31:29 GMT  
		Size: 1.5 MB (1532804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faf1325990102c8acf738fba682f60eaa66186e54d965dbc3eabb827c0a03519`  
		Last Modified: Wed, 18 Nov 2026 22:31:17 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5805d4cf9828221140e6458bbb5e95163d73f0fc6bcbc8da2c12acad27c648aa`  
		Last Modified: Wed, 18 Nov 2026 22:32:15 GMT  
		Size: 16.0 MB (16010476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cea07f7258d9cec53b9b1d5f27afc7067e5f4d1e8e13ee9339ef1a3066e282f`  
		Last Modified: Wed, 18 Nov 2026 22:31:22 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts` - unknown; unknown

```console
$ docker pull haproxy@sha256:4137389a74fbff5e78aff6366945f571be93904f8d0270254b06e229c3c2f0eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2145201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e4404e1fd034c399d9f9c54428e274a445b2e362b39ce23910bb3c957fcf056`

```dockerfile
```

-	Layers:
	-	`sha256:5b5f652fcd349469b80c25d5dc110e51106f05e3ad0bcb3233d9169f9b52c2d6`  
		Last Modified: Wed, 18 Nov 2026 22:31:25 GMT  
		Size: 2.1 MB (2122123 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3648a02556b6d0fa982a4da093d918f6030af8c5fe3dee34bc87317b2c194596`  
		Last Modified: Wed, 18 Nov 2026 22:31:13 GMT  
		Size: 23.1 KB (23078 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:cef0e1e2f0284ba0500be699f9f6251f5f81c1d1cc89a2ec3de7f321ed68149e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.5 MB (43545734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0674c1ac4750b9fbb726a927244134ca32520b50a6ceb683d87cf8a2c2a58c47`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:14:50 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 04:14:50 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Tue, 24 Nov 2026 04:15:45 GMT
ENV HAPROXY_VERSION=3.4.8
# Tue, 24 Nov 2026 04:15:45 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.8.tar.gz
# Tue, 24 Nov 2026 04:15:45 GMT
ENV HAPROXY_SHA256=024bd521a6cbbe32b426853147e6bbd6a89b107c5a34144846193fee5b7c6ed1
# Tue, 24 Nov 2026 04:15:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Tue, 24 Nov 2026 04:15:45 GMT
STOPSIGNAL SIGUSR1
# Tue, 24 Nov 2026 04:15:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:15:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:15:45 GMT
USER haproxy
# Tue, 24 Nov 2026 04:15:45 GMT
WORKDIR /var/lib/haproxy
# Tue, 24 Nov 2026 04:15:45 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:c720f3b38fb800619bf9fa0d867869c69ddd3a3f80e5316158c99a0cbe84f60f`  
		Last Modified: Tue, 24 Nov 2026 03:40:47 GMT  
		Size: 26.3 MB (26262460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74ff42e2f68ebc5c67cd17f350e57f4216bf8578fb05e61370f69541c179d291`  
		Last Modified: Tue, 24 Nov 2026 04:15:53 GMT  
		Size: 1.5 MB (1487571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2527d3aa6efbfeb1082ce83ba97a676d650aa892d9efd5fd747d754e46a8d0ce`  
		Last Modified: Tue, 24 Nov 2026 04:15:53 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4a4333186d8e59d753e6a25046d8b96c5d8f55cea82a30b54a2e71436754869`  
		Last Modified: Tue, 24 Nov 2026 04:15:53 GMT  
		Size: 15.8 MB (15794064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45baabc443c214f92ffd71e940c9717cebb041bcbcad20e59dc2a36bfaeeebb9`  
		Last Modified: Tue, 24 Nov 2026 04:15:53 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts` - unknown; unknown

```console
$ docker pull haproxy@sha256:6dc5a2d82cc574f55538d85ff587270413a3548342b42a405491a1cb309e6fcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2143672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0960a51f74bf24fb0388cccc576fe49f91358ec9eeb28b83a8088ff5b49679fd`

```dockerfile
```

-	Layers:
	-	`sha256:3b97fc17e27567a6dc7025f2fa7ed5db89ceb9b6898e78efeb5ad79ca86bb25f`  
		Last Modified: Tue, 24 Nov 2026 04:15:53 GMT  
		Size: 2.1 MB (2120594 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55e1a96a89bdd9c6a272feabd77c75b80c8bb7caf42d00d4bc0ee23b27b8d8ce`  
		Last Modified: Tue, 24 Nov 2026 04:15:53 GMT  
		Size: 23.1 KB (23078 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:5010418da02280ada130932e72fd6585f7ff95a5c75a230e4c13e48e0d239c8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.4 MB (47417771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6d34b367cf7afa877acf414f7273e8d45886ab96f2824613b1d07ab5ab806d9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:13:18 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 04:13:19 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Tue, 24 Nov 2026 04:14:05 GMT
ENV HAPROXY_VERSION=3.4.8
# Tue, 24 Nov 2026 04:14:05 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.8.tar.gz
# Tue, 24 Nov 2026 04:14:05 GMT
ENV HAPROXY_SHA256=024bd521a6cbbe32b426853147e6bbd6a89b107c5a34144846193fee5b7c6ed1
# Tue, 24 Nov 2026 04:14:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Tue, 24 Nov 2026 04:14:05 GMT
STOPSIGNAL SIGUSR1
# Tue, 24 Nov 2026 04:14:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:14:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:14:05 GMT
USER haproxy
# Tue, 24 Nov 2026 04:14:05 GMT
WORKDIR /var/lib/haproxy
# Tue, 24 Nov 2026 04:14:05 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:647ad235c5fa326a0437c9db5d9c231f3bc4062e7ad2669266ba3dd6827fad46`  
		Last Modified: Tue, 24 Nov 2026 04:14:13 GMT  
		Size: 1.6 MB (1560492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fa587040fd53bee5321e676bd3d6c19013f875f61040e00eae952609892fc53`  
		Last Modified: Tue, 24 Nov 2026 04:14:13 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28ff1894507dd28f2dfa34896b771cff28a5ea5dbe557c4fde2bdd6a695e2d86`  
		Last Modified: Tue, 24 Nov 2026 04:14:14 GMT  
		Size: 15.7 MB (15657605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:813506f9a3347f6f07c0190c9c766097f2393e34e1d7a46578d8107a08b96219`  
		Last Modified: Tue, 24 Nov 2026 04:14:13 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts` - unknown; unknown

```console
$ docker pull haproxy@sha256:e648862b6e317d0889330b2f6ad65e1f251879739bfd977a9f899e28fdbdd448
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2142578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4010bd620ccbe870dfb88ed9fd43144aafff1b0719a73d42b8fc92116515755`

```dockerfile
```

-	Layers:
	-	`sha256:157ca09c14b12c779e0af8d92745b732a35bc4e3d2d34a97a27678414cc633eb`  
		Last Modified: Tue, 24 Nov 2026 04:14:13 GMT  
		Size: 2.1 MB (2119456 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7756902f4b8618a115029c64e880ff74c24d8fdce102dd27c1bb2f2c04713f8`  
		Last Modified: Tue, 24 Nov 2026 04:14:13 GMT  
		Size: 23.1 KB (23122 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts` - linux; 386

```console
$ docker pull haproxy@sha256:ad346cc280db03da79f82141e0e2a42b03442d6bdf893a715c1f3d36b0c9d222
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48519489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30e1bf976d99656ce107081fc42e4c363077a6e7da21ad7bad369ec619f78705`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:13:38 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 04:13:38 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Tue, 24 Nov 2026 04:14:30 GMT
ENV HAPROXY_VERSION=3.4.8
# Tue, 24 Nov 2026 04:14:30 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.8.tar.gz
# Tue, 24 Nov 2026 04:14:30 GMT
ENV HAPROXY_SHA256=024bd521a6cbbe32b426853147e6bbd6a89b107c5a34144846193fee5b7c6ed1
# Tue, 24 Nov 2026 04:14:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Tue, 24 Nov 2026 04:14:30 GMT
STOPSIGNAL SIGUSR1
# Tue, 24 Nov 2026 04:14:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:14:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:14:30 GMT
USER haproxy
# Tue, 24 Nov 2026 04:14:30 GMT
WORKDIR /var/lib/haproxy
# Tue, 24 Nov 2026 04:14:30 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:7fb9e5f471a439ab129e9fe258623bccb6c4da1d0313890202b55fd6b5839533`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 31.4 MB (31357919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01cade7cee1239e01b32a0676f4208625c4913309589fd8ddebbbdc83a8ca547`  
		Last Modified: Tue, 24 Nov 2026 04:14:38 GMT  
		Size: 1.6 MB (1602264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb4b66d4f2270359d5b8f66f6564b12f775ce60558834fd9189cd0712bb4bfe2`  
		Last Modified: Tue, 24 Nov 2026 04:14:38 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5296acbe686f29ed1bbb879f6c1d8847a9b2e4466ebddf97ed4034fe1d44aa24`  
		Last Modified: Tue, 24 Nov 2026 04:14:38 GMT  
		Size: 15.6 MB (15557670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d3608de43f88bbc1e712c66ac0bea25968c06b05ee56970d9be661f762ccad8`  
		Last Modified: Tue, 24 Nov 2026 04:14:38 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts` - unknown; unknown

```console
$ docker pull haproxy@sha256:17247e2cb38d2b7c5f1cb67abf861f20bfb0a3e2c380c94efcba3e46b70f63f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2139209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70e2d8c4dd8f97c09fcb13065e2b463c8ee365b10f672579c0d4fa1245419e88`

```dockerfile
```

-	Layers:
	-	`sha256:553028838a56671123152621fa339b789d8bd8a31c777b6aef1f8ba0d7c8a9f1`  
		Last Modified: Tue, 24 Nov 2026 04:14:38 GMT  
		Size: 2.1 MB (2116326 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:728cbbf1ce3789db768a6b7f6d94e4e930bd1150f9d66abf255face92a3e4917`  
		Last Modified: Tue, 24 Nov 2026 04:14:38 GMT  
		Size: 22.9 KB (22883 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts` - linux; ppc64le

```console
$ docker pull haproxy@sha256:cdd503006ee92bee9f18756b780af45818a37b224482d49a06d04f5a55ddab3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.8 MB (51848794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2167a1448774a7786342f999476fafde6398b1ba74542e9ec7ee76bfb0d4efd1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:15:11 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 04:15:12 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Tue, 24 Nov 2026 04:17:13 GMT
ENV HAPROXY_VERSION=3.4.8
# Tue, 24 Nov 2026 04:17:13 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.8.tar.gz
# Tue, 24 Nov 2026 04:17:13 GMT
ENV HAPROXY_SHA256=024bd521a6cbbe32b426853147e6bbd6a89b107c5a34144846193fee5b7c6ed1
# Tue, 24 Nov 2026 04:17:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Tue, 24 Nov 2026 04:17:13 GMT
STOPSIGNAL SIGUSR1
# Tue, 24 Nov 2026 04:17:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:17:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:17:14 GMT
USER haproxy
# Tue, 24 Nov 2026 04:17:15 GMT
WORKDIR /var/lib/haproxy
# Tue, 24 Nov 2026 04:17:15 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6d599ee149161123db04af161af351247dbcd557ec08f78d82de0c89b6844f6c`  
		Last Modified: Tue, 24 Nov 2026 03:42:42 GMT  
		Size: 33.7 MB (33652639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c86b7eacd62282f456e7ee522a4038f726525258e38a2bee44d2ad3c389efed`  
		Last Modified: Tue, 24 Nov 2026 04:17:47 GMT  
		Size: 1.6 MB (1635975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6b785b4fc3a2ee5da0c6152055f5b82001b4ae352a74fd0561fdf1a564aa184`  
		Last Modified: Tue, 24 Nov 2026 04:17:47 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faddede8c54cc63839c40ba60a0a971c0c5e33ed0dcc2456a2ad1df4ea9fd02f`  
		Last Modified: Tue, 24 Nov 2026 04:17:48 GMT  
		Size: 16.6 MB (16558540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04c668ca2f941eaaa26155a32a96b9d468ed01c5098fe7e894aa5ca24a8eaf1c`  
		Last Modified: Tue, 24 Nov 2026 04:17:47 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts` - unknown; unknown

```console
$ docker pull haproxy@sha256:6999d3bbb154d859daffc57d57a64a418566f452168b28ccd3b7a1a747442355
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2145723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4661c7661b69c05e574d81bb7eb92fc239b5de16313814f8fbe340b91009975b`

```dockerfile
```

-	Layers:
	-	`sha256:d7d0566e51a6cad87645a9753c2f58ea0b10e8c1b97737a56820c1be086293ff`  
		Last Modified: Tue, 24 Nov 2026 04:17:47 GMT  
		Size: 2.1 MB (2122713 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68a1455130031553bb531f1330dd36f189283416bd2c09691a4c2ca25aab1b84`  
		Last Modified: Tue, 24 Nov 2026 04:17:47 GMT  
		Size: 23.0 KB (23010 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts` - linux; riscv64

```console
$ docker pull haproxy@sha256:d6b63fa7c467058289a4b357fed497f8950410094463a21f610798307a8d2c5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45102707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a718f2ef1775d6fe786b974ae1826deb52f195e16ba09db80586d3eb67fcd45`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 09:03:08 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:03:08 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Thu, 19 Nov 2026 15:31:06 GMT
ENV HAPROXY_VERSION=3.4.8
# Thu, 19 Nov 2026 15:31:06 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.8.tar.gz
# Thu, 19 Nov 2026 15:31:06 GMT
ENV HAPROXY_SHA256=024bd521a6cbbe32b426853147e6bbd6a89b107c5a34144846193fee5b7c6ed1
# Thu, 19 Nov 2026 15:31:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Thu, 19 Nov 2026 15:31:06 GMT
STOPSIGNAL SIGUSR1
# Thu, 19 Nov 2026 15:31:06 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:31:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Nov 2026 15:31:06 GMT
USER haproxy
# Thu, 19 Nov 2026 15:31:06 GMT
WORKDIR /var/lib/haproxy
# Thu, 19 Nov 2026 15:31:06 GMT
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
	-	`sha256:31ae597d56eddc49035ad25e0a420448ce5259f5bc0981f5ae20589786f72c73`  
		Last Modified: Thu, 19 Nov 2026 15:32:16 GMT  
		Size: 15.2 MB (15221926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:884d8657613d22a120cc4727018f4795f401d29740ee632279b1ed923d133f57`  
		Last Modified: Thu, 19 Nov 2026 15:32:13 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts` - unknown; unknown

```console
$ docker pull haproxy@sha256:9d296799d21d59c99987367bae738aa68dc72f39b1047bd05275116c5571d6eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2136088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8c7b9657ac2bc233d69a95ee738c7097f9eeb8ba1a72bdf7ad3285176d4d370`

```dockerfile
```

-	Layers:
	-	`sha256:3bb7917ffe436e65045d3e170e4a74e41ece79be8f51d2c0b900e7282cf5b513`  
		Last Modified: Thu, 19 Nov 2026 15:32:14 GMT  
		Size: 2.1 MB (2113076 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dedf0f587b157a8aa3959a67da85df1214973d76e08c1d8b381821ff6ef6a61b`  
		Last Modified: Thu, 19 Nov 2026 15:32:13 GMT  
		Size: 23.0 KB (23012 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts` - linux; s390x

```console
$ docker pull haproxy@sha256:9a9c03bff285422f3cf68686d6f1dce48ffc297ffb4b860940983f5ba17523cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 MB (47723259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45e2e8fbb7991258f55993bbc3dcbd799d5c0bc5a3e353b5ee0b022a112f37ae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 22:32:35 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Wed, 18 Nov 2026 22:32:46 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Wed, 18 Nov 2026 22:40:08 GMT
ENV HAPROXY_VERSION=3.4.8
# Wed, 18 Nov 2026 22:40:08 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.8.tar.gz
# Wed, 18 Nov 2026 22:40:08 GMT
ENV HAPROXY_SHA256=024bd521a6cbbe32b426853147e6bbd6a89b107c5a34144846193fee5b7c6ed1
# Wed, 18 Nov 2026 22:40:08 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Wed, 18 Nov 2026 22:40:08 GMT
STOPSIGNAL SIGUSR1
# Wed, 18 Nov 2026 22:48:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 22:48:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 22:48:26 GMT
USER haproxy
# Wed, 18 Nov 2026 22:48:28 GMT
WORKDIR /var/lib/haproxy
# Wed, 18 Nov 2026 22:48:28 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be46e5158a5b086e0b9bdf26a75965291e4c5ba3cb838724a4bacb903d8ff846`  
		Last Modified: Wed, 18 Nov 2026 22:49:11 GMT  
		Size: 1.6 MB (1597510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16f55fa47c1dd9eeb5fa6710680d0de4cf35c66476efdafbe5b464f66c6c11e9`  
		Last Modified: Wed, 18 Nov 2026 22:49:10 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ebc681bb191c2faa90951ad6323b70cf21de41d7170dbea7140a280eaa7a1c6`  
		Last Modified: Wed, 18 Nov 2026 22:49:15 GMT  
		Size: 16.2 MB (16199980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c86d7b5d2c329ba8000b8039ab154fdbd3ad5d938957b4e2ac10dc27805ef96b`  
		Last Modified: Wed, 18 Nov 2026 22:49:13 GMT  
		Size: 452.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts` - unknown; unknown

```console
$ docker pull haproxy@sha256:cee21767849b7e7879aecff47f9c484f10ab04997afbffc3c46137b9afe52899
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2143511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:181308ccb706879fcdc6fdfe28ea909eb75f26eb1aaa84bce4cd619366d78136`

```dockerfile
```

-	Layers:
	-	`sha256:f36cc2869f005376c6d7e68407c42691140bca2efc4a2c7561074daaa9d74b53`  
		Last Modified: Wed, 18 Nov 2026 22:49:14 GMT  
		Size: 2.1 MB (2120571 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:938a9543c7d1894941fce28bc34ab96483b4cbdf89d12f6d7718ec4e0687486b`  
		Last Modified: Wed, 18 Nov 2026 22:49:13 GMT  
		Size: 22.9 KB (22940 bytes)  
		MIME: application/vnd.in-toto+json
