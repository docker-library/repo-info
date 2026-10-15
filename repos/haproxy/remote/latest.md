## `haproxy:latest`

```console
$ docker pull haproxy@sha256:6479d4cead30c4cc996cbe3dd50022c5404db22d2e001d1aa8fa366f4ea171e3
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
$ docker pull haproxy@sha256:40d9b2846938bbeea75cf2daa25a68b4138396f26e91f201aa85b95aae9f1269
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.2 MB (47199962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcd9571df21c3b3f1c7050d18b10551c5bc18253b41a1bc1a6d2f20f97ebb1fa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Wed, 14 Oct 2026 20:16:57 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Wed, 14 Oct 2026 20:16:57 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Wed, 14 Oct 2026 20:17:45 GMT
ENV HAPROXY_VERSION=3.4.7
# Wed, 14 Oct 2026 20:17:45 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.7.tar.gz
# Wed, 14 Oct 2026 20:17:45 GMT
ENV HAPROXY_SHA256=ccfd342f3724c2cd659574044d788f44e20b212467c6bd5edbbfc517a2775dca
# Wed, 14 Oct 2026 20:17:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Wed, 14 Oct 2026 20:17:45 GMT
STOPSIGNAL SIGUSR1
# Wed, 14 Oct 2026 20:17:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 14 Oct 2026 20:17:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Oct 2026 20:17:45 GMT
USER haproxy
# Wed, 14 Oct 2026 20:17:45 GMT
WORKDIR /var/lib/haproxy
# Wed, 14 Oct 2026 20:17:45 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a1b5735ab3ce39c131fe46588dba56b3994305c3df10bd3340b391951bc6d2b`  
		Last Modified: Wed, 14 Oct 2026 20:17:52 GMT  
		Size: 1.6 MB (1582555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a615685f4cf71e7b7dfc2be5682dbc04eb285ea4fcf1731befa0caa180c1a8d3`  
		Last Modified: Wed, 14 Oct 2026 20:17:52 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff5795f2b19a4bc7907206618e84d79d42f99596834eefa37568e34ce23941f`  
		Last Modified: Wed, 14 Oct 2026 20:17:53 GMT  
		Size: 15.8 MB (15772418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7e13911731065926d773f3f77a6794d70ac1385cbcaf1fcced3b6ad7876934a`  
		Last Modified: Wed, 14 Oct 2026 20:17:52 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:latest` - unknown; unknown

```console
$ docker pull haproxy@sha256:1d795cfea903ee2b5ebd03d2f3d59a518cd613c67165c9593fc170d9c44b86b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2143344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:208a2074d619b835a2f6e0b5efc0ff0437fac5ed5d100881152c6b63dec1c9df`

```dockerfile
```

-	Layers:
	-	`sha256:6ce3e37ca4a3c29cbd443c94ad2042eef9f87f1a8a9a2d499e0ba6a789329ff3`  
		Last Modified: Wed, 14 Oct 2026 20:17:52 GMT  
		Size: 2.1 MB (2120404 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e71530aa9ed05b0a06ea4781d9e9a77130b036a79cf70a3c194a15338532cc7e`  
		Last Modified: Wed, 14 Oct 2026 20:17:52 GMT  
		Size: 22.9 KB (22940 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:latest` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:cec8e57504ec2201b3a34781c0d04609ff3b3d79d23d746b63efc2a71ce34100
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45535614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f602e80426f2c698f18f7d6bc9d1984caf8ae58a76b7c9e258fd538883105c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1791158400'
# Wed, 14 Oct 2026 20:16:41 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Wed, 14 Oct 2026 20:16:42 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Wed, 14 Oct 2026 20:17:41 GMT
ENV HAPROXY_VERSION=3.4.7
# Wed, 14 Oct 2026 20:17:41 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.7.tar.gz
# Wed, 14 Oct 2026 20:17:41 GMT
ENV HAPROXY_SHA256=ccfd342f3724c2cd659574044d788f44e20b212467c6bd5edbbfc517a2775dca
# Wed, 14 Oct 2026 20:17:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Wed, 14 Oct 2026 20:17:41 GMT
STOPSIGNAL SIGUSR1
# Wed, 14 Oct 2026 20:17:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 14 Oct 2026 20:17:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Oct 2026 20:17:41 GMT
USER haproxy
# Wed, 14 Oct 2026 20:17:41 GMT
WORKDIR /var/lib/haproxy
# Wed, 14 Oct 2026 20:17:41 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:cb79ce05d3152dc6f7b8608f1f449aa1fbf1541a5dff435139649d755dd23d93`  
		Last Modified: Tue, 06 Oct 2026 00:13:24 GMT  
		Size: 28.0 MB (28007486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ff1d28fb2d480b372ecdafff099e813365306ef1533276036178a90fad74f0`  
		Last Modified: Wed, 14 Oct 2026 20:17:49 GMT  
		Size: 1.5 MB (1536633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b1940ecb8bbfed7b931ba6b005890481e5c527d7d8c0094bbfce378b2ea981a`  
		Last Modified: Wed, 14 Oct 2026 20:17:49 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c0091a31fa7800ed8ea21ab60a3b217b5ffa97c25355e6cfd2a57534fa582f5`  
		Last Modified: Wed, 14 Oct 2026 20:17:49 GMT  
		Size: 16.0 MB (15989846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a35684efd55f7de5d116ad8b6ca9943ba7065ce9804079a9e0b4717123afd3e4`  
		Last Modified: Wed, 14 Oct 2026 20:17:49 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:latest` - unknown; unknown

```console
$ docker pull haproxy@sha256:8409f9471195ddf8bb9494bd366d8fe9d7508d45b0507038d2f531a9a1985793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2146477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:145d4ab50dc16ac84123001863383e9c5b63cb1c546f3e01f519b30bbe58ede9`

```dockerfile
```

-	Layers:
	-	`sha256:3ba7acc55251b60cb406e23ac7b83c5c624026dba1c95c7516168803c8d88c81`  
		Last Modified: Wed, 14 Oct 2026 20:17:49 GMT  
		Size: 2.1 MB (2123400 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95ff3f3ce75d87666452d0b47c7eb53f41e1e5cd69868246fc6db245c987b6d1`  
		Last Modified: Wed, 14 Oct 2026 20:17:49 GMT  
		Size: 23.1 KB (23077 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:latest` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:1f3fcb3f9bfdd92bbea7a2e12ee27d79e46c5c3e0b6cd041f9efdb3e8658ce67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.5 MB (43516154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a35f6806c78bb5e7a77a3533969dc609c62d70ea69d4fd74035b8e469ec4c0e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Wed, 14 Oct 2026 20:16:23 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Wed, 14 Oct 2026 20:16:23 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Wed, 14 Oct 2026 20:17:20 GMT
ENV HAPROXY_VERSION=3.4.7
# Wed, 14 Oct 2026 20:17:20 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.7.tar.gz
# Wed, 14 Oct 2026 20:17:20 GMT
ENV HAPROXY_SHA256=ccfd342f3724c2cd659574044d788f44e20b212467c6bd5edbbfc517a2775dca
# Wed, 14 Oct 2026 20:17:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Wed, 14 Oct 2026 20:17:20 GMT
STOPSIGNAL SIGUSR1
# Wed, 14 Oct 2026 20:17:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 14 Oct 2026 20:17:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Oct 2026 20:17:20 GMT
USER haproxy
# Wed, 14 Oct 2026 20:17:20 GMT
WORKDIR /var/lib/haproxy
# Wed, 14 Oct 2026 20:17:20 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eff6242ecace9631bfa2806e11998ac56ef3dc9705e0467497e560d53dde80f8`  
		Last Modified: Wed, 14 Oct 2026 20:17:28 GMT  
		Size: 1.5 MB (1490284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c92db85527e95ad7ee62b5153dafda84c8c34de73bb021608b52f059d167daee`  
		Last Modified: Wed, 14 Oct 2026 20:17:28 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:266cf438eb0ae2e7839d3701f472c9893f6344956d98c09a36e31d1580bc3fb5`  
		Last Modified: Wed, 14 Oct 2026 20:17:28 GMT  
		Size: 15.8 MB (15766053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc0f1ddc74d4295d970cb7488f8a24453bc072e17276e1c30c11aa4c6172c126`  
		Last Modified: Wed, 14 Oct 2026 20:17:28 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:latest` - unknown; unknown

```console
$ docker pull haproxy@sha256:185cdb75a40e2b9510ffe65ced96ba577479ce49c24ae499b436ed038a8c9348
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2144921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a8ced3248b0912633b2cc7ddc63bb8f2695c4909fe052fe6154e9b886f71673`

```dockerfile
```

-	Layers:
	-	`sha256:e20f892ecceee7f9512f80a968e5ebad39e4e4c8bc8886c08ec910074c788702`  
		Last Modified: Wed, 14 Oct 2026 20:17:28 GMT  
		Size: 2.1 MB (2121843 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d365490bb0fb723ed4259e060a1cb3433b7c96ace1f336c6727e4fb5e229df49`  
		Last Modified: Wed, 14 Oct 2026 20:17:27 GMT  
		Size: 23.1 KB (23078 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:latest` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:023faeb06253e48a1059ea043ebca7c99c1b19452c6bee561e649e0a4861b146
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.4 MB (47399248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4740837346919895eb3d371fea5d634da38434674c91633b8252bdd34965f22`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Wed, 14 Oct 2026 20:16:11 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Wed, 14 Oct 2026 20:16:11 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Wed, 14 Oct 2026 20:16:55 GMT
ENV HAPROXY_VERSION=3.4.7
# Wed, 14 Oct 2026 20:16:55 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.7.tar.gz
# Wed, 14 Oct 2026 20:16:55 GMT
ENV HAPROXY_SHA256=ccfd342f3724c2cd659574044d788f44e20b212467c6bd5edbbfc517a2775dca
# Wed, 14 Oct 2026 20:16:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Wed, 14 Oct 2026 20:16:55 GMT
STOPSIGNAL SIGUSR1
# Wed, 14 Oct 2026 20:16:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 14 Oct 2026 20:16:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Oct 2026 20:16:55 GMT
USER haproxy
# Wed, 14 Oct 2026 20:16:55 GMT
WORKDIR /var/lib/haproxy
# Wed, 14 Oct 2026 20:16:55 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7870bbeaeb35f11d1c404276d10cec44663bc619c806c9b6e143904e0ed482d0`  
		Last Modified: Wed, 14 Oct 2026 20:17:03 GMT  
		Size: 1.6 MB (1565133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3025df1c5a3c5b28739daca7da02cacf70b141632b276cb056c8d2d7964a3464`  
		Last Modified: Wed, 14 Oct 2026 20:17:03 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42cf8fab13b9f97fe663b0a45b4e162ce481b77725fec43e54fd5b5950ce1371`  
		Last Modified: Wed, 14 Oct 2026 20:17:04 GMT  
		Size: 15.6 MB (15632192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a3bde0d2de18383b6034d17266a612d7e02c8bb73463ebed6720e665028ecda`  
		Last Modified: Wed, 14 Oct 2026 20:17:03 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:latest` - unknown; unknown

```console
$ docker pull haproxy@sha256:10b7f4a9bd9cae5fa3afe2e29b541a735f322459d9fd3c3b61ef11bd73d34598
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2143827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24c06f1f4dba8192aeb48624cd63d1b8ca58633178e94c7381866358d216f37d`

```dockerfile
```

-	Layers:
	-	`sha256:8b2466b52ea958bef83893fe24dd210fd495ca93ddcc57942d5d42e45dfaa8d3`  
		Last Modified: Wed, 14 Oct 2026 20:17:03 GMT  
		Size: 2.1 MB (2120705 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2dfb9ecede0344591fa919ae4cc4d5b1c920ecdd041d0de450926bd0a1e78893`  
		Last Modified: Wed, 14 Oct 2026 20:17:03 GMT  
		Size: 23.1 KB (23122 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:latest` - linux; 386

```console
$ docker pull haproxy@sha256:15dad81140dd4f2ff9e7de776be550990d4e57403526a785041746ceded0c93c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48488213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b070b1156bb5ec77dd663956667a5c6c1f0abca29083e8e40d75f68958ba71ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Wed, 14 Oct 2026 20:16:55 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Wed, 14 Oct 2026 20:16:56 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Wed, 14 Oct 2026 20:17:54 GMT
ENV HAPROXY_VERSION=3.4.7
# Wed, 14 Oct 2026 20:17:54 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.7.tar.gz
# Wed, 14 Oct 2026 20:17:54 GMT
ENV HAPROXY_SHA256=ccfd342f3724c2cd659574044d788f44e20b212467c6bd5edbbfc517a2775dca
# Wed, 14 Oct 2026 20:17:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Wed, 14 Oct 2026 20:17:54 GMT
STOPSIGNAL SIGUSR1
# Wed, 14 Oct 2026 20:17:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 14 Oct 2026 20:17:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Oct 2026 20:17:54 GMT
USER haproxy
# Wed, 14 Oct 2026 20:17:54 GMT
WORKDIR /var/lib/haproxy
# Wed, 14 Oct 2026 20:17:54 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d04cafd9a48e90112315b2be3e49973cffbe8320a111b0e57fbe44fcbbc657c`  
		Last Modified: Wed, 14 Oct 2026 20:18:01 GMT  
		Size: 1.6 MB (1604900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acff5c8e0deb8d2e590107cc67c9f89c9a2f0449a1473f45f6c4fd9c310e919d`  
		Last Modified: Wed, 14 Oct 2026 20:18:01 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f37c208f56e22655f1397627cdd5c2f0c719974b4ccab35035dc685d9a66c04`  
		Last Modified: Wed, 14 Oct 2026 20:18:01 GMT  
		Size: 15.5 MB (15528374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec2a7cae4daabb70d3e2d5388c5879ad0cd7da38e00da96b04b89d9dd6293332`  
		Last Modified: Wed, 14 Oct 2026 20:18:01 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:latest` - unknown; unknown

```console
$ docker pull haproxy@sha256:03693ba525f79db0627089f33849396929db6e77e0070dc87214df1e078daa0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2140458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31db256aafb2878f35b737737cc84ac46a967324bcddeef0abac59012048481d`

```dockerfile
```

-	Layers:
	-	`sha256:71732f0ca85893aa95de3ae19bbf8474683e649abc4187f1d8ac5278c09e6f35`  
		Last Modified: Wed, 14 Oct 2026 20:18:01 GMT  
		Size: 2.1 MB (2117575 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a9526554b0efa4406d89e96a9f97d8f86675445e120396bd06672f0590f44b9`  
		Last Modified: Wed, 14 Oct 2026 20:18:01 GMT  
		Size: 22.9 KB (22883 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:latest` - linux; ppc64le

```console
$ docker pull haproxy@sha256:aed5603c44745df0fa5c92defb3d61277a94816164121c04c0635d33efc46806
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.8 MB (51833503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3554f215d7890c5e0b102d5d276a5d6d2c7c491f87e8fe7f8fed67a81395f797`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Wed, 14 Oct 2026 20:15:18 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Wed, 14 Oct 2026 20:15:19 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Wed, 14 Oct 2026 20:18:09 GMT
ENV HAPROXY_VERSION=3.4.7
# Wed, 14 Oct 2026 20:18:09 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.7.tar.gz
# Wed, 14 Oct 2026 20:18:09 GMT
ENV HAPROXY_SHA256=ccfd342f3724c2cd659574044d788f44e20b212467c6bd5edbbfc517a2775dca
# Wed, 14 Oct 2026 20:18:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Wed, 14 Oct 2026 20:18:09 GMT
STOPSIGNAL SIGUSR1
# Wed, 14 Oct 2026 20:18:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 14 Oct 2026 20:18:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Oct 2026 20:18:09 GMT
USER haproxy
# Wed, 14 Oct 2026 20:18:10 GMT
WORKDIR /var/lib/haproxy
# Wed, 14 Oct 2026 20:18:10 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e00efd3b5b0a8da97dd09907cbfe8583fc7030e0d737db6148d5227242cc06ad`  
		Last Modified: Wed, 14 Oct 2026 20:17:19 GMT  
		Size: 1.6 MB (1640001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aa91430167ba9280ad89e643224c18271762b1ea202b95d03e93f66b506b6cb`  
		Last Modified: Wed, 14 Oct 2026 20:17:18 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4752e667386a40d81e66eeee84bc09e10d7806e8c2905699972007d35282c90`  
		Last Modified: Wed, 14 Oct 2026 20:18:34 GMT  
		Size: 16.5 MB (16540257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09796e76e7d7f55b6f2d918b1a191dc1f3eca27bdde13ab05516573db9ab4dda`  
		Last Modified: Wed, 14 Oct 2026 20:18:33 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:latest` - unknown; unknown

```console
$ docker pull haproxy@sha256:6f36b1fc1b708dbf4a56c798efbd9ddaa180e76605e1905fa17536f00400a281
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2146974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aab3b0779dc3d58fd5ee283a02134e2cd2138cfb157544f6846d727ec1d25ce`

```dockerfile
```

-	Layers:
	-	`sha256:fa76d521d753f588dbd0b73720d8485b4f216cce2b57f2d0661132746c89ebe7`  
		Last Modified: Wed, 14 Oct 2026 20:18:33 GMT  
		Size: 2.1 MB (2123962 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58ac24288c930a7d5070c8194a6728bda997af09a90a9a3a4088997f8f7df00b`  
		Last Modified: Wed, 14 Oct 2026 20:18:33 GMT  
		Size: 23.0 KB (23012 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:latest` - linux; riscv64

```console
$ docker pull haproxy@sha256:ee06503ad25baafe003ae82b937772c402d862d041c7acad7daf66968d34b80e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45056495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bdab299dc45a08a10535e21e890c48182fc77108c9dd8353f97ceca5b4c2fa1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Thu, 15 Oct 2026 07:05:39 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Thu, 15 Oct 2026 07:05:40 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Thu, 15 Oct 2026 08:00:10 GMT
ENV HAPROXY_VERSION=3.4.7
# Thu, 15 Oct 2026 08:00:10 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.7.tar.gz
# Thu, 15 Oct 2026 08:00:10 GMT
ENV HAPROXY_SHA256=ccfd342f3724c2cd659574044d788f44e20b212467c6bd5edbbfc517a2775dca
# Thu, 15 Oct 2026 08:00:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Thu, 15 Oct 2026 08:00:10 GMT
STOPSIGNAL SIGUSR1
# Thu, 15 Oct 2026 08:00:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 15 Oct 2026 08:00:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Oct 2026 08:00:11 GMT
USER haproxy
# Thu, 15 Oct 2026 08:00:11 GMT
WORKDIR /var/lib/haproxy
# Thu, 15 Oct 2026 08:00:11 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b78c9a3540209447fd927971552e7d2e161b87ccdba8be4eb216470fdc5055d0`  
		Last Modified: Thu, 15 Oct 2026 07:23:21 GMT  
		Size: 1.5 MB (1536323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:856eec7479d091c30329f42dff44c72be50379f5f9455755a7891d67c1fc8fed`  
		Last Modified: Thu, 15 Oct 2026 07:23:21 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20ad27a1479e3192471e165bbf9f4320c646b8763b7dedd60c628dfcced8b4a2`  
		Last Modified: Thu, 15 Oct 2026 08:01:20 GMT  
		Size: 15.2 MB (15184768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7a5483c907939d0fd3bdc9fd42c705777fe39a6442462723c4a7f45278800bf`  
		Last Modified: Thu, 15 Oct 2026 08:01:18 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:latest` - unknown; unknown

```console
$ docker pull haproxy@sha256:ca56c24113a701db4dcb32d9db78b8c31e52ede393479d0a1556519e497aedea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2137365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96dbf3c9fbb946f2384574ea73860cb5f0b90add89369895e84841013468f52f`

```dockerfile
```

-	Layers:
	-	`sha256:8164e65074a146509b01cca5f85f93f4b6608ca70494a55c7231da01e7350bd4`  
		Last Modified: Thu, 15 Oct 2026 08:01:19 GMT  
		Size: 2.1 MB (2114353 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d2ec5e15ab465d07de4c64b5bf273b3bc8d81d98a44a408d370e1b118005965`  
		Last Modified: Thu, 15 Oct 2026 08:01:18 GMT  
		Size: 23.0 KB (23012 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:latest` - linux; s390x

```console
$ docker pull haproxy@sha256:5ccfeb0293a6f3002653c5f8fec1ba021d66d2456244c717d7d5075407d2a489
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 MB (47689381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30c1eedcd2e163981090523a21d2970cf0dbc864b97f6ee941f25982cf9b765a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Wed, 14 Oct 2026 20:15:07 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Wed, 14 Oct 2026 20:15:10 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Wed, 14 Oct 2026 20:16:33 GMT
ENV HAPROXY_VERSION=3.4.7
# Wed, 14 Oct 2026 20:16:33 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.7.tar.gz
# Wed, 14 Oct 2026 20:16:33 GMT
ENV HAPROXY_SHA256=ccfd342f3724c2cd659574044d788f44e20b212467c6bd5edbbfc517a2775dca
# Wed, 14 Oct 2026 20:16:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Wed, 14 Oct 2026 20:16:33 GMT
STOPSIGNAL SIGUSR1
# Wed, 14 Oct 2026 20:16:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 14 Oct 2026 20:16:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Oct 2026 20:16:33 GMT
USER haproxy
# Wed, 14 Oct 2026 20:16:33 GMT
WORKDIR /var/lib/haproxy
# Wed, 14 Oct 2026 20:16:33 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:fd14e6ce0256b9093e480e6146009effeb6c2bc486ff0052d50a32cbab8335fc`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 29.9 MB (29909247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54606ac3edfef9bf22615f324434550ddd21085d362038f223b6d9aca6a1bab5`  
		Last Modified: Wed, 14 Oct 2026 20:16:47 GMT  
		Size: 1.6 MB (1601349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc169fa28e50c4ce94ea0ccb26c0a069568ea1e0b1535dbdc611ef548d5d910e`  
		Last Modified: Wed, 14 Oct 2026 20:16:46 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c64d144c1396f8bafcb68060fe78a631b41a9ccd2a9b0fb26081f96e9626f7c3`  
		Last Modified: Wed, 14 Oct 2026 20:16:47 GMT  
		Size: 16.2 MB (16177138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be32ad5c1604ffbf629b18b634b754a58fc0ecb3f13a601199434176f9c83731`  
		Last Modified: Wed, 14 Oct 2026 20:16:46 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:latest` - unknown; unknown

```console
$ docker pull haproxy@sha256:024babd3ff1a1f33880953c55346bf8cd434be9c8043583a310aa44afd2b34a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2144787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc1dea18ad85a3cfc3aa8dc513f2025b861b735131af602c3d52bbedeb743764`

```dockerfile
```

-	Layers:
	-	`sha256:b77ff6c61a5e5759a5066dfba64bb642dccaa133eb79a9dbf0af31462b3b9900`  
		Last Modified: Wed, 14 Oct 2026 20:16:46 GMT  
		Size: 2.1 MB (2121848 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44566629c03508b99fb02925175edad50645d95203f9dc00a824bbbab520b39d`  
		Last Modified: Wed, 14 Oct 2026 20:16:46 GMT  
		Size: 22.9 KB (22939 bytes)  
		MIME: application/vnd.in-toto+json
