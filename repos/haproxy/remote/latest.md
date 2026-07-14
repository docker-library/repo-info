## `haproxy:latest`

```console
$ docker pull haproxy@sha256:96052ea46a5de5f69101eff7b1ec09708dfbb34894380c6f264acdd38eccbb16
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
$ docker pull haproxy@sha256:5ba66655cd371244f3ec5b33f10ab982386cf47f28550b21012ba6c1d75e03e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.1 MB (47061705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee383c3660b60a5b0a85a6f42b4306ae7a5848df84050e93c7920a87eb75c9cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:16:27 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 01:16:27 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Tue, 14 Jul 2026 01:17:17 GMT
ENV HAPROXY_VERSION=3.4.2
# Tue, 14 Jul 2026 01:17:17 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.2.tar.gz
# Tue, 14 Jul 2026 01:17:17 GMT
ENV HAPROXY_SHA256=b1330dbb0d6e6bc4a72c4708a6a9e585579cd1156dfe5763c26305105bc12907
# Tue, 14 Jul 2026 01:17:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Tue, 14 Jul 2026 01:17:17 GMT
STOPSIGNAL SIGUSR1
# Tue, 14 Jul 2026 01:17:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:17:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:17:17 GMT
USER haproxy
# Tue, 14 Jul 2026 01:17:17 GMT
WORKDIR /var/lib/haproxy
# Tue, 14 Jul 2026 01:17:17 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6378ed450c2e9a48a845622397937de7000eda3131cb8c0ddba9137e16526cda`  
		Last Modified: Tue, 14 Jul 2026 01:17:25 GMT  
		Size: 1.6 MB (1581311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de02cab19962122a1fd37383ad594d81c9ef922b80c691289d06227c519309aa`  
		Last Modified: Tue, 14 Jul 2026 01:17:15 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e7f03d18c25ba3529082e9cde323b79c5921f822f544809dbe30178f97b3dd4`  
		Last Modified: Tue, 14 Jul 2026 01:17:25 GMT  
		Size: 15.7 MB (15697849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6db2f0514811676279a47d578f4c9d8688ff94ff08427ea0b3214a9e0747742e`  
		Last Modified: Tue, 14 Jul 2026 01:17:24 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:latest` - unknown; unknown

```console
$ docker pull haproxy@sha256:18e2157e6e786ff0c7f3af881b36ff0a73391260ce49b2ff1a5dd5fc2e98c285
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2137418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:915f73427bdfb7364fd57f4eb0c056489d094c8d247896ff8f5a1770669d3ee6`

```dockerfile
```

-	Layers:
	-	`sha256:037033bcb9d2533ee466aab54ca49d9f957b8fc38b7c0324a5b57f33fbcf57bb`  
		Last Modified: Tue, 14 Jul 2026 01:17:25 GMT  
		Size: 2.1 MB (2114478 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85eb23ddab90efb57c7d6fcc05bf852f478fc0ebf71cba39ed81c06ea052a72a`  
		Last Modified: Tue, 14 Jul 2026 01:17:24 GMT  
		Size: 22.9 KB (22940 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:latest` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:97a6fa9f2ee283f168940bad880aa10e7a7ba2df23b587fec0b9dd08fd76cf4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45410505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6798715f9b646aeeb56afae4d67602d5242126fffd93f5c45e1ca86ce8c4210`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:15:38 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 01:15:38 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Tue, 14 Jul 2026 01:16:41 GMT
ENV HAPROXY_VERSION=3.4.2
# Tue, 14 Jul 2026 01:16:41 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.2.tar.gz
# Tue, 14 Jul 2026 01:16:41 GMT
ENV HAPROXY_SHA256=b1330dbb0d6e6bc4a72c4708a6a9e585579cd1156dfe5763c26305105bc12907
# Tue, 14 Jul 2026 01:16:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Tue, 14 Jul 2026 01:16:41 GMT
STOPSIGNAL SIGUSR1
# Tue, 14 Jul 2026 01:16:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:16:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:16:41 GMT
USER haproxy
# Tue, 14 Jul 2026 01:16:41 GMT
WORKDIR /var/lib/haproxy
# Tue, 14 Jul 2026 01:16:41 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:9ce68cca63faf1f06434dd1423cb52db0d4251ee3f1838e43e5893fae28f9267`  
		Last Modified: Tue, 14 Jul 2026 00:14:26 GMT  
		Size: 28.0 MB (27954818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:673712bbb93f444d4824f5d16071a5fefc14cb188cf4f9055596820d7838ff49`  
		Last Modified: Tue, 14 Jul 2026 01:16:48 GMT  
		Size: 1.5 MB (1535896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceadbb9194f7c12fd719eef4efcb99121dc68b136c62030a1e7a70c24b292da1`  
		Last Modified: Tue, 14 Jul 2026 01:16:48 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20785f804fe4cb42df23fc3348b6fde4eef936a0a0d8157a734d59ab875152c9`  
		Last Modified: Tue, 14 Jul 2026 01:16:49 GMT  
		Size: 15.9 MB (15918150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:084ed85bdf6268ba45e08cb7c6517a420001b03d21d3beefa4ebeb051c35d8a8`  
		Last Modified: Tue, 14 Jul 2026 01:16:49 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:latest` - unknown; unknown

```console
$ docker pull haproxy@sha256:404c758b1cf0fe4fdbc740f3cd5cf6e8b2a9c2441d2310c4805bab0b02b8592e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2140552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d87b53b56301f5304e9651f30fe6afbd0714fa8bbaee4186d4400f56af18fbd`

```dockerfile
```

-	Layers:
	-	`sha256:92ecf0470a61efe8a1dd582afa40533f95eec466b816c6eed4831a0c19c930e4`  
		Last Modified: Tue, 14 Jul 2026 01:16:48 GMT  
		Size: 2.1 MB (2117474 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:133e1d84ba3f4ad97ca38541e112af935059a17d398424c41ba427cc4fd06de5`  
		Last Modified: Tue, 14 Jul 2026 01:16:48 GMT  
		Size: 23.1 KB (23078 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:latest` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:0f556d64f06f3a24c430b8172253b427c8bf80c64e918be0a86f9cf6bc35233c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.4 MB (43400156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61e184180479f3f280dfd1b8af9b046f5f7efbf940c702170e6a70cc0cd1812f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 20:15:58 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Mon, 06 Jul 2026 20:15:58 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Mon, 06 Jul 2026 20:16:52 GMT
ENV HAPROXY_VERSION=3.4.2
# Mon, 06 Jul 2026 20:16:52 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.2.tar.gz
# Mon, 06 Jul 2026 20:16:52 GMT
ENV HAPROXY_SHA256=b1330dbb0d6e6bc4a72c4708a6a9e585579cd1156dfe5763c26305105bc12907
# Mon, 06 Jul 2026 20:16:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Mon, 06 Jul 2026 20:16:52 GMT
STOPSIGNAL SIGUSR1
# Mon, 06 Jul 2026 20:16:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 20:16:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 20:16:52 GMT
USER haproxy
# Mon, 06 Jul 2026 20:16:52 GMT
WORKDIR /var/lib/haproxy
# Mon, 06 Jul 2026 20:16:52 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e6147e7e8a14b4c55ac0cc0ec1d1689304b5e32b68a7d71672bfe718e6485f8`  
		Last Modified: Mon, 06 Jul 2026 20:17:00 GMT  
		Size: 1.5 MB (1489595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c49ea5b152f70443ea145ad752534c21501de7cf726ad478bef6e0efa2f13d6a`  
		Last Modified: Mon, 06 Jul 2026 20:17:00 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fb1222804d31a00ff888e071ab0af91f18142c06ad66b5a38ac72885869ef7e`  
		Last Modified: Mon, 06 Jul 2026 20:17:00 GMT  
		Size: 15.7 MB (15697869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb0f2acfab840ceef3c779d5b43ba868e00ac9b1e03649bc877cad1321bc2ca5`  
		Last Modified: Mon, 06 Jul 2026 20:17:00 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:latest` - unknown; unknown

```console
$ docker pull haproxy@sha256:5dc2c16c7ad3d2c8404c3cf0290314296e0ac4a20a031015f86a5283e8b878d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2138957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6b30bfd340d8a5cbfba6801fbed3dc354d99690b716cd48108baaaf4c9d3754`

```dockerfile
```

-	Layers:
	-	`sha256:0f7fdfc2a0f7a38030b830d19ae5739454e937a8e8e2bbd06db45f2b4b3a8de7`  
		Last Modified: Mon, 06 Jul 2026 20:17:00 GMT  
		Size: 2.1 MB (2115881 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5eb163399da3534fe5e6f576ed6cfbfd70202457a071af81ee1c111db07b7425`  
		Last Modified: Mon, 06 Jul 2026 20:17:00 GMT  
		Size: 23.1 KB (23076 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:latest` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:21bd0cd224c2b60037512bae2e35621b51451cb618bcc25beef798dc07563962
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.3 MB (47286639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04876d8b2bfc7e75d19cdf517577344a171dcf4369073449648399a8d892a6d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 20:11:30 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Mon, 06 Jul 2026 20:11:30 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Mon, 06 Jul 2026 20:12:15 GMT
ENV HAPROXY_VERSION=3.4.2
# Mon, 06 Jul 2026 20:12:15 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.2.tar.gz
# Mon, 06 Jul 2026 20:12:15 GMT
ENV HAPROXY_SHA256=b1330dbb0d6e6bc4a72c4708a6a9e585579cd1156dfe5763c26305105bc12907
# Mon, 06 Jul 2026 20:12:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Mon, 06 Jul 2026 20:12:15 GMT
STOPSIGNAL SIGUSR1
# Mon, 06 Jul 2026 20:12:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 20:12:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 20:12:15 GMT
USER haproxy
# Mon, 06 Jul 2026 20:12:15 GMT
WORKDIR /var/lib/haproxy
# Mon, 06 Jul 2026 20:12:15 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da26fa893ab404bbec2dd38b577295bda423f01772d3bdf5239379841b785f76`  
		Last Modified: Mon, 06 Jul 2026 20:12:23 GMT  
		Size: 1.6 MB (1563990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92bb035afecccc7f7533c70a972975ea15a2ef87ccb781454aa96d7116e3d072`  
		Last Modified: Mon, 06 Jul 2026 20:12:22 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fc80950a897ef202a90ecab6c16f65e42a8a3e11ff15b7b2f3b783de6080fa`  
		Last Modified: Mon, 06 Jul 2026 20:12:23 GMT  
		Size: 15.6 MB (15572455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:058828e73093d293bacde017c528c2da29a2256bd1a728cb6c3f383dd36fc681`  
		Last Modified: Mon, 06 Jul 2026 20:12:23 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:latest` - unknown; unknown

```console
$ docker pull haproxy@sha256:af080e0d24e0b016d50ada58c8afc4216287680f2883c9e0508ea6284eb94d32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2137865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32939a11006b9c2c5f0dc52f97196de8a2b051c82a90b43972be69cde79b1d96`

```dockerfile
```

-	Layers:
	-	`sha256:26ff078fb783b9aad58983cf949b291cce71a3e9b67e523b6f632bb15efdaf72`  
		Last Modified: Mon, 06 Jul 2026 20:12:23 GMT  
		Size: 2.1 MB (2114743 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1e98e170ff5c9b202145d832cb0b93bdb1a6502266e2f55624a258c7cfa88d1`  
		Last Modified: Mon, 06 Jul 2026 20:12:22 GMT  
		Size: 23.1 KB (23122 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:latest` - linux; 386

```console
$ docker pull haproxy@sha256:67d78bb4a027394505862db609d11c2d73890c56d090aa8daa4a34444cf2e32e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.4 MB (48370586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c42b9251795a0e43824a5d8215a21420c340bed2928902304ea2acc835d1908b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 20:12:50 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Mon, 06 Jul 2026 20:12:50 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Mon, 06 Jul 2026 20:13:41 GMT
ENV HAPROXY_VERSION=3.4.2
# Mon, 06 Jul 2026 20:13:41 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.2.tar.gz
# Mon, 06 Jul 2026 20:13:41 GMT
ENV HAPROXY_SHA256=b1330dbb0d6e6bc4a72c4708a6a9e585579cd1156dfe5763c26305105bc12907
# Mon, 06 Jul 2026 20:13:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Mon, 06 Jul 2026 20:13:41 GMT
STOPSIGNAL SIGUSR1
# Mon, 06 Jul 2026 20:13:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 20:13:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 20:13:41 GMT
USER haproxy
# Mon, 06 Jul 2026 20:13:41 GMT
WORKDIR /var/lib/haproxy
# Mon, 06 Jul 2026 20:13:41 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:984d3baa100eb8c4d7c83b7c23b4748e508aa6ed5903297f02be90a681f52d41`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 31.3 MB (31301210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbc39cfca8804394ddf2d149d96f5a955e5d66f99c8002b8b6f09a3fad1080fb`  
		Last Modified: Mon, 06 Jul 2026 20:13:49 GMT  
		Size: 1.6 MB (1603772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1de4060cdf9066e357e0cee47cf68b3fdfc00fbaa49f12e2e17e496fdb1da32d`  
		Last Modified: Mon, 06 Jul 2026 20:13:49 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97d1cc645f6798582ad1aba4943204bff5ea7f45c83d7641ceb6df96dfbabfff`  
		Last Modified: Mon, 06 Jul 2026 20:13:49 GMT  
		Size: 15.5 MB (15463962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:137a62a741cc7708f010d1796a9544effce1ee8799eed673a5134fd17c1ba8a4`  
		Last Modified: Mon, 06 Jul 2026 20:13:49 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:latest` - unknown; unknown

```console
$ docker pull haproxy@sha256:0aa09f0fd6cfead8c764feeeff5c0b3911d61c47aaf40a3e2370e04431b74ae3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2134497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49d28ad0f5e936083e65e7a4cdcf6ce961576e34a26207bad1b580000d531bfa`

```dockerfile
```

-	Layers:
	-	`sha256:f9bbc11f9c2a3a651613e5e1ae862645c4325226ca77be7381d967fabd3217a8`  
		Last Modified: Mon, 06 Jul 2026 20:13:49 GMT  
		Size: 2.1 MB (2111613 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4334bb442220be830cc64e4615636995af4b8043665342e65209d73b030b9a9f`  
		Last Modified: Mon, 06 Jul 2026 20:13:49 GMT  
		Size: 22.9 KB (22884 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:latest` - linux; ppc64le

```console
$ docker pull haproxy@sha256:af8456fa814ef2920a15aa9e1b221ffa7feef4115044423ddc82d2a253f4049e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51725169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bfebd765e60a4f707e7d759f67aa152d4fc60f7eb54e74ce3b71f9644231a7b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:16:32 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 01:16:33 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Mon, 06 Jul 2026 20:19:32 GMT
ENV HAPROXY_VERSION=3.4.2
# Mon, 06 Jul 2026 20:19:32 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.2.tar.gz
# Mon, 06 Jul 2026 20:19:32 GMT
ENV HAPROXY_SHA256=b1330dbb0d6e6bc4a72c4708a6a9e585579cd1156dfe5763c26305105bc12907
# Mon, 06 Jul 2026 20:19:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Mon, 06 Jul 2026 20:19:32 GMT
STOPSIGNAL SIGUSR1
# Mon, 06 Jul 2026 20:19:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 20:19:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 20:19:33 GMT
USER haproxy
# Mon, 06 Jul 2026 20:19:33 GMT
WORKDIR /var/lib/haproxy
# Mon, 06 Jul 2026 20:19:33 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecdf48770d2ce4f6d2ec7fdca2214c67bee013812202b7495a65f8975916b4cb`  
		Last Modified: Wed, 24 Jun 2026 01:18:45 GMT  
		Size: 1.6 MB (1639536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54f20c5b6c932d79067aaf227b5db380011b0983b51497f83f05ba19c64c6c68`  
		Last Modified: Wed, 24 Jun 2026 01:18:44 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36294da4a869cb78940542863a75b50b4f1f637c8f8b891ce8452eb536986914`  
		Last Modified: Mon, 06 Jul 2026 20:19:48 GMT  
		Size: 16.5 MB (16477603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbdc0234ce6d5aa1b8df895fdb5fd7d2569883ec60b31851978abb8a7e787497`  
		Last Modified: Mon, 06 Jul 2026 20:19:47 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:latest` - unknown; unknown

```console
$ docker pull haproxy@sha256:9ea7c0225dc20f22d9b34c4ae95a3869336f2be64bb369b5d9ca9cc545afc6b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2141012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef5100e1bf7d0d6ba0641897313bfef74259792e5d2b8738299ceaab67faa8b4`

```dockerfile
```

-	Layers:
	-	`sha256:5ffdccc6ec8926902e3187417751dd06887a77c47d97d4c49b150da43147b7a7`  
		Last Modified: Mon, 06 Jul 2026 20:19:48 GMT  
		Size: 2.1 MB (2118000 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2f7f67675613dd492f7e22598cacc8e6ac6f8b308a716061f165bc9f76ddacc`  
		Last Modified: Mon, 06 Jul 2026 20:19:47 GMT  
		Size: 23.0 KB (23012 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:latest` - linux; riscv64

```console
$ docker pull haproxy@sha256:2f4acb476e7634acdc5db84ea885ffbebc6fb68610d2628743a3f6328df5e281
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.9 MB (44938674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7ddb4d6b87250f279acd5d888381734691c2afa6241c03b868335a44b904ae7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:18:57 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Mon, 06 Jul 2026 21:18:57 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Mon, 06 Jul 2026 21:34:44 GMT
ENV HAPROXY_VERSION=3.4.2
# Mon, 06 Jul 2026 21:34:44 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.2.tar.gz
# Mon, 06 Jul 2026 21:34:44 GMT
ENV HAPROXY_SHA256=b1330dbb0d6e6bc4a72c4708a6a9e585579cd1156dfe5763c26305105bc12907
# Mon, 06 Jul 2026 21:34:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Mon, 06 Jul 2026 21:34:44 GMT
STOPSIGNAL SIGUSR1
# Mon, 06 Jul 2026 21:34:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:34:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:34:44 GMT
USER haproxy
# Mon, 06 Jul 2026 21:34:44 GMT
WORKDIR /var/lib/haproxy
# Mon, 06 Jul 2026 21:34:44 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:58bface994ba631e609596a2ca5032d9d75de27f1b6476034b581e226205adab`  
		Last Modified: Wed, 24 Jun 2026 03:41:42 GMT  
		Size: 28.3 MB (28282378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2e0d2c4bd7b14a73ee7b314b4bd7d2f4ab3eb56b17aed1c7f1c63193d1aa317`  
		Last Modified: Mon, 06 Jul 2026 21:35:54 GMT  
		Size: 1.5 MB (1535622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e763cf92971850e97fb7fb69d0d09489eb19820e58866f5878a4383da841adc2`  
		Last Modified: Mon, 06 Jul 2026 21:35:54 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22bb68f01891fc92527aaa94d2369fcef19f077663890228de30cb63f5298226`  
		Last Modified: Mon, 06 Jul 2026 21:35:56 GMT  
		Size: 15.1 MB (15119030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a01a5caf45ab5c0ff1b714dae225b360906e4553801aef77db78a710054e4594`  
		Last Modified: Mon, 06 Jul 2026 21:35:54 GMT  
		Size: 452.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:latest` - unknown; unknown

```console
$ docker pull haproxy@sha256:658eed785a077530ccb870731ee55c5db4ce60d6e4dce12e87723256ee793ace
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2131403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c44b5cd7b027662ec14331643c18a15f56369e29c2e1ae171d4916a3554dd246`

```dockerfile
```

-	Layers:
	-	`sha256:0120999db396e4c31f99e829039c8aafd50adb79e89ad7fba99c5acda3d35a54`  
		Last Modified: Mon, 06 Jul 2026 21:35:54 GMT  
		Size: 2.1 MB (2108391 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8a83af5470f092b4ffd3803664f015249481a2c605b948599c89b285e9a3b58`  
		Last Modified: Mon, 06 Jul 2026 21:35:54 GMT  
		Size: 23.0 KB (23012 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:latest` - linux; s390x

```console
$ docker pull haproxy@sha256:157451fbc950bd88745ea1674bf6aa65d1911b2f8949d9636a5f5d97fec5449f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47576129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:343687605233aa67c5123086e6fe77f4649b3267cc6a7c018519c384dbd09fa5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:14:58 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 01:14:58 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Mon, 06 Jul 2026 20:26:45 GMT
ENV HAPROXY_VERSION=3.4.2
# Mon, 06 Jul 2026 20:26:45 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.2.tar.gz
# Mon, 06 Jul 2026 20:26:45 GMT
ENV HAPROXY_SHA256=b1330dbb0d6e6bc4a72c4708a6a9e585579cd1156dfe5763c26305105bc12907
# Mon, 06 Jul 2026 20:26:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Mon, 06 Jul 2026 20:26:45 GMT
STOPSIGNAL SIGUSR1
# Mon, 06 Jul 2026 20:26:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 20:26:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 20:26:46 GMT
USER haproxy
# Mon, 06 Jul 2026 20:26:47 GMT
WORKDIR /var/lib/haproxy
# Mon, 06 Jul 2026 20:26:47 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:571fe387244ece97a67132849be88945ea722f7cf59012e29a90cfeb8be37cab`  
		Last Modified: Wed, 24 Jun 2026 01:16:32 GMT  
		Size: 1.6 MB (1600048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:943b6aaf775d0d4d265485a3b1df8a681a624169b326101b832c46f2aeaf75e9`  
		Last Modified: Wed, 24 Jun 2026 01:16:32 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9624f4e0ff5689c33c6058dd52f59a4d1b24d5fe670c0f9e510ede4dfd6a32f`  
		Last Modified: Mon, 06 Jul 2026 20:27:30 GMT  
		Size: 16.1 MB (16123059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859bce49fd0e8ca96bd2f2259e73deefe13266e13781194d4614bced4df29e01`  
		Last Modified: Mon, 06 Jul 2026 20:27:24 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:latest` - unknown; unknown

```console
$ docker pull haproxy@sha256:dc112eb01ad03f49a2b5802a0b4e6366fb98198b5444408768bdf34f2517ee21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2138825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa3887c020162b46f0833f669c2a3f265c98ba5bf42aded9635d459d4701a2bc`

```dockerfile
```

-	Layers:
	-	`sha256:d45228ad36bde090ae68df95af774a07b099a67c880c1422d10cecde2c650031`  
		Last Modified: Mon, 06 Jul 2026 20:27:25 GMT  
		Size: 2.1 MB (2115886 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:974d3934c4b896205f567625f1eac6bdfdd9fa9c4a0ad4d15a4bfd2e5ab7bb88`  
		Last Modified: Mon, 06 Jul 2026 20:27:24 GMT  
		Size: 22.9 KB (22939 bytes)  
		MIME: application/vnd.in-toto+json
