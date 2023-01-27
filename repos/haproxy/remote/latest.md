## `haproxy:latest`

```console
$ docker pull haproxy@sha256:4f79e6112b2a2fba850e842a6c457bc80a2064ad573bfafafd1ed2df64caab30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 8
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; mips64le
	-	linux; ppc64le
	-	linux; s390x

### `haproxy:latest` - linux; amd64

```console
$ docker pull haproxy@sha256:1bde77ea8d4489e2902f05090c5100ee9c0f0d2a2cb55148c31c6a7ef8749713
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.6 MB (39622145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9a9dda01072fb27de01a90c14dda10ff0661644663a2832203dc2849312e31d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:44 GMT
ADD file:e2398d0bf516084b2b37ba1bb76b86d56e66999831df692461679fbd6a5d8eb6 in / 
# Wed, 11 Jan 2023 02:34:44 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 05:25:49 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy
# Sat, 21 Jan 2023 00:24:35 GMT
ENV HAPROXY_VERSION=2.7.2
# Sat, 21 Jan 2023 00:24:35 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/2.7/src/haproxy-2.7.2.tar.gz
# Sat, 21 Jan 2023 00:24:35 GMT
ENV HAPROXY_SHA256=63bc6ec0302d0ebbe1fa769c19606640de834ac8cb07447b80799cb563dc0f3f
# Sat, 21 Jan 2023 00:25:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 				EXTRA_OBJS=" 		" 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		haproxy -v
# Sat, 21 Jan 2023 00:25:15 GMT
STOPSIGNAL SIGUSR1
# Sat, 21 Jan 2023 00:25:15 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in /usr/local/bin/ 
# Sat, 21 Jan 2023 00:25:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 21 Jan 2023 00:25:16 GMT
USER haproxy
# Sat, 21 Jan 2023 00:25:16 GMT
WORKDIR /var/lib/haproxy
# Sat, 21 Jan 2023 00:25:16 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:8740c948ffd4c816ea7ca963f99ca52f4788baa23f228da9581a9ea2edd3fcd7`  
		Last Modified: Wed, 11 Jan 2023 02:39:07 GMT  
		Size: 31.4 MB (31396972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:388da74d11798c19fd297a8e94a8271bf0db6bd74e25cb04e333f0cdd635fb4f`  
		Last Modified: Wed, 11 Jan 2023 05:31:45 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cbaffeba70dc94b72cbff3b45a1182a42c3d98c6c50708b7eddb323471cd45f`  
		Last Modified: Sat, 21 Jan 2023 00:27:34 GMT  
		Size: 8.2 MB (8223285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a06058dcc4df43f5fff47bd51855750c6a5c4ebb305f78c672a78de59a4bc3f`  
		Last Modified: Sat, 21 Jan 2023 00:27:32 GMT  
		Size: 452.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:4880342ce0ef6bee119aa1bc48f3abedfb94af771b35afe32eac25ac8c360091
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.0 MB (36977173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04a62351c8cc91785722a1d28c36acbd28cf4f8b4d7e655d24bb5ce37d518dca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 11 Jan 2023 01:55:36 GMT
ADD file:f279d5ada9c5980d920c7b9ff126ce11ec9499a532ea3bfd8b717de3348c8439 in / 
# Wed, 11 Jan 2023 01:55:37 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 10:45:24 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy
# Sat, 21 Jan 2023 00:48:35 GMT
ENV HAPROXY_VERSION=2.7.2
# Sat, 21 Jan 2023 00:48:35 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/2.7/src/haproxy-2.7.2.tar.gz
# Sat, 21 Jan 2023 00:48:35 GMT
ENV HAPROXY_SHA256=63bc6ec0302d0ebbe1fa769c19606640de834ac8cb07447b80799cb563dc0f3f
# Sat, 21 Jan 2023 00:49:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 				EXTRA_OBJS=" 		" 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		haproxy -v
# Sat, 21 Jan 2023 00:49:11 GMT
STOPSIGNAL SIGUSR1
# Sat, 21 Jan 2023 00:49:11 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in /usr/local/bin/ 
# Sat, 21 Jan 2023 00:49:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 21 Jan 2023 00:49:11 GMT
USER haproxy
# Sat, 21 Jan 2023 00:49:11 GMT
WORKDIR /var/lib/haproxy
# Sat, 21 Jan 2023 00:49:11 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:77f56a6f12b7a55a95e6f2c8beadc0eb0243b5881f73f45d09c343f2a8926d62`  
		Last Modified: Wed, 11 Jan 2023 02:00:42 GMT  
		Size: 28.9 MB (28898675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a33b48303b24cb856be96f14511222e5fe44890cd3c706e55662ba9225b70f4`  
		Last Modified: Wed, 11 Jan 2023 10:51:56 GMT  
		Size: 1.4 KB (1401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d92ee403c3c4ab6397a5e50d3655c35e3f024a683441827a798f5029787e52a`  
		Last Modified: Sat, 21 Jan 2023 00:51:09 GMT  
		Size: 8.1 MB (8076641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fa528f73210ac4c3c794ffc40ba07ebe96f6db671810332d632b37afbed25ee`  
		Last Modified: Sat, 21 Jan 2023 00:51:07 GMT  
		Size: 456.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:cc43d5b0cf2af69528d9f753480b7579c56d07f64bbb47e2f3861782530f2d5e
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 MB (34490461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca9918751e615f2bb504c852331fc8b2eb498634560b2e07b1bbe40201c15642`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 11 Jan 2023 04:00:36 GMT
ADD file:3fb94bfd628f3ebd91db74501bd297a817977cc066664f0fa342442b3352e0be in / 
# Wed, 11 Jan 2023 04:00:37 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 06:24:37 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy
# Sat, 21 Jan 2023 00:58:04 GMT
ENV HAPROXY_VERSION=2.7.2
# Sat, 21 Jan 2023 00:58:04 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/2.7/src/haproxy-2.7.2.tar.gz
# Sat, 21 Jan 2023 00:58:04 GMT
ENV HAPROXY_SHA256=63bc6ec0302d0ebbe1fa769c19606640de834ac8cb07447b80799cb563dc0f3f
# Sat, 21 Jan 2023 00:58:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 				EXTRA_OBJS=" 		" 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		haproxy -v
# Sat, 21 Jan 2023 00:58:50 GMT
STOPSIGNAL SIGUSR1
# Sat, 21 Jan 2023 00:58:50 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in /usr/local/bin/ 
# Sat, 21 Jan 2023 00:58:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 21 Jan 2023 00:58:50 GMT
USER haproxy
# Sat, 21 Jan 2023 00:58:51 GMT
WORKDIR /var/lib/haproxy
# Sat, 21 Jan 2023 00:58:51 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:330ad28688ae3fa5f3b241fef3efd076299bec9874e0597b1c16dcf8a165a53d`  
		Last Modified: Wed, 11 Jan 2023 04:07:49 GMT  
		Size: 26.6 MB (26559488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf2275ee8ed371a164ee8f7818a8a18f492cc5d05735ea9855619d210fb7dad6`  
		Last Modified: Wed, 11 Jan 2023 06:32:12 GMT  
		Size: 1.4 KB (1405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5806f0deaaf712a50672f12765e7a2a3eb379f7131ca0789f991f767fd08841b`  
		Last Modified: Sat, 21 Jan 2023 01:03:48 GMT  
		Size: 7.9 MB (7929112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a289bd8441694af0b0e12e67e9d39c1dfdd14a6eb5cb2aa65bd565d5448fb39b`  
		Last Modified: Sat, 21 Jan 2023 01:03:46 GMT  
		Size: 456.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:89442337eac60ceb7b9a07690851a30ddcfeada9cee57a7e39bb7f0daddf087f
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 MB (38225358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50288fb961c18073c6a4fecb8595ffe6927538b045c853590ff7f06845c0fcfb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:34 GMT
ADD file:92cf2c9ffaaea1a6bc1baa7b681303b1029dfd6ddbfef1792be8b21aaf09235c in / 
# Wed, 11 Jan 2023 02:57:35 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 05:01:31 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy
# Sat, 21 Jan 2023 00:54:39 GMT
ENV HAPROXY_VERSION=2.7.2
# Sat, 21 Jan 2023 00:54:39 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/2.7/src/haproxy-2.7.2.tar.gz
# Sat, 21 Jan 2023 00:54:39 GMT
ENV HAPROXY_SHA256=63bc6ec0302d0ebbe1fa769c19606640de834ac8cb07447b80799cb563dc0f3f
# Sat, 21 Jan 2023 00:55:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 				EXTRA_OBJS=" 		" 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		haproxy -v
# Sat, 21 Jan 2023 00:55:05 GMT
STOPSIGNAL SIGUSR1
# Sat, 21 Jan 2023 00:55:05 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in /usr/local/bin/ 
# Sat, 21 Jan 2023 00:55:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 21 Jan 2023 00:55:05 GMT
USER haproxy
# Sat, 21 Jan 2023 00:55:05 GMT
WORKDIR /var/lib/haproxy
# Sat, 21 Jan 2023 00:55:05 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:934ce60d1040c5d4922bae5879321a398777457b7514de02ef69ece49e6aa907`  
		Last Modified: Wed, 11 Jan 2023 03:01:19 GMT  
		Size: 30.0 MB (30044814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a92171c2466c6ce0eae784fe6b9a205598e8ea1862fc03d40c4ab5e27185f62`  
		Last Modified: Wed, 11 Jan 2023 05:06:01 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f74ca8b49492b0ecdc4dfa7c6b4281cb1635c0b703dddb716f6e87f32b527bc`  
		Last Modified: Sat, 21 Jan 2023 00:57:13 GMT  
		Size: 8.2 MB (8178655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b890ce40953ab60e10796ba618fc3ae9aba02fbc3e7f55beb9a62ab510bd2ef4`  
		Last Modified: Sat, 21 Jan 2023 00:57:12 GMT  
		Size: 455.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; 386

```console
$ docker pull haproxy@sha256:fbf42732afb39c35637226985f12498c79e1eefb98c6109424b574faaa1271bb
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.4 MB (40369408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a83aaf57bd033e9b2c7cb2add371a12200d2f6b42449b56416d43d45a52cdf0c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 11 Jan 2023 03:16:08 GMT
ADD file:68afc7c49a947a9fb253ffeba9950cdc39e241f8a5cf0133043cfc612447f597 in / 
# Wed, 11 Jan 2023 03:16:08 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 05:25:11 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy
# Sat, 21 Jan 2023 00:40:49 GMT
ENV HAPROXY_VERSION=2.7.2
# Sat, 21 Jan 2023 00:40:50 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/2.7/src/haproxy-2.7.2.tar.gz
# Sat, 21 Jan 2023 00:40:51 GMT
ENV HAPROXY_SHA256=63bc6ec0302d0ebbe1fa769c19606640de834ac8cb07447b80799cb563dc0f3f
# Sat, 21 Jan 2023 00:41:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 				EXTRA_OBJS=" 		" 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		haproxy -v
# Sat, 21 Jan 2023 00:41:28 GMT
STOPSIGNAL SIGUSR1
# Sat, 21 Jan 2023 00:41:30 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in /usr/local/bin/ 
# Sat, 21 Jan 2023 00:41:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 21 Jan 2023 00:41:31 GMT
USER haproxy
# Sat, 21 Jan 2023 00:41:32 GMT
WORKDIR /var/lib/haproxy
# Sat, 21 Jan 2023 00:41:33 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:165165b78fad597abd0883f40adcaa0edcfe981a358deea181323680a07b7011`  
		Last Modified: Wed, 11 Jan 2023 03:22:01 GMT  
		Size: 32.4 MB (32375738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:797b3b48eb3b2c367079f9bdc9b2c216f5b1234659a117b052bef2fd0f680779`  
		Last Modified: Wed, 11 Jan 2023 05:33:25 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f1bbb42228e47c4d1a55a76e349820842b29a67752dcf45891291291b690627`  
		Last Modified: Sat, 21 Jan 2023 00:45:25 GMT  
		Size: 8.0 MB (7991929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66fd896d6bc950b8b36e8840f624e61eba895a1b43e7218d8bb57de5d668dc59`  
		Last Modified: Sat, 21 Jan 2023 00:45:24 GMT  
		Size: 453.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; mips64le

```console
$ docker pull haproxy@sha256:2d4768fe0e297573c7cfc51a5a7587d870c4f600df17a1b6af536f187ae9d481
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.9 MB (37912700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42e23568ae527a6fe3610cc7dda15127bf1f0b354bd5667140756265de38aaa9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 11 Jan 2023 16:34:24 GMT
ADD file:295faaf493f6a8d3e2a3eecb28c8f5ac765a1281656221d0a3ab482312a5ee28 in / 
# Wed, 11 Jan 2023 16:34:29 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 17:49:48 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy
# Sat, 21 Jan 2023 00:07:42 GMT
ENV HAPROXY_VERSION=2.7.2
# Sat, 21 Jan 2023 00:07:44 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/2.7/src/haproxy-2.7.2.tar.gz
# Sat, 21 Jan 2023 00:07:46 GMT
ENV HAPROXY_SHA256=63bc6ec0302d0ebbe1fa769c19606640de834ac8cb07447b80799cb563dc0f3f
# Sat, 21 Jan 2023 00:11:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 				EXTRA_OBJS=" 		" 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		haproxy -v
# Sat, 21 Jan 2023 00:11:12 GMT
STOPSIGNAL SIGUSR1
# Sat, 21 Jan 2023 00:11:14 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in /usr/local/bin/ 
# Sat, 21 Jan 2023 00:11:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 21 Jan 2023 00:11:19 GMT
USER haproxy
# Sat, 21 Jan 2023 00:11:21 GMT
WORKDIR /var/lib/haproxy
# Sat, 21 Jan 2023 00:11:24 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:9d653aeb7081a0b221d1160bd67b030696ca49b7ca91912bf298835f8f75ac7b`  
		Last Modified: Wed, 11 Jan 2023 16:43:17 GMT  
		Size: 29.6 MB (29619870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54fd2b87ba2399f655b24324a3bc4868a65050e16d0d81148c7ea1eff4089a53`  
		Last Modified: Wed, 11 Jan 2023 18:13:28 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022c57d8b8ae274e07ec24bdfd8c57072d004b9446546df11516cc26f6330b63`  
		Last Modified: Sat, 21 Jan 2023 00:12:30 GMT  
		Size: 8.3 MB (8291083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6648c2a2d4d1305552c9a80cb887221722291c824ab3896a01d6f996d17daf70`  
		Last Modified: Sat, 21 Jan 2023 00:12:24 GMT  
		Size: 454.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; ppc64le

```console
$ docker pull haproxy@sha256:7f3b761279627feaca0a30a6d680ed8ebfe791620bbd2767c87da7364b1e085b
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43875389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:361be8551ce1ddf00ca1482a2d6d253fdb084e1a9aee74a9f869fa4cb862dbd1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 11 Jan 2023 03:49:30 GMT
ADD file:3c7553fb5eda606d574ff6c08bc2213f9e6a68910043fe3087e4c1a04b65a18e in / 
# Wed, 11 Jan 2023 03:49:32 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 04:48:01 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy
# Sat, 21 Jan 2023 00:29:34 GMT
ENV HAPROXY_VERSION=2.7.2
# Sat, 21 Jan 2023 00:29:34 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/2.7/src/haproxy-2.7.2.tar.gz
# Sat, 21 Jan 2023 00:29:35 GMT
ENV HAPROXY_SHA256=63bc6ec0302d0ebbe1fa769c19606640de834ac8cb07447b80799cb563dc0f3f
# Sat, 21 Jan 2023 00:30:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 				EXTRA_OBJS=" 		" 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		haproxy -v
# Sat, 21 Jan 2023 00:30:29 GMT
STOPSIGNAL SIGUSR1
# Sat, 21 Jan 2023 00:30:29 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in /usr/local/bin/ 
# Sat, 21 Jan 2023 00:30:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 21 Jan 2023 00:30:30 GMT
USER haproxy
# Sat, 21 Jan 2023 00:30:31 GMT
WORKDIR /var/lib/haproxy
# Sat, 21 Jan 2023 00:30:32 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:bbf81328aca90b7ddb122fc175443f5323674a9e51bbb00d5b1d683ef0b858f4`  
		Last Modified: Wed, 11 Jan 2023 03:55:33 GMT  
		Size: 35.3 MB (35268773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa2392a85792bd7b764b84bcf96f9096ca395c121dbf0f906598cd8eac20060`  
		Last Modified: Wed, 11 Jan 2023 04:56:41 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d540ea08364c78958a6ffd47169fd0d9d8236222021a9db7aa87b8c125eb68e`  
		Last Modified: Sat, 21 Jan 2023 00:34:40 GMT  
		Size: 8.6 MB (8604731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1918168865f81dcfc11a4fc31e4e3b43049413a344452fd21fb2b49d8645808c`  
		Last Modified: Sat, 21 Jan 2023 00:34:37 GMT  
		Size: 451.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; s390x

```console
$ docker pull haproxy@sha256:f7739c22a009d98a5c8df9272dd79331a32c049064e407eec2c4eb9d6c61da08
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 MB (37836118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e4e3b944daf007d999714381f34f88b6358c6d9023436407996674363ad2d74`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 11 Jan 2023 02:22:23 GMT
ADD file:14f332233d8fa1ca519992e52aaf550bcee52d346c375e94ee73d36864933f8e in / 
# Wed, 11 Jan 2023 02:22:25 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:29:15 GMT
RUN set -eux; 	groupadd --gid 99 --system haproxy; 	useradd 		--gid haproxy 		--home-dir /var/lib/haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy
# Sat, 21 Jan 2023 00:49:00 GMT
ENV HAPROXY_VERSION=2.7.2
# Sat, 21 Jan 2023 00:49:00 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/2.7/src/haproxy-2.7.2.tar.gz
# Sat, 21 Jan 2023 00:49:00 GMT
ENV HAPROXY_SHA256=63bc6ec0302d0ebbe1fa769c19606640de834ac8cb07447b80799cb563dc0f3f
# Sat, 21 Jan 2023 00:49:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre2-dev 		libssl-dev 		make 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-glibc 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 				EXTRA_OBJS=" 		" 	'; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		armel) makeOpts="$makeOpts ADDLIB=-latomic" ;; 	esac; 		nproc="$(nproc)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		haproxy -v
# Sat, 21 Jan 2023 00:49:32 GMT
STOPSIGNAL SIGUSR1
# Sat, 21 Jan 2023 00:49:32 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in /usr/local/bin/ 
# Sat, 21 Jan 2023 00:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 21 Jan 2023 00:49:32 GMT
USER haproxy
# Sat, 21 Jan 2023 00:49:32 GMT
WORKDIR /var/lib/haproxy
# Sat, 21 Jan 2023 00:49:32 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:5895b3b9300287ac4aca79440c1c4979b6d4fad1ceb06fba32443d012c83cc37`  
		Last Modified: Wed, 11 Jan 2023 02:26:52 GMT  
		Size: 29.6 MB (29629731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d88fdfce951ac0146f2046c517843bb55c66af9f254eb22adce10b8d986131`  
		Last Modified: Wed, 11 Jan 2023 03:35:45 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ad3c89982a218403cae2c2104699338f1d262f1507865efa5fa307d3974a35`  
		Last Modified: Sat, 21 Jan 2023 00:53:17 GMT  
		Size: 8.2 MB (8204499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:184eb9e852cdb471205a8ddaefcde016ab19431f95e488fcd6881f9c02f1e2f6`  
		Last Modified: Sat, 21 Jan 2023 00:53:16 GMT  
		Size: 455.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
