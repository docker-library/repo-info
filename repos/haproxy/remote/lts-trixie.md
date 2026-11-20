## `haproxy:lts-trixie`

```console
$ docker pull haproxy@sha256:2d4b1f47a36ad0bc7425adf3fea6079023ae2ce3a964c2a084f454645d6be223
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
$ docker pull haproxy@sha256:fd93ecf121ec47529cc4f4b0e4991398db02b025954ee25fd6a99944d9a4cef8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.2 MB (47237225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4e654e486af6c50ee03d78387723d6396f8029bbf7390cb7cc683b5ec6a4108`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 22:29:03 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Wed, 18 Nov 2026 22:29:03 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Wed, 18 Nov 2026 22:29:49 GMT
ENV HAPROXY_VERSION=3.4.8
# Wed, 18 Nov 2026 22:29:49 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.8.tar.gz
# Wed, 18 Nov 2026 22:29:49 GMT
ENV HAPROXY_SHA256=024bd521a6cbbe32b426853147e6bbd6a89b107c5a34144846193fee5b7c6ed1
# Wed, 18 Nov 2026 22:29:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Wed, 18 Nov 2026 22:29:49 GMT
STOPSIGNAL SIGUSR1
# Wed, 18 Nov 2026 22:29:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 22:29:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 22:29:49 GMT
USER haproxy
# Wed, 18 Nov 2026 22:29:49 GMT
WORKDIR /var/lib/haproxy
# Wed, 18 Nov 2026 22:29:49 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70b99ebb6ae0e06fd41d2f6ac13b598c620caaf8ef936b4e6b06a6f419591433`  
		Last Modified: Wed, 18 Nov 2026 22:29:57 GMT  
		Size: 1.6 MB (1577782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c8c0e6bbe534c70a652ae4a3a4d46268c9e9b96a484549da9d9485a6f8f354`  
		Last Modified: Wed, 18 Nov 2026 22:29:57 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6376f037ebba46b55c783aba10bdd71c59af074a28f332c98383dd172704e87`  
		Last Modified: Wed, 18 Nov 2026 22:29:57 GMT  
		Size: 15.8 MB (15801670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d26fb340b1005251cd3a51c6357d8d9ae8753fafec1c53957607fb5f4afe806`  
		Last Modified: Wed, 18 Nov 2026 22:29:57 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts-trixie` - unknown; unknown

```console
$ docker pull haproxy@sha256:999a2c56be33c3fb64eb9e84268d0e71dc2e951162cb24f931bc6cceab30fd7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2142067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:507d43e292ec7663a3c8d121affc77606a9b9b5294aa4b7c3aa9343f26a0f909`

```dockerfile
```

-	Layers:
	-	`sha256:0be72f6bc9c194f4fa49d536f76884c349947999b75ce3dd95d33bb213b4572f`  
		Last Modified: Wed, 18 Nov 2026 22:29:57 GMT  
		Size: 2.1 MB (2119127 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5364c28d31dd333a621a06846ff8cd5e3a336685f04e698861cb578aeba4b9a0`  
		Last Modified: Wed, 18 Nov 2026 22:29:57 GMT  
		Size: 22.9 KB (22940 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts-trixie` - linux; arm variant v5

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

### `haproxy:lts-trixie` - unknown; unknown

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

### `haproxy:lts-trixie` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:582af82ef9d84a496d61062fbc5cf716cbf0125aa0200696de044af7ee8a09d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43556171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aadc75a97c19d9d21eaed214e59c965898ea69d20503a13cc9a61771ab994a7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 22:28:34 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Wed, 18 Nov 2026 22:28:34 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Wed, 18 Nov 2026 22:29:28 GMT
ENV HAPROXY_VERSION=3.4.8
# Wed, 18 Nov 2026 22:29:28 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.8.tar.gz
# Wed, 18 Nov 2026 22:29:28 GMT
ENV HAPROXY_SHA256=024bd521a6cbbe32b426853147e6bbd6a89b107c5a34144846193fee5b7c6ed1
# Wed, 18 Nov 2026 22:29:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Wed, 18 Nov 2026 22:29:28 GMT
STOPSIGNAL SIGUSR1
# Wed, 18 Nov 2026 22:29:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 22:29:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 22:29:28 GMT
USER haproxy
# Wed, 18 Nov 2026 22:29:28 GMT
WORKDIR /var/lib/haproxy
# Wed, 18 Nov 2026 22:29:28 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75e6e496aa6bf82c3c173e4fccb2260182cfd74891402add75f1b5c095bd4048`  
		Last Modified: Wed, 18 Nov 2026 22:29:36 GMT  
		Size: 1.5 MB (1487500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa5304a01d33110eaeee7c9a934c9d24127e4bc6da5065a2022900f9b38bf2ec`  
		Last Modified: Wed, 18 Nov 2026 22:29:36 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de5b03b08ae9c0e58a6bc99070e371205c6668b485952cb25e8883af8082ce92`  
		Last Modified: Wed, 18 Nov 2026 22:29:36 GMT  
		Size: 15.8 MB (15794115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80e8821b29069355c153780c3d73c6f20b787740f704f2c20322877b9992923b`  
		Last Modified: Wed, 18 Nov 2026 22:29:36 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts-trixie` - unknown; unknown

```console
$ docker pull haproxy@sha256:593e48a700c71f352c125eff87e7dada103c2a52ab924adc5a3bfc101d0fcf6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2143643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83f6ac374579cd5ab32a6a309eff0626087b7b708a82af94b74a1eb5730cc253`

```dockerfile
```

-	Layers:
	-	`sha256:a19350bad6fe49930f312773931fe5f0e6d7dda25c79f6285503bef2a025e2b3`  
		Last Modified: Wed, 18 Nov 2026 22:29:36 GMT  
		Size: 2.1 MB (2120566 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bfef894f33de1870e0a72f583569d038043c1a1dedad552a3430cdf94acc48ee`  
		Last Modified: Wed, 18 Nov 2026 22:29:36 GMT  
		Size: 23.1 KB (23077 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts-trixie` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:21485f862de04485d87812ce2f1098c5c61f502f8a9228c8c9e721042ecda76b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.4 MB (47433161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd1de1cec0e0d929d2ad46f8c9dbc5cfd8e663fc4c1e8d0e231798aae042a530`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 22:28:52 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Wed, 18 Nov 2026 22:28:52 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Wed, 18 Nov 2026 22:29:39 GMT
ENV HAPROXY_VERSION=3.4.8
# Wed, 18 Nov 2026 22:29:39 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.8.tar.gz
# Wed, 18 Nov 2026 22:29:39 GMT
ENV HAPROXY_SHA256=024bd521a6cbbe32b426853147e6bbd6a89b107c5a34144846193fee5b7c6ed1
# Wed, 18 Nov 2026 22:29:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Wed, 18 Nov 2026 22:29:39 GMT
STOPSIGNAL SIGUSR1
# Wed, 18 Nov 2026 22:29:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 22:29:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 22:29:39 GMT
USER haproxy
# Wed, 18 Nov 2026 22:29:39 GMT
WORKDIR /var/lib/haproxy
# Wed, 18 Nov 2026 22:29:39 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d797eccfd88ba0f49e12a03c5f7c0968371f7bfdb4506b6df392ba7a823bc52`  
		Last Modified: Wed, 18 Nov 2026 22:29:47 GMT  
		Size: 1.6 MB (1559730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03f549c6f11a6463da777885039988d3d4fdecbb00b91ee40f8870e7195cfa08`  
		Last Modified: Wed, 18 Nov 2026 22:29:47 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:358cef91709ad897469c4dd2434af07d0a0a19f61ee695436e97e5bd615bffc1`  
		Last Modified: Wed, 18 Nov 2026 22:29:48 GMT  
		Size: 15.7 MB (15657750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7e8db7091929d555a22c222a4d385e2d3a426cb49ff09a5dcb4ba2b580a3644`  
		Last Modified: Wed, 18 Nov 2026 22:29:47 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts-trixie` - unknown; unknown

```console
$ docker pull haproxy@sha256:54aad6be5e67c2d5e22ea3bf1b16a1bbd067c07ee1d71c533683628f4be1ec5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2142549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:087fc7eb95d70e77369b9e6e9e89d6e9cfa47b358a35827075079db51faad6f0`

```dockerfile
```

-	Layers:
	-	`sha256:9d9739c427e7cee943f7063f30eec92fb2f8f8da4ce53feea501a7045a6738ff`  
		Last Modified: Wed, 18 Nov 2026 22:29:47 GMT  
		Size: 2.1 MB (2119428 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d45c85c21f117d691238bb724d7262eea8ecf90d216ddfb0b48bd531bde7198`  
		Last Modified: Wed, 18 Nov 2026 22:29:47 GMT  
		Size: 23.1 KB (23121 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts-trixie` - linux; 386

```console
$ docker pull haproxy@sha256:1b56feb27e4a6fe18fc6789e9c25469970e412764787e0384641acc4159f2870
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48532200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecb221eda5edd8a4ef2a0d24bbf57e9338ef2a59d232f05cc4b7111c66ae2644`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 22:29:09 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Wed, 18 Nov 2026 22:29:09 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Wed, 18 Nov 2026 22:29:58 GMT
ENV HAPROXY_VERSION=3.4.8
# Wed, 18 Nov 2026 22:29:58 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.8.tar.gz
# Wed, 18 Nov 2026 22:29:58 GMT
ENV HAPROXY_SHA256=024bd521a6cbbe32b426853147e6bbd6a89b107c5a34144846193fee5b7c6ed1
# Wed, 18 Nov 2026 22:29:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Wed, 18 Nov 2026 22:29:58 GMT
STOPSIGNAL SIGUSR1
# Wed, 18 Nov 2026 22:29:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 22:29:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 22:29:58 GMT
USER haproxy
# Wed, 18 Nov 2026 22:29:58 GMT
WORKDIR /var/lib/haproxy
# Wed, 18 Nov 2026 22:29:58 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fe774cb7ffb3f9f94b41f190ce54169a7e4794a5fbeb44cea546dda3ed3cd2b`  
		Last Modified: Wed, 18 Nov 2026 22:30:05 GMT  
		Size: 1.6 MB (1602205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4281f70ce0e2259cdb1a8cfb547072634ac18fab04732e3ff37c007ab718cd`  
		Last Modified: Wed, 18 Nov 2026 22:30:05 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:363fb770a34ac12a3f8428b300cb91501a813306ef4a9738ba3faff30d65d150`  
		Last Modified: Wed, 18 Nov 2026 22:30:06 GMT  
		Size: 15.6 MB (15557595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62317345524f611dcb781695bcf9aef80d5e065defcde28cc4a9191dba242785`  
		Last Modified: Wed, 18 Nov 2026 22:30:05 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts-trixie` - unknown; unknown

```console
$ docker pull haproxy@sha256:8f2fa6bdf380adf0df7b7aad0e2dec7c7c479711f0d21e274b52ee90c99e96e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2139182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9737b25af0c72d884c23251a908436318ef50acba5d3a690268299aad65b39b`

```dockerfile
```

-	Layers:
	-	`sha256:80e1562814583a014dbf23d5f52658eaf97375e5c19fc748ca8319563878ae74`  
		Last Modified: Wed, 18 Nov 2026 22:30:05 GMT  
		Size: 2.1 MB (2116298 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87b4b558c8a8b393432d70b5d735f8a7b2a7c57fcfeeff3360168f272c02dcea`  
		Last Modified: Wed, 18 Nov 2026 22:30:05 GMT  
		Size: 22.9 KB (22884 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts-trixie` - linux; ppc64le

```console
$ docker pull haproxy@sha256:172f1d2281e3e82cc5985aa963f4267bbbc9d5e917d5943d3fa7c254f95d090b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.9 MB (51878848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6d3d97c4ea1a61444a28150c8d53ae37ce186cd80467ee1859f6498080094d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:13:11 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:13:11 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Wed, 18 Nov 2026 22:30:22 GMT
ENV HAPROXY_VERSION=3.4.8
# Wed, 18 Nov 2026 22:30:22 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.8.tar.gz
# Wed, 18 Nov 2026 22:30:22 GMT
ENV HAPROXY_SHA256=024bd521a6cbbe32b426853147e6bbd6a89b107c5a34144846193fee5b7c6ed1
# Wed, 18 Nov 2026 22:30:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Wed, 18 Nov 2026 22:30:22 GMT
STOPSIGNAL SIGUSR1
# Wed, 18 Nov 2026 22:30:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 22:30:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 22:30:23 GMT
USER haproxy
# Wed, 18 Nov 2026 22:30:24 GMT
WORKDIR /var/lib/haproxy
# Wed, 18 Nov 2026 22:30:24 GMT
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
	-	`sha256:276f35708eb925c1e99c8ffb8f44ad879d22c128643b84f254fb1dc7bffffb78`  
		Last Modified: Wed, 18 Nov 2026 22:31:03 GMT  
		Size: 16.6 MB (16574250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9293e6253b15bbf92fc18f6de2a047a850b643a777fa1c2bba07fc549420308`  
		Last Modified: Wed, 18 Nov 2026 22:30:41 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts-trixie` - unknown; unknown

```console
$ docker pull haproxy@sha256:cbbb3f9610a5025d8ed64b3885da5b1b761f3e7fec5a26131ac09a6c0c6635f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2145697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dccae04afa07e340adcbfd712290b1146f2fa7c29ffff3f6dc6a423a3b274b54`

```dockerfile
```

-	Layers:
	-	`sha256:8c2a9df5bff8160a366c0e9e4269cccff82cbe458f4e84394970254db5633906`  
		Last Modified: Wed, 18 Nov 2026 22:30:42 GMT  
		Size: 2.1 MB (2122685 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45b1641ecaedf8381edbaa2423f7fb2ee265af0b53f415a1f58eb3bea93ef05b`  
		Last Modified: Wed, 18 Nov 2026 22:30:40 GMT  
		Size: 23.0 KB (23012 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts-trixie` - linux; riscv64

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

### `haproxy:lts-trixie` - unknown; unknown

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

### `haproxy:lts-trixie` - linux; s390x

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

### `haproxy:lts-trixie` - unknown; unknown

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
