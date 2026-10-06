## `haproxy:trixie`

```console
$ docker pull haproxy@sha256:b084c81cbcc2e293eb925274daf6b5d6a1645c30769ac8ee4e78c759f007dbac
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
$ docker pull haproxy@sha256:96df1a34c8a3af23ad95cf485fe608db60507c04ff1f4ba21af8f6f50cbc3cca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.2 MB (47193374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebc8bfec29b20a8395d04fc44c8fa29c4cf89c4b2f5156d67fd4c9d627109680`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:14:56 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 01:14:56 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Tue, 06 Oct 2026 01:15:42 GMT
ENV HAPROXY_VERSION=3.4.6
# Tue, 06 Oct 2026 01:15:42 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.6.tar.gz
# Tue, 06 Oct 2026 01:15:42 GMT
ENV HAPROXY_SHA256=791e1815f8af6e8b850a227a9a0a190f3d3478c9e8d38a0f51c98b7f4bfe368b
# Tue, 06 Oct 2026 01:15:42 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Tue, 06 Oct 2026 01:15:42 GMT
STOPSIGNAL SIGUSR1
# Tue, 06 Oct 2026 01:15:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:15:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:15:42 GMT
USER haproxy
# Tue, 06 Oct 2026 01:15:42 GMT
WORKDIR /var/lib/haproxy
# Tue, 06 Oct 2026 01:15:42 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:456a085b0c3dad205a57df38dcd0e5fe951a924f81787a4329c4ccc2435a6b5e`  
		Last Modified: Tue, 06 Oct 2026 01:15:50 GMT  
		Size: 1.6 MB (1582536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da2988092bcbd1526ff875c0af8ec63535489c6bcef4375dc14b920318102262`  
		Last Modified: Tue, 06 Oct 2026 01:15:49 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4c7c5251eb03f99f533b194b1174ddc21cf30478df64c97543ecf45963bfc26`  
		Last Modified: Tue, 06 Oct 2026 01:15:50 GMT  
		Size: 15.8 MB (15765848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1673b1325a268d24d59c74e7ea4fdc1613e5295daff7bd0d8d8b2b9204c769ca`  
		Last Modified: Tue, 06 Oct 2026 01:15:50 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:trixie` - unknown; unknown

```console
$ docker pull haproxy@sha256:dcefb726f8db2446e0294dafe34ffbea40c710e579201f9adfdb33ef177abf47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2143344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1445fb837692222fd375e9306b17cd0428efb0e3f13b10f5af89b67fffc9f4aa`

```dockerfile
```

-	Layers:
	-	`sha256:95759a68fb763db625006bc6d6b8ce5e68b5967db716270a80feaedc2ede2e90`  
		Last Modified: Tue, 06 Oct 2026 01:15:50 GMT  
		Size: 2.1 MB (2120404 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca90d04a0a13483a13b410352e487bb1d6ec043baa3d1c9aa63adab3607bbaa7`  
		Last Modified: Tue, 06 Oct 2026 01:15:49 GMT  
		Size: 22.9 KB (22940 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:trixie` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:61cc56d501be33e54f170c72a03cc59ec261564afe86894e1db318d389fda04f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45524243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08654a20b273d28f5455f8bf2e4d1cbb3873fddaaa34974b92a8e282c50a3fcf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:15:58 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 01:15:59 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Tue, 06 Oct 2026 01:17:03 GMT
ENV HAPROXY_VERSION=3.4.6
# Tue, 06 Oct 2026 01:17:03 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.6.tar.gz
# Tue, 06 Oct 2026 01:17:03 GMT
ENV HAPROXY_SHA256=791e1815f8af6e8b850a227a9a0a190f3d3478c9e8d38a0f51c98b7f4bfe368b
# Tue, 06 Oct 2026 01:17:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Tue, 06 Oct 2026 01:17:03 GMT
STOPSIGNAL SIGUSR1
# Tue, 06 Oct 2026 01:17:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:17:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:17:03 GMT
USER haproxy
# Tue, 06 Oct 2026 01:17:03 GMT
WORKDIR /var/lib/haproxy
# Tue, 06 Oct 2026 01:17:03 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:cb79ce05d3152dc6f7b8608f1f449aa1fbf1541a5dff435139649d755dd23d93`  
		Last Modified: Tue, 06 Oct 2026 00:13:24 GMT  
		Size: 28.0 MB (28007486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ea728b1629fe8513e1cad48e5dd85f3db8a58cfd5983fd596629d3848c6ca82`  
		Last Modified: Tue, 06 Oct 2026 01:17:11 GMT  
		Size: 1.5 MB (1536557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b3c4d36cb7207374d8179e50d2bc4b462876a6644d85773aaf2f87cc70a6437`  
		Last Modified: Tue, 06 Oct 2026 01:17:11 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f11d4c61522586ae8880bdf8a646935ded700e3773309dd9cd194ce490141d30`  
		Last Modified: Tue, 06 Oct 2026 01:17:12 GMT  
		Size: 16.0 MB (15978560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5220af41fb89dc5b4d77f8d64468f50f837bb845773fb4a1a832486414b7deb`  
		Last Modified: Tue, 06 Oct 2026 01:17:11 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:trixie` - unknown; unknown

```console
$ docker pull haproxy@sha256:023607ea31614a209a929c393d310ac6e15f34d8cfe77a140e312f04dd13c4b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2146478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:763ee7d7a8c3f3855980b6e6820e2a9fa7ca401b5395e2567f9b817bfa9bb350`

```dockerfile
```

-	Layers:
	-	`sha256:e3e82459caddd5a79189ac4d6f897029881e7a75127367e07cf4e257547e8082`  
		Last Modified: Tue, 06 Oct 2026 01:17:11 GMT  
		Size: 2.1 MB (2123400 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:951b956431b39503369c138fdfea74e16e38303d51837f1e8638e354ab094738`  
		Last Modified: Tue, 06 Oct 2026 01:17:11 GMT  
		Size: 23.1 KB (23078 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:trixie` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:7390f684aceeb2149692d5fb602345d08edf751bbdfafdc429d687da476f38f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.5 MB (43509657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26460cdd3ca2c11ee0a71446bb41c6c9564c37b074d062b393e932f4fa42c6b7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:17:09 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 01:17:09 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Tue, 06 Oct 2026 01:18:03 GMT
ENV HAPROXY_VERSION=3.4.6
# Tue, 06 Oct 2026 01:18:03 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.6.tar.gz
# Tue, 06 Oct 2026 01:18:03 GMT
ENV HAPROXY_SHA256=791e1815f8af6e8b850a227a9a0a190f3d3478c9e8d38a0f51c98b7f4bfe368b
# Tue, 06 Oct 2026 01:18:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Tue, 06 Oct 2026 01:18:03 GMT
STOPSIGNAL SIGUSR1
# Tue, 06 Oct 2026 01:18:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:18:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:18:03 GMT
USER haproxy
# Tue, 06 Oct 2026 01:18:03 GMT
WORKDIR /var/lib/haproxy
# Tue, 06 Oct 2026 01:18:03 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78947542ac260eaabe829e2e3efbc8d36ebb8aac0af0403837721db582a1a3ff`  
		Last Modified: Tue, 06 Oct 2026 01:18:10 GMT  
		Size: 1.5 MB (1490225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b528c2daa442bcb5b95e87f06c455afe922daaa0a100043833eae7abee43d8d7`  
		Last Modified: Tue, 06 Oct 2026 01:17:58 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7b240a3a99fc1c399a0b3612fa0362455ca980fa41706fb50875365323fa84c`  
		Last Modified: Tue, 06 Oct 2026 01:18:11 GMT  
		Size: 15.8 MB (15759612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b99b212cbb3bdc04cca626f09e1a20951048277403d7c7094d8b931f3dfdddb4`  
		Last Modified: Tue, 06 Oct 2026 01:18:11 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:trixie` - unknown; unknown

```console
$ docker pull haproxy@sha256:f3b40339003de70c36c786c6239382f39b235867caed5eb412f3b8c1e2c9bf10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2144921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e4805210d0dfca8830e43b4c30a415fe6a889e888de002101f662078fcbd4c9`

```dockerfile
```

-	Layers:
	-	`sha256:5ead60875f6aa44334fc0a2acdd0e70d87f83fc2cbb6e53e71bb1d568b154f4c`  
		Last Modified: Tue, 06 Oct 2026 01:18:11 GMT  
		Size: 2.1 MB (2121843 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d514fdda7a0332434873f4edcfc027ab7e96ee26d94899d3e025a36a1832cafe`  
		Last Modified: Tue, 06 Oct 2026 01:18:10 GMT  
		Size: 23.1 KB (23078 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:trixie` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:a92cbb5d7b4ba27898706659bde5039cc86e4ebee44f243d410f268200f7406f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.4 MB (47394297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b120fe957231e92b2c3c7bcec43ee4103e10b6e8831a123d598b60ffc47a84b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:14:13 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 01:14:14 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Tue, 06 Oct 2026 01:15:01 GMT
ENV HAPROXY_VERSION=3.4.6
# Tue, 06 Oct 2026 01:15:01 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.6.tar.gz
# Tue, 06 Oct 2026 01:15:01 GMT
ENV HAPROXY_SHA256=791e1815f8af6e8b850a227a9a0a190f3d3478c9e8d38a0f51c98b7f4bfe368b
# Tue, 06 Oct 2026 01:15:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Tue, 06 Oct 2026 01:15:01 GMT
STOPSIGNAL SIGUSR1
# Tue, 06 Oct 2026 01:15:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:15:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:15:01 GMT
USER haproxy
# Tue, 06 Oct 2026 01:15:01 GMT
WORKDIR /var/lib/haproxy
# Tue, 06 Oct 2026 01:15:01 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a346c303ddc3d8e34e9c5023db8207562586d62af60b7c1950ea62fa47aa6790`  
		Last Modified: Tue, 06 Oct 2026 01:15:09 GMT  
		Size: 1.6 MB (1565111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d97239b2a921c1cd83a38b2c52626054989c177f4b57eb1bc174b0d3bcd2b539`  
		Last Modified: Tue, 06 Oct 2026 01:15:09 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4083448de47933ec51cb1cdadfba222def8e4ec47ad4a614e99d654e52ec38e9`  
		Last Modified: Tue, 06 Oct 2026 01:15:09 GMT  
		Size: 15.6 MB (15627263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0ec0c53ede6544a532edaa01522707f17048476a3261fbc445627cbd5bc9527`  
		Last Modified: Tue, 06 Oct 2026 01:15:09 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:trixie` - unknown; unknown

```console
$ docker pull haproxy@sha256:b094347e6edd2e0437737baf1137d0a4e6b2b92750fcb56eb3391bce46f4b435
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2143827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac9f3600713c96337aa7735e1330a03765c7f994181076a4b235c2213b08dcd9`

```dockerfile
```

-	Layers:
	-	`sha256:ef6947e9ca7ec16d39153eb9074863d3b645ec1783d81d1b2bc965af989d4078`  
		Last Modified: Tue, 06 Oct 2026 01:15:09 GMT  
		Size: 2.1 MB (2120705 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1dedf594d5c11e480276670f36d2667ad5d49e6fb2c8affd844000f579e0055`  
		Last Modified: Tue, 06 Oct 2026 01:15:09 GMT  
		Size: 23.1 KB (23122 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:trixie` - linux; 386

```console
$ docker pull haproxy@sha256:c9acdbdf2e2aa4483d634eb3903b6bc00a44a407357765f55cfd68e87876fa72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48484631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5485e20f50037d9efb638065c5d347b4c897b3643bb131663fe7a07b3c294c5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:14:48 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 01:14:48 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Tue, 06 Oct 2026 01:21:29 GMT
ENV HAPROXY_VERSION=3.4.6
# Tue, 06 Oct 2026 01:21:29 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.6.tar.gz
# Tue, 06 Oct 2026 01:21:29 GMT
ENV HAPROXY_SHA256=791e1815f8af6e8b850a227a9a0a190f3d3478c9e8d38a0f51c98b7f4bfe368b
# Tue, 06 Oct 2026 01:21:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Tue, 06 Oct 2026 01:21:29 GMT
STOPSIGNAL SIGUSR1
# Tue, 06 Oct 2026 01:21:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:21:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:21:29 GMT
USER haproxy
# Tue, 06 Oct 2026 01:21:29 GMT
WORKDIR /var/lib/haproxy
# Tue, 06 Oct 2026 01:21:29 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:519c9ef820d18d18da33795f74346592c428092902359f500104cf5e56d40eb5`  
		Last Modified: Tue, 06 Oct 2026 01:21:36 GMT  
		Size: 1.6 MB (1604885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7687121695bb3e4f3dd964a4e719d64e1044cc27559c2da29240a650243c194e`  
		Last Modified: Tue, 06 Oct 2026 01:15:40 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:007c75d3fba7ec40099d02e594693f45fb00da7ffe0e421537d84d3e3d04992f`  
		Last Modified: Tue, 06 Oct 2026 01:21:36 GMT  
		Size: 15.5 MB (15524807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac877e35c75cf7d26d98877a2b7871f282babc817f1cbb26088a4d882bfce880`  
		Last Modified: Tue, 06 Oct 2026 01:21:36 GMT  
		Size: 451.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:trixie` - unknown; unknown

```console
$ docker pull haproxy@sha256:d3fc0c3119c11f517bd50f659a64c0b6466c6ce0863298119775d164e0639e1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2140459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef1de6d7bed5a85fe72d3b5e21b4ecc365a74be9e610bc97cdd112ea4e1a9752`

```dockerfile
```

-	Layers:
	-	`sha256:6b05de7e797a860f300f2ed0f5744026041eb7d3dab274de33b4c5da8e07aa6f`  
		Last Modified: Tue, 06 Oct 2026 01:21:36 GMT  
		Size: 2.1 MB (2117575 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1b4e424b42ed6dd0df254311d206839169523560cfad162f793415f33204292f`  
		Last Modified: Tue, 06 Oct 2026 01:21:36 GMT  
		Size: 22.9 KB (22884 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:trixie` - linux; ppc64le

```console
$ docker pull haproxy@sha256:eed011c5dbdcb55b998ea64ae64d1c89e89c469feb637d20656799cdc814ac5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.8 MB (51826159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f09470f0d7b69c7ed260df37ea255979e10b88555b2bf826f892c77a0501ce71`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:18:37 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 01:18:41 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Tue, 06 Oct 2026 01:21:17 GMT
ENV HAPROXY_VERSION=3.4.6
# Tue, 06 Oct 2026 01:21:17 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.6.tar.gz
# Tue, 06 Oct 2026 01:21:17 GMT
ENV HAPROXY_SHA256=791e1815f8af6e8b850a227a9a0a190f3d3478c9e8d38a0f51c98b7f4bfe368b
# Tue, 06 Oct 2026 01:21:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Tue, 06 Oct 2026 01:21:17 GMT
STOPSIGNAL SIGUSR1
# Tue, 06 Oct 2026 01:21:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:21:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:21:18 GMT
USER haproxy
# Tue, 06 Oct 2026 01:21:19 GMT
WORKDIR /var/lib/haproxy
# Tue, 06 Oct 2026 01:21:19 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8162718d147bc8bf396ba4acd441ed8ec5562246aeefd5522209ad0c1c462fd`  
		Last Modified: Tue, 06 Oct 2026 01:21:47 GMT  
		Size: 1.6 MB (1639999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13f61e7960666ee3dbcce4a90f6310f0f1d6a5b99b768eddc4cfe6d070aee1d5`  
		Last Modified: Tue, 06 Oct 2026 01:21:47 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3492dbad8d4c9735d15ff85c404903bb0403b30d7d9fcf328ee77c3b1a618a1`  
		Last Modified: Tue, 06 Oct 2026 01:21:56 GMT  
		Size: 16.5 MB (16532922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa3e4005b1321cbe0db87cd29a55b300f7296a65ea934140eff660937b6cba62`  
		Last Modified: Tue, 06 Oct 2026 01:21:55 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:trixie` - unknown; unknown

```console
$ docker pull haproxy@sha256:05c996b2edd86308bd964f9da322dc3eb36dd2af91e24edbfbeee2990696581d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2146974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37f6ecb5592cd012895cde47cd8c313d9486eef0bdacacffcc2cb05a5e6bffca`

```dockerfile
```

-	Layers:
	-	`sha256:35a680b0511ee31d7b535ddeebfcbcfeb65d61bc0020049a526369adf0123226`  
		Last Modified: Tue, 06 Oct 2026 01:21:55 GMT  
		Size: 2.1 MB (2123962 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9726ab67803481d6c7f87d774e2d0e61ee471967f7246bad2f5b61358bb55608`  
		Last Modified: Tue, 06 Oct 2026 01:21:55 GMT  
		Size: 23.0 KB (23012 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:trixie` - linux; riscv64

```console
$ docker pull haproxy@sha256:06d179581a9f36c52b3c66ccc8ed3025e637f7be7d88e145dfd6aaecb7c1599f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45056172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d81a7824069d537a334c0ada0162352714121f03d4b72be2bf838323afc8c72`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1789689600'
# Wed, 23 Sep 2026 04:56:00 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Wed, 23 Sep 2026 04:56:01 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Tue, 29 Sep 2026 17:11:21 GMT
ENV HAPROXY_VERSION=3.4.6
# Tue, 29 Sep 2026 17:11:21 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.6.tar.gz
# Tue, 29 Sep 2026 17:11:21 GMT
ENV HAPROXY_SHA256=791e1815f8af6e8b850a227a9a0a190f3d3478c9e8d38a0f51c98b7f4bfe368b
# Tue, 29 Sep 2026 17:11:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Tue, 29 Sep 2026 17:11:21 GMT
STOPSIGNAL SIGUSR1
# Tue, 29 Sep 2026 17:11:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 29 Sep 2026 17:11:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Sep 2026 17:11:21 GMT
USER haproxy
# Tue, 29 Sep 2026 17:11:21 GMT
WORKDIR /var/lib/haproxy
# Tue, 29 Sep 2026 17:11:21 GMT
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
	-	`sha256:a04dbbb0ea6f3a43be3e710d77bc642559c7a72e895f3b3b5f68c3a9b0d63f4f`  
		Last Modified: Tue, 29 Sep 2026 17:12:32 GMT  
		Size: 15.2 MB (15193787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3edef506b7ab034c1ad69099a6453d625e81dd84d5f252e04fdfda6ed875bdfa`  
		Last Modified: Tue, 29 Sep 2026 17:12:29 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:trixie` - unknown; unknown

```console
$ docker pull haproxy@sha256:574ed8d98771885e2caf7177092cb4b55869d9fe4ed98809fabdbdfefbf71607
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2137365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c8938f491aacd293956768b47e89eeca6cf976a3226a36fe87702577efd47ff`

```dockerfile
```

-	Layers:
	-	`sha256:611cf01cf2663c009cd198214ac5d6510a250ec13ca156aadea725fa68f80d99`  
		Last Modified: Tue, 29 Sep 2026 17:12:30 GMT  
		Size: 2.1 MB (2114353 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f20af166f8e171e1ba2d7a8987d1cfd7b090d0d5954172258b156d21d587b21f`  
		Last Modified: Tue, 29 Sep 2026 17:12:29 GMT  
		Size: 23.0 KB (23012 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:trixie` - linux; s390x

```console
$ docker pull haproxy@sha256:75cf8ce96f6d86cf26714e1628b0fc2f1d582792024b347978a3c3c0a463e58d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 MB (47682644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be7005c8a0801a00f1ace0ad27eea60112f1826115f5dc56ad5d0adac34ea9c8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:13:44 GMT
RUN set -eux; 	apt-get install --update -y --no-install-recommends 		ca-certificates 		socat 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 01:13:44 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Tue, 06 Oct 2026 01:14:59 GMT
ENV HAPROXY_VERSION=3.4.6
# Tue, 06 Oct 2026 01:14:59 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.6.tar.gz
# Tue, 06 Oct 2026 01:14:59 GMT
ENV HAPROXY_SHA256=791e1815f8af6e8b850a227a9a0a190f3d3478c9e8d38a0f51c98b7f4bfe368b
# Tue, 06 Oct 2026 01:14:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --update -y --no-install-recommends 		gcc 		libc6-dev 		liblua5.4-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		haproxy -v # buildkit
# Tue, 06 Oct 2026 01:14:59 GMT
STOPSIGNAL SIGUSR1
# Tue, 06 Oct 2026 01:14:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:14:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:14:59 GMT
USER haproxy
# Tue, 06 Oct 2026 01:14:59 GMT
WORKDIR /var/lib/haproxy
# Tue, 06 Oct 2026 01:14:59 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:fd14e6ce0256b9093e480e6146009effeb6c2bc486ff0052d50a32cbab8335fc`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 29.9 MB (29909247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfdc59a43dda60b07ec0e98c3aa06d673cce132c3427fde1971b61a919f292fc`  
		Last Modified: Tue, 06 Oct 2026 01:15:05 GMT  
		Size: 1.6 MB (1601264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf21d1651382ae0e243a97df9462d43efeff91f31dface12b04cc81d871fa1b8`  
		Last Modified: Tue, 06 Oct 2026 01:15:05 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2966e221d2c972eca025441f54e6d12396679e5822d9cba3e66cd1147389205a`  
		Last Modified: Tue, 06 Oct 2026 01:15:11 GMT  
		Size: 16.2 MB (16170491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e2969218eaf91c6a946b3d24d8a228e8ad213aefb1fc33735b963107d19e35d`  
		Last Modified: Tue, 06 Oct 2026 01:15:10 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:trixie` - unknown; unknown

```console
$ docker pull haproxy@sha256:d2447f0ea9bc1d49bbe828808fed66a3604c483239111c3d2c2462469c97ddf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2144788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc4d2405aa9e3872204567fc5e3a86ce9a3f3062b8ed68d36b0b6835f5b3c37f`

```dockerfile
```

-	Layers:
	-	`sha256:31dcce9e33ac797d256bc7c17ca75613e5364d354bf55da5013919fc6da72886`  
		Last Modified: Tue, 06 Oct 2026 01:15:10 GMT  
		Size: 2.1 MB (2121848 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39e635eec04697b63bcec314c3d8cd4e8befea4f14f3524ab95ba2ec8c78136b`  
		Last Modified: Tue, 06 Oct 2026 01:15:10 GMT  
		Size: 22.9 KB (22940 bytes)  
		MIME: application/vnd.in-toto+json
