<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `memcached`

-	[`memcached:1`](#memcached1)
-	[`memcached:1-alpine`](#memcached1-alpine)
-	[`memcached:1-alpine3.24`](#memcached1-alpine324)
-	[`memcached:1-trixie`](#memcached1-trixie)
-	[`memcached:1.6`](#memcached16)
-	[`memcached:1.6-alpine`](#memcached16-alpine)
-	[`memcached:1.6-alpine3.24`](#memcached16-alpine324)
-	[`memcached:1.6-trixie`](#memcached16-trixie)
-	[`memcached:1.6.45`](#memcached1645)
-	[`memcached:1.6.45-alpine`](#memcached1645-alpine)
-	[`memcached:1.6.45-alpine3.24`](#memcached1645-alpine324)
-	[`memcached:1.6.45-trixie`](#memcached1645-trixie)
-	[`memcached:alpine`](#memcachedalpine)
-	[`memcached:alpine3.24`](#memcachedalpine324)
-	[`memcached:latest`](#memcachedlatest)
-	[`memcached:trixie`](#memcachedtrixie)

## `memcached:1`

```console
$ docker pull memcached@sha256:2046d6d2eb7cbd59470b533a101cbd67def3e718b04eb72478306dbc804a3171
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

### `memcached:1` - linux; amd64

```console
$ docker pull memcached@sha256:c9f95360aa3e64f836956defe064352c9045c54d3f2dda34590a68e042927a5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32267918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f34c06c3fd851fa86d3e7555b408164af6b4b4b47ee11aa7dc0bca734e7a71aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:19:32 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:19:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:22:16 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:22:16 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:22:16 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:22:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:22:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:22:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:22:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:22:16 GMT
USER memcache
# Tue, 06 Oct 2026 01:22:16 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:22:16 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e079f3032daaade186d2131f9f18bb2c0f9935ab855336f423301f61d6e7b328`  
		Last Modified: Tue, 06 Oct 2026 01:22:22 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d40ad5a129f0aa6c523fe06d1708562030b3c6fa97cb31740c9e5ee7bf3ba534`  
		Last Modified: Tue, 06 Oct 2026 01:22:22 GMT  
		Size: 136.7 KB (136713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbe007d027e93139ff939ece02bc51476de66b1d5b505899c169d13775d510a0`  
		Last Modified: Tue, 06 Oct 2026 01:22:23 GMT  
		Size: 2.3 MB (2286344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86cf65cc96233c2b4aadc77c4c33b88129a2b62f64b9c5a021699e3eb28ebee5`  
		Last Modified: Tue, 06 Oct 2026 01:22:22 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d2d4760f47202c0b45135bb9d7ff59c58459e7ad99594786be531b150f555b6`  
		Last Modified: Tue, 06 Oct 2026 01:22:23 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:6fa0fc0329372d3ab73426a81eb03684ac37b6b44ce464f0c08ca9676c60de82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f09a49d1eaaf775f21be83947a61998647107aac63f88a4042ec77e4dbbd1ec`

```dockerfile
```

-	Layers:
	-	`sha256:b1092fc97cef42727e9036fe522d7ed2633633985bbaac4829c91acd129da3a6`  
		Last Modified: Tue, 06 Oct 2026 01:22:23 GMT  
		Size: 2.0 MB (2014332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ab446710960dba37f7b51a6eb0f7bc842602da0824da26225b23926dedefbdc`  
		Last Modified: Tue, 06 Oct 2026 01:22:22 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; arm variant v5

```console
$ docker pull memcached@sha256:f99f30eaf4a8f67b996c41f49fec4c0e4a16523901b3564394d631c35b2ccfed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30370459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ce918c60a86aa9267194a8f22739fa01607bf2c26fc25c89e64ffc01852b2f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:18:18 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:18:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:21:40 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:21:40 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:21:40 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:21:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:21:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:21:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:21:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:21:40 GMT
USER memcache
# Tue, 06 Oct 2026 01:21:40 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:21:40 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:cb79ce05d3152dc6f7b8608f1f449aa1fbf1541a5dff435139649d755dd23d93`  
		Last Modified: Tue, 06 Oct 2026 00:13:24 GMT  
		Size: 28.0 MB (28007486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0fc4c700738b0949f606b6b5601896930602894413dfc8db3b37f5bfc541a14`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a25abe783152ae88c84222cd52a115baf6ea0a88846f910d6128500df7103939`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 144.2 KB (144200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1ce858ea6db063b480bff4a3baafcc483f5817f7c4d1be66827c87c7d43b2d9`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 2.2 MB (2217261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2bdc54165033126966499027bdd3c11823f028488c41440ea755d764b21bbdd`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c3604de1f39f6d0df3b8a994bdf608a0e366a8633c1ed5551de0bdc2deb117d`  
		Last Modified: Tue, 06 Oct 2026 01:21:47 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:14fead2feed9bed8d15c272d3b4c45100e99e1a2da41c7c0dcce6d6dfca0852d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2039639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecbbdca80f1a7bc00d9cd9bba88060ee0fd9344a138a0aeed9817b4b443f39e3`

```dockerfile
```

-	Layers:
	-	`sha256:238b5082fef01c1b58fdb77c003c03415636e326c699af155126cfd037145511`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 2.0 MB (2017335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9df37609ab40ce96bcd6822f2a492aff1b99b73c211416d45a104e62aba1152c`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; arm variant v7

```console
$ docker pull memcached@sha256:2a0f066db5ab04bcc02e20ea0552bbb943884c32ceb014761763c8b713a8a410
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28566690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d6dc33010f19ca987a03eda3ed24aa29fe95ec521260ddadc1fec5883a5ee70`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:20:47 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:20:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:23:58 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:23:58 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:23:58 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:23:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:23:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:23:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:23:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:23:58 GMT
USER memcache
# Tue, 06 Oct 2026 01:23:58 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:23:58 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf458570d1c1ac6b3a5d06336f964b504bc7d5902622370f11291826321cd43f`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1b651e6ccfc4a1084deaae487cb9dec23a117ddfdb2c0fd2e82df5c8b57fcc3`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 135.4 KB (135386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc87fbda19f8ce41e669327ace6c6db485589566dae2ddb46b94a4243e656b25`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 2.2 MB (2171612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f08eca3251dd91c45d7f3898d2e97fe9e7d9d6d8d96b1981e652aa291e568d56`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ffd165e448c27fa217b74d7788471a856372780f9650a32ea2ed4473541ff7`  
		Last Modified: Tue, 06 Oct 2026 01:24:05 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:86eb842ad2b9bd0e5c38e7648723ba6df9f9b92c122a5689a24918189ad30a41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2038096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec25db8cea0645c1ab26371aec6335b17af7efe5f6eaaf8e6e3ff29936dd1815`

```dockerfile
```

-	Layers:
	-	`sha256:10f4ca9afa8376b15d1ad34282553df796975282b3cd3a46f94c45371f553cb6`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 2.0 MB (2015792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bea6373013b6cf4d05758d03fe9be9432f173977b5b83e71a96e166847cbe4f4`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:db1095291332bd58c0551af962f8940dce18d87e5ba4ff6ba9e2a901819d9c25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32622142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9207469bca7f44aecf7bff570002ede8e626e06e0cb25fa008268f97f644c75b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:19:35 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:19:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:22:35 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:22:35 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:22:35 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:22:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:22:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:22:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:22:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:22:35 GMT
USER memcache
# Tue, 06 Oct 2026 01:22:35 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:22:35 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:620da5091547ba64520d491a8b6b517cce0a3d474388b1f49bf7bf9e118d85bd`  
		Last Modified: Tue, 06 Oct 2026 01:22:41 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fae4064dd7b1370d85a82720c9a3acc9c925624f20ad91e204783b10a2ec3dfe`  
		Last Modified: Tue, 06 Oct 2026 01:22:41 GMT  
		Size: 153.5 KB (153527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6950f6af6542268dc492c1c5bbfcccef50b35f40596d348b86b238b824c1b19`  
		Last Modified: Tue, 06 Oct 2026 01:22:42 GMT  
		Size: 2.3 MB (2266820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68b55d7d01f6f7371c44460d3c04b7dd27e5d002dda63ab81d2931d02e2ffa78`  
		Last Modified: Tue, 06 Oct 2026 01:22:42 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b26a56b8e9216c4807b9c2bf095d1b3a5df29b13206a2098db60b1d90958f853`  
		Last Modified: Tue, 06 Oct 2026 01:22:43 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:d0649d2335af9e7e2a93517db111e263cd510a676fd1f13ea439a6d10362606c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fbb64c2b568e3c52baac2d8e24e2d2af7dd0063e821826e0e534070f0938e61`

```dockerfile
```

-	Layers:
	-	`sha256:bde99632d639c60d280adfc23727596b782215923117bffba5efc9a0f34480c7`  
		Last Modified: Tue, 06 Oct 2026 01:22:42 GMT  
		Size: 2.0 MB (2014640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b79d8c6a0d2eb65369ee6909525df3324d7fdfd7dd1c7e2b5f236d2d4bc9ac5`  
		Last Modified: Tue, 06 Oct 2026 01:22:42 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; 386

```console
$ docker pull memcached@sha256:aaf3189188869f4a3ccfde0f2610fd595011df2eb449251fb909a86f4220ab8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33733530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a90759960ac97d23dcce664286754ba1a507a4e61399c7fc40f1cac308182f17`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:17:26 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:17:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:20:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:20:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:20:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:20:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:20:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:20:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:20:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:20:24 GMT
USER memcache
# Tue, 06 Oct 2026 01:20:24 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:20:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78226cd621a6dc04a3c52ac5bd710b236b7e84dac2be795ed78f6270e06d5d58`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d9f6771133e91a6c72f1c941b3ca5ad178f310aa70cc67e1f45404ce10f466a`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 147.5 KB (147545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d960652d73e72b9de15a4cd637e7c31ab99b80b0de6ed50167dec7fd0b695a0b`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 2.2 MB (2231174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1a6c5315b066087aabdf4ff7fa5679a0cf33066a165cbab8cc1febe9334b403`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd2d66ec395c65b79cd82bfa9f5feee129c872bfc5a5e2c01eb6cdd967ce418`  
		Last Modified: Tue, 06 Oct 2026 01:20:31 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:715096757feec34ae4e6782045183cdfd41a9f66408fc8d67c5ab4340c457bd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba50a99f65e30b177a771da6a3d0404f45696a36b8ad29e54d4ae4ba06b5c1b8`

```dockerfile
```

-	Layers:
	-	`sha256:660aa37bc36843d550abc12f4ec61b3ae98b4ca4b38e327f60a211bf33d3173b`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 2.0 MB (2011489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2d7da2372f7dde1b48c8a8574856970d7adedf4c27a4afaefe0777877499fb5`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; ppc64le

```console
$ docker pull memcached@sha256:5f415587997b8e0f1a561a915d39e9bcdf22d98679c052071c9698ccbbf9d39b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.7 MB (36704053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87adc0c99e19a7a8da27980c7cf9b7aa831c6637f29a6a1e4bb0999f373d5499`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:39:24 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:39:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:04:32 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 02:04:32 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 02:04:32 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 02:04:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 02:04:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:04:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 02:04:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:04:35 GMT
USER memcache
# Tue, 06 Oct 2026 02:04:35 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 02:04:35 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6164d46e47235d7fd1edd7229d8f1bd765481418398465b98253d9736ec3c547`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a390cebd7020aa0d191036b56766e99b9877018eb509ea16b5448462b2ec449`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 170.4 KB (170390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3543f360a3c5a2967473a8b3f42e23c2e0c39d76ccf2f0abdbd4d683ccd3431`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 2.9 MB (2880549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6137beede6ddbecbc997c4db4ae5f39982a5a04a6921ddb419819b79469ae7d0`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f76d35c3739a1f5ca7a71bad3b15cd71a8d162428348592a7c9da5d28f34765`  
		Last Modified: Tue, 06 Oct 2026 02:05:04 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:257156567aeea78272834db591a21e418aeec1cb24edb73e54de3159465d836d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2040160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06ea07e913ac58a382529edbdc77bb6f3a94c58a5c91c09165d5e7b999f701ec`

```dockerfile
```

-	Layers:
	-	`sha256:8a367b2965262ace978c86ced51b2dc153aa2206f6c4f9400a013ba78df77d3d`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 2.0 MB (2017933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:74137664ae61f8b59bed7b2fa9df763c2ca13444ece2eba6077f57dba40a3d90`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; riscv64

```console
$ docker pull memcached@sha256:8656a4a311e8931b683fc70198a24d869bbe722750d6fc07c83f9e7237b478c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30681766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21bb47e315c736689f7d9dea92f8e99cfe69d4374074794c3b1a025fb47e7a71`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 07:21:32 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 07:22:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 07:55:26 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 07:55:26 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 07:55:26 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 07:55:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 07:55:27 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 07:55:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 07:55:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 07:55:27 GMT
USER memcache
# Tue, 06 Oct 2026 07:55:27 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 07:55:27 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21d459eef25729476a15d9c2a71497e61fe2c1196ce2b0a061be33003a44ae81`  
		Last Modified: Tue, 06 Oct 2026 07:56:25 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:263b253257e5b7560b41f9faa680bfdd51b7cff710244248157851b53d5c6aa5`  
		Last Modified: Tue, 06 Oct 2026 07:56:24 GMT  
		Size: 133.1 KB (133127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bc0a71aadf0f4e2b01e90f2bc8deff83e567c95a01aa9ee2f63a2aa9b78181d`  
		Last Modified: Tue, 06 Oct 2026 07:56:25 GMT  
		Size: 2.2 MB (2213364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf6adaa4db7702afeeff21184d36c11cb9b535da6897e7c20fb6b715bcfdea7c`  
		Last Modified: Tue, 06 Oct 2026 07:56:24 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c52b03c9f42bf5cc7e456fe818e7d30afca4a4aafdeb44fa0909799871255978`  
		Last Modified: Tue, 06 Oct 2026 07:56:26 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:77be1f72ce3d91c4c7c73cd87f8878f429e7d3d34618f913d85362946d18cc14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b833cdf252d8ef60135fb683ad467b12dba50840f19d3fad115113cc8b3612b`

```dockerfile
```

-	Layers:
	-	`sha256:1196e2adc1677841feebedecd6d0432decb685bdab29f5bafa15a9bf1abfcddb`  
		Last Modified: Tue, 06 Oct 2026 07:56:25 GMT  
		Size: 2.0 MB (2008296 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad5fac857c1ca1386708151b7fc10b65c7d061ad865939ed8c614ee0929c753a`  
		Last Modified: Tue, 06 Oct 2026 07:56:24 GMT  
		Size: 22.2 KB (22226 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; s390x

```console
$ docker pull memcached@sha256:60efa47221d8959fc57e5a883a13a0cdbd4c6c2c106fb75b43cb48c0a93badcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32352682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fdb24e98011f7cc5569c516a3fd13bdf2768a566e90affe67ee8620fd761173`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:16:36 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:16:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:19:49 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:19:49 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:19:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:19:49 GMT
USER memcache
# Tue, 06 Oct 2026 01:19:49 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:19:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:fd14e6ce0256b9093e480e6146009effeb6c2bc486ff0052d50a32cbab8335fc`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 29.9 MB (29909247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9eee2ff929ea4e7ec919f80e7190bae923598fa62b8353765197bc11ea5a486`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36b740724da913e5a0891835dd7f5882ee3431869ff315c5d470924c36a412ce`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 140.5 KB (140516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a13b7ad2fafa15b3e37dc61ffe8e8a697b0e775edc6e1de88ba91f558e7faf20`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 2.3 MB (2301406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d53df8fb22e01bbb39ceb207639fc38f6f6e44053037d57e9616b0f22380bce`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5378341f5e20367bd2680911105891faeeda0d235ae58c94101d2253a616814`  
		Last Modified: Tue, 06 Oct 2026 01:20:00 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:90b4789ca09efcc93d0068d240f0acb339dc8d4afa13951cb103a2cbe5329276
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d301a021e72bdde47c24ea7b9f7168d0dcad77663582a1b44d8164cd505b1ae`

```dockerfile
```

-	Layers:
	-	`sha256:58444f61165c9d6f2dc18ea544c9788885fbf0f3fe3af01dce90eb14eac020b9`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 2.0 MB (2015769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5e7acc93643035fc7961ac9b6f7c3514ffa025c8aa43dd09cdc4c1b8b6c79de`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 22.2 KB (22152 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:9e4de012dc607573052061c0bcb38abc775e1dd59b24e7ac38d1892842094aaf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
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

### `memcached:1-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:aed6c14165dc0ca719495a86db396e4af335199e2bc509cf34197b8eb81e75db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5930141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc3f45e091e88b03ec5a7365defcc1153365adefba32a94161d6faccc029383a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:16:33 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:19:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:19:05 GMT
USER memcache
# Thu, 17 Sep 2026 21:19:05 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:19:05 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51fbbe0527a5a9d13613c8b22f2752a14b91b6092d0173800fb78cdbdf258428`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ddc38e6924e90cccdea0458ce3bad50a286b3f5d5e9c0305e4b92bdbcb0fc0b`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 106.1 KB (106069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11fb880294fac3007e7d5466cb68cdda8db6b8e867e5830f618ba59347084c48`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 2.0 MB (1972988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850056ad91a7eb14a58eb47cbf53170bd6c8cd07d782801b5291119ef8b5b196`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c150f54a299a0e5865f493673e27ba960bfe92b1934d5ca3f45495da216fc7`  
		Last Modified: Thu, 17 Sep 2026 21:19:11 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:102f3093bc6e0dc03c870eefaa1d08375dec1dcaa029b7cdd28e8fc8b230735f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f039df7239fcf88279416238b99fd3f4265ddb7845dea2a532668642ace6dee7`

```dockerfile
```

-	Layers:
	-	`sha256:df58852b59ae3bbcc474c37fbbf4af35ed5328fac4a45547d6dfe1c745b5cf6b`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84c13baa7fdc4605691a3816af63e761060d234a8f3c82fb584e5f2a994f607d`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 20.5 KB (20530 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:8973cb50b646592bc4b4db5c5ba5fafeaedc9a5cc14d4ee0e033501aad18d50e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5580295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ab89ee2938c40874ab847588a7bafedd064247be84b1f2ed13066b41aae89af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:20:55 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:20:56 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:24:01 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:24:01 GMT
USER memcache
# Thu, 17 Sep 2026 21:24:01 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:24:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87a68700291779231aecfd220f9d88723f70443a7e53b3ee6cc7e50331769869`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95cccdcfd4cc608994427c242b2392444f14c8d1b15a3c9573c9b579ec3f251b`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 102.6 KB (102640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c173cc650cff05287311d33f6a47867336f7ed1460693ea0df58ad80f4f904f`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 1.9 MB (1921196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35b9602a9760e8079674d25e1275b8b248dbd430166307fa22bce8f18e15615e`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af8021c2cf11f0eabbe2f38ce25544bd0338d0d216e3a31cb4c67145e48a2884`  
		Last Modified: Thu, 17 Sep 2026 21:24:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:a3dc4759b806fd595aedee968574f6d30b81786fae6f02a5ed5fd3de9a435ac2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6389c8a7a95dbe7874d26cc6d210d709d1d2d7918af74b99fbb9682526c8792`

```dockerfile
```

-	Layers:
	-	`sha256:b330c577900be61f94c9bdbc4264d33e0b1c8c4da085bad9165206c011cc083d`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; arm variant v7

```console
$ docker pull memcached@sha256:4698047b9c210750e16e07db091be4b5f72b595c820e6e846e7188ba0b386609
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5239338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f84a27cb8b2508b216332970f0618a4915ada956d79e6fa8d381247023423d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:19:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:19:34 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:22:30 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:22:30 GMT
USER memcache
# Thu, 17 Sep 2026 21:22:30 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:22:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:995431fad1655fd0bda6213201e5a9a96951e71f4f86618d35615eec52332190`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4785d6c6095884eacbe5558dcdc121bca474e6125a08dfafa2cf70e87894ebd3`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 92.4 KB (92374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41440d665d2ba596c0e09c2045809a58916edd2537e8f804e5a17764fb30af6b`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 1.9 MB (1880415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:937240234e98ecd679cf903fc7c7aa62d14ae776d7eba3b2d8ee806456cb5825`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64428be47e9234c7141e9537d621fe415c0e0e6a11e600c188c8204de36af99e`  
		Last Modified: Thu, 17 Sep 2026 21:22:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:f299ad7470f58ee154752703c7b7a09cfdeddcd1068ccbb69b7620a7f2cdb992
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b60f46873c9939d84f06a78729773d4cf55de1e87ac0e9a081e8febade8b26a2`

```dockerfile
```

-	Layers:
	-	`sha256:d77ba4f589d860c72847322877d5b8c550270a2389bd2850e29fc66026488ff3`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10c142ee87947b5a89569925c281a9eb621090b0624c5864032bc312ed2afdc5`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:31462f1ea73a0a29772ae6f32be7124da9c2a9683ae24d802bfcc54041550c76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6262017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dd5bd4099e3cca31288437e2dd63d71878251e9a528afa6064a7fc061fd0d4b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:13:17 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:13:18 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:16:08 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:16:08 GMT
USER memcache
# Thu, 17 Sep 2026 21:16:08 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:16:08 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb1e88d48d205af89d0d9b1904c6e63a30e855a6f5412935835c74d59a3810f2`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7610f2b35dab65304108892242fdf929182879b48c7ec7e98ade8f72367602a`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 121.9 KB (121854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44405d199511c9c938bef88955579ffc36f5d445db3314a38b68edacfd6f8148`  
		Last Modified: Thu, 17 Sep 2026 21:16:14 GMT  
		Size: 2.0 MB (1951158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81e6109934a7079c68103964d22c882f2bcbaa12b72eb28215df5a5a85da515c`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:746a12191622835cb3173ad754db60d1b994fca18162459d7f747de35b65420e`  
		Last Modified: Thu, 17 Sep 2026 21:16:14 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:d2a1e3c664b5a5358e65793068ee3a463b1e2fe9decf1756e18c2b3be7144999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7531bf2f8de67b5bb43c901a077c5edfd30a29cccf14c8c0529c7a6a7077358a`

```dockerfile
```

-	Layers:
	-	`sha256:7362abb71609190210ea3be48c0203576b7a05be93a91a20193a25f2518aa82e`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee7723224e4a1ff2a4c3dd74e9fc725ddcc2ceeb9a645ac99ce84a861893b52a`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 20.7 KB (20727 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; 386

```console
$ docker pull memcached@sha256:4afb6580c24ce2632634356a9c937b496b8743e066378fc23d8913fcb200f432
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5717122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22be399c981a2a59830540f0047af1bc959ef8e8126c47fac9e18ea3faf37bb3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:36 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:15:36 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:18:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:18:24 GMT
USER memcache
# Thu, 17 Sep 2026 21:18:24 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:18:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de5a1555078fa5282f5a803b64f0e79189413537a752f4474488fd16413384bd`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e7199937599d0cbc9b3195d82ef0b3d4de6c3e0cc321dec80d52c622beab351`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 110.7 KB (110733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a21a73ed462e36058c3afb00410805dbeac8749d3c7eba98d19fde8cac202d2e`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 1.9 MB (1928259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3af84ae0a647f9eb5f6bdee46d460c064ef97e3238c053e9c78d3ffc1e5b9d87`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0965a9fe7f7f140845e67596ab02a4927d97bf25d44bbee1aaf6f10d370f8600`  
		Last Modified: Thu, 17 Sep 2026 21:18:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:d89f57316668a586ea578ed614cdc7ce13fff224c626ac06c9ac3dea42601a04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8b6ffba2b1dcfd03338d94840ba3fc7e43dc4ad9d16e97ab8c9297fb3fdb424`

```dockerfile
```

-	Layers:
	-	`sha256:4e8c5777c38b16385e0fa1aa5dc68e59b3f668641ffcf0e3f7daa467d10e60f7`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d8caad469a2d8d8f1e6c35f144d71bcb8985515d1bd90eab44f60991c58a727`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:9a0437672c246d127b1782f10a801ce0db757ac74f367b84553c96b2be7cb5f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6010090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:512f89eee8246394b1b5628094edf12aca1099208a7cae259a3eb56156e0693b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:30:23 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:30:24 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:53:31 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:53:31 GMT
USER memcache
# Thu, 17 Sep 2026 21:53:31 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:53:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9164e851bf437772ce842921040227ac7487b00f22d00cd6763636f330964202`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0995f3b36f83b7959f49f1761f6c225138a2b065c268d83d0c3d0a87388bc617`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 126.3 KB (126261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c93a3f94f5c6d12261d3f31e57bad38b61e9ff3be47164a599318d71615f9a02`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 2.1 MB (2065002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc74b243580138ee3b28fd11e87cb70e99beb61a59b8dc49871b4d86a8706b5`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b494ff94eeffbb1f72c70e1b578480f7c72ad4a6bcc5bc42ba105b3e1278d3b`  
		Last Modified: Thu, 17 Sep 2026 21:53:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:f80e28a730a608ba861ca92c6a4227987495a1441e641cd1bf23b1b82144c6fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b415f70b85d9e9b283614528065ba6acee2673d8c7ce30c575ef4dc9e686258b`

```dockerfile
```

-	Layers:
	-	`sha256:03bc6ab3f08099a9ee4128175887a1c8577344a9bbaade3317621fbc2e51c40e`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc2ab6e0e8c7ae32bfe2026593c785e0b1175d0468ba31e9b9c736478a378917`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; riscv64

```console
$ docker pull memcached@sha256:b655eb23860c9f5cd8820dc15391d6c85f5c4001c69fb484b508a7a6c0b2ccf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5745298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55b8dced45037bb279c8b4b7c6173dd938bb75674f945d9f8554ffed1b752ca6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Sat, 19 Sep 2026 06:17:46 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Sat, 19 Sep 2026 06:17:50 GMT
RUN apk add --no-cache libsasl # buildkit
# Sat, 19 Sep 2026 07:00:09 GMT
ENV MEMCACHED_VERSION=1.6.45
# Sat, 19 Sep 2026 07:00:09 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Sat, 19 Sep 2026 07:00:09 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Sat, 19 Sep 2026 07:00:09 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Sat, 19 Sep 2026 07:00:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 07:00:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Sat, 19 Sep 2026 07:00:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 07:00:09 GMT
USER memcache
# Sat, 19 Sep 2026 07:00:09 GMT
EXPOSE map[11211/tcp:{}]
# Sat, 19 Sep 2026 07:00:09 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:64f7f08b6763becdda2e72bfacdfd36663e4847bc6fdb366336127620012bc02`  
		Last Modified: Fri, 18 Sep 2026 16:49:42 GMT  
		Size: 3.6 MB (3575371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50696ee7fd6dd6a48287f1be319d7356f1aab635568394ca3f5d932466f8bc69`  
		Last Modified: Sat, 19 Sep 2026 07:00:33 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f37eda83220efe3380370c6043e0694c7ff2ccf346970849bf28d6897aeb60f5`  
		Last Modified: Sat, 19 Sep 2026 07:00:34 GMT  
		Size: 108.9 KB (108897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3259f74c8597dcf889fea8d8e6a0221da5289a45dac4f2851502a79b91f4a1f`  
		Last Modified: Sat, 19 Sep 2026 07:00:34 GMT  
		Size: 2.1 MB (2059672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bced3b020a43d00c9ff35fc2ff7e2abbc320776123d4e75d5ba63bdbde9992f`  
		Last Modified: Sat, 19 Sep 2026 07:00:34 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c55e359dc42a43fbf052b329a4eaa4484f898a931a8caff3b10d2211ebcaf55`  
		Last Modified: Sat, 19 Sep 2026 07:00:35 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:4156ffa9a211bd5adbd087c9f683e974870966536c1ae129337da66360b95151
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a4f0ecd5f404f87006c9e26865243a7998e2aafa80a461dd9752c041697bf2c`

```dockerfile
```

-	Layers:
	-	`sha256:c6980ceb4c4153eb9d97e749ed0af9b20c568aae526989597ec81e90c3b06ad9`  
		Last Modified: Sat, 19 Sep 2026 07:00:33 GMT  
		Size: 94.3 KB (94300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82e8e25f4832f3505dd2a86cfbdd4fb23a849b2a41c2a65539cc5fc2e5c853a0`  
		Last Modified: Sat, 19 Sep 2026 07:00:33 GMT  
		Size: 20.6 KB (20604 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:91488a004e9f64eab2de7981c01b0ef3d2a1ebdd1d8ea3083e271daedb930899
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5836268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0748d0499cbde3582cbe42af5f573a3d87f870eaf9e73ab35ba83a1fb00f4a5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:24:50 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 22:24:50 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 22:27:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 22:27:56 GMT
USER memcache
# Thu, 17 Sep 2026 22:27:56 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 22:27:56 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b28ab774b98a6f29932df606a1298015f0217cceaaf48cc8b4da1a712d16dec7`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f57210d60c5d0de49a458685c32d457593dd9dc3fbe5da5e916010a9723a733`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 114.3 KB (114287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bc4422a0f2f7f71932333a312da7ab0d836e17d66ed95f5a8983d3bf0d15f4e`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 2.0 MB (2005290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45e7a27d33ae9a3ad3b5c6a329d295e218eb317d67093226b27351835b2294fd`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859163942310d61c18cdaf7abeee7b475bf01a0e6d71b759d0e9485489273ad7`  
		Last Modified: Thu, 17 Sep 2026 22:28:05 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:6684f08661c99d1a72d49a7c23c27dbb132abe46ecca960eab055413ae4430ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2a3ade50f032040600c3160b104c07040707b6172447f1ff8be2d0b43aee484`

```dockerfile
```

-	Layers:
	-	`sha256:2348ae961439981a5f9d7a98117febd705c8fd5ed703c60ba55e6302e0939ad0`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40f2ae73c6298b67d61ba80635c258460fd84b74fab96b4bda97def3dcde3994`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1-alpine3.24`

```console
$ docker pull memcached@sha256:9e4de012dc607573052061c0bcb38abc775e1dd59b24e7ac38d1892842094aaf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
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

### `memcached:1-alpine3.24` - linux; amd64

```console
$ docker pull memcached@sha256:aed6c14165dc0ca719495a86db396e4af335199e2bc509cf34197b8eb81e75db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5930141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc3f45e091e88b03ec5a7365defcc1153365adefba32a94161d6faccc029383a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:16:33 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:19:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:19:05 GMT
USER memcache
# Thu, 17 Sep 2026 21:19:05 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:19:05 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51fbbe0527a5a9d13613c8b22f2752a14b91b6092d0173800fb78cdbdf258428`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ddc38e6924e90cccdea0458ce3bad50a286b3f5d5e9c0305e4b92bdbcb0fc0b`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 106.1 KB (106069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11fb880294fac3007e7d5466cb68cdda8db6b8e867e5830f618ba59347084c48`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 2.0 MB (1972988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850056ad91a7eb14a58eb47cbf53170bd6c8cd07d782801b5291119ef8b5b196`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c150f54a299a0e5865f493673e27ba960bfe92b1934d5ca3f45495da216fc7`  
		Last Modified: Thu, 17 Sep 2026 21:19:11 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:102f3093bc6e0dc03c870eefaa1d08375dec1dcaa029b7cdd28e8fc8b230735f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f039df7239fcf88279416238b99fd3f4265ddb7845dea2a532668642ace6dee7`

```dockerfile
```

-	Layers:
	-	`sha256:df58852b59ae3bbcc474c37fbbf4af35ed5328fac4a45547d6dfe1c745b5cf6b`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84c13baa7fdc4605691a3816af63e761060d234a8f3c82fb584e5f2a994f607d`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 20.5 KB (20530 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine3.24` - linux; arm variant v6

```console
$ docker pull memcached@sha256:8973cb50b646592bc4b4db5c5ba5fafeaedc9a5cc14d4ee0e033501aad18d50e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5580295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ab89ee2938c40874ab847588a7bafedd064247be84b1f2ed13066b41aae89af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:20:55 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:20:56 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:24:01 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:24:01 GMT
USER memcache
# Thu, 17 Sep 2026 21:24:01 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:24:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87a68700291779231aecfd220f9d88723f70443a7e53b3ee6cc7e50331769869`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95cccdcfd4cc608994427c242b2392444f14c8d1b15a3c9573c9b579ec3f251b`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 102.6 KB (102640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c173cc650cff05287311d33f6a47867336f7ed1460693ea0df58ad80f4f904f`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 1.9 MB (1921196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35b9602a9760e8079674d25e1275b8b248dbd430166307fa22bce8f18e15615e`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af8021c2cf11f0eabbe2f38ce25544bd0338d0d216e3a31cb4c67145e48a2884`  
		Last Modified: Thu, 17 Sep 2026 21:24:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:a3dc4759b806fd595aedee968574f6d30b81786fae6f02a5ed5fd3de9a435ac2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6389c8a7a95dbe7874d26cc6d210d709d1d2d7918af74b99fbb9682526c8792`

```dockerfile
```

-	Layers:
	-	`sha256:b330c577900be61f94c9bdbc4264d33e0b1c8c4da085bad9165206c011cc083d`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine3.24` - linux; arm variant v7

```console
$ docker pull memcached@sha256:4698047b9c210750e16e07db091be4b5f72b595c820e6e846e7188ba0b386609
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5239338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f84a27cb8b2508b216332970f0618a4915ada956d79e6fa8d381247023423d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:19:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:19:34 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:22:30 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:22:30 GMT
USER memcache
# Thu, 17 Sep 2026 21:22:30 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:22:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:995431fad1655fd0bda6213201e5a9a96951e71f4f86618d35615eec52332190`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4785d6c6095884eacbe5558dcdc121bca474e6125a08dfafa2cf70e87894ebd3`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 92.4 KB (92374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41440d665d2ba596c0e09c2045809a58916edd2537e8f804e5a17764fb30af6b`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 1.9 MB (1880415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:937240234e98ecd679cf903fc7c7aa62d14ae776d7eba3b2d8ee806456cb5825`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64428be47e9234c7141e9537d621fe415c0e0e6a11e600c188c8204de36af99e`  
		Last Modified: Thu, 17 Sep 2026 21:22:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:f299ad7470f58ee154752703c7b7a09cfdeddcd1068ccbb69b7620a7f2cdb992
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b60f46873c9939d84f06a78729773d4cf55de1e87ac0e9a081e8febade8b26a2`

```dockerfile
```

-	Layers:
	-	`sha256:d77ba4f589d860c72847322877d5b8c550270a2389bd2850e29fc66026488ff3`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10c142ee87947b5a89569925c281a9eb621090b0624c5864032bc312ed2afdc5`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:31462f1ea73a0a29772ae6f32be7124da9c2a9683ae24d802bfcc54041550c76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6262017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dd5bd4099e3cca31288437e2dd63d71878251e9a528afa6064a7fc061fd0d4b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:13:17 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:13:18 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:16:08 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:16:08 GMT
USER memcache
# Thu, 17 Sep 2026 21:16:08 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:16:08 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb1e88d48d205af89d0d9b1904c6e63a30e855a6f5412935835c74d59a3810f2`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7610f2b35dab65304108892242fdf929182879b48c7ec7e98ade8f72367602a`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 121.9 KB (121854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44405d199511c9c938bef88955579ffc36f5d445db3314a38b68edacfd6f8148`  
		Last Modified: Thu, 17 Sep 2026 21:16:14 GMT  
		Size: 2.0 MB (1951158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81e6109934a7079c68103964d22c882f2bcbaa12b72eb28215df5a5a85da515c`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:746a12191622835cb3173ad754db60d1b994fca18162459d7f747de35b65420e`  
		Last Modified: Thu, 17 Sep 2026 21:16:14 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:d2a1e3c664b5a5358e65793068ee3a463b1e2fe9decf1756e18c2b3be7144999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7531bf2f8de67b5bb43c901a077c5edfd30a29cccf14c8c0529c7a6a7077358a`

```dockerfile
```

-	Layers:
	-	`sha256:7362abb71609190210ea3be48c0203576b7a05be93a91a20193a25f2518aa82e`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee7723224e4a1ff2a4c3dd74e9fc725ddcc2ceeb9a645ac99ce84a861893b52a`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 20.7 KB (20727 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine3.24` - linux; 386

```console
$ docker pull memcached@sha256:4afb6580c24ce2632634356a9c937b496b8743e066378fc23d8913fcb200f432
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5717122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22be399c981a2a59830540f0047af1bc959ef8e8126c47fac9e18ea3faf37bb3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:36 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:15:36 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:18:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:18:24 GMT
USER memcache
# Thu, 17 Sep 2026 21:18:24 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:18:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de5a1555078fa5282f5a803b64f0e79189413537a752f4474488fd16413384bd`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e7199937599d0cbc9b3195d82ef0b3d4de6c3e0cc321dec80d52c622beab351`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 110.7 KB (110733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a21a73ed462e36058c3afb00410805dbeac8749d3c7eba98d19fde8cac202d2e`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 1.9 MB (1928259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3af84ae0a647f9eb5f6bdee46d460c064ef97e3238c053e9c78d3ffc1e5b9d87`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0965a9fe7f7f140845e67596ab02a4927d97bf25d44bbee1aaf6f10d370f8600`  
		Last Modified: Thu, 17 Sep 2026 21:18:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:d89f57316668a586ea578ed614cdc7ce13fff224c626ac06c9ac3dea42601a04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8b6ffba2b1dcfd03338d94840ba3fc7e43dc4ad9d16e97ab8c9297fb3fdb424`

```dockerfile
```

-	Layers:
	-	`sha256:4e8c5777c38b16385e0fa1aa5dc68e59b3f668641ffcf0e3f7daa467d10e60f7`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d8caad469a2d8d8f1e6c35f144d71bcb8985515d1bd90eab44f60991c58a727`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine3.24` - linux; ppc64le

```console
$ docker pull memcached@sha256:9a0437672c246d127b1782f10a801ce0db757ac74f367b84553c96b2be7cb5f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6010090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:512f89eee8246394b1b5628094edf12aca1099208a7cae259a3eb56156e0693b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:30:23 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:30:24 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:53:31 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:53:31 GMT
USER memcache
# Thu, 17 Sep 2026 21:53:31 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:53:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9164e851bf437772ce842921040227ac7487b00f22d00cd6763636f330964202`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0995f3b36f83b7959f49f1761f6c225138a2b065c268d83d0c3d0a87388bc617`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 126.3 KB (126261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c93a3f94f5c6d12261d3f31e57bad38b61e9ff3be47164a599318d71615f9a02`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 2.1 MB (2065002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc74b243580138ee3b28fd11e87cb70e99beb61a59b8dc49871b4d86a8706b5`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b494ff94eeffbb1f72c70e1b578480f7c72ad4a6bcc5bc42ba105b3e1278d3b`  
		Last Modified: Thu, 17 Sep 2026 21:53:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:f80e28a730a608ba861ca92c6a4227987495a1441e641cd1bf23b1b82144c6fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b415f70b85d9e9b283614528065ba6acee2673d8c7ce30c575ef4dc9e686258b`

```dockerfile
```

-	Layers:
	-	`sha256:03bc6ab3f08099a9ee4128175887a1c8577344a9bbaade3317621fbc2e51c40e`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc2ab6e0e8c7ae32bfe2026593c785e0b1175d0468ba31e9b9c736478a378917`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine3.24` - linux; riscv64

```console
$ docker pull memcached@sha256:b655eb23860c9f5cd8820dc15391d6c85f5c4001c69fb484b508a7a6c0b2ccf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5745298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55b8dced45037bb279c8b4b7c6173dd938bb75674f945d9f8554ffed1b752ca6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Sat, 19 Sep 2026 06:17:46 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Sat, 19 Sep 2026 06:17:50 GMT
RUN apk add --no-cache libsasl # buildkit
# Sat, 19 Sep 2026 07:00:09 GMT
ENV MEMCACHED_VERSION=1.6.45
# Sat, 19 Sep 2026 07:00:09 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Sat, 19 Sep 2026 07:00:09 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Sat, 19 Sep 2026 07:00:09 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Sat, 19 Sep 2026 07:00:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 07:00:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Sat, 19 Sep 2026 07:00:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 07:00:09 GMT
USER memcache
# Sat, 19 Sep 2026 07:00:09 GMT
EXPOSE map[11211/tcp:{}]
# Sat, 19 Sep 2026 07:00:09 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:64f7f08b6763becdda2e72bfacdfd36663e4847bc6fdb366336127620012bc02`  
		Last Modified: Fri, 18 Sep 2026 16:49:42 GMT  
		Size: 3.6 MB (3575371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50696ee7fd6dd6a48287f1be319d7356f1aab635568394ca3f5d932466f8bc69`  
		Last Modified: Sat, 19 Sep 2026 07:00:33 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f37eda83220efe3380370c6043e0694c7ff2ccf346970849bf28d6897aeb60f5`  
		Last Modified: Sat, 19 Sep 2026 07:00:34 GMT  
		Size: 108.9 KB (108897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3259f74c8597dcf889fea8d8e6a0221da5289a45dac4f2851502a79b91f4a1f`  
		Last Modified: Sat, 19 Sep 2026 07:00:34 GMT  
		Size: 2.1 MB (2059672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bced3b020a43d00c9ff35fc2ff7e2abbc320776123d4e75d5ba63bdbde9992f`  
		Last Modified: Sat, 19 Sep 2026 07:00:34 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c55e359dc42a43fbf052b329a4eaa4484f898a931a8caff3b10d2211ebcaf55`  
		Last Modified: Sat, 19 Sep 2026 07:00:35 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:4156ffa9a211bd5adbd087c9f683e974870966536c1ae129337da66360b95151
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a4f0ecd5f404f87006c9e26865243a7998e2aafa80a461dd9752c041697bf2c`

```dockerfile
```

-	Layers:
	-	`sha256:c6980ceb4c4153eb9d97e749ed0af9b20c568aae526989597ec81e90c3b06ad9`  
		Last Modified: Sat, 19 Sep 2026 07:00:33 GMT  
		Size: 94.3 KB (94300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82e8e25f4832f3505dd2a86cfbdd4fb23a849b2a41c2a65539cc5fc2e5c853a0`  
		Last Modified: Sat, 19 Sep 2026 07:00:33 GMT  
		Size: 20.6 KB (20604 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine3.24` - linux; s390x

```console
$ docker pull memcached@sha256:91488a004e9f64eab2de7981c01b0ef3d2a1ebdd1d8ea3083e271daedb930899
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5836268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0748d0499cbde3582cbe42af5f573a3d87f870eaf9e73ab35ba83a1fb00f4a5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:24:50 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 22:24:50 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 22:27:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 22:27:56 GMT
USER memcache
# Thu, 17 Sep 2026 22:27:56 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 22:27:56 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b28ab774b98a6f29932df606a1298015f0217cceaaf48cc8b4da1a712d16dec7`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f57210d60c5d0de49a458685c32d457593dd9dc3fbe5da5e916010a9723a733`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 114.3 KB (114287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bc4422a0f2f7f71932333a312da7ab0d836e17d66ed95f5a8983d3bf0d15f4e`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 2.0 MB (2005290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45e7a27d33ae9a3ad3b5c6a329d295e218eb317d67093226b27351835b2294fd`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859163942310d61c18cdaf7abeee7b475bf01a0e6d71b759d0e9485489273ad7`  
		Last Modified: Thu, 17 Sep 2026 22:28:05 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:6684f08661c99d1a72d49a7c23c27dbb132abe46ecca960eab055413ae4430ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2a3ade50f032040600c3160b104c07040707b6172447f1ff8be2d0b43aee484`

```dockerfile
```

-	Layers:
	-	`sha256:2348ae961439981a5f9d7a98117febd705c8fd5ed703c60ba55e6302e0939ad0`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40f2ae73c6298b67d61ba80635c258460fd84b74fab96b4bda97def3dcde3994`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1-trixie`

```console
$ docker pull memcached@sha256:2046d6d2eb7cbd59470b533a101cbd67def3e718b04eb72478306dbc804a3171
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

### `memcached:1-trixie` - linux; amd64

```console
$ docker pull memcached@sha256:c9f95360aa3e64f836956defe064352c9045c54d3f2dda34590a68e042927a5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32267918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f34c06c3fd851fa86d3e7555b408164af6b4b4b47ee11aa7dc0bca734e7a71aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:19:32 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:19:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:22:16 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:22:16 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:22:16 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:22:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:22:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:22:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:22:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:22:16 GMT
USER memcache
# Tue, 06 Oct 2026 01:22:16 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:22:16 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e079f3032daaade186d2131f9f18bb2c0f9935ab855336f423301f61d6e7b328`  
		Last Modified: Tue, 06 Oct 2026 01:22:22 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d40ad5a129f0aa6c523fe06d1708562030b3c6fa97cb31740c9e5ee7bf3ba534`  
		Last Modified: Tue, 06 Oct 2026 01:22:22 GMT  
		Size: 136.7 KB (136713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbe007d027e93139ff939ece02bc51476de66b1d5b505899c169d13775d510a0`  
		Last Modified: Tue, 06 Oct 2026 01:22:23 GMT  
		Size: 2.3 MB (2286344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86cf65cc96233c2b4aadc77c4c33b88129a2b62f64b9c5a021699e3eb28ebee5`  
		Last Modified: Tue, 06 Oct 2026 01:22:22 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d2d4760f47202c0b45135bb9d7ff59c58459e7ad99594786be531b150f555b6`  
		Last Modified: Tue, 06 Oct 2026 01:22:23 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:6fa0fc0329372d3ab73426a81eb03684ac37b6b44ce464f0c08ca9676c60de82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f09a49d1eaaf775f21be83947a61998647107aac63f88a4042ec77e4dbbd1ec`

```dockerfile
```

-	Layers:
	-	`sha256:b1092fc97cef42727e9036fe522d7ed2633633985bbaac4829c91acd129da3a6`  
		Last Modified: Tue, 06 Oct 2026 01:22:23 GMT  
		Size: 2.0 MB (2014332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ab446710960dba37f7b51a6eb0f7bc842602da0824da26225b23926dedefbdc`  
		Last Modified: Tue, 06 Oct 2026 01:22:22 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; arm variant v5

```console
$ docker pull memcached@sha256:f99f30eaf4a8f67b996c41f49fec4c0e4a16523901b3564394d631c35b2ccfed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30370459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ce918c60a86aa9267194a8f22739fa01607bf2c26fc25c89e64ffc01852b2f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:18:18 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:18:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:21:40 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:21:40 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:21:40 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:21:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:21:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:21:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:21:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:21:40 GMT
USER memcache
# Tue, 06 Oct 2026 01:21:40 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:21:40 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:cb79ce05d3152dc6f7b8608f1f449aa1fbf1541a5dff435139649d755dd23d93`  
		Last Modified: Tue, 06 Oct 2026 00:13:24 GMT  
		Size: 28.0 MB (28007486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0fc4c700738b0949f606b6b5601896930602894413dfc8db3b37f5bfc541a14`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a25abe783152ae88c84222cd52a115baf6ea0a88846f910d6128500df7103939`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 144.2 KB (144200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1ce858ea6db063b480bff4a3baafcc483f5817f7c4d1be66827c87c7d43b2d9`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 2.2 MB (2217261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2bdc54165033126966499027bdd3c11823f028488c41440ea755d764b21bbdd`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c3604de1f39f6d0df3b8a994bdf608a0e366a8633c1ed5551de0bdc2deb117d`  
		Last Modified: Tue, 06 Oct 2026 01:21:47 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:14fead2feed9bed8d15c272d3b4c45100e99e1a2da41c7c0dcce6d6dfca0852d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2039639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecbbdca80f1a7bc00d9cd9bba88060ee0fd9344a138a0aeed9817b4b443f39e3`

```dockerfile
```

-	Layers:
	-	`sha256:238b5082fef01c1b58fdb77c003c03415636e326c699af155126cfd037145511`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 2.0 MB (2017335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9df37609ab40ce96bcd6822f2a492aff1b99b73c211416d45a104e62aba1152c`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; arm variant v7

```console
$ docker pull memcached@sha256:2a0f066db5ab04bcc02e20ea0552bbb943884c32ceb014761763c8b713a8a410
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28566690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d6dc33010f19ca987a03eda3ed24aa29fe95ec521260ddadc1fec5883a5ee70`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:20:47 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:20:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:23:58 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:23:58 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:23:58 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:23:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:23:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:23:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:23:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:23:58 GMT
USER memcache
# Tue, 06 Oct 2026 01:23:58 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:23:58 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf458570d1c1ac6b3a5d06336f964b504bc7d5902622370f11291826321cd43f`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1b651e6ccfc4a1084deaae487cb9dec23a117ddfdb2c0fd2e82df5c8b57fcc3`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 135.4 KB (135386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc87fbda19f8ce41e669327ace6c6db485589566dae2ddb46b94a4243e656b25`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 2.2 MB (2171612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f08eca3251dd91c45d7f3898d2e97fe9e7d9d6d8d96b1981e652aa291e568d56`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ffd165e448c27fa217b74d7788471a856372780f9650a32ea2ed4473541ff7`  
		Last Modified: Tue, 06 Oct 2026 01:24:05 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:86eb842ad2b9bd0e5c38e7648723ba6df9f9b92c122a5689a24918189ad30a41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2038096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec25db8cea0645c1ab26371aec6335b17af7efe5f6eaaf8e6e3ff29936dd1815`

```dockerfile
```

-	Layers:
	-	`sha256:10f4ca9afa8376b15d1ad34282553df796975282b3cd3a46f94c45371f553cb6`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 2.0 MB (2015792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bea6373013b6cf4d05758d03fe9be9432f173977b5b83e71a96e166847cbe4f4`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:db1095291332bd58c0551af962f8940dce18d87e5ba4ff6ba9e2a901819d9c25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32622142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9207469bca7f44aecf7bff570002ede8e626e06e0cb25fa008268f97f644c75b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:19:35 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:19:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:22:35 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:22:35 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:22:35 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:22:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:22:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:22:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:22:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:22:35 GMT
USER memcache
# Tue, 06 Oct 2026 01:22:35 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:22:35 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:620da5091547ba64520d491a8b6b517cce0a3d474388b1f49bf7bf9e118d85bd`  
		Last Modified: Tue, 06 Oct 2026 01:22:41 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fae4064dd7b1370d85a82720c9a3acc9c925624f20ad91e204783b10a2ec3dfe`  
		Last Modified: Tue, 06 Oct 2026 01:22:41 GMT  
		Size: 153.5 KB (153527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6950f6af6542268dc492c1c5bbfcccef50b35f40596d348b86b238b824c1b19`  
		Last Modified: Tue, 06 Oct 2026 01:22:42 GMT  
		Size: 2.3 MB (2266820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68b55d7d01f6f7371c44460d3c04b7dd27e5d002dda63ab81d2931d02e2ffa78`  
		Last Modified: Tue, 06 Oct 2026 01:22:42 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b26a56b8e9216c4807b9c2bf095d1b3a5df29b13206a2098db60b1d90958f853`  
		Last Modified: Tue, 06 Oct 2026 01:22:43 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:d0649d2335af9e7e2a93517db111e263cd510a676fd1f13ea439a6d10362606c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fbb64c2b568e3c52baac2d8e24e2d2af7dd0063e821826e0e534070f0938e61`

```dockerfile
```

-	Layers:
	-	`sha256:bde99632d639c60d280adfc23727596b782215923117bffba5efc9a0f34480c7`  
		Last Modified: Tue, 06 Oct 2026 01:22:42 GMT  
		Size: 2.0 MB (2014640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b79d8c6a0d2eb65369ee6909525df3324d7fdfd7dd1c7e2b5f236d2d4bc9ac5`  
		Last Modified: Tue, 06 Oct 2026 01:22:42 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; 386

```console
$ docker pull memcached@sha256:aaf3189188869f4a3ccfde0f2610fd595011df2eb449251fb909a86f4220ab8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33733530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a90759960ac97d23dcce664286754ba1a507a4e61399c7fc40f1cac308182f17`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:17:26 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:17:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:20:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:20:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:20:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:20:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:20:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:20:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:20:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:20:24 GMT
USER memcache
# Tue, 06 Oct 2026 01:20:24 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:20:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78226cd621a6dc04a3c52ac5bd710b236b7e84dac2be795ed78f6270e06d5d58`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d9f6771133e91a6c72f1c941b3ca5ad178f310aa70cc67e1f45404ce10f466a`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 147.5 KB (147545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d960652d73e72b9de15a4cd637e7c31ab99b80b0de6ed50167dec7fd0b695a0b`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 2.2 MB (2231174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1a6c5315b066087aabdf4ff7fa5679a0cf33066a165cbab8cc1febe9334b403`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd2d66ec395c65b79cd82bfa9f5feee129c872bfc5a5e2c01eb6cdd967ce418`  
		Last Modified: Tue, 06 Oct 2026 01:20:31 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:715096757feec34ae4e6782045183cdfd41a9f66408fc8d67c5ab4340c457bd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba50a99f65e30b177a771da6a3d0404f45696a36b8ad29e54d4ae4ba06b5c1b8`

```dockerfile
```

-	Layers:
	-	`sha256:660aa37bc36843d550abc12f4ec61b3ae98b4ca4b38e327f60a211bf33d3173b`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 2.0 MB (2011489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2d7da2372f7dde1b48c8a8574856970d7adedf4c27a4afaefe0777877499fb5`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; ppc64le

```console
$ docker pull memcached@sha256:5f415587997b8e0f1a561a915d39e9bcdf22d98679c052071c9698ccbbf9d39b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.7 MB (36704053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87adc0c99e19a7a8da27980c7cf9b7aa831c6637f29a6a1e4bb0999f373d5499`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:39:24 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:39:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:04:32 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 02:04:32 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 02:04:32 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 02:04:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 02:04:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:04:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 02:04:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:04:35 GMT
USER memcache
# Tue, 06 Oct 2026 02:04:35 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 02:04:35 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6164d46e47235d7fd1edd7229d8f1bd765481418398465b98253d9736ec3c547`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a390cebd7020aa0d191036b56766e99b9877018eb509ea16b5448462b2ec449`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 170.4 KB (170390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3543f360a3c5a2967473a8b3f42e23c2e0c39d76ccf2f0abdbd4d683ccd3431`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 2.9 MB (2880549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6137beede6ddbecbc997c4db4ae5f39982a5a04a6921ddb419819b79469ae7d0`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f76d35c3739a1f5ca7a71bad3b15cd71a8d162428348592a7c9da5d28f34765`  
		Last Modified: Tue, 06 Oct 2026 02:05:04 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:257156567aeea78272834db591a21e418aeec1cb24edb73e54de3159465d836d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2040160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06ea07e913ac58a382529edbdc77bb6f3a94c58a5c91c09165d5e7b999f701ec`

```dockerfile
```

-	Layers:
	-	`sha256:8a367b2965262ace978c86ced51b2dc153aa2206f6c4f9400a013ba78df77d3d`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 2.0 MB (2017933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:74137664ae61f8b59bed7b2fa9df763c2ca13444ece2eba6077f57dba40a3d90`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; riscv64

```console
$ docker pull memcached@sha256:8656a4a311e8931b683fc70198a24d869bbe722750d6fc07c83f9e7237b478c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30681766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21bb47e315c736689f7d9dea92f8e99cfe69d4374074794c3b1a025fb47e7a71`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 07:21:32 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 07:22:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 07:55:26 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 07:55:26 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 07:55:26 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 07:55:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 07:55:27 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 07:55:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 07:55:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 07:55:27 GMT
USER memcache
# Tue, 06 Oct 2026 07:55:27 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 07:55:27 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21d459eef25729476a15d9c2a71497e61fe2c1196ce2b0a061be33003a44ae81`  
		Last Modified: Tue, 06 Oct 2026 07:56:25 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:263b253257e5b7560b41f9faa680bfdd51b7cff710244248157851b53d5c6aa5`  
		Last Modified: Tue, 06 Oct 2026 07:56:24 GMT  
		Size: 133.1 KB (133127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bc0a71aadf0f4e2b01e90f2bc8deff83e567c95a01aa9ee2f63a2aa9b78181d`  
		Last Modified: Tue, 06 Oct 2026 07:56:25 GMT  
		Size: 2.2 MB (2213364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf6adaa4db7702afeeff21184d36c11cb9b535da6897e7c20fb6b715bcfdea7c`  
		Last Modified: Tue, 06 Oct 2026 07:56:24 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c52b03c9f42bf5cc7e456fe818e7d30afca4a4aafdeb44fa0909799871255978`  
		Last Modified: Tue, 06 Oct 2026 07:56:26 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:77be1f72ce3d91c4c7c73cd87f8878f429e7d3d34618f913d85362946d18cc14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b833cdf252d8ef60135fb683ad467b12dba50840f19d3fad115113cc8b3612b`

```dockerfile
```

-	Layers:
	-	`sha256:1196e2adc1677841feebedecd6d0432decb685bdab29f5bafa15a9bf1abfcddb`  
		Last Modified: Tue, 06 Oct 2026 07:56:25 GMT  
		Size: 2.0 MB (2008296 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad5fac857c1ca1386708151b7fc10b65c7d061ad865939ed8c614ee0929c753a`  
		Last Modified: Tue, 06 Oct 2026 07:56:24 GMT  
		Size: 22.2 KB (22226 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; s390x

```console
$ docker pull memcached@sha256:60efa47221d8959fc57e5a883a13a0cdbd4c6c2c106fb75b43cb48c0a93badcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32352682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fdb24e98011f7cc5569c516a3fd13bdf2768a566e90affe67ee8620fd761173`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:16:36 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:16:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:19:49 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:19:49 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:19:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:19:49 GMT
USER memcache
# Tue, 06 Oct 2026 01:19:49 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:19:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:fd14e6ce0256b9093e480e6146009effeb6c2bc486ff0052d50a32cbab8335fc`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 29.9 MB (29909247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9eee2ff929ea4e7ec919f80e7190bae923598fa62b8353765197bc11ea5a486`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36b740724da913e5a0891835dd7f5882ee3431869ff315c5d470924c36a412ce`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 140.5 KB (140516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a13b7ad2fafa15b3e37dc61ffe8e8a697b0e775edc6e1de88ba91f558e7faf20`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 2.3 MB (2301406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d53df8fb22e01bbb39ceb207639fc38f6f6e44053037d57e9616b0f22380bce`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5378341f5e20367bd2680911105891faeeda0d235ae58c94101d2253a616814`  
		Last Modified: Tue, 06 Oct 2026 01:20:00 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:90b4789ca09efcc93d0068d240f0acb339dc8d4afa13951cb103a2cbe5329276
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d301a021e72bdde47c24ea7b9f7168d0dcad77663582a1b44d8164cd505b1ae`

```dockerfile
```

-	Layers:
	-	`sha256:58444f61165c9d6f2dc18ea544c9788885fbf0f3fe3af01dce90eb14eac020b9`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 2.0 MB (2015769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5e7acc93643035fc7961ac9b6f7c3514ffa025c8aa43dd09cdc4c1b8b6c79de`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 22.2 KB (22152 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6`

```console
$ docker pull memcached@sha256:2046d6d2eb7cbd59470b533a101cbd67def3e718b04eb72478306dbc804a3171
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

### `memcached:1.6` - linux; amd64

```console
$ docker pull memcached@sha256:c9f95360aa3e64f836956defe064352c9045c54d3f2dda34590a68e042927a5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32267918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f34c06c3fd851fa86d3e7555b408164af6b4b4b47ee11aa7dc0bca734e7a71aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:19:32 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:19:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:22:16 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:22:16 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:22:16 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:22:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:22:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:22:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:22:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:22:16 GMT
USER memcache
# Tue, 06 Oct 2026 01:22:16 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:22:16 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e079f3032daaade186d2131f9f18bb2c0f9935ab855336f423301f61d6e7b328`  
		Last Modified: Tue, 06 Oct 2026 01:22:22 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d40ad5a129f0aa6c523fe06d1708562030b3c6fa97cb31740c9e5ee7bf3ba534`  
		Last Modified: Tue, 06 Oct 2026 01:22:22 GMT  
		Size: 136.7 KB (136713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbe007d027e93139ff939ece02bc51476de66b1d5b505899c169d13775d510a0`  
		Last Modified: Tue, 06 Oct 2026 01:22:23 GMT  
		Size: 2.3 MB (2286344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86cf65cc96233c2b4aadc77c4c33b88129a2b62f64b9c5a021699e3eb28ebee5`  
		Last Modified: Tue, 06 Oct 2026 01:22:22 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d2d4760f47202c0b45135bb9d7ff59c58459e7ad99594786be531b150f555b6`  
		Last Modified: Tue, 06 Oct 2026 01:22:23 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:6fa0fc0329372d3ab73426a81eb03684ac37b6b44ce464f0c08ca9676c60de82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f09a49d1eaaf775f21be83947a61998647107aac63f88a4042ec77e4dbbd1ec`

```dockerfile
```

-	Layers:
	-	`sha256:b1092fc97cef42727e9036fe522d7ed2633633985bbaac4829c91acd129da3a6`  
		Last Modified: Tue, 06 Oct 2026 01:22:23 GMT  
		Size: 2.0 MB (2014332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ab446710960dba37f7b51a6eb0f7bc842602da0824da26225b23926dedefbdc`  
		Last Modified: Tue, 06 Oct 2026 01:22:22 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; arm variant v5

```console
$ docker pull memcached@sha256:f99f30eaf4a8f67b996c41f49fec4c0e4a16523901b3564394d631c35b2ccfed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30370459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ce918c60a86aa9267194a8f22739fa01607bf2c26fc25c89e64ffc01852b2f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:18:18 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:18:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:21:40 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:21:40 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:21:40 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:21:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:21:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:21:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:21:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:21:40 GMT
USER memcache
# Tue, 06 Oct 2026 01:21:40 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:21:40 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:cb79ce05d3152dc6f7b8608f1f449aa1fbf1541a5dff435139649d755dd23d93`  
		Last Modified: Tue, 06 Oct 2026 00:13:24 GMT  
		Size: 28.0 MB (28007486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0fc4c700738b0949f606b6b5601896930602894413dfc8db3b37f5bfc541a14`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a25abe783152ae88c84222cd52a115baf6ea0a88846f910d6128500df7103939`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 144.2 KB (144200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1ce858ea6db063b480bff4a3baafcc483f5817f7c4d1be66827c87c7d43b2d9`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 2.2 MB (2217261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2bdc54165033126966499027bdd3c11823f028488c41440ea755d764b21bbdd`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c3604de1f39f6d0df3b8a994bdf608a0e366a8633c1ed5551de0bdc2deb117d`  
		Last Modified: Tue, 06 Oct 2026 01:21:47 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:14fead2feed9bed8d15c272d3b4c45100e99e1a2da41c7c0dcce6d6dfca0852d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2039639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecbbdca80f1a7bc00d9cd9bba88060ee0fd9344a138a0aeed9817b4b443f39e3`

```dockerfile
```

-	Layers:
	-	`sha256:238b5082fef01c1b58fdb77c003c03415636e326c699af155126cfd037145511`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 2.0 MB (2017335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9df37609ab40ce96bcd6822f2a492aff1b99b73c211416d45a104e62aba1152c`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; arm variant v7

```console
$ docker pull memcached@sha256:2a0f066db5ab04bcc02e20ea0552bbb943884c32ceb014761763c8b713a8a410
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28566690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d6dc33010f19ca987a03eda3ed24aa29fe95ec521260ddadc1fec5883a5ee70`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:20:47 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:20:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:23:58 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:23:58 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:23:58 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:23:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:23:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:23:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:23:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:23:58 GMT
USER memcache
# Tue, 06 Oct 2026 01:23:58 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:23:58 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf458570d1c1ac6b3a5d06336f964b504bc7d5902622370f11291826321cd43f`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1b651e6ccfc4a1084deaae487cb9dec23a117ddfdb2c0fd2e82df5c8b57fcc3`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 135.4 KB (135386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc87fbda19f8ce41e669327ace6c6db485589566dae2ddb46b94a4243e656b25`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 2.2 MB (2171612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f08eca3251dd91c45d7f3898d2e97fe9e7d9d6d8d96b1981e652aa291e568d56`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ffd165e448c27fa217b74d7788471a856372780f9650a32ea2ed4473541ff7`  
		Last Modified: Tue, 06 Oct 2026 01:24:05 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:86eb842ad2b9bd0e5c38e7648723ba6df9f9b92c122a5689a24918189ad30a41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2038096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec25db8cea0645c1ab26371aec6335b17af7efe5f6eaaf8e6e3ff29936dd1815`

```dockerfile
```

-	Layers:
	-	`sha256:10f4ca9afa8376b15d1ad34282553df796975282b3cd3a46f94c45371f553cb6`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 2.0 MB (2015792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bea6373013b6cf4d05758d03fe9be9432f173977b5b83e71a96e166847cbe4f4`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:db1095291332bd58c0551af962f8940dce18d87e5ba4ff6ba9e2a901819d9c25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32622142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9207469bca7f44aecf7bff570002ede8e626e06e0cb25fa008268f97f644c75b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:19:35 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:19:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:22:35 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:22:35 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:22:35 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:22:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:22:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:22:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:22:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:22:35 GMT
USER memcache
# Tue, 06 Oct 2026 01:22:35 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:22:35 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:620da5091547ba64520d491a8b6b517cce0a3d474388b1f49bf7bf9e118d85bd`  
		Last Modified: Tue, 06 Oct 2026 01:22:41 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fae4064dd7b1370d85a82720c9a3acc9c925624f20ad91e204783b10a2ec3dfe`  
		Last Modified: Tue, 06 Oct 2026 01:22:41 GMT  
		Size: 153.5 KB (153527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6950f6af6542268dc492c1c5bbfcccef50b35f40596d348b86b238b824c1b19`  
		Last Modified: Tue, 06 Oct 2026 01:22:42 GMT  
		Size: 2.3 MB (2266820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68b55d7d01f6f7371c44460d3c04b7dd27e5d002dda63ab81d2931d02e2ffa78`  
		Last Modified: Tue, 06 Oct 2026 01:22:42 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b26a56b8e9216c4807b9c2bf095d1b3a5df29b13206a2098db60b1d90958f853`  
		Last Modified: Tue, 06 Oct 2026 01:22:43 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:d0649d2335af9e7e2a93517db111e263cd510a676fd1f13ea439a6d10362606c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fbb64c2b568e3c52baac2d8e24e2d2af7dd0063e821826e0e534070f0938e61`

```dockerfile
```

-	Layers:
	-	`sha256:bde99632d639c60d280adfc23727596b782215923117bffba5efc9a0f34480c7`  
		Last Modified: Tue, 06 Oct 2026 01:22:42 GMT  
		Size: 2.0 MB (2014640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b79d8c6a0d2eb65369ee6909525df3324d7fdfd7dd1c7e2b5f236d2d4bc9ac5`  
		Last Modified: Tue, 06 Oct 2026 01:22:42 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; 386

```console
$ docker pull memcached@sha256:aaf3189188869f4a3ccfde0f2610fd595011df2eb449251fb909a86f4220ab8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33733530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a90759960ac97d23dcce664286754ba1a507a4e61399c7fc40f1cac308182f17`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:17:26 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:17:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:20:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:20:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:20:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:20:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:20:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:20:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:20:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:20:24 GMT
USER memcache
# Tue, 06 Oct 2026 01:20:24 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:20:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78226cd621a6dc04a3c52ac5bd710b236b7e84dac2be795ed78f6270e06d5d58`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d9f6771133e91a6c72f1c941b3ca5ad178f310aa70cc67e1f45404ce10f466a`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 147.5 KB (147545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d960652d73e72b9de15a4cd637e7c31ab99b80b0de6ed50167dec7fd0b695a0b`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 2.2 MB (2231174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1a6c5315b066087aabdf4ff7fa5679a0cf33066a165cbab8cc1febe9334b403`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd2d66ec395c65b79cd82bfa9f5feee129c872bfc5a5e2c01eb6cdd967ce418`  
		Last Modified: Tue, 06 Oct 2026 01:20:31 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:715096757feec34ae4e6782045183cdfd41a9f66408fc8d67c5ab4340c457bd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba50a99f65e30b177a771da6a3d0404f45696a36b8ad29e54d4ae4ba06b5c1b8`

```dockerfile
```

-	Layers:
	-	`sha256:660aa37bc36843d550abc12f4ec61b3ae98b4ca4b38e327f60a211bf33d3173b`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 2.0 MB (2011489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2d7da2372f7dde1b48c8a8574856970d7adedf4c27a4afaefe0777877499fb5`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; ppc64le

```console
$ docker pull memcached@sha256:5f415587997b8e0f1a561a915d39e9bcdf22d98679c052071c9698ccbbf9d39b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.7 MB (36704053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87adc0c99e19a7a8da27980c7cf9b7aa831c6637f29a6a1e4bb0999f373d5499`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:39:24 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:39:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:04:32 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 02:04:32 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 02:04:32 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 02:04:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 02:04:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:04:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 02:04:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:04:35 GMT
USER memcache
# Tue, 06 Oct 2026 02:04:35 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 02:04:35 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6164d46e47235d7fd1edd7229d8f1bd765481418398465b98253d9736ec3c547`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a390cebd7020aa0d191036b56766e99b9877018eb509ea16b5448462b2ec449`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 170.4 KB (170390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3543f360a3c5a2967473a8b3f42e23c2e0c39d76ccf2f0abdbd4d683ccd3431`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 2.9 MB (2880549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6137beede6ddbecbc997c4db4ae5f39982a5a04a6921ddb419819b79469ae7d0`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f76d35c3739a1f5ca7a71bad3b15cd71a8d162428348592a7c9da5d28f34765`  
		Last Modified: Tue, 06 Oct 2026 02:05:04 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:257156567aeea78272834db591a21e418aeec1cb24edb73e54de3159465d836d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2040160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06ea07e913ac58a382529edbdc77bb6f3a94c58a5c91c09165d5e7b999f701ec`

```dockerfile
```

-	Layers:
	-	`sha256:8a367b2965262ace978c86ced51b2dc153aa2206f6c4f9400a013ba78df77d3d`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 2.0 MB (2017933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:74137664ae61f8b59bed7b2fa9df763c2ca13444ece2eba6077f57dba40a3d90`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; riscv64

```console
$ docker pull memcached@sha256:8656a4a311e8931b683fc70198a24d869bbe722750d6fc07c83f9e7237b478c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30681766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21bb47e315c736689f7d9dea92f8e99cfe69d4374074794c3b1a025fb47e7a71`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 07:21:32 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 07:22:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 07:55:26 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 07:55:26 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 07:55:26 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 07:55:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 07:55:27 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 07:55:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 07:55:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 07:55:27 GMT
USER memcache
# Tue, 06 Oct 2026 07:55:27 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 07:55:27 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21d459eef25729476a15d9c2a71497e61fe2c1196ce2b0a061be33003a44ae81`  
		Last Modified: Tue, 06 Oct 2026 07:56:25 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:263b253257e5b7560b41f9faa680bfdd51b7cff710244248157851b53d5c6aa5`  
		Last Modified: Tue, 06 Oct 2026 07:56:24 GMT  
		Size: 133.1 KB (133127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bc0a71aadf0f4e2b01e90f2bc8deff83e567c95a01aa9ee2f63a2aa9b78181d`  
		Last Modified: Tue, 06 Oct 2026 07:56:25 GMT  
		Size: 2.2 MB (2213364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf6adaa4db7702afeeff21184d36c11cb9b535da6897e7c20fb6b715bcfdea7c`  
		Last Modified: Tue, 06 Oct 2026 07:56:24 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c52b03c9f42bf5cc7e456fe818e7d30afca4a4aafdeb44fa0909799871255978`  
		Last Modified: Tue, 06 Oct 2026 07:56:26 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:77be1f72ce3d91c4c7c73cd87f8878f429e7d3d34618f913d85362946d18cc14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b833cdf252d8ef60135fb683ad467b12dba50840f19d3fad115113cc8b3612b`

```dockerfile
```

-	Layers:
	-	`sha256:1196e2adc1677841feebedecd6d0432decb685bdab29f5bafa15a9bf1abfcddb`  
		Last Modified: Tue, 06 Oct 2026 07:56:25 GMT  
		Size: 2.0 MB (2008296 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad5fac857c1ca1386708151b7fc10b65c7d061ad865939ed8c614ee0929c753a`  
		Last Modified: Tue, 06 Oct 2026 07:56:24 GMT  
		Size: 22.2 KB (22226 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; s390x

```console
$ docker pull memcached@sha256:60efa47221d8959fc57e5a883a13a0cdbd4c6c2c106fb75b43cb48c0a93badcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32352682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fdb24e98011f7cc5569c516a3fd13bdf2768a566e90affe67ee8620fd761173`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:16:36 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:16:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:19:49 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:19:49 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:19:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:19:49 GMT
USER memcache
# Tue, 06 Oct 2026 01:19:49 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:19:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:fd14e6ce0256b9093e480e6146009effeb6c2bc486ff0052d50a32cbab8335fc`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 29.9 MB (29909247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9eee2ff929ea4e7ec919f80e7190bae923598fa62b8353765197bc11ea5a486`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36b740724da913e5a0891835dd7f5882ee3431869ff315c5d470924c36a412ce`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 140.5 KB (140516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a13b7ad2fafa15b3e37dc61ffe8e8a697b0e775edc6e1de88ba91f558e7faf20`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 2.3 MB (2301406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d53df8fb22e01bbb39ceb207639fc38f6f6e44053037d57e9616b0f22380bce`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5378341f5e20367bd2680911105891faeeda0d235ae58c94101d2253a616814`  
		Last Modified: Tue, 06 Oct 2026 01:20:00 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:90b4789ca09efcc93d0068d240f0acb339dc8d4afa13951cb103a2cbe5329276
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d301a021e72bdde47c24ea7b9f7168d0dcad77663582a1b44d8164cd505b1ae`

```dockerfile
```

-	Layers:
	-	`sha256:58444f61165c9d6f2dc18ea544c9788885fbf0f3fe3af01dce90eb14eac020b9`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 2.0 MB (2015769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5e7acc93643035fc7961ac9b6f7c3514ffa025c8aa43dd09cdc4c1b8b6c79de`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 22.2 KB (22152 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6-alpine`

```console
$ docker pull memcached@sha256:9e4de012dc607573052061c0bcb38abc775e1dd59b24e7ac38d1892842094aaf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
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

### `memcached:1.6-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:aed6c14165dc0ca719495a86db396e4af335199e2bc509cf34197b8eb81e75db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5930141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc3f45e091e88b03ec5a7365defcc1153365adefba32a94161d6faccc029383a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:16:33 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:19:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:19:05 GMT
USER memcache
# Thu, 17 Sep 2026 21:19:05 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:19:05 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51fbbe0527a5a9d13613c8b22f2752a14b91b6092d0173800fb78cdbdf258428`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ddc38e6924e90cccdea0458ce3bad50a286b3f5d5e9c0305e4b92bdbcb0fc0b`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 106.1 KB (106069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11fb880294fac3007e7d5466cb68cdda8db6b8e867e5830f618ba59347084c48`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 2.0 MB (1972988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850056ad91a7eb14a58eb47cbf53170bd6c8cd07d782801b5291119ef8b5b196`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c150f54a299a0e5865f493673e27ba960bfe92b1934d5ca3f45495da216fc7`  
		Last Modified: Thu, 17 Sep 2026 21:19:11 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:102f3093bc6e0dc03c870eefaa1d08375dec1dcaa029b7cdd28e8fc8b230735f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f039df7239fcf88279416238b99fd3f4265ddb7845dea2a532668642ace6dee7`

```dockerfile
```

-	Layers:
	-	`sha256:df58852b59ae3bbcc474c37fbbf4af35ed5328fac4a45547d6dfe1c745b5cf6b`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84c13baa7fdc4605691a3816af63e761060d234a8f3c82fb584e5f2a994f607d`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 20.5 KB (20530 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:8973cb50b646592bc4b4db5c5ba5fafeaedc9a5cc14d4ee0e033501aad18d50e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5580295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ab89ee2938c40874ab847588a7bafedd064247be84b1f2ed13066b41aae89af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:20:55 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:20:56 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:24:01 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:24:01 GMT
USER memcache
# Thu, 17 Sep 2026 21:24:01 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:24:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87a68700291779231aecfd220f9d88723f70443a7e53b3ee6cc7e50331769869`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95cccdcfd4cc608994427c242b2392444f14c8d1b15a3c9573c9b579ec3f251b`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 102.6 KB (102640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c173cc650cff05287311d33f6a47867336f7ed1460693ea0df58ad80f4f904f`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 1.9 MB (1921196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35b9602a9760e8079674d25e1275b8b248dbd430166307fa22bce8f18e15615e`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af8021c2cf11f0eabbe2f38ce25544bd0338d0d216e3a31cb4c67145e48a2884`  
		Last Modified: Thu, 17 Sep 2026 21:24:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:a3dc4759b806fd595aedee968574f6d30b81786fae6f02a5ed5fd3de9a435ac2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6389c8a7a95dbe7874d26cc6d210d709d1d2d7918af74b99fbb9682526c8792`

```dockerfile
```

-	Layers:
	-	`sha256:b330c577900be61f94c9bdbc4264d33e0b1c8c4da085bad9165206c011cc083d`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine` - linux; arm variant v7

```console
$ docker pull memcached@sha256:4698047b9c210750e16e07db091be4b5f72b595c820e6e846e7188ba0b386609
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5239338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f84a27cb8b2508b216332970f0618a4915ada956d79e6fa8d381247023423d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:19:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:19:34 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:22:30 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:22:30 GMT
USER memcache
# Thu, 17 Sep 2026 21:22:30 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:22:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:995431fad1655fd0bda6213201e5a9a96951e71f4f86618d35615eec52332190`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4785d6c6095884eacbe5558dcdc121bca474e6125a08dfafa2cf70e87894ebd3`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 92.4 KB (92374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41440d665d2ba596c0e09c2045809a58916edd2537e8f804e5a17764fb30af6b`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 1.9 MB (1880415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:937240234e98ecd679cf903fc7c7aa62d14ae776d7eba3b2d8ee806456cb5825`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64428be47e9234c7141e9537d621fe415c0e0e6a11e600c188c8204de36af99e`  
		Last Modified: Thu, 17 Sep 2026 21:22:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:f299ad7470f58ee154752703c7b7a09cfdeddcd1068ccbb69b7620a7f2cdb992
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b60f46873c9939d84f06a78729773d4cf55de1e87ac0e9a081e8febade8b26a2`

```dockerfile
```

-	Layers:
	-	`sha256:d77ba4f589d860c72847322877d5b8c550270a2389bd2850e29fc66026488ff3`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10c142ee87947b5a89569925c281a9eb621090b0624c5864032bc312ed2afdc5`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:31462f1ea73a0a29772ae6f32be7124da9c2a9683ae24d802bfcc54041550c76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6262017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dd5bd4099e3cca31288437e2dd63d71878251e9a528afa6064a7fc061fd0d4b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:13:17 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:13:18 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:16:08 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:16:08 GMT
USER memcache
# Thu, 17 Sep 2026 21:16:08 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:16:08 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb1e88d48d205af89d0d9b1904c6e63a30e855a6f5412935835c74d59a3810f2`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7610f2b35dab65304108892242fdf929182879b48c7ec7e98ade8f72367602a`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 121.9 KB (121854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44405d199511c9c938bef88955579ffc36f5d445db3314a38b68edacfd6f8148`  
		Last Modified: Thu, 17 Sep 2026 21:16:14 GMT  
		Size: 2.0 MB (1951158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81e6109934a7079c68103964d22c882f2bcbaa12b72eb28215df5a5a85da515c`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:746a12191622835cb3173ad754db60d1b994fca18162459d7f747de35b65420e`  
		Last Modified: Thu, 17 Sep 2026 21:16:14 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:d2a1e3c664b5a5358e65793068ee3a463b1e2fe9decf1756e18c2b3be7144999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7531bf2f8de67b5bb43c901a077c5edfd30a29cccf14c8c0529c7a6a7077358a`

```dockerfile
```

-	Layers:
	-	`sha256:7362abb71609190210ea3be48c0203576b7a05be93a91a20193a25f2518aa82e`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee7723224e4a1ff2a4c3dd74e9fc725ddcc2ceeb9a645ac99ce84a861893b52a`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 20.7 KB (20727 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine` - linux; 386

```console
$ docker pull memcached@sha256:4afb6580c24ce2632634356a9c937b496b8743e066378fc23d8913fcb200f432
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5717122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22be399c981a2a59830540f0047af1bc959ef8e8126c47fac9e18ea3faf37bb3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:36 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:15:36 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:18:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:18:24 GMT
USER memcache
# Thu, 17 Sep 2026 21:18:24 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:18:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de5a1555078fa5282f5a803b64f0e79189413537a752f4474488fd16413384bd`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e7199937599d0cbc9b3195d82ef0b3d4de6c3e0cc321dec80d52c622beab351`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 110.7 KB (110733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a21a73ed462e36058c3afb00410805dbeac8749d3c7eba98d19fde8cac202d2e`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 1.9 MB (1928259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3af84ae0a647f9eb5f6bdee46d460c064ef97e3238c053e9c78d3ffc1e5b9d87`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0965a9fe7f7f140845e67596ab02a4927d97bf25d44bbee1aaf6f10d370f8600`  
		Last Modified: Thu, 17 Sep 2026 21:18:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:d89f57316668a586ea578ed614cdc7ce13fff224c626ac06c9ac3dea42601a04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8b6ffba2b1dcfd03338d94840ba3fc7e43dc4ad9d16e97ab8c9297fb3fdb424`

```dockerfile
```

-	Layers:
	-	`sha256:4e8c5777c38b16385e0fa1aa5dc68e59b3f668641ffcf0e3f7daa467d10e60f7`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d8caad469a2d8d8f1e6c35f144d71bcb8985515d1bd90eab44f60991c58a727`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:9a0437672c246d127b1782f10a801ce0db757ac74f367b84553c96b2be7cb5f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6010090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:512f89eee8246394b1b5628094edf12aca1099208a7cae259a3eb56156e0693b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:30:23 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:30:24 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:53:31 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:53:31 GMT
USER memcache
# Thu, 17 Sep 2026 21:53:31 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:53:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9164e851bf437772ce842921040227ac7487b00f22d00cd6763636f330964202`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0995f3b36f83b7959f49f1761f6c225138a2b065c268d83d0c3d0a87388bc617`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 126.3 KB (126261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c93a3f94f5c6d12261d3f31e57bad38b61e9ff3be47164a599318d71615f9a02`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 2.1 MB (2065002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc74b243580138ee3b28fd11e87cb70e99beb61a59b8dc49871b4d86a8706b5`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b494ff94eeffbb1f72c70e1b578480f7c72ad4a6bcc5bc42ba105b3e1278d3b`  
		Last Modified: Thu, 17 Sep 2026 21:53:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:f80e28a730a608ba861ca92c6a4227987495a1441e641cd1bf23b1b82144c6fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b415f70b85d9e9b283614528065ba6acee2673d8c7ce30c575ef4dc9e686258b`

```dockerfile
```

-	Layers:
	-	`sha256:03bc6ab3f08099a9ee4128175887a1c8577344a9bbaade3317621fbc2e51c40e`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc2ab6e0e8c7ae32bfe2026593c785e0b1175d0468ba31e9b9c736478a378917`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine` - linux; riscv64

```console
$ docker pull memcached@sha256:b655eb23860c9f5cd8820dc15391d6c85f5c4001c69fb484b508a7a6c0b2ccf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5745298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55b8dced45037bb279c8b4b7c6173dd938bb75674f945d9f8554ffed1b752ca6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Sat, 19 Sep 2026 06:17:46 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Sat, 19 Sep 2026 06:17:50 GMT
RUN apk add --no-cache libsasl # buildkit
# Sat, 19 Sep 2026 07:00:09 GMT
ENV MEMCACHED_VERSION=1.6.45
# Sat, 19 Sep 2026 07:00:09 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Sat, 19 Sep 2026 07:00:09 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Sat, 19 Sep 2026 07:00:09 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Sat, 19 Sep 2026 07:00:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 07:00:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Sat, 19 Sep 2026 07:00:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 07:00:09 GMT
USER memcache
# Sat, 19 Sep 2026 07:00:09 GMT
EXPOSE map[11211/tcp:{}]
# Sat, 19 Sep 2026 07:00:09 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:64f7f08b6763becdda2e72bfacdfd36663e4847bc6fdb366336127620012bc02`  
		Last Modified: Fri, 18 Sep 2026 16:49:42 GMT  
		Size: 3.6 MB (3575371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50696ee7fd6dd6a48287f1be319d7356f1aab635568394ca3f5d932466f8bc69`  
		Last Modified: Sat, 19 Sep 2026 07:00:33 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f37eda83220efe3380370c6043e0694c7ff2ccf346970849bf28d6897aeb60f5`  
		Last Modified: Sat, 19 Sep 2026 07:00:34 GMT  
		Size: 108.9 KB (108897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3259f74c8597dcf889fea8d8e6a0221da5289a45dac4f2851502a79b91f4a1f`  
		Last Modified: Sat, 19 Sep 2026 07:00:34 GMT  
		Size: 2.1 MB (2059672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bced3b020a43d00c9ff35fc2ff7e2abbc320776123d4e75d5ba63bdbde9992f`  
		Last Modified: Sat, 19 Sep 2026 07:00:34 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c55e359dc42a43fbf052b329a4eaa4484f898a931a8caff3b10d2211ebcaf55`  
		Last Modified: Sat, 19 Sep 2026 07:00:35 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:4156ffa9a211bd5adbd087c9f683e974870966536c1ae129337da66360b95151
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a4f0ecd5f404f87006c9e26865243a7998e2aafa80a461dd9752c041697bf2c`

```dockerfile
```

-	Layers:
	-	`sha256:c6980ceb4c4153eb9d97e749ed0af9b20c568aae526989597ec81e90c3b06ad9`  
		Last Modified: Sat, 19 Sep 2026 07:00:33 GMT  
		Size: 94.3 KB (94300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82e8e25f4832f3505dd2a86cfbdd4fb23a849b2a41c2a65539cc5fc2e5c853a0`  
		Last Modified: Sat, 19 Sep 2026 07:00:33 GMT  
		Size: 20.6 KB (20604 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:91488a004e9f64eab2de7981c01b0ef3d2a1ebdd1d8ea3083e271daedb930899
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5836268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0748d0499cbde3582cbe42af5f573a3d87f870eaf9e73ab35ba83a1fb00f4a5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:24:50 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 22:24:50 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 22:27:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 22:27:56 GMT
USER memcache
# Thu, 17 Sep 2026 22:27:56 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 22:27:56 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b28ab774b98a6f29932df606a1298015f0217cceaaf48cc8b4da1a712d16dec7`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f57210d60c5d0de49a458685c32d457593dd9dc3fbe5da5e916010a9723a733`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 114.3 KB (114287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bc4422a0f2f7f71932333a312da7ab0d836e17d66ed95f5a8983d3bf0d15f4e`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 2.0 MB (2005290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45e7a27d33ae9a3ad3b5c6a329d295e218eb317d67093226b27351835b2294fd`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859163942310d61c18cdaf7abeee7b475bf01a0e6d71b759d0e9485489273ad7`  
		Last Modified: Thu, 17 Sep 2026 22:28:05 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:6684f08661c99d1a72d49a7c23c27dbb132abe46ecca960eab055413ae4430ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2a3ade50f032040600c3160b104c07040707b6172447f1ff8be2d0b43aee484`

```dockerfile
```

-	Layers:
	-	`sha256:2348ae961439981a5f9d7a98117febd705c8fd5ed703c60ba55e6302e0939ad0`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40f2ae73c6298b67d61ba80635c258460fd84b74fab96b4bda97def3dcde3994`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6-alpine3.24`

```console
$ docker pull memcached@sha256:9e4de012dc607573052061c0bcb38abc775e1dd59b24e7ac38d1892842094aaf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
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

### `memcached:1.6-alpine3.24` - linux; amd64

```console
$ docker pull memcached@sha256:aed6c14165dc0ca719495a86db396e4af335199e2bc509cf34197b8eb81e75db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5930141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc3f45e091e88b03ec5a7365defcc1153365adefba32a94161d6faccc029383a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:16:33 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:19:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:19:05 GMT
USER memcache
# Thu, 17 Sep 2026 21:19:05 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:19:05 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51fbbe0527a5a9d13613c8b22f2752a14b91b6092d0173800fb78cdbdf258428`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ddc38e6924e90cccdea0458ce3bad50a286b3f5d5e9c0305e4b92bdbcb0fc0b`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 106.1 KB (106069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11fb880294fac3007e7d5466cb68cdda8db6b8e867e5830f618ba59347084c48`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 2.0 MB (1972988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850056ad91a7eb14a58eb47cbf53170bd6c8cd07d782801b5291119ef8b5b196`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c150f54a299a0e5865f493673e27ba960bfe92b1934d5ca3f45495da216fc7`  
		Last Modified: Thu, 17 Sep 2026 21:19:11 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:102f3093bc6e0dc03c870eefaa1d08375dec1dcaa029b7cdd28e8fc8b230735f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f039df7239fcf88279416238b99fd3f4265ddb7845dea2a532668642ace6dee7`

```dockerfile
```

-	Layers:
	-	`sha256:df58852b59ae3bbcc474c37fbbf4af35ed5328fac4a45547d6dfe1c745b5cf6b`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84c13baa7fdc4605691a3816af63e761060d234a8f3c82fb584e5f2a994f607d`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 20.5 KB (20530 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine3.24` - linux; arm variant v6

```console
$ docker pull memcached@sha256:8973cb50b646592bc4b4db5c5ba5fafeaedc9a5cc14d4ee0e033501aad18d50e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5580295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ab89ee2938c40874ab847588a7bafedd064247be84b1f2ed13066b41aae89af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:20:55 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:20:56 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:24:01 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:24:01 GMT
USER memcache
# Thu, 17 Sep 2026 21:24:01 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:24:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87a68700291779231aecfd220f9d88723f70443a7e53b3ee6cc7e50331769869`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95cccdcfd4cc608994427c242b2392444f14c8d1b15a3c9573c9b579ec3f251b`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 102.6 KB (102640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c173cc650cff05287311d33f6a47867336f7ed1460693ea0df58ad80f4f904f`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 1.9 MB (1921196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35b9602a9760e8079674d25e1275b8b248dbd430166307fa22bce8f18e15615e`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af8021c2cf11f0eabbe2f38ce25544bd0338d0d216e3a31cb4c67145e48a2884`  
		Last Modified: Thu, 17 Sep 2026 21:24:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:a3dc4759b806fd595aedee968574f6d30b81786fae6f02a5ed5fd3de9a435ac2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6389c8a7a95dbe7874d26cc6d210d709d1d2d7918af74b99fbb9682526c8792`

```dockerfile
```

-	Layers:
	-	`sha256:b330c577900be61f94c9bdbc4264d33e0b1c8c4da085bad9165206c011cc083d`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine3.24` - linux; arm variant v7

```console
$ docker pull memcached@sha256:4698047b9c210750e16e07db091be4b5f72b595c820e6e846e7188ba0b386609
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5239338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f84a27cb8b2508b216332970f0618a4915ada956d79e6fa8d381247023423d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:19:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:19:34 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:22:30 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:22:30 GMT
USER memcache
# Thu, 17 Sep 2026 21:22:30 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:22:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:995431fad1655fd0bda6213201e5a9a96951e71f4f86618d35615eec52332190`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4785d6c6095884eacbe5558dcdc121bca474e6125a08dfafa2cf70e87894ebd3`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 92.4 KB (92374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41440d665d2ba596c0e09c2045809a58916edd2537e8f804e5a17764fb30af6b`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 1.9 MB (1880415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:937240234e98ecd679cf903fc7c7aa62d14ae776d7eba3b2d8ee806456cb5825`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64428be47e9234c7141e9537d621fe415c0e0e6a11e600c188c8204de36af99e`  
		Last Modified: Thu, 17 Sep 2026 21:22:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:f299ad7470f58ee154752703c7b7a09cfdeddcd1068ccbb69b7620a7f2cdb992
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b60f46873c9939d84f06a78729773d4cf55de1e87ac0e9a081e8febade8b26a2`

```dockerfile
```

-	Layers:
	-	`sha256:d77ba4f589d860c72847322877d5b8c550270a2389bd2850e29fc66026488ff3`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10c142ee87947b5a89569925c281a9eb621090b0624c5864032bc312ed2afdc5`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:31462f1ea73a0a29772ae6f32be7124da9c2a9683ae24d802bfcc54041550c76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6262017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dd5bd4099e3cca31288437e2dd63d71878251e9a528afa6064a7fc061fd0d4b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:13:17 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:13:18 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:16:08 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:16:08 GMT
USER memcache
# Thu, 17 Sep 2026 21:16:08 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:16:08 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb1e88d48d205af89d0d9b1904c6e63a30e855a6f5412935835c74d59a3810f2`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7610f2b35dab65304108892242fdf929182879b48c7ec7e98ade8f72367602a`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 121.9 KB (121854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44405d199511c9c938bef88955579ffc36f5d445db3314a38b68edacfd6f8148`  
		Last Modified: Thu, 17 Sep 2026 21:16:14 GMT  
		Size: 2.0 MB (1951158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81e6109934a7079c68103964d22c882f2bcbaa12b72eb28215df5a5a85da515c`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:746a12191622835cb3173ad754db60d1b994fca18162459d7f747de35b65420e`  
		Last Modified: Thu, 17 Sep 2026 21:16:14 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:d2a1e3c664b5a5358e65793068ee3a463b1e2fe9decf1756e18c2b3be7144999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7531bf2f8de67b5bb43c901a077c5edfd30a29cccf14c8c0529c7a6a7077358a`

```dockerfile
```

-	Layers:
	-	`sha256:7362abb71609190210ea3be48c0203576b7a05be93a91a20193a25f2518aa82e`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee7723224e4a1ff2a4c3dd74e9fc725ddcc2ceeb9a645ac99ce84a861893b52a`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 20.7 KB (20727 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine3.24` - linux; 386

```console
$ docker pull memcached@sha256:4afb6580c24ce2632634356a9c937b496b8743e066378fc23d8913fcb200f432
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5717122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22be399c981a2a59830540f0047af1bc959ef8e8126c47fac9e18ea3faf37bb3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:36 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:15:36 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:18:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:18:24 GMT
USER memcache
# Thu, 17 Sep 2026 21:18:24 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:18:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de5a1555078fa5282f5a803b64f0e79189413537a752f4474488fd16413384bd`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e7199937599d0cbc9b3195d82ef0b3d4de6c3e0cc321dec80d52c622beab351`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 110.7 KB (110733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a21a73ed462e36058c3afb00410805dbeac8749d3c7eba98d19fde8cac202d2e`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 1.9 MB (1928259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3af84ae0a647f9eb5f6bdee46d460c064ef97e3238c053e9c78d3ffc1e5b9d87`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0965a9fe7f7f140845e67596ab02a4927d97bf25d44bbee1aaf6f10d370f8600`  
		Last Modified: Thu, 17 Sep 2026 21:18:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:d89f57316668a586ea578ed614cdc7ce13fff224c626ac06c9ac3dea42601a04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8b6ffba2b1dcfd03338d94840ba3fc7e43dc4ad9d16e97ab8c9297fb3fdb424`

```dockerfile
```

-	Layers:
	-	`sha256:4e8c5777c38b16385e0fa1aa5dc68e59b3f668641ffcf0e3f7daa467d10e60f7`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d8caad469a2d8d8f1e6c35f144d71bcb8985515d1bd90eab44f60991c58a727`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine3.24` - linux; ppc64le

```console
$ docker pull memcached@sha256:9a0437672c246d127b1782f10a801ce0db757ac74f367b84553c96b2be7cb5f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6010090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:512f89eee8246394b1b5628094edf12aca1099208a7cae259a3eb56156e0693b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:30:23 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:30:24 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:53:31 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:53:31 GMT
USER memcache
# Thu, 17 Sep 2026 21:53:31 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:53:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9164e851bf437772ce842921040227ac7487b00f22d00cd6763636f330964202`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0995f3b36f83b7959f49f1761f6c225138a2b065c268d83d0c3d0a87388bc617`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 126.3 KB (126261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c93a3f94f5c6d12261d3f31e57bad38b61e9ff3be47164a599318d71615f9a02`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 2.1 MB (2065002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc74b243580138ee3b28fd11e87cb70e99beb61a59b8dc49871b4d86a8706b5`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b494ff94eeffbb1f72c70e1b578480f7c72ad4a6bcc5bc42ba105b3e1278d3b`  
		Last Modified: Thu, 17 Sep 2026 21:53:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:f80e28a730a608ba861ca92c6a4227987495a1441e641cd1bf23b1b82144c6fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b415f70b85d9e9b283614528065ba6acee2673d8c7ce30c575ef4dc9e686258b`

```dockerfile
```

-	Layers:
	-	`sha256:03bc6ab3f08099a9ee4128175887a1c8577344a9bbaade3317621fbc2e51c40e`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc2ab6e0e8c7ae32bfe2026593c785e0b1175d0468ba31e9b9c736478a378917`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine3.24` - linux; riscv64

```console
$ docker pull memcached@sha256:b655eb23860c9f5cd8820dc15391d6c85f5c4001c69fb484b508a7a6c0b2ccf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5745298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55b8dced45037bb279c8b4b7c6173dd938bb75674f945d9f8554ffed1b752ca6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Sat, 19 Sep 2026 06:17:46 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Sat, 19 Sep 2026 06:17:50 GMT
RUN apk add --no-cache libsasl # buildkit
# Sat, 19 Sep 2026 07:00:09 GMT
ENV MEMCACHED_VERSION=1.6.45
# Sat, 19 Sep 2026 07:00:09 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Sat, 19 Sep 2026 07:00:09 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Sat, 19 Sep 2026 07:00:09 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Sat, 19 Sep 2026 07:00:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 07:00:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Sat, 19 Sep 2026 07:00:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 07:00:09 GMT
USER memcache
# Sat, 19 Sep 2026 07:00:09 GMT
EXPOSE map[11211/tcp:{}]
# Sat, 19 Sep 2026 07:00:09 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:64f7f08b6763becdda2e72bfacdfd36663e4847bc6fdb366336127620012bc02`  
		Last Modified: Fri, 18 Sep 2026 16:49:42 GMT  
		Size: 3.6 MB (3575371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50696ee7fd6dd6a48287f1be319d7356f1aab635568394ca3f5d932466f8bc69`  
		Last Modified: Sat, 19 Sep 2026 07:00:33 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f37eda83220efe3380370c6043e0694c7ff2ccf346970849bf28d6897aeb60f5`  
		Last Modified: Sat, 19 Sep 2026 07:00:34 GMT  
		Size: 108.9 KB (108897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3259f74c8597dcf889fea8d8e6a0221da5289a45dac4f2851502a79b91f4a1f`  
		Last Modified: Sat, 19 Sep 2026 07:00:34 GMT  
		Size: 2.1 MB (2059672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bced3b020a43d00c9ff35fc2ff7e2abbc320776123d4e75d5ba63bdbde9992f`  
		Last Modified: Sat, 19 Sep 2026 07:00:34 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c55e359dc42a43fbf052b329a4eaa4484f898a931a8caff3b10d2211ebcaf55`  
		Last Modified: Sat, 19 Sep 2026 07:00:35 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:4156ffa9a211bd5adbd087c9f683e974870966536c1ae129337da66360b95151
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a4f0ecd5f404f87006c9e26865243a7998e2aafa80a461dd9752c041697bf2c`

```dockerfile
```

-	Layers:
	-	`sha256:c6980ceb4c4153eb9d97e749ed0af9b20c568aae526989597ec81e90c3b06ad9`  
		Last Modified: Sat, 19 Sep 2026 07:00:33 GMT  
		Size: 94.3 KB (94300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82e8e25f4832f3505dd2a86cfbdd4fb23a849b2a41c2a65539cc5fc2e5c853a0`  
		Last Modified: Sat, 19 Sep 2026 07:00:33 GMT  
		Size: 20.6 KB (20604 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine3.24` - linux; s390x

```console
$ docker pull memcached@sha256:91488a004e9f64eab2de7981c01b0ef3d2a1ebdd1d8ea3083e271daedb930899
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5836268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0748d0499cbde3582cbe42af5f573a3d87f870eaf9e73ab35ba83a1fb00f4a5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:24:50 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 22:24:50 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 22:27:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 22:27:56 GMT
USER memcache
# Thu, 17 Sep 2026 22:27:56 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 22:27:56 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b28ab774b98a6f29932df606a1298015f0217cceaaf48cc8b4da1a712d16dec7`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f57210d60c5d0de49a458685c32d457593dd9dc3fbe5da5e916010a9723a733`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 114.3 KB (114287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bc4422a0f2f7f71932333a312da7ab0d836e17d66ed95f5a8983d3bf0d15f4e`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 2.0 MB (2005290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45e7a27d33ae9a3ad3b5c6a329d295e218eb317d67093226b27351835b2294fd`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859163942310d61c18cdaf7abeee7b475bf01a0e6d71b759d0e9485489273ad7`  
		Last Modified: Thu, 17 Sep 2026 22:28:05 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:6684f08661c99d1a72d49a7c23c27dbb132abe46ecca960eab055413ae4430ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2a3ade50f032040600c3160b104c07040707b6172447f1ff8be2d0b43aee484`

```dockerfile
```

-	Layers:
	-	`sha256:2348ae961439981a5f9d7a98117febd705c8fd5ed703c60ba55e6302e0939ad0`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40f2ae73c6298b67d61ba80635c258460fd84b74fab96b4bda97def3dcde3994`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6-trixie`

```console
$ docker pull memcached@sha256:2046d6d2eb7cbd59470b533a101cbd67def3e718b04eb72478306dbc804a3171
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

### `memcached:1.6-trixie` - linux; amd64

```console
$ docker pull memcached@sha256:c9f95360aa3e64f836956defe064352c9045c54d3f2dda34590a68e042927a5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32267918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f34c06c3fd851fa86d3e7555b408164af6b4b4b47ee11aa7dc0bca734e7a71aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:19:32 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:19:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:22:16 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:22:16 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:22:16 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:22:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:22:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:22:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:22:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:22:16 GMT
USER memcache
# Tue, 06 Oct 2026 01:22:16 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:22:16 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e079f3032daaade186d2131f9f18bb2c0f9935ab855336f423301f61d6e7b328`  
		Last Modified: Tue, 06 Oct 2026 01:22:22 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d40ad5a129f0aa6c523fe06d1708562030b3c6fa97cb31740c9e5ee7bf3ba534`  
		Last Modified: Tue, 06 Oct 2026 01:22:22 GMT  
		Size: 136.7 KB (136713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbe007d027e93139ff939ece02bc51476de66b1d5b505899c169d13775d510a0`  
		Last Modified: Tue, 06 Oct 2026 01:22:23 GMT  
		Size: 2.3 MB (2286344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86cf65cc96233c2b4aadc77c4c33b88129a2b62f64b9c5a021699e3eb28ebee5`  
		Last Modified: Tue, 06 Oct 2026 01:22:22 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d2d4760f47202c0b45135bb9d7ff59c58459e7ad99594786be531b150f555b6`  
		Last Modified: Tue, 06 Oct 2026 01:22:23 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:6fa0fc0329372d3ab73426a81eb03684ac37b6b44ce464f0c08ca9676c60de82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f09a49d1eaaf775f21be83947a61998647107aac63f88a4042ec77e4dbbd1ec`

```dockerfile
```

-	Layers:
	-	`sha256:b1092fc97cef42727e9036fe522d7ed2633633985bbaac4829c91acd129da3a6`  
		Last Modified: Tue, 06 Oct 2026 01:22:23 GMT  
		Size: 2.0 MB (2014332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ab446710960dba37f7b51a6eb0f7bc842602da0824da26225b23926dedefbdc`  
		Last Modified: Tue, 06 Oct 2026 01:22:22 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; arm variant v5

```console
$ docker pull memcached@sha256:f99f30eaf4a8f67b996c41f49fec4c0e4a16523901b3564394d631c35b2ccfed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30370459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ce918c60a86aa9267194a8f22739fa01607bf2c26fc25c89e64ffc01852b2f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:18:18 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:18:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:21:40 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:21:40 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:21:40 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:21:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:21:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:21:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:21:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:21:40 GMT
USER memcache
# Tue, 06 Oct 2026 01:21:40 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:21:40 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:cb79ce05d3152dc6f7b8608f1f449aa1fbf1541a5dff435139649d755dd23d93`  
		Last Modified: Tue, 06 Oct 2026 00:13:24 GMT  
		Size: 28.0 MB (28007486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0fc4c700738b0949f606b6b5601896930602894413dfc8db3b37f5bfc541a14`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a25abe783152ae88c84222cd52a115baf6ea0a88846f910d6128500df7103939`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 144.2 KB (144200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1ce858ea6db063b480bff4a3baafcc483f5817f7c4d1be66827c87c7d43b2d9`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 2.2 MB (2217261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2bdc54165033126966499027bdd3c11823f028488c41440ea755d764b21bbdd`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c3604de1f39f6d0df3b8a994bdf608a0e366a8633c1ed5551de0bdc2deb117d`  
		Last Modified: Tue, 06 Oct 2026 01:21:47 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:14fead2feed9bed8d15c272d3b4c45100e99e1a2da41c7c0dcce6d6dfca0852d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2039639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecbbdca80f1a7bc00d9cd9bba88060ee0fd9344a138a0aeed9817b4b443f39e3`

```dockerfile
```

-	Layers:
	-	`sha256:238b5082fef01c1b58fdb77c003c03415636e326c699af155126cfd037145511`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 2.0 MB (2017335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9df37609ab40ce96bcd6822f2a492aff1b99b73c211416d45a104e62aba1152c`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; arm variant v7

```console
$ docker pull memcached@sha256:2a0f066db5ab04bcc02e20ea0552bbb943884c32ceb014761763c8b713a8a410
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28566690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d6dc33010f19ca987a03eda3ed24aa29fe95ec521260ddadc1fec5883a5ee70`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:20:47 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:20:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:23:58 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:23:58 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:23:58 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:23:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:23:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:23:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:23:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:23:58 GMT
USER memcache
# Tue, 06 Oct 2026 01:23:58 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:23:58 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf458570d1c1ac6b3a5d06336f964b504bc7d5902622370f11291826321cd43f`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1b651e6ccfc4a1084deaae487cb9dec23a117ddfdb2c0fd2e82df5c8b57fcc3`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 135.4 KB (135386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc87fbda19f8ce41e669327ace6c6db485589566dae2ddb46b94a4243e656b25`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 2.2 MB (2171612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f08eca3251dd91c45d7f3898d2e97fe9e7d9d6d8d96b1981e652aa291e568d56`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ffd165e448c27fa217b74d7788471a856372780f9650a32ea2ed4473541ff7`  
		Last Modified: Tue, 06 Oct 2026 01:24:05 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:86eb842ad2b9bd0e5c38e7648723ba6df9f9b92c122a5689a24918189ad30a41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2038096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec25db8cea0645c1ab26371aec6335b17af7efe5f6eaaf8e6e3ff29936dd1815`

```dockerfile
```

-	Layers:
	-	`sha256:10f4ca9afa8376b15d1ad34282553df796975282b3cd3a46f94c45371f553cb6`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 2.0 MB (2015792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bea6373013b6cf4d05758d03fe9be9432f173977b5b83e71a96e166847cbe4f4`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:db1095291332bd58c0551af962f8940dce18d87e5ba4ff6ba9e2a901819d9c25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32622142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9207469bca7f44aecf7bff570002ede8e626e06e0cb25fa008268f97f644c75b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:19:35 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:19:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:22:35 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:22:35 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:22:35 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:22:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:22:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:22:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:22:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:22:35 GMT
USER memcache
# Tue, 06 Oct 2026 01:22:35 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:22:35 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:620da5091547ba64520d491a8b6b517cce0a3d474388b1f49bf7bf9e118d85bd`  
		Last Modified: Tue, 06 Oct 2026 01:22:41 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fae4064dd7b1370d85a82720c9a3acc9c925624f20ad91e204783b10a2ec3dfe`  
		Last Modified: Tue, 06 Oct 2026 01:22:41 GMT  
		Size: 153.5 KB (153527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6950f6af6542268dc492c1c5bbfcccef50b35f40596d348b86b238b824c1b19`  
		Last Modified: Tue, 06 Oct 2026 01:22:42 GMT  
		Size: 2.3 MB (2266820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68b55d7d01f6f7371c44460d3c04b7dd27e5d002dda63ab81d2931d02e2ffa78`  
		Last Modified: Tue, 06 Oct 2026 01:22:42 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b26a56b8e9216c4807b9c2bf095d1b3a5df29b13206a2098db60b1d90958f853`  
		Last Modified: Tue, 06 Oct 2026 01:22:43 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:d0649d2335af9e7e2a93517db111e263cd510a676fd1f13ea439a6d10362606c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fbb64c2b568e3c52baac2d8e24e2d2af7dd0063e821826e0e534070f0938e61`

```dockerfile
```

-	Layers:
	-	`sha256:bde99632d639c60d280adfc23727596b782215923117bffba5efc9a0f34480c7`  
		Last Modified: Tue, 06 Oct 2026 01:22:42 GMT  
		Size: 2.0 MB (2014640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b79d8c6a0d2eb65369ee6909525df3324d7fdfd7dd1c7e2b5f236d2d4bc9ac5`  
		Last Modified: Tue, 06 Oct 2026 01:22:42 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; 386

```console
$ docker pull memcached@sha256:aaf3189188869f4a3ccfde0f2610fd595011df2eb449251fb909a86f4220ab8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33733530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a90759960ac97d23dcce664286754ba1a507a4e61399c7fc40f1cac308182f17`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:17:26 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:17:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:20:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:20:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:20:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:20:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:20:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:20:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:20:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:20:24 GMT
USER memcache
# Tue, 06 Oct 2026 01:20:24 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:20:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78226cd621a6dc04a3c52ac5bd710b236b7e84dac2be795ed78f6270e06d5d58`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d9f6771133e91a6c72f1c941b3ca5ad178f310aa70cc67e1f45404ce10f466a`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 147.5 KB (147545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d960652d73e72b9de15a4cd637e7c31ab99b80b0de6ed50167dec7fd0b695a0b`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 2.2 MB (2231174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1a6c5315b066087aabdf4ff7fa5679a0cf33066a165cbab8cc1febe9334b403`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd2d66ec395c65b79cd82bfa9f5feee129c872bfc5a5e2c01eb6cdd967ce418`  
		Last Modified: Tue, 06 Oct 2026 01:20:31 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:715096757feec34ae4e6782045183cdfd41a9f66408fc8d67c5ab4340c457bd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba50a99f65e30b177a771da6a3d0404f45696a36b8ad29e54d4ae4ba06b5c1b8`

```dockerfile
```

-	Layers:
	-	`sha256:660aa37bc36843d550abc12f4ec61b3ae98b4ca4b38e327f60a211bf33d3173b`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 2.0 MB (2011489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2d7da2372f7dde1b48c8a8574856970d7adedf4c27a4afaefe0777877499fb5`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; ppc64le

```console
$ docker pull memcached@sha256:5f415587997b8e0f1a561a915d39e9bcdf22d98679c052071c9698ccbbf9d39b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.7 MB (36704053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87adc0c99e19a7a8da27980c7cf9b7aa831c6637f29a6a1e4bb0999f373d5499`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:39:24 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:39:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:04:32 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 02:04:32 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 02:04:32 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 02:04:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 02:04:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:04:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 02:04:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:04:35 GMT
USER memcache
# Tue, 06 Oct 2026 02:04:35 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 02:04:35 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6164d46e47235d7fd1edd7229d8f1bd765481418398465b98253d9736ec3c547`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a390cebd7020aa0d191036b56766e99b9877018eb509ea16b5448462b2ec449`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 170.4 KB (170390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3543f360a3c5a2967473a8b3f42e23c2e0c39d76ccf2f0abdbd4d683ccd3431`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 2.9 MB (2880549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6137beede6ddbecbc997c4db4ae5f39982a5a04a6921ddb419819b79469ae7d0`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f76d35c3739a1f5ca7a71bad3b15cd71a8d162428348592a7c9da5d28f34765`  
		Last Modified: Tue, 06 Oct 2026 02:05:04 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:257156567aeea78272834db591a21e418aeec1cb24edb73e54de3159465d836d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2040160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06ea07e913ac58a382529edbdc77bb6f3a94c58a5c91c09165d5e7b999f701ec`

```dockerfile
```

-	Layers:
	-	`sha256:8a367b2965262ace978c86ced51b2dc153aa2206f6c4f9400a013ba78df77d3d`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 2.0 MB (2017933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:74137664ae61f8b59bed7b2fa9df763c2ca13444ece2eba6077f57dba40a3d90`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; riscv64

```console
$ docker pull memcached@sha256:8656a4a311e8931b683fc70198a24d869bbe722750d6fc07c83f9e7237b478c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30681766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21bb47e315c736689f7d9dea92f8e99cfe69d4374074794c3b1a025fb47e7a71`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 07:21:32 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 07:22:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 07:55:26 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 07:55:26 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 07:55:26 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 07:55:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 07:55:27 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 07:55:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 07:55:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 07:55:27 GMT
USER memcache
# Tue, 06 Oct 2026 07:55:27 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 07:55:27 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21d459eef25729476a15d9c2a71497e61fe2c1196ce2b0a061be33003a44ae81`  
		Last Modified: Tue, 06 Oct 2026 07:56:25 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:263b253257e5b7560b41f9faa680bfdd51b7cff710244248157851b53d5c6aa5`  
		Last Modified: Tue, 06 Oct 2026 07:56:24 GMT  
		Size: 133.1 KB (133127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bc0a71aadf0f4e2b01e90f2bc8deff83e567c95a01aa9ee2f63a2aa9b78181d`  
		Last Modified: Tue, 06 Oct 2026 07:56:25 GMT  
		Size: 2.2 MB (2213364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf6adaa4db7702afeeff21184d36c11cb9b535da6897e7c20fb6b715bcfdea7c`  
		Last Modified: Tue, 06 Oct 2026 07:56:24 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c52b03c9f42bf5cc7e456fe818e7d30afca4a4aafdeb44fa0909799871255978`  
		Last Modified: Tue, 06 Oct 2026 07:56:26 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:77be1f72ce3d91c4c7c73cd87f8878f429e7d3d34618f913d85362946d18cc14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b833cdf252d8ef60135fb683ad467b12dba50840f19d3fad115113cc8b3612b`

```dockerfile
```

-	Layers:
	-	`sha256:1196e2adc1677841feebedecd6d0432decb685bdab29f5bafa15a9bf1abfcddb`  
		Last Modified: Tue, 06 Oct 2026 07:56:25 GMT  
		Size: 2.0 MB (2008296 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad5fac857c1ca1386708151b7fc10b65c7d061ad865939ed8c614ee0929c753a`  
		Last Modified: Tue, 06 Oct 2026 07:56:24 GMT  
		Size: 22.2 KB (22226 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; s390x

```console
$ docker pull memcached@sha256:60efa47221d8959fc57e5a883a13a0cdbd4c6c2c106fb75b43cb48c0a93badcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32352682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fdb24e98011f7cc5569c516a3fd13bdf2768a566e90affe67ee8620fd761173`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:16:36 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:16:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:19:49 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:19:49 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:19:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:19:49 GMT
USER memcache
# Tue, 06 Oct 2026 01:19:49 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:19:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:fd14e6ce0256b9093e480e6146009effeb6c2bc486ff0052d50a32cbab8335fc`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 29.9 MB (29909247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9eee2ff929ea4e7ec919f80e7190bae923598fa62b8353765197bc11ea5a486`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36b740724da913e5a0891835dd7f5882ee3431869ff315c5d470924c36a412ce`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 140.5 KB (140516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a13b7ad2fafa15b3e37dc61ffe8e8a697b0e775edc6e1de88ba91f558e7faf20`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 2.3 MB (2301406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d53df8fb22e01bbb39ceb207639fc38f6f6e44053037d57e9616b0f22380bce`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5378341f5e20367bd2680911105891faeeda0d235ae58c94101d2253a616814`  
		Last Modified: Tue, 06 Oct 2026 01:20:00 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:90b4789ca09efcc93d0068d240f0acb339dc8d4afa13951cb103a2cbe5329276
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d301a021e72bdde47c24ea7b9f7168d0dcad77663582a1b44d8164cd505b1ae`

```dockerfile
```

-	Layers:
	-	`sha256:58444f61165c9d6f2dc18ea544c9788885fbf0f3fe3af01dce90eb14eac020b9`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 2.0 MB (2015769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5e7acc93643035fc7961ac9b6f7c3514ffa025c8aa43dd09cdc4c1b8b6c79de`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 22.2 KB (22152 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6.45`

```console
$ docker pull memcached@sha256:2046d6d2eb7cbd59470b533a101cbd67def3e718b04eb72478306dbc804a3171
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

### `memcached:1.6.45` - linux; amd64

```console
$ docker pull memcached@sha256:c9f95360aa3e64f836956defe064352c9045c54d3f2dda34590a68e042927a5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32267918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f34c06c3fd851fa86d3e7555b408164af6b4b4b47ee11aa7dc0bca734e7a71aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:19:32 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:19:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:22:16 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:22:16 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:22:16 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:22:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:22:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:22:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:22:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:22:16 GMT
USER memcache
# Tue, 06 Oct 2026 01:22:16 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:22:16 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e079f3032daaade186d2131f9f18bb2c0f9935ab855336f423301f61d6e7b328`  
		Last Modified: Tue, 06 Oct 2026 01:22:22 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d40ad5a129f0aa6c523fe06d1708562030b3c6fa97cb31740c9e5ee7bf3ba534`  
		Last Modified: Tue, 06 Oct 2026 01:22:22 GMT  
		Size: 136.7 KB (136713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbe007d027e93139ff939ece02bc51476de66b1d5b505899c169d13775d510a0`  
		Last Modified: Tue, 06 Oct 2026 01:22:23 GMT  
		Size: 2.3 MB (2286344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86cf65cc96233c2b4aadc77c4c33b88129a2b62f64b9c5a021699e3eb28ebee5`  
		Last Modified: Tue, 06 Oct 2026 01:22:22 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d2d4760f47202c0b45135bb9d7ff59c58459e7ad99594786be531b150f555b6`  
		Last Modified: Tue, 06 Oct 2026 01:22:23 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:6fa0fc0329372d3ab73426a81eb03684ac37b6b44ce464f0c08ca9676c60de82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f09a49d1eaaf775f21be83947a61998647107aac63f88a4042ec77e4dbbd1ec`

```dockerfile
```

-	Layers:
	-	`sha256:b1092fc97cef42727e9036fe522d7ed2633633985bbaac4829c91acd129da3a6`  
		Last Modified: Tue, 06 Oct 2026 01:22:23 GMT  
		Size: 2.0 MB (2014332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ab446710960dba37f7b51a6eb0f7bc842602da0824da26225b23926dedefbdc`  
		Last Modified: Tue, 06 Oct 2026 01:22:22 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; arm variant v5

```console
$ docker pull memcached@sha256:f99f30eaf4a8f67b996c41f49fec4c0e4a16523901b3564394d631c35b2ccfed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30370459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ce918c60a86aa9267194a8f22739fa01607bf2c26fc25c89e64ffc01852b2f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:18:18 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:18:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:21:40 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:21:40 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:21:40 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:21:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:21:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:21:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:21:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:21:40 GMT
USER memcache
# Tue, 06 Oct 2026 01:21:40 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:21:40 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:cb79ce05d3152dc6f7b8608f1f449aa1fbf1541a5dff435139649d755dd23d93`  
		Last Modified: Tue, 06 Oct 2026 00:13:24 GMT  
		Size: 28.0 MB (28007486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0fc4c700738b0949f606b6b5601896930602894413dfc8db3b37f5bfc541a14`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a25abe783152ae88c84222cd52a115baf6ea0a88846f910d6128500df7103939`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 144.2 KB (144200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1ce858ea6db063b480bff4a3baafcc483f5817f7c4d1be66827c87c7d43b2d9`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 2.2 MB (2217261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2bdc54165033126966499027bdd3c11823f028488c41440ea755d764b21bbdd`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c3604de1f39f6d0df3b8a994bdf608a0e366a8633c1ed5551de0bdc2deb117d`  
		Last Modified: Tue, 06 Oct 2026 01:21:47 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:14fead2feed9bed8d15c272d3b4c45100e99e1a2da41c7c0dcce6d6dfca0852d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2039639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecbbdca80f1a7bc00d9cd9bba88060ee0fd9344a138a0aeed9817b4b443f39e3`

```dockerfile
```

-	Layers:
	-	`sha256:238b5082fef01c1b58fdb77c003c03415636e326c699af155126cfd037145511`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 2.0 MB (2017335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9df37609ab40ce96bcd6822f2a492aff1b99b73c211416d45a104e62aba1152c`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; arm variant v7

```console
$ docker pull memcached@sha256:2a0f066db5ab04bcc02e20ea0552bbb943884c32ceb014761763c8b713a8a410
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28566690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d6dc33010f19ca987a03eda3ed24aa29fe95ec521260ddadc1fec5883a5ee70`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:20:47 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:20:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:23:58 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:23:58 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:23:58 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:23:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:23:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:23:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:23:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:23:58 GMT
USER memcache
# Tue, 06 Oct 2026 01:23:58 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:23:58 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf458570d1c1ac6b3a5d06336f964b504bc7d5902622370f11291826321cd43f`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1b651e6ccfc4a1084deaae487cb9dec23a117ddfdb2c0fd2e82df5c8b57fcc3`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 135.4 KB (135386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc87fbda19f8ce41e669327ace6c6db485589566dae2ddb46b94a4243e656b25`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 2.2 MB (2171612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f08eca3251dd91c45d7f3898d2e97fe9e7d9d6d8d96b1981e652aa291e568d56`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ffd165e448c27fa217b74d7788471a856372780f9650a32ea2ed4473541ff7`  
		Last Modified: Tue, 06 Oct 2026 01:24:05 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:86eb842ad2b9bd0e5c38e7648723ba6df9f9b92c122a5689a24918189ad30a41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2038096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec25db8cea0645c1ab26371aec6335b17af7efe5f6eaaf8e6e3ff29936dd1815`

```dockerfile
```

-	Layers:
	-	`sha256:10f4ca9afa8376b15d1ad34282553df796975282b3cd3a46f94c45371f553cb6`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 2.0 MB (2015792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bea6373013b6cf4d05758d03fe9be9432f173977b5b83e71a96e166847cbe4f4`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:db1095291332bd58c0551af962f8940dce18d87e5ba4ff6ba9e2a901819d9c25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32622142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9207469bca7f44aecf7bff570002ede8e626e06e0cb25fa008268f97f644c75b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:19:35 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:19:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:22:35 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:22:35 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:22:35 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:22:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:22:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:22:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:22:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:22:35 GMT
USER memcache
# Tue, 06 Oct 2026 01:22:35 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:22:35 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:620da5091547ba64520d491a8b6b517cce0a3d474388b1f49bf7bf9e118d85bd`  
		Last Modified: Tue, 06 Oct 2026 01:22:41 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fae4064dd7b1370d85a82720c9a3acc9c925624f20ad91e204783b10a2ec3dfe`  
		Last Modified: Tue, 06 Oct 2026 01:22:41 GMT  
		Size: 153.5 KB (153527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6950f6af6542268dc492c1c5bbfcccef50b35f40596d348b86b238b824c1b19`  
		Last Modified: Tue, 06 Oct 2026 01:22:42 GMT  
		Size: 2.3 MB (2266820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68b55d7d01f6f7371c44460d3c04b7dd27e5d002dda63ab81d2931d02e2ffa78`  
		Last Modified: Tue, 06 Oct 2026 01:22:42 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b26a56b8e9216c4807b9c2bf095d1b3a5df29b13206a2098db60b1d90958f853`  
		Last Modified: Tue, 06 Oct 2026 01:22:43 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:d0649d2335af9e7e2a93517db111e263cd510a676fd1f13ea439a6d10362606c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fbb64c2b568e3c52baac2d8e24e2d2af7dd0063e821826e0e534070f0938e61`

```dockerfile
```

-	Layers:
	-	`sha256:bde99632d639c60d280adfc23727596b782215923117bffba5efc9a0f34480c7`  
		Last Modified: Tue, 06 Oct 2026 01:22:42 GMT  
		Size: 2.0 MB (2014640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b79d8c6a0d2eb65369ee6909525df3324d7fdfd7dd1c7e2b5f236d2d4bc9ac5`  
		Last Modified: Tue, 06 Oct 2026 01:22:42 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; 386

```console
$ docker pull memcached@sha256:aaf3189188869f4a3ccfde0f2610fd595011df2eb449251fb909a86f4220ab8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33733530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a90759960ac97d23dcce664286754ba1a507a4e61399c7fc40f1cac308182f17`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:17:26 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:17:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:20:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:20:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:20:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:20:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:20:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:20:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:20:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:20:24 GMT
USER memcache
# Tue, 06 Oct 2026 01:20:24 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:20:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78226cd621a6dc04a3c52ac5bd710b236b7e84dac2be795ed78f6270e06d5d58`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d9f6771133e91a6c72f1c941b3ca5ad178f310aa70cc67e1f45404ce10f466a`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 147.5 KB (147545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d960652d73e72b9de15a4cd637e7c31ab99b80b0de6ed50167dec7fd0b695a0b`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 2.2 MB (2231174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1a6c5315b066087aabdf4ff7fa5679a0cf33066a165cbab8cc1febe9334b403`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd2d66ec395c65b79cd82bfa9f5feee129c872bfc5a5e2c01eb6cdd967ce418`  
		Last Modified: Tue, 06 Oct 2026 01:20:31 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:715096757feec34ae4e6782045183cdfd41a9f66408fc8d67c5ab4340c457bd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba50a99f65e30b177a771da6a3d0404f45696a36b8ad29e54d4ae4ba06b5c1b8`

```dockerfile
```

-	Layers:
	-	`sha256:660aa37bc36843d550abc12f4ec61b3ae98b4ca4b38e327f60a211bf33d3173b`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 2.0 MB (2011489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2d7da2372f7dde1b48c8a8574856970d7adedf4c27a4afaefe0777877499fb5`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; ppc64le

```console
$ docker pull memcached@sha256:5f415587997b8e0f1a561a915d39e9bcdf22d98679c052071c9698ccbbf9d39b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.7 MB (36704053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87adc0c99e19a7a8da27980c7cf9b7aa831c6637f29a6a1e4bb0999f373d5499`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:39:24 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:39:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:04:32 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 02:04:32 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 02:04:32 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 02:04:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 02:04:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:04:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 02:04:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:04:35 GMT
USER memcache
# Tue, 06 Oct 2026 02:04:35 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 02:04:35 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6164d46e47235d7fd1edd7229d8f1bd765481418398465b98253d9736ec3c547`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a390cebd7020aa0d191036b56766e99b9877018eb509ea16b5448462b2ec449`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 170.4 KB (170390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3543f360a3c5a2967473a8b3f42e23c2e0c39d76ccf2f0abdbd4d683ccd3431`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 2.9 MB (2880549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6137beede6ddbecbc997c4db4ae5f39982a5a04a6921ddb419819b79469ae7d0`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f76d35c3739a1f5ca7a71bad3b15cd71a8d162428348592a7c9da5d28f34765`  
		Last Modified: Tue, 06 Oct 2026 02:05:04 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:257156567aeea78272834db591a21e418aeec1cb24edb73e54de3159465d836d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2040160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06ea07e913ac58a382529edbdc77bb6f3a94c58a5c91c09165d5e7b999f701ec`

```dockerfile
```

-	Layers:
	-	`sha256:8a367b2965262ace978c86ced51b2dc153aa2206f6c4f9400a013ba78df77d3d`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 2.0 MB (2017933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:74137664ae61f8b59bed7b2fa9df763c2ca13444ece2eba6077f57dba40a3d90`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; riscv64

```console
$ docker pull memcached@sha256:8656a4a311e8931b683fc70198a24d869bbe722750d6fc07c83f9e7237b478c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30681766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21bb47e315c736689f7d9dea92f8e99cfe69d4374074794c3b1a025fb47e7a71`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 07:21:32 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 07:22:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 07:55:26 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 07:55:26 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 07:55:26 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 07:55:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 07:55:27 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 07:55:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 07:55:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 07:55:27 GMT
USER memcache
# Tue, 06 Oct 2026 07:55:27 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 07:55:27 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21d459eef25729476a15d9c2a71497e61fe2c1196ce2b0a061be33003a44ae81`  
		Last Modified: Tue, 06 Oct 2026 07:56:25 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:263b253257e5b7560b41f9faa680bfdd51b7cff710244248157851b53d5c6aa5`  
		Last Modified: Tue, 06 Oct 2026 07:56:24 GMT  
		Size: 133.1 KB (133127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bc0a71aadf0f4e2b01e90f2bc8deff83e567c95a01aa9ee2f63a2aa9b78181d`  
		Last Modified: Tue, 06 Oct 2026 07:56:25 GMT  
		Size: 2.2 MB (2213364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf6adaa4db7702afeeff21184d36c11cb9b535da6897e7c20fb6b715bcfdea7c`  
		Last Modified: Tue, 06 Oct 2026 07:56:24 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c52b03c9f42bf5cc7e456fe818e7d30afca4a4aafdeb44fa0909799871255978`  
		Last Modified: Tue, 06 Oct 2026 07:56:26 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:77be1f72ce3d91c4c7c73cd87f8878f429e7d3d34618f913d85362946d18cc14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b833cdf252d8ef60135fb683ad467b12dba50840f19d3fad115113cc8b3612b`

```dockerfile
```

-	Layers:
	-	`sha256:1196e2adc1677841feebedecd6d0432decb685bdab29f5bafa15a9bf1abfcddb`  
		Last Modified: Tue, 06 Oct 2026 07:56:25 GMT  
		Size: 2.0 MB (2008296 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad5fac857c1ca1386708151b7fc10b65c7d061ad865939ed8c614ee0929c753a`  
		Last Modified: Tue, 06 Oct 2026 07:56:24 GMT  
		Size: 22.2 KB (22226 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; s390x

```console
$ docker pull memcached@sha256:60efa47221d8959fc57e5a883a13a0cdbd4c6c2c106fb75b43cb48c0a93badcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32352682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fdb24e98011f7cc5569c516a3fd13bdf2768a566e90affe67ee8620fd761173`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:16:36 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:16:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:19:49 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:19:49 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:19:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:19:49 GMT
USER memcache
# Tue, 06 Oct 2026 01:19:49 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:19:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:fd14e6ce0256b9093e480e6146009effeb6c2bc486ff0052d50a32cbab8335fc`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 29.9 MB (29909247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9eee2ff929ea4e7ec919f80e7190bae923598fa62b8353765197bc11ea5a486`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36b740724da913e5a0891835dd7f5882ee3431869ff315c5d470924c36a412ce`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 140.5 KB (140516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a13b7ad2fafa15b3e37dc61ffe8e8a697b0e775edc6e1de88ba91f558e7faf20`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 2.3 MB (2301406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d53df8fb22e01bbb39ceb207639fc38f6f6e44053037d57e9616b0f22380bce`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5378341f5e20367bd2680911105891faeeda0d235ae58c94101d2253a616814`  
		Last Modified: Tue, 06 Oct 2026 01:20:00 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:90b4789ca09efcc93d0068d240f0acb339dc8d4afa13951cb103a2cbe5329276
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d301a021e72bdde47c24ea7b9f7168d0dcad77663582a1b44d8164cd505b1ae`

```dockerfile
```

-	Layers:
	-	`sha256:58444f61165c9d6f2dc18ea544c9788885fbf0f3fe3af01dce90eb14eac020b9`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 2.0 MB (2015769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5e7acc93643035fc7961ac9b6f7c3514ffa025c8aa43dd09cdc4c1b8b6c79de`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 22.2 KB (22152 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6.45-alpine`

```console
$ docker pull memcached@sha256:9e4de012dc607573052061c0bcb38abc775e1dd59b24e7ac38d1892842094aaf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
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

### `memcached:1.6.45-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:aed6c14165dc0ca719495a86db396e4af335199e2bc509cf34197b8eb81e75db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5930141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc3f45e091e88b03ec5a7365defcc1153365adefba32a94161d6faccc029383a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:16:33 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:19:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:19:05 GMT
USER memcache
# Thu, 17 Sep 2026 21:19:05 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:19:05 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51fbbe0527a5a9d13613c8b22f2752a14b91b6092d0173800fb78cdbdf258428`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ddc38e6924e90cccdea0458ce3bad50a286b3f5d5e9c0305e4b92bdbcb0fc0b`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 106.1 KB (106069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11fb880294fac3007e7d5466cb68cdda8db6b8e867e5830f618ba59347084c48`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 2.0 MB (1972988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850056ad91a7eb14a58eb47cbf53170bd6c8cd07d782801b5291119ef8b5b196`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c150f54a299a0e5865f493673e27ba960bfe92b1934d5ca3f45495da216fc7`  
		Last Modified: Thu, 17 Sep 2026 21:19:11 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:102f3093bc6e0dc03c870eefaa1d08375dec1dcaa029b7cdd28e8fc8b230735f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f039df7239fcf88279416238b99fd3f4265ddb7845dea2a532668642ace6dee7`

```dockerfile
```

-	Layers:
	-	`sha256:df58852b59ae3bbcc474c37fbbf4af35ed5328fac4a45547d6dfe1c745b5cf6b`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84c13baa7fdc4605691a3816af63e761060d234a8f3c82fb584e5f2a994f607d`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 20.5 KB (20530 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:8973cb50b646592bc4b4db5c5ba5fafeaedc9a5cc14d4ee0e033501aad18d50e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5580295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ab89ee2938c40874ab847588a7bafedd064247be84b1f2ed13066b41aae89af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:20:55 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:20:56 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:24:01 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:24:01 GMT
USER memcache
# Thu, 17 Sep 2026 21:24:01 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:24:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87a68700291779231aecfd220f9d88723f70443a7e53b3ee6cc7e50331769869`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95cccdcfd4cc608994427c242b2392444f14c8d1b15a3c9573c9b579ec3f251b`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 102.6 KB (102640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c173cc650cff05287311d33f6a47867336f7ed1460693ea0df58ad80f4f904f`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 1.9 MB (1921196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35b9602a9760e8079674d25e1275b8b248dbd430166307fa22bce8f18e15615e`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af8021c2cf11f0eabbe2f38ce25544bd0338d0d216e3a31cb4c67145e48a2884`  
		Last Modified: Thu, 17 Sep 2026 21:24:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:a3dc4759b806fd595aedee968574f6d30b81786fae6f02a5ed5fd3de9a435ac2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6389c8a7a95dbe7874d26cc6d210d709d1d2d7918af74b99fbb9682526c8792`

```dockerfile
```

-	Layers:
	-	`sha256:b330c577900be61f94c9bdbc4264d33e0b1c8c4da085bad9165206c011cc083d`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine` - linux; arm variant v7

```console
$ docker pull memcached@sha256:4698047b9c210750e16e07db091be4b5f72b595c820e6e846e7188ba0b386609
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5239338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f84a27cb8b2508b216332970f0618a4915ada956d79e6fa8d381247023423d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:19:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:19:34 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:22:30 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:22:30 GMT
USER memcache
# Thu, 17 Sep 2026 21:22:30 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:22:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:995431fad1655fd0bda6213201e5a9a96951e71f4f86618d35615eec52332190`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4785d6c6095884eacbe5558dcdc121bca474e6125a08dfafa2cf70e87894ebd3`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 92.4 KB (92374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41440d665d2ba596c0e09c2045809a58916edd2537e8f804e5a17764fb30af6b`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 1.9 MB (1880415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:937240234e98ecd679cf903fc7c7aa62d14ae776d7eba3b2d8ee806456cb5825`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64428be47e9234c7141e9537d621fe415c0e0e6a11e600c188c8204de36af99e`  
		Last Modified: Thu, 17 Sep 2026 21:22:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:f299ad7470f58ee154752703c7b7a09cfdeddcd1068ccbb69b7620a7f2cdb992
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b60f46873c9939d84f06a78729773d4cf55de1e87ac0e9a081e8febade8b26a2`

```dockerfile
```

-	Layers:
	-	`sha256:d77ba4f589d860c72847322877d5b8c550270a2389bd2850e29fc66026488ff3`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10c142ee87947b5a89569925c281a9eb621090b0624c5864032bc312ed2afdc5`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:31462f1ea73a0a29772ae6f32be7124da9c2a9683ae24d802bfcc54041550c76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6262017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dd5bd4099e3cca31288437e2dd63d71878251e9a528afa6064a7fc061fd0d4b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:13:17 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:13:18 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:16:08 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:16:08 GMT
USER memcache
# Thu, 17 Sep 2026 21:16:08 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:16:08 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb1e88d48d205af89d0d9b1904c6e63a30e855a6f5412935835c74d59a3810f2`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7610f2b35dab65304108892242fdf929182879b48c7ec7e98ade8f72367602a`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 121.9 KB (121854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44405d199511c9c938bef88955579ffc36f5d445db3314a38b68edacfd6f8148`  
		Last Modified: Thu, 17 Sep 2026 21:16:14 GMT  
		Size: 2.0 MB (1951158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81e6109934a7079c68103964d22c882f2bcbaa12b72eb28215df5a5a85da515c`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:746a12191622835cb3173ad754db60d1b994fca18162459d7f747de35b65420e`  
		Last Modified: Thu, 17 Sep 2026 21:16:14 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:d2a1e3c664b5a5358e65793068ee3a463b1e2fe9decf1756e18c2b3be7144999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7531bf2f8de67b5bb43c901a077c5edfd30a29cccf14c8c0529c7a6a7077358a`

```dockerfile
```

-	Layers:
	-	`sha256:7362abb71609190210ea3be48c0203576b7a05be93a91a20193a25f2518aa82e`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee7723224e4a1ff2a4c3dd74e9fc725ddcc2ceeb9a645ac99ce84a861893b52a`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 20.7 KB (20727 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine` - linux; 386

```console
$ docker pull memcached@sha256:4afb6580c24ce2632634356a9c937b496b8743e066378fc23d8913fcb200f432
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5717122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22be399c981a2a59830540f0047af1bc959ef8e8126c47fac9e18ea3faf37bb3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:36 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:15:36 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:18:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:18:24 GMT
USER memcache
# Thu, 17 Sep 2026 21:18:24 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:18:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de5a1555078fa5282f5a803b64f0e79189413537a752f4474488fd16413384bd`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e7199937599d0cbc9b3195d82ef0b3d4de6c3e0cc321dec80d52c622beab351`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 110.7 KB (110733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a21a73ed462e36058c3afb00410805dbeac8749d3c7eba98d19fde8cac202d2e`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 1.9 MB (1928259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3af84ae0a647f9eb5f6bdee46d460c064ef97e3238c053e9c78d3ffc1e5b9d87`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0965a9fe7f7f140845e67596ab02a4927d97bf25d44bbee1aaf6f10d370f8600`  
		Last Modified: Thu, 17 Sep 2026 21:18:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:d89f57316668a586ea578ed614cdc7ce13fff224c626ac06c9ac3dea42601a04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8b6ffba2b1dcfd03338d94840ba3fc7e43dc4ad9d16e97ab8c9297fb3fdb424`

```dockerfile
```

-	Layers:
	-	`sha256:4e8c5777c38b16385e0fa1aa5dc68e59b3f668641ffcf0e3f7daa467d10e60f7`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d8caad469a2d8d8f1e6c35f144d71bcb8985515d1bd90eab44f60991c58a727`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:9a0437672c246d127b1782f10a801ce0db757ac74f367b84553c96b2be7cb5f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6010090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:512f89eee8246394b1b5628094edf12aca1099208a7cae259a3eb56156e0693b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:30:23 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:30:24 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:53:31 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:53:31 GMT
USER memcache
# Thu, 17 Sep 2026 21:53:31 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:53:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9164e851bf437772ce842921040227ac7487b00f22d00cd6763636f330964202`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0995f3b36f83b7959f49f1761f6c225138a2b065c268d83d0c3d0a87388bc617`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 126.3 KB (126261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c93a3f94f5c6d12261d3f31e57bad38b61e9ff3be47164a599318d71615f9a02`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 2.1 MB (2065002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc74b243580138ee3b28fd11e87cb70e99beb61a59b8dc49871b4d86a8706b5`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b494ff94eeffbb1f72c70e1b578480f7c72ad4a6bcc5bc42ba105b3e1278d3b`  
		Last Modified: Thu, 17 Sep 2026 21:53:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:f80e28a730a608ba861ca92c6a4227987495a1441e641cd1bf23b1b82144c6fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b415f70b85d9e9b283614528065ba6acee2673d8c7ce30c575ef4dc9e686258b`

```dockerfile
```

-	Layers:
	-	`sha256:03bc6ab3f08099a9ee4128175887a1c8577344a9bbaade3317621fbc2e51c40e`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc2ab6e0e8c7ae32bfe2026593c785e0b1175d0468ba31e9b9c736478a378917`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine` - linux; riscv64

```console
$ docker pull memcached@sha256:b655eb23860c9f5cd8820dc15391d6c85f5c4001c69fb484b508a7a6c0b2ccf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5745298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55b8dced45037bb279c8b4b7c6173dd938bb75674f945d9f8554ffed1b752ca6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Sat, 19 Sep 2026 06:17:46 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Sat, 19 Sep 2026 06:17:50 GMT
RUN apk add --no-cache libsasl # buildkit
# Sat, 19 Sep 2026 07:00:09 GMT
ENV MEMCACHED_VERSION=1.6.45
# Sat, 19 Sep 2026 07:00:09 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Sat, 19 Sep 2026 07:00:09 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Sat, 19 Sep 2026 07:00:09 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Sat, 19 Sep 2026 07:00:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 07:00:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Sat, 19 Sep 2026 07:00:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 07:00:09 GMT
USER memcache
# Sat, 19 Sep 2026 07:00:09 GMT
EXPOSE map[11211/tcp:{}]
# Sat, 19 Sep 2026 07:00:09 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:64f7f08b6763becdda2e72bfacdfd36663e4847bc6fdb366336127620012bc02`  
		Last Modified: Fri, 18 Sep 2026 16:49:42 GMT  
		Size: 3.6 MB (3575371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50696ee7fd6dd6a48287f1be319d7356f1aab635568394ca3f5d932466f8bc69`  
		Last Modified: Sat, 19 Sep 2026 07:00:33 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f37eda83220efe3380370c6043e0694c7ff2ccf346970849bf28d6897aeb60f5`  
		Last Modified: Sat, 19 Sep 2026 07:00:34 GMT  
		Size: 108.9 KB (108897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3259f74c8597dcf889fea8d8e6a0221da5289a45dac4f2851502a79b91f4a1f`  
		Last Modified: Sat, 19 Sep 2026 07:00:34 GMT  
		Size: 2.1 MB (2059672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bced3b020a43d00c9ff35fc2ff7e2abbc320776123d4e75d5ba63bdbde9992f`  
		Last Modified: Sat, 19 Sep 2026 07:00:34 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c55e359dc42a43fbf052b329a4eaa4484f898a931a8caff3b10d2211ebcaf55`  
		Last Modified: Sat, 19 Sep 2026 07:00:35 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:4156ffa9a211bd5adbd087c9f683e974870966536c1ae129337da66360b95151
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a4f0ecd5f404f87006c9e26865243a7998e2aafa80a461dd9752c041697bf2c`

```dockerfile
```

-	Layers:
	-	`sha256:c6980ceb4c4153eb9d97e749ed0af9b20c568aae526989597ec81e90c3b06ad9`  
		Last Modified: Sat, 19 Sep 2026 07:00:33 GMT  
		Size: 94.3 KB (94300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82e8e25f4832f3505dd2a86cfbdd4fb23a849b2a41c2a65539cc5fc2e5c853a0`  
		Last Modified: Sat, 19 Sep 2026 07:00:33 GMT  
		Size: 20.6 KB (20604 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:91488a004e9f64eab2de7981c01b0ef3d2a1ebdd1d8ea3083e271daedb930899
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5836268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0748d0499cbde3582cbe42af5f573a3d87f870eaf9e73ab35ba83a1fb00f4a5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:24:50 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 22:24:50 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 22:27:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 22:27:56 GMT
USER memcache
# Thu, 17 Sep 2026 22:27:56 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 22:27:56 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b28ab774b98a6f29932df606a1298015f0217cceaaf48cc8b4da1a712d16dec7`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f57210d60c5d0de49a458685c32d457593dd9dc3fbe5da5e916010a9723a733`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 114.3 KB (114287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bc4422a0f2f7f71932333a312da7ab0d836e17d66ed95f5a8983d3bf0d15f4e`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 2.0 MB (2005290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45e7a27d33ae9a3ad3b5c6a329d295e218eb317d67093226b27351835b2294fd`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859163942310d61c18cdaf7abeee7b475bf01a0e6d71b759d0e9485489273ad7`  
		Last Modified: Thu, 17 Sep 2026 22:28:05 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:6684f08661c99d1a72d49a7c23c27dbb132abe46ecca960eab055413ae4430ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2a3ade50f032040600c3160b104c07040707b6172447f1ff8be2d0b43aee484`

```dockerfile
```

-	Layers:
	-	`sha256:2348ae961439981a5f9d7a98117febd705c8fd5ed703c60ba55e6302e0939ad0`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40f2ae73c6298b67d61ba80635c258460fd84b74fab96b4bda97def3dcde3994`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6.45-alpine3.24`

```console
$ docker pull memcached@sha256:9e4de012dc607573052061c0bcb38abc775e1dd59b24e7ac38d1892842094aaf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
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

### `memcached:1.6.45-alpine3.24` - linux; amd64

```console
$ docker pull memcached@sha256:aed6c14165dc0ca719495a86db396e4af335199e2bc509cf34197b8eb81e75db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5930141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc3f45e091e88b03ec5a7365defcc1153365adefba32a94161d6faccc029383a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:16:33 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:19:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:19:05 GMT
USER memcache
# Thu, 17 Sep 2026 21:19:05 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:19:05 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51fbbe0527a5a9d13613c8b22f2752a14b91b6092d0173800fb78cdbdf258428`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ddc38e6924e90cccdea0458ce3bad50a286b3f5d5e9c0305e4b92bdbcb0fc0b`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 106.1 KB (106069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11fb880294fac3007e7d5466cb68cdda8db6b8e867e5830f618ba59347084c48`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 2.0 MB (1972988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850056ad91a7eb14a58eb47cbf53170bd6c8cd07d782801b5291119ef8b5b196`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c150f54a299a0e5865f493673e27ba960bfe92b1934d5ca3f45495da216fc7`  
		Last Modified: Thu, 17 Sep 2026 21:19:11 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:102f3093bc6e0dc03c870eefaa1d08375dec1dcaa029b7cdd28e8fc8b230735f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f039df7239fcf88279416238b99fd3f4265ddb7845dea2a532668642ace6dee7`

```dockerfile
```

-	Layers:
	-	`sha256:df58852b59ae3bbcc474c37fbbf4af35ed5328fac4a45547d6dfe1c745b5cf6b`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84c13baa7fdc4605691a3816af63e761060d234a8f3c82fb584e5f2a994f607d`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 20.5 KB (20530 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine3.24` - linux; arm variant v6

```console
$ docker pull memcached@sha256:8973cb50b646592bc4b4db5c5ba5fafeaedc9a5cc14d4ee0e033501aad18d50e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5580295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ab89ee2938c40874ab847588a7bafedd064247be84b1f2ed13066b41aae89af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:20:55 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:20:56 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:24:01 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:24:01 GMT
USER memcache
# Thu, 17 Sep 2026 21:24:01 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:24:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87a68700291779231aecfd220f9d88723f70443a7e53b3ee6cc7e50331769869`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95cccdcfd4cc608994427c242b2392444f14c8d1b15a3c9573c9b579ec3f251b`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 102.6 KB (102640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c173cc650cff05287311d33f6a47867336f7ed1460693ea0df58ad80f4f904f`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 1.9 MB (1921196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35b9602a9760e8079674d25e1275b8b248dbd430166307fa22bce8f18e15615e`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af8021c2cf11f0eabbe2f38ce25544bd0338d0d216e3a31cb4c67145e48a2884`  
		Last Modified: Thu, 17 Sep 2026 21:24:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:a3dc4759b806fd595aedee968574f6d30b81786fae6f02a5ed5fd3de9a435ac2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6389c8a7a95dbe7874d26cc6d210d709d1d2d7918af74b99fbb9682526c8792`

```dockerfile
```

-	Layers:
	-	`sha256:b330c577900be61f94c9bdbc4264d33e0b1c8c4da085bad9165206c011cc083d`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine3.24` - linux; arm variant v7

```console
$ docker pull memcached@sha256:4698047b9c210750e16e07db091be4b5f72b595c820e6e846e7188ba0b386609
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5239338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f84a27cb8b2508b216332970f0618a4915ada956d79e6fa8d381247023423d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:19:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:19:34 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:22:30 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:22:30 GMT
USER memcache
# Thu, 17 Sep 2026 21:22:30 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:22:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:995431fad1655fd0bda6213201e5a9a96951e71f4f86618d35615eec52332190`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4785d6c6095884eacbe5558dcdc121bca474e6125a08dfafa2cf70e87894ebd3`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 92.4 KB (92374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41440d665d2ba596c0e09c2045809a58916edd2537e8f804e5a17764fb30af6b`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 1.9 MB (1880415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:937240234e98ecd679cf903fc7c7aa62d14ae776d7eba3b2d8ee806456cb5825`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64428be47e9234c7141e9537d621fe415c0e0e6a11e600c188c8204de36af99e`  
		Last Modified: Thu, 17 Sep 2026 21:22:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:f299ad7470f58ee154752703c7b7a09cfdeddcd1068ccbb69b7620a7f2cdb992
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b60f46873c9939d84f06a78729773d4cf55de1e87ac0e9a081e8febade8b26a2`

```dockerfile
```

-	Layers:
	-	`sha256:d77ba4f589d860c72847322877d5b8c550270a2389bd2850e29fc66026488ff3`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10c142ee87947b5a89569925c281a9eb621090b0624c5864032bc312ed2afdc5`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:31462f1ea73a0a29772ae6f32be7124da9c2a9683ae24d802bfcc54041550c76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6262017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dd5bd4099e3cca31288437e2dd63d71878251e9a528afa6064a7fc061fd0d4b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:13:17 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:13:18 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:16:08 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:16:08 GMT
USER memcache
# Thu, 17 Sep 2026 21:16:08 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:16:08 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb1e88d48d205af89d0d9b1904c6e63a30e855a6f5412935835c74d59a3810f2`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7610f2b35dab65304108892242fdf929182879b48c7ec7e98ade8f72367602a`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 121.9 KB (121854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44405d199511c9c938bef88955579ffc36f5d445db3314a38b68edacfd6f8148`  
		Last Modified: Thu, 17 Sep 2026 21:16:14 GMT  
		Size: 2.0 MB (1951158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81e6109934a7079c68103964d22c882f2bcbaa12b72eb28215df5a5a85da515c`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:746a12191622835cb3173ad754db60d1b994fca18162459d7f747de35b65420e`  
		Last Modified: Thu, 17 Sep 2026 21:16:14 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:d2a1e3c664b5a5358e65793068ee3a463b1e2fe9decf1756e18c2b3be7144999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7531bf2f8de67b5bb43c901a077c5edfd30a29cccf14c8c0529c7a6a7077358a`

```dockerfile
```

-	Layers:
	-	`sha256:7362abb71609190210ea3be48c0203576b7a05be93a91a20193a25f2518aa82e`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee7723224e4a1ff2a4c3dd74e9fc725ddcc2ceeb9a645ac99ce84a861893b52a`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 20.7 KB (20727 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine3.24` - linux; 386

```console
$ docker pull memcached@sha256:4afb6580c24ce2632634356a9c937b496b8743e066378fc23d8913fcb200f432
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5717122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22be399c981a2a59830540f0047af1bc959ef8e8126c47fac9e18ea3faf37bb3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:36 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:15:36 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:18:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:18:24 GMT
USER memcache
# Thu, 17 Sep 2026 21:18:24 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:18:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de5a1555078fa5282f5a803b64f0e79189413537a752f4474488fd16413384bd`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e7199937599d0cbc9b3195d82ef0b3d4de6c3e0cc321dec80d52c622beab351`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 110.7 KB (110733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a21a73ed462e36058c3afb00410805dbeac8749d3c7eba98d19fde8cac202d2e`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 1.9 MB (1928259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3af84ae0a647f9eb5f6bdee46d460c064ef97e3238c053e9c78d3ffc1e5b9d87`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0965a9fe7f7f140845e67596ab02a4927d97bf25d44bbee1aaf6f10d370f8600`  
		Last Modified: Thu, 17 Sep 2026 21:18:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:d89f57316668a586ea578ed614cdc7ce13fff224c626ac06c9ac3dea42601a04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8b6ffba2b1dcfd03338d94840ba3fc7e43dc4ad9d16e97ab8c9297fb3fdb424`

```dockerfile
```

-	Layers:
	-	`sha256:4e8c5777c38b16385e0fa1aa5dc68e59b3f668641ffcf0e3f7daa467d10e60f7`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d8caad469a2d8d8f1e6c35f144d71bcb8985515d1bd90eab44f60991c58a727`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine3.24` - linux; ppc64le

```console
$ docker pull memcached@sha256:9a0437672c246d127b1782f10a801ce0db757ac74f367b84553c96b2be7cb5f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6010090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:512f89eee8246394b1b5628094edf12aca1099208a7cae259a3eb56156e0693b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:30:23 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:30:24 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:53:31 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:53:31 GMT
USER memcache
# Thu, 17 Sep 2026 21:53:31 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:53:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9164e851bf437772ce842921040227ac7487b00f22d00cd6763636f330964202`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0995f3b36f83b7959f49f1761f6c225138a2b065c268d83d0c3d0a87388bc617`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 126.3 KB (126261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c93a3f94f5c6d12261d3f31e57bad38b61e9ff3be47164a599318d71615f9a02`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 2.1 MB (2065002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc74b243580138ee3b28fd11e87cb70e99beb61a59b8dc49871b4d86a8706b5`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b494ff94eeffbb1f72c70e1b578480f7c72ad4a6bcc5bc42ba105b3e1278d3b`  
		Last Modified: Thu, 17 Sep 2026 21:53:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:f80e28a730a608ba861ca92c6a4227987495a1441e641cd1bf23b1b82144c6fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b415f70b85d9e9b283614528065ba6acee2673d8c7ce30c575ef4dc9e686258b`

```dockerfile
```

-	Layers:
	-	`sha256:03bc6ab3f08099a9ee4128175887a1c8577344a9bbaade3317621fbc2e51c40e`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc2ab6e0e8c7ae32bfe2026593c785e0b1175d0468ba31e9b9c736478a378917`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine3.24` - linux; riscv64

```console
$ docker pull memcached@sha256:b655eb23860c9f5cd8820dc15391d6c85f5c4001c69fb484b508a7a6c0b2ccf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5745298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55b8dced45037bb279c8b4b7c6173dd938bb75674f945d9f8554ffed1b752ca6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Sat, 19 Sep 2026 06:17:46 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Sat, 19 Sep 2026 06:17:50 GMT
RUN apk add --no-cache libsasl # buildkit
# Sat, 19 Sep 2026 07:00:09 GMT
ENV MEMCACHED_VERSION=1.6.45
# Sat, 19 Sep 2026 07:00:09 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Sat, 19 Sep 2026 07:00:09 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Sat, 19 Sep 2026 07:00:09 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Sat, 19 Sep 2026 07:00:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 07:00:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Sat, 19 Sep 2026 07:00:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 07:00:09 GMT
USER memcache
# Sat, 19 Sep 2026 07:00:09 GMT
EXPOSE map[11211/tcp:{}]
# Sat, 19 Sep 2026 07:00:09 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:64f7f08b6763becdda2e72bfacdfd36663e4847bc6fdb366336127620012bc02`  
		Last Modified: Fri, 18 Sep 2026 16:49:42 GMT  
		Size: 3.6 MB (3575371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50696ee7fd6dd6a48287f1be319d7356f1aab635568394ca3f5d932466f8bc69`  
		Last Modified: Sat, 19 Sep 2026 07:00:33 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f37eda83220efe3380370c6043e0694c7ff2ccf346970849bf28d6897aeb60f5`  
		Last Modified: Sat, 19 Sep 2026 07:00:34 GMT  
		Size: 108.9 KB (108897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3259f74c8597dcf889fea8d8e6a0221da5289a45dac4f2851502a79b91f4a1f`  
		Last Modified: Sat, 19 Sep 2026 07:00:34 GMT  
		Size: 2.1 MB (2059672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bced3b020a43d00c9ff35fc2ff7e2abbc320776123d4e75d5ba63bdbde9992f`  
		Last Modified: Sat, 19 Sep 2026 07:00:34 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c55e359dc42a43fbf052b329a4eaa4484f898a931a8caff3b10d2211ebcaf55`  
		Last Modified: Sat, 19 Sep 2026 07:00:35 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:4156ffa9a211bd5adbd087c9f683e974870966536c1ae129337da66360b95151
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a4f0ecd5f404f87006c9e26865243a7998e2aafa80a461dd9752c041697bf2c`

```dockerfile
```

-	Layers:
	-	`sha256:c6980ceb4c4153eb9d97e749ed0af9b20c568aae526989597ec81e90c3b06ad9`  
		Last Modified: Sat, 19 Sep 2026 07:00:33 GMT  
		Size: 94.3 KB (94300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82e8e25f4832f3505dd2a86cfbdd4fb23a849b2a41c2a65539cc5fc2e5c853a0`  
		Last Modified: Sat, 19 Sep 2026 07:00:33 GMT  
		Size: 20.6 KB (20604 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine3.24` - linux; s390x

```console
$ docker pull memcached@sha256:91488a004e9f64eab2de7981c01b0ef3d2a1ebdd1d8ea3083e271daedb930899
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5836268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0748d0499cbde3582cbe42af5f573a3d87f870eaf9e73ab35ba83a1fb00f4a5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:24:50 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 22:24:50 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 22:27:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 22:27:56 GMT
USER memcache
# Thu, 17 Sep 2026 22:27:56 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 22:27:56 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b28ab774b98a6f29932df606a1298015f0217cceaaf48cc8b4da1a712d16dec7`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f57210d60c5d0de49a458685c32d457593dd9dc3fbe5da5e916010a9723a733`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 114.3 KB (114287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bc4422a0f2f7f71932333a312da7ab0d836e17d66ed95f5a8983d3bf0d15f4e`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 2.0 MB (2005290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45e7a27d33ae9a3ad3b5c6a329d295e218eb317d67093226b27351835b2294fd`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859163942310d61c18cdaf7abeee7b475bf01a0e6d71b759d0e9485489273ad7`  
		Last Modified: Thu, 17 Sep 2026 22:28:05 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:6684f08661c99d1a72d49a7c23c27dbb132abe46ecca960eab055413ae4430ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2a3ade50f032040600c3160b104c07040707b6172447f1ff8be2d0b43aee484`

```dockerfile
```

-	Layers:
	-	`sha256:2348ae961439981a5f9d7a98117febd705c8fd5ed703c60ba55e6302e0939ad0`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40f2ae73c6298b67d61ba80635c258460fd84b74fab96b4bda97def3dcde3994`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6.45-trixie`

```console
$ docker pull memcached@sha256:2046d6d2eb7cbd59470b533a101cbd67def3e718b04eb72478306dbc804a3171
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

### `memcached:1.6.45-trixie` - linux; amd64

```console
$ docker pull memcached@sha256:c9f95360aa3e64f836956defe064352c9045c54d3f2dda34590a68e042927a5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32267918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f34c06c3fd851fa86d3e7555b408164af6b4b4b47ee11aa7dc0bca734e7a71aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:19:32 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:19:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:22:16 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:22:16 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:22:16 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:22:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:22:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:22:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:22:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:22:16 GMT
USER memcache
# Tue, 06 Oct 2026 01:22:16 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:22:16 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e079f3032daaade186d2131f9f18bb2c0f9935ab855336f423301f61d6e7b328`  
		Last Modified: Tue, 06 Oct 2026 01:22:22 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d40ad5a129f0aa6c523fe06d1708562030b3c6fa97cb31740c9e5ee7bf3ba534`  
		Last Modified: Tue, 06 Oct 2026 01:22:22 GMT  
		Size: 136.7 KB (136713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbe007d027e93139ff939ece02bc51476de66b1d5b505899c169d13775d510a0`  
		Last Modified: Tue, 06 Oct 2026 01:22:23 GMT  
		Size: 2.3 MB (2286344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86cf65cc96233c2b4aadc77c4c33b88129a2b62f64b9c5a021699e3eb28ebee5`  
		Last Modified: Tue, 06 Oct 2026 01:22:22 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d2d4760f47202c0b45135bb9d7ff59c58459e7ad99594786be531b150f555b6`  
		Last Modified: Tue, 06 Oct 2026 01:22:23 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:6fa0fc0329372d3ab73426a81eb03684ac37b6b44ce464f0c08ca9676c60de82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f09a49d1eaaf775f21be83947a61998647107aac63f88a4042ec77e4dbbd1ec`

```dockerfile
```

-	Layers:
	-	`sha256:b1092fc97cef42727e9036fe522d7ed2633633985bbaac4829c91acd129da3a6`  
		Last Modified: Tue, 06 Oct 2026 01:22:23 GMT  
		Size: 2.0 MB (2014332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ab446710960dba37f7b51a6eb0f7bc842602da0824da26225b23926dedefbdc`  
		Last Modified: Tue, 06 Oct 2026 01:22:22 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; arm variant v5

```console
$ docker pull memcached@sha256:f99f30eaf4a8f67b996c41f49fec4c0e4a16523901b3564394d631c35b2ccfed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30370459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ce918c60a86aa9267194a8f22739fa01607bf2c26fc25c89e64ffc01852b2f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:18:18 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:18:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:21:40 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:21:40 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:21:40 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:21:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:21:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:21:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:21:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:21:40 GMT
USER memcache
# Tue, 06 Oct 2026 01:21:40 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:21:40 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:cb79ce05d3152dc6f7b8608f1f449aa1fbf1541a5dff435139649d755dd23d93`  
		Last Modified: Tue, 06 Oct 2026 00:13:24 GMT  
		Size: 28.0 MB (28007486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0fc4c700738b0949f606b6b5601896930602894413dfc8db3b37f5bfc541a14`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a25abe783152ae88c84222cd52a115baf6ea0a88846f910d6128500df7103939`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 144.2 KB (144200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1ce858ea6db063b480bff4a3baafcc483f5817f7c4d1be66827c87c7d43b2d9`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 2.2 MB (2217261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2bdc54165033126966499027bdd3c11823f028488c41440ea755d764b21bbdd`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c3604de1f39f6d0df3b8a994bdf608a0e366a8633c1ed5551de0bdc2deb117d`  
		Last Modified: Tue, 06 Oct 2026 01:21:47 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:14fead2feed9bed8d15c272d3b4c45100e99e1a2da41c7c0dcce6d6dfca0852d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2039639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecbbdca80f1a7bc00d9cd9bba88060ee0fd9344a138a0aeed9817b4b443f39e3`

```dockerfile
```

-	Layers:
	-	`sha256:238b5082fef01c1b58fdb77c003c03415636e326c699af155126cfd037145511`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 2.0 MB (2017335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9df37609ab40ce96bcd6822f2a492aff1b99b73c211416d45a104e62aba1152c`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; arm variant v7

```console
$ docker pull memcached@sha256:2a0f066db5ab04bcc02e20ea0552bbb943884c32ceb014761763c8b713a8a410
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28566690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d6dc33010f19ca987a03eda3ed24aa29fe95ec521260ddadc1fec5883a5ee70`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:20:47 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:20:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:23:58 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:23:58 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:23:58 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:23:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:23:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:23:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:23:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:23:58 GMT
USER memcache
# Tue, 06 Oct 2026 01:23:58 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:23:58 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf458570d1c1ac6b3a5d06336f964b504bc7d5902622370f11291826321cd43f`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1b651e6ccfc4a1084deaae487cb9dec23a117ddfdb2c0fd2e82df5c8b57fcc3`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 135.4 KB (135386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc87fbda19f8ce41e669327ace6c6db485589566dae2ddb46b94a4243e656b25`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 2.2 MB (2171612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f08eca3251dd91c45d7f3898d2e97fe9e7d9d6d8d96b1981e652aa291e568d56`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ffd165e448c27fa217b74d7788471a856372780f9650a32ea2ed4473541ff7`  
		Last Modified: Tue, 06 Oct 2026 01:24:05 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:86eb842ad2b9bd0e5c38e7648723ba6df9f9b92c122a5689a24918189ad30a41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2038096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec25db8cea0645c1ab26371aec6335b17af7efe5f6eaaf8e6e3ff29936dd1815`

```dockerfile
```

-	Layers:
	-	`sha256:10f4ca9afa8376b15d1ad34282553df796975282b3cd3a46f94c45371f553cb6`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 2.0 MB (2015792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bea6373013b6cf4d05758d03fe9be9432f173977b5b83e71a96e166847cbe4f4`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:db1095291332bd58c0551af962f8940dce18d87e5ba4ff6ba9e2a901819d9c25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32622142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9207469bca7f44aecf7bff570002ede8e626e06e0cb25fa008268f97f644c75b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:19:35 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:19:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:22:35 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:22:35 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:22:35 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:22:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:22:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:22:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:22:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:22:35 GMT
USER memcache
# Tue, 06 Oct 2026 01:22:35 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:22:35 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:620da5091547ba64520d491a8b6b517cce0a3d474388b1f49bf7bf9e118d85bd`  
		Last Modified: Tue, 06 Oct 2026 01:22:41 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fae4064dd7b1370d85a82720c9a3acc9c925624f20ad91e204783b10a2ec3dfe`  
		Last Modified: Tue, 06 Oct 2026 01:22:41 GMT  
		Size: 153.5 KB (153527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6950f6af6542268dc492c1c5bbfcccef50b35f40596d348b86b238b824c1b19`  
		Last Modified: Tue, 06 Oct 2026 01:22:42 GMT  
		Size: 2.3 MB (2266820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68b55d7d01f6f7371c44460d3c04b7dd27e5d002dda63ab81d2931d02e2ffa78`  
		Last Modified: Tue, 06 Oct 2026 01:22:42 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b26a56b8e9216c4807b9c2bf095d1b3a5df29b13206a2098db60b1d90958f853`  
		Last Modified: Tue, 06 Oct 2026 01:22:43 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:d0649d2335af9e7e2a93517db111e263cd510a676fd1f13ea439a6d10362606c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fbb64c2b568e3c52baac2d8e24e2d2af7dd0063e821826e0e534070f0938e61`

```dockerfile
```

-	Layers:
	-	`sha256:bde99632d639c60d280adfc23727596b782215923117bffba5efc9a0f34480c7`  
		Last Modified: Tue, 06 Oct 2026 01:22:42 GMT  
		Size: 2.0 MB (2014640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b79d8c6a0d2eb65369ee6909525df3324d7fdfd7dd1c7e2b5f236d2d4bc9ac5`  
		Last Modified: Tue, 06 Oct 2026 01:22:42 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; 386

```console
$ docker pull memcached@sha256:aaf3189188869f4a3ccfde0f2610fd595011df2eb449251fb909a86f4220ab8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33733530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a90759960ac97d23dcce664286754ba1a507a4e61399c7fc40f1cac308182f17`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:17:26 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:17:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:20:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:20:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:20:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:20:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:20:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:20:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:20:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:20:24 GMT
USER memcache
# Tue, 06 Oct 2026 01:20:24 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:20:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78226cd621a6dc04a3c52ac5bd710b236b7e84dac2be795ed78f6270e06d5d58`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d9f6771133e91a6c72f1c941b3ca5ad178f310aa70cc67e1f45404ce10f466a`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 147.5 KB (147545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d960652d73e72b9de15a4cd637e7c31ab99b80b0de6ed50167dec7fd0b695a0b`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 2.2 MB (2231174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1a6c5315b066087aabdf4ff7fa5679a0cf33066a165cbab8cc1febe9334b403`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd2d66ec395c65b79cd82bfa9f5feee129c872bfc5a5e2c01eb6cdd967ce418`  
		Last Modified: Tue, 06 Oct 2026 01:20:31 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:715096757feec34ae4e6782045183cdfd41a9f66408fc8d67c5ab4340c457bd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba50a99f65e30b177a771da6a3d0404f45696a36b8ad29e54d4ae4ba06b5c1b8`

```dockerfile
```

-	Layers:
	-	`sha256:660aa37bc36843d550abc12f4ec61b3ae98b4ca4b38e327f60a211bf33d3173b`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 2.0 MB (2011489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2d7da2372f7dde1b48c8a8574856970d7adedf4c27a4afaefe0777877499fb5`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; ppc64le

```console
$ docker pull memcached@sha256:5f415587997b8e0f1a561a915d39e9bcdf22d98679c052071c9698ccbbf9d39b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.7 MB (36704053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87adc0c99e19a7a8da27980c7cf9b7aa831c6637f29a6a1e4bb0999f373d5499`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:39:24 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:39:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:04:32 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 02:04:32 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 02:04:32 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 02:04:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 02:04:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:04:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 02:04:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:04:35 GMT
USER memcache
# Tue, 06 Oct 2026 02:04:35 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 02:04:35 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6164d46e47235d7fd1edd7229d8f1bd765481418398465b98253d9736ec3c547`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a390cebd7020aa0d191036b56766e99b9877018eb509ea16b5448462b2ec449`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 170.4 KB (170390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3543f360a3c5a2967473a8b3f42e23c2e0c39d76ccf2f0abdbd4d683ccd3431`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 2.9 MB (2880549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6137beede6ddbecbc997c4db4ae5f39982a5a04a6921ddb419819b79469ae7d0`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f76d35c3739a1f5ca7a71bad3b15cd71a8d162428348592a7c9da5d28f34765`  
		Last Modified: Tue, 06 Oct 2026 02:05:04 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:257156567aeea78272834db591a21e418aeec1cb24edb73e54de3159465d836d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2040160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06ea07e913ac58a382529edbdc77bb6f3a94c58a5c91c09165d5e7b999f701ec`

```dockerfile
```

-	Layers:
	-	`sha256:8a367b2965262ace978c86ced51b2dc153aa2206f6c4f9400a013ba78df77d3d`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 2.0 MB (2017933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:74137664ae61f8b59bed7b2fa9df763c2ca13444ece2eba6077f57dba40a3d90`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; riscv64

```console
$ docker pull memcached@sha256:8656a4a311e8931b683fc70198a24d869bbe722750d6fc07c83f9e7237b478c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30681766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21bb47e315c736689f7d9dea92f8e99cfe69d4374074794c3b1a025fb47e7a71`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 07:21:32 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 07:22:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 07:55:26 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 07:55:26 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 07:55:26 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 07:55:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 07:55:27 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 07:55:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 07:55:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 07:55:27 GMT
USER memcache
# Tue, 06 Oct 2026 07:55:27 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 07:55:27 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21d459eef25729476a15d9c2a71497e61fe2c1196ce2b0a061be33003a44ae81`  
		Last Modified: Tue, 06 Oct 2026 07:56:25 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:263b253257e5b7560b41f9faa680bfdd51b7cff710244248157851b53d5c6aa5`  
		Last Modified: Tue, 06 Oct 2026 07:56:24 GMT  
		Size: 133.1 KB (133127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bc0a71aadf0f4e2b01e90f2bc8deff83e567c95a01aa9ee2f63a2aa9b78181d`  
		Last Modified: Tue, 06 Oct 2026 07:56:25 GMT  
		Size: 2.2 MB (2213364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf6adaa4db7702afeeff21184d36c11cb9b535da6897e7c20fb6b715bcfdea7c`  
		Last Modified: Tue, 06 Oct 2026 07:56:24 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c52b03c9f42bf5cc7e456fe818e7d30afca4a4aafdeb44fa0909799871255978`  
		Last Modified: Tue, 06 Oct 2026 07:56:26 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:77be1f72ce3d91c4c7c73cd87f8878f429e7d3d34618f913d85362946d18cc14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b833cdf252d8ef60135fb683ad467b12dba50840f19d3fad115113cc8b3612b`

```dockerfile
```

-	Layers:
	-	`sha256:1196e2adc1677841feebedecd6d0432decb685bdab29f5bafa15a9bf1abfcddb`  
		Last Modified: Tue, 06 Oct 2026 07:56:25 GMT  
		Size: 2.0 MB (2008296 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad5fac857c1ca1386708151b7fc10b65c7d061ad865939ed8c614ee0929c753a`  
		Last Modified: Tue, 06 Oct 2026 07:56:24 GMT  
		Size: 22.2 KB (22226 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; s390x

```console
$ docker pull memcached@sha256:60efa47221d8959fc57e5a883a13a0cdbd4c6c2c106fb75b43cb48c0a93badcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32352682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fdb24e98011f7cc5569c516a3fd13bdf2768a566e90affe67ee8620fd761173`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:16:36 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:16:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:19:49 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:19:49 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:19:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:19:49 GMT
USER memcache
# Tue, 06 Oct 2026 01:19:49 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:19:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:fd14e6ce0256b9093e480e6146009effeb6c2bc486ff0052d50a32cbab8335fc`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 29.9 MB (29909247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9eee2ff929ea4e7ec919f80e7190bae923598fa62b8353765197bc11ea5a486`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36b740724da913e5a0891835dd7f5882ee3431869ff315c5d470924c36a412ce`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 140.5 KB (140516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a13b7ad2fafa15b3e37dc61ffe8e8a697b0e775edc6e1de88ba91f558e7faf20`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 2.3 MB (2301406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d53df8fb22e01bbb39ceb207639fc38f6f6e44053037d57e9616b0f22380bce`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5378341f5e20367bd2680911105891faeeda0d235ae58c94101d2253a616814`  
		Last Modified: Tue, 06 Oct 2026 01:20:00 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:90b4789ca09efcc93d0068d240f0acb339dc8d4afa13951cb103a2cbe5329276
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d301a021e72bdde47c24ea7b9f7168d0dcad77663582a1b44d8164cd505b1ae`

```dockerfile
```

-	Layers:
	-	`sha256:58444f61165c9d6f2dc18ea544c9788885fbf0f3fe3af01dce90eb14eac020b9`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 2.0 MB (2015769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5e7acc93643035fc7961ac9b6f7c3514ffa025c8aa43dd09cdc4c1b8b6c79de`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 22.2 KB (22152 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:alpine`

```console
$ docker pull memcached@sha256:9e4de012dc607573052061c0bcb38abc775e1dd59b24e7ac38d1892842094aaf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
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

### `memcached:alpine` - linux; amd64

```console
$ docker pull memcached@sha256:aed6c14165dc0ca719495a86db396e4af335199e2bc509cf34197b8eb81e75db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5930141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc3f45e091e88b03ec5a7365defcc1153365adefba32a94161d6faccc029383a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:16:33 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:19:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:19:05 GMT
USER memcache
# Thu, 17 Sep 2026 21:19:05 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:19:05 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51fbbe0527a5a9d13613c8b22f2752a14b91b6092d0173800fb78cdbdf258428`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ddc38e6924e90cccdea0458ce3bad50a286b3f5d5e9c0305e4b92bdbcb0fc0b`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 106.1 KB (106069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11fb880294fac3007e7d5466cb68cdda8db6b8e867e5830f618ba59347084c48`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 2.0 MB (1972988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850056ad91a7eb14a58eb47cbf53170bd6c8cd07d782801b5291119ef8b5b196`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c150f54a299a0e5865f493673e27ba960bfe92b1934d5ca3f45495da216fc7`  
		Last Modified: Thu, 17 Sep 2026 21:19:11 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:102f3093bc6e0dc03c870eefaa1d08375dec1dcaa029b7cdd28e8fc8b230735f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f039df7239fcf88279416238b99fd3f4265ddb7845dea2a532668642ace6dee7`

```dockerfile
```

-	Layers:
	-	`sha256:df58852b59ae3bbcc474c37fbbf4af35ed5328fac4a45547d6dfe1c745b5cf6b`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84c13baa7fdc4605691a3816af63e761060d234a8f3c82fb584e5f2a994f607d`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 20.5 KB (20530 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:8973cb50b646592bc4b4db5c5ba5fafeaedc9a5cc14d4ee0e033501aad18d50e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5580295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ab89ee2938c40874ab847588a7bafedd064247be84b1f2ed13066b41aae89af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:20:55 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:20:56 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:24:01 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:24:01 GMT
USER memcache
# Thu, 17 Sep 2026 21:24:01 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:24:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87a68700291779231aecfd220f9d88723f70443a7e53b3ee6cc7e50331769869`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95cccdcfd4cc608994427c242b2392444f14c8d1b15a3c9573c9b579ec3f251b`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 102.6 KB (102640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c173cc650cff05287311d33f6a47867336f7ed1460693ea0df58ad80f4f904f`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 1.9 MB (1921196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35b9602a9760e8079674d25e1275b8b248dbd430166307fa22bce8f18e15615e`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af8021c2cf11f0eabbe2f38ce25544bd0338d0d216e3a31cb4c67145e48a2884`  
		Last Modified: Thu, 17 Sep 2026 21:24:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:a3dc4759b806fd595aedee968574f6d30b81786fae6f02a5ed5fd3de9a435ac2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6389c8a7a95dbe7874d26cc6d210d709d1d2d7918af74b99fbb9682526c8792`

```dockerfile
```

-	Layers:
	-	`sha256:b330c577900be61f94c9bdbc4264d33e0b1c8c4da085bad9165206c011cc083d`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; arm variant v7

```console
$ docker pull memcached@sha256:4698047b9c210750e16e07db091be4b5f72b595c820e6e846e7188ba0b386609
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5239338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f84a27cb8b2508b216332970f0618a4915ada956d79e6fa8d381247023423d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:19:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:19:34 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:22:30 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:22:30 GMT
USER memcache
# Thu, 17 Sep 2026 21:22:30 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:22:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:995431fad1655fd0bda6213201e5a9a96951e71f4f86618d35615eec52332190`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4785d6c6095884eacbe5558dcdc121bca474e6125a08dfafa2cf70e87894ebd3`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 92.4 KB (92374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41440d665d2ba596c0e09c2045809a58916edd2537e8f804e5a17764fb30af6b`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 1.9 MB (1880415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:937240234e98ecd679cf903fc7c7aa62d14ae776d7eba3b2d8ee806456cb5825`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64428be47e9234c7141e9537d621fe415c0e0e6a11e600c188c8204de36af99e`  
		Last Modified: Thu, 17 Sep 2026 21:22:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:f299ad7470f58ee154752703c7b7a09cfdeddcd1068ccbb69b7620a7f2cdb992
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b60f46873c9939d84f06a78729773d4cf55de1e87ac0e9a081e8febade8b26a2`

```dockerfile
```

-	Layers:
	-	`sha256:d77ba4f589d860c72847322877d5b8c550270a2389bd2850e29fc66026488ff3`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10c142ee87947b5a89569925c281a9eb621090b0624c5864032bc312ed2afdc5`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:31462f1ea73a0a29772ae6f32be7124da9c2a9683ae24d802bfcc54041550c76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6262017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dd5bd4099e3cca31288437e2dd63d71878251e9a528afa6064a7fc061fd0d4b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:13:17 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:13:18 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:16:08 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:16:08 GMT
USER memcache
# Thu, 17 Sep 2026 21:16:08 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:16:08 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb1e88d48d205af89d0d9b1904c6e63a30e855a6f5412935835c74d59a3810f2`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7610f2b35dab65304108892242fdf929182879b48c7ec7e98ade8f72367602a`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 121.9 KB (121854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44405d199511c9c938bef88955579ffc36f5d445db3314a38b68edacfd6f8148`  
		Last Modified: Thu, 17 Sep 2026 21:16:14 GMT  
		Size: 2.0 MB (1951158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81e6109934a7079c68103964d22c882f2bcbaa12b72eb28215df5a5a85da515c`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:746a12191622835cb3173ad754db60d1b994fca18162459d7f747de35b65420e`  
		Last Modified: Thu, 17 Sep 2026 21:16:14 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:d2a1e3c664b5a5358e65793068ee3a463b1e2fe9decf1756e18c2b3be7144999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7531bf2f8de67b5bb43c901a077c5edfd30a29cccf14c8c0529c7a6a7077358a`

```dockerfile
```

-	Layers:
	-	`sha256:7362abb71609190210ea3be48c0203576b7a05be93a91a20193a25f2518aa82e`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee7723224e4a1ff2a4c3dd74e9fc725ddcc2ceeb9a645ac99ce84a861893b52a`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 20.7 KB (20727 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; 386

```console
$ docker pull memcached@sha256:4afb6580c24ce2632634356a9c937b496b8743e066378fc23d8913fcb200f432
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5717122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22be399c981a2a59830540f0047af1bc959ef8e8126c47fac9e18ea3faf37bb3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:36 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:15:36 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:18:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:18:24 GMT
USER memcache
# Thu, 17 Sep 2026 21:18:24 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:18:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de5a1555078fa5282f5a803b64f0e79189413537a752f4474488fd16413384bd`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e7199937599d0cbc9b3195d82ef0b3d4de6c3e0cc321dec80d52c622beab351`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 110.7 KB (110733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a21a73ed462e36058c3afb00410805dbeac8749d3c7eba98d19fde8cac202d2e`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 1.9 MB (1928259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3af84ae0a647f9eb5f6bdee46d460c064ef97e3238c053e9c78d3ffc1e5b9d87`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0965a9fe7f7f140845e67596ab02a4927d97bf25d44bbee1aaf6f10d370f8600`  
		Last Modified: Thu, 17 Sep 2026 21:18:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:d89f57316668a586ea578ed614cdc7ce13fff224c626ac06c9ac3dea42601a04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8b6ffba2b1dcfd03338d94840ba3fc7e43dc4ad9d16e97ab8c9297fb3fdb424`

```dockerfile
```

-	Layers:
	-	`sha256:4e8c5777c38b16385e0fa1aa5dc68e59b3f668641ffcf0e3f7daa467d10e60f7`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d8caad469a2d8d8f1e6c35f144d71bcb8985515d1bd90eab44f60991c58a727`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:9a0437672c246d127b1782f10a801ce0db757ac74f367b84553c96b2be7cb5f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6010090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:512f89eee8246394b1b5628094edf12aca1099208a7cae259a3eb56156e0693b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:30:23 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:30:24 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:53:31 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:53:31 GMT
USER memcache
# Thu, 17 Sep 2026 21:53:31 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:53:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9164e851bf437772ce842921040227ac7487b00f22d00cd6763636f330964202`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0995f3b36f83b7959f49f1761f6c225138a2b065c268d83d0c3d0a87388bc617`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 126.3 KB (126261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c93a3f94f5c6d12261d3f31e57bad38b61e9ff3be47164a599318d71615f9a02`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 2.1 MB (2065002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc74b243580138ee3b28fd11e87cb70e99beb61a59b8dc49871b4d86a8706b5`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b494ff94eeffbb1f72c70e1b578480f7c72ad4a6bcc5bc42ba105b3e1278d3b`  
		Last Modified: Thu, 17 Sep 2026 21:53:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:f80e28a730a608ba861ca92c6a4227987495a1441e641cd1bf23b1b82144c6fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b415f70b85d9e9b283614528065ba6acee2673d8c7ce30c575ef4dc9e686258b`

```dockerfile
```

-	Layers:
	-	`sha256:03bc6ab3f08099a9ee4128175887a1c8577344a9bbaade3317621fbc2e51c40e`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc2ab6e0e8c7ae32bfe2026593c785e0b1175d0468ba31e9b9c736478a378917`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; riscv64

```console
$ docker pull memcached@sha256:b655eb23860c9f5cd8820dc15391d6c85f5c4001c69fb484b508a7a6c0b2ccf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5745298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55b8dced45037bb279c8b4b7c6173dd938bb75674f945d9f8554ffed1b752ca6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Sat, 19 Sep 2026 06:17:46 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Sat, 19 Sep 2026 06:17:50 GMT
RUN apk add --no-cache libsasl # buildkit
# Sat, 19 Sep 2026 07:00:09 GMT
ENV MEMCACHED_VERSION=1.6.45
# Sat, 19 Sep 2026 07:00:09 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Sat, 19 Sep 2026 07:00:09 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Sat, 19 Sep 2026 07:00:09 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Sat, 19 Sep 2026 07:00:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 07:00:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Sat, 19 Sep 2026 07:00:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 07:00:09 GMT
USER memcache
# Sat, 19 Sep 2026 07:00:09 GMT
EXPOSE map[11211/tcp:{}]
# Sat, 19 Sep 2026 07:00:09 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:64f7f08b6763becdda2e72bfacdfd36663e4847bc6fdb366336127620012bc02`  
		Last Modified: Fri, 18 Sep 2026 16:49:42 GMT  
		Size: 3.6 MB (3575371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50696ee7fd6dd6a48287f1be319d7356f1aab635568394ca3f5d932466f8bc69`  
		Last Modified: Sat, 19 Sep 2026 07:00:33 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f37eda83220efe3380370c6043e0694c7ff2ccf346970849bf28d6897aeb60f5`  
		Last Modified: Sat, 19 Sep 2026 07:00:34 GMT  
		Size: 108.9 KB (108897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3259f74c8597dcf889fea8d8e6a0221da5289a45dac4f2851502a79b91f4a1f`  
		Last Modified: Sat, 19 Sep 2026 07:00:34 GMT  
		Size: 2.1 MB (2059672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bced3b020a43d00c9ff35fc2ff7e2abbc320776123d4e75d5ba63bdbde9992f`  
		Last Modified: Sat, 19 Sep 2026 07:00:34 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c55e359dc42a43fbf052b329a4eaa4484f898a931a8caff3b10d2211ebcaf55`  
		Last Modified: Sat, 19 Sep 2026 07:00:35 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:4156ffa9a211bd5adbd087c9f683e974870966536c1ae129337da66360b95151
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a4f0ecd5f404f87006c9e26865243a7998e2aafa80a461dd9752c041697bf2c`

```dockerfile
```

-	Layers:
	-	`sha256:c6980ceb4c4153eb9d97e749ed0af9b20c568aae526989597ec81e90c3b06ad9`  
		Last Modified: Sat, 19 Sep 2026 07:00:33 GMT  
		Size: 94.3 KB (94300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82e8e25f4832f3505dd2a86cfbdd4fb23a849b2a41c2a65539cc5fc2e5c853a0`  
		Last Modified: Sat, 19 Sep 2026 07:00:33 GMT  
		Size: 20.6 KB (20604 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; s390x

```console
$ docker pull memcached@sha256:91488a004e9f64eab2de7981c01b0ef3d2a1ebdd1d8ea3083e271daedb930899
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5836268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0748d0499cbde3582cbe42af5f573a3d87f870eaf9e73ab35ba83a1fb00f4a5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:24:50 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 22:24:50 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 22:27:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 22:27:56 GMT
USER memcache
# Thu, 17 Sep 2026 22:27:56 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 22:27:56 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b28ab774b98a6f29932df606a1298015f0217cceaaf48cc8b4da1a712d16dec7`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f57210d60c5d0de49a458685c32d457593dd9dc3fbe5da5e916010a9723a733`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 114.3 KB (114287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bc4422a0f2f7f71932333a312da7ab0d836e17d66ed95f5a8983d3bf0d15f4e`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 2.0 MB (2005290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45e7a27d33ae9a3ad3b5c6a329d295e218eb317d67093226b27351835b2294fd`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859163942310d61c18cdaf7abeee7b475bf01a0e6d71b759d0e9485489273ad7`  
		Last Modified: Thu, 17 Sep 2026 22:28:05 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:6684f08661c99d1a72d49a7c23c27dbb132abe46ecca960eab055413ae4430ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2a3ade50f032040600c3160b104c07040707b6172447f1ff8be2d0b43aee484`

```dockerfile
```

-	Layers:
	-	`sha256:2348ae961439981a5f9d7a98117febd705c8fd5ed703c60ba55e6302e0939ad0`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40f2ae73c6298b67d61ba80635c258460fd84b74fab96b4bda97def3dcde3994`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:alpine3.24`

```console
$ docker pull memcached@sha256:9e4de012dc607573052061c0bcb38abc775e1dd59b24e7ac38d1892842094aaf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
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

### `memcached:alpine3.24` - linux; amd64

```console
$ docker pull memcached@sha256:aed6c14165dc0ca719495a86db396e4af335199e2bc509cf34197b8eb81e75db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5930141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc3f45e091e88b03ec5a7365defcc1153365adefba32a94161d6faccc029383a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:16:33 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:19:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:19:05 GMT
USER memcache
# Thu, 17 Sep 2026 21:19:05 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:19:05 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51fbbe0527a5a9d13613c8b22f2752a14b91b6092d0173800fb78cdbdf258428`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ddc38e6924e90cccdea0458ce3bad50a286b3f5d5e9c0305e4b92bdbcb0fc0b`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 106.1 KB (106069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11fb880294fac3007e7d5466cb68cdda8db6b8e867e5830f618ba59347084c48`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 2.0 MB (1972988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850056ad91a7eb14a58eb47cbf53170bd6c8cd07d782801b5291119ef8b5b196`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c150f54a299a0e5865f493673e27ba960bfe92b1934d5ca3f45495da216fc7`  
		Last Modified: Thu, 17 Sep 2026 21:19:11 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:102f3093bc6e0dc03c870eefaa1d08375dec1dcaa029b7cdd28e8fc8b230735f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f039df7239fcf88279416238b99fd3f4265ddb7845dea2a532668642ace6dee7`

```dockerfile
```

-	Layers:
	-	`sha256:df58852b59ae3bbcc474c37fbbf4af35ed5328fac4a45547d6dfe1c745b5cf6b`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84c13baa7fdc4605691a3816af63e761060d234a8f3c82fb584e5f2a994f607d`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 20.5 KB (20530 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; arm variant v6

```console
$ docker pull memcached@sha256:8973cb50b646592bc4b4db5c5ba5fafeaedc9a5cc14d4ee0e033501aad18d50e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5580295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ab89ee2938c40874ab847588a7bafedd064247be84b1f2ed13066b41aae89af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:20:55 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:20:56 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:24:01 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:24:01 GMT
USER memcache
# Thu, 17 Sep 2026 21:24:01 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:24:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87a68700291779231aecfd220f9d88723f70443a7e53b3ee6cc7e50331769869`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95cccdcfd4cc608994427c242b2392444f14c8d1b15a3c9573c9b579ec3f251b`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 102.6 KB (102640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c173cc650cff05287311d33f6a47867336f7ed1460693ea0df58ad80f4f904f`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 1.9 MB (1921196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35b9602a9760e8079674d25e1275b8b248dbd430166307fa22bce8f18e15615e`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af8021c2cf11f0eabbe2f38ce25544bd0338d0d216e3a31cb4c67145e48a2884`  
		Last Modified: Thu, 17 Sep 2026 21:24:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:a3dc4759b806fd595aedee968574f6d30b81786fae6f02a5ed5fd3de9a435ac2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6389c8a7a95dbe7874d26cc6d210d709d1d2d7918af74b99fbb9682526c8792`

```dockerfile
```

-	Layers:
	-	`sha256:b330c577900be61f94c9bdbc4264d33e0b1c8c4da085bad9165206c011cc083d`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; arm variant v7

```console
$ docker pull memcached@sha256:4698047b9c210750e16e07db091be4b5f72b595c820e6e846e7188ba0b386609
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5239338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f84a27cb8b2508b216332970f0618a4915ada956d79e6fa8d381247023423d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:19:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:19:34 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:22:30 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:22:30 GMT
USER memcache
# Thu, 17 Sep 2026 21:22:30 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:22:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:995431fad1655fd0bda6213201e5a9a96951e71f4f86618d35615eec52332190`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4785d6c6095884eacbe5558dcdc121bca474e6125a08dfafa2cf70e87894ebd3`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 92.4 KB (92374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41440d665d2ba596c0e09c2045809a58916edd2537e8f804e5a17764fb30af6b`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 1.9 MB (1880415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:937240234e98ecd679cf903fc7c7aa62d14ae776d7eba3b2d8ee806456cb5825`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64428be47e9234c7141e9537d621fe415c0e0e6a11e600c188c8204de36af99e`  
		Last Modified: Thu, 17 Sep 2026 21:22:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:f299ad7470f58ee154752703c7b7a09cfdeddcd1068ccbb69b7620a7f2cdb992
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b60f46873c9939d84f06a78729773d4cf55de1e87ac0e9a081e8febade8b26a2`

```dockerfile
```

-	Layers:
	-	`sha256:d77ba4f589d860c72847322877d5b8c550270a2389bd2850e29fc66026488ff3`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10c142ee87947b5a89569925c281a9eb621090b0624c5864032bc312ed2afdc5`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:31462f1ea73a0a29772ae6f32be7124da9c2a9683ae24d802bfcc54041550c76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6262017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dd5bd4099e3cca31288437e2dd63d71878251e9a528afa6064a7fc061fd0d4b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:13:17 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:13:18 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:16:08 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:16:08 GMT
USER memcache
# Thu, 17 Sep 2026 21:16:08 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:16:08 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb1e88d48d205af89d0d9b1904c6e63a30e855a6f5412935835c74d59a3810f2`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7610f2b35dab65304108892242fdf929182879b48c7ec7e98ade8f72367602a`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 121.9 KB (121854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44405d199511c9c938bef88955579ffc36f5d445db3314a38b68edacfd6f8148`  
		Last Modified: Thu, 17 Sep 2026 21:16:14 GMT  
		Size: 2.0 MB (1951158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81e6109934a7079c68103964d22c882f2bcbaa12b72eb28215df5a5a85da515c`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:746a12191622835cb3173ad754db60d1b994fca18162459d7f747de35b65420e`  
		Last Modified: Thu, 17 Sep 2026 21:16:14 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:d2a1e3c664b5a5358e65793068ee3a463b1e2fe9decf1756e18c2b3be7144999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7531bf2f8de67b5bb43c901a077c5edfd30a29cccf14c8c0529c7a6a7077358a`

```dockerfile
```

-	Layers:
	-	`sha256:7362abb71609190210ea3be48c0203576b7a05be93a91a20193a25f2518aa82e`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee7723224e4a1ff2a4c3dd74e9fc725ddcc2ceeb9a645ac99ce84a861893b52a`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 20.7 KB (20727 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; 386

```console
$ docker pull memcached@sha256:4afb6580c24ce2632634356a9c937b496b8743e066378fc23d8913fcb200f432
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5717122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22be399c981a2a59830540f0047af1bc959ef8e8126c47fac9e18ea3faf37bb3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:36 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:15:36 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:18:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:18:24 GMT
USER memcache
# Thu, 17 Sep 2026 21:18:24 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:18:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de5a1555078fa5282f5a803b64f0e79189413537a752f4474488fd16413384bd`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e7199937599d0cbc9b3195d82ef0b3d4de6c3e0cc321dec80d52c622beab351`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 110.7 KB (110733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a21a73ed462e36058c3afb00410805dbeac8749d3c7eba98d19fde8cac202d2e`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 1.9 MB (1928259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3af84ae0a647f9eb5f6bdee46d460c064ef97e3238c053e9c78d3ffc1e5b9d87`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0965a9fe7f7f140845e67596ab02a4927d97bf25d44bbee1aaf6f10d370f8600`  
		Last Modified: Thu, 17 Sep 2026 21:18:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:d89f57316668a586ea578ed614cdc7ce13fff224c626ac06c9ac3dea42601a04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8b6ffba2b1dcfd03338d94840ba3fc7e43dc4ad9d16e97ab8c9297fb3fdb424`

```dockerfile
```

-	Layers:
	-	`sha256:4e8c5777c38b16385e0fa1aa5dc68e59b3f668641ffcf0e3f7daa467d10e60f7`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d8caad469a2d8d8f1e6c35f144d71bcb8985515d1bd90eab44f60991c58a727`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; ppc64le

```console
$ docker pull memcached@sha256:9a0437672c246d127b1782f10a801ce0db757ac74f367b84553c96b2be7cb5f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6010090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:512f89eee8246394b1b5628094edf12aca1099208a7cae259a3eb56156e0693b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:30:23 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:30:24 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:53:31 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:53:31 GMT
USER memcache
# Thu, 17 Sep 2026 21:53:31 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:53:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9164e851bf437772ce842921040227ac7487b00f22d00cd6763636f330964202`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0995f3b36f83b7959f49f1761f6c225138a2b065c268d83d0c3d0a87388bc617`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 126.3 KB (126261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c93a3f94f5c6d12261d3f31e57bad38b61e9ff3be47164a599318d71615f9a02`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 2.1 MB (2065002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc74b243580138ee3b28fd11e87cb70e99beb61a59b8dc49871b4d86a8706b5`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b494ff94eeffbb1f72c70e1b578480f7c72ad4a6bcc5bc42ba105b3e1278d3b`  
		Last Modified: Thu, 17 Sep 2026 21:53:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:f80e28a730a608ba861ca92c6a4227987495a1441e641cd1bf23b1b82144c6fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b415f70b85d9e9b283614528065ba6acee2673d8c7ce30c575ef4dc9e686258b`

```dockerfile
```

-	Layers:
	-	`sha256:03bc6ab3f08099a9ee4128175887a1c8577344a9bbaade3317621fbc2e51c40e`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc2ab6e0e8c7ae32bfe2026593c785e0b1175d0468ba31e9b9c736478a378917`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; riscv64

```console
$ docker pull memcached@sha256:b655eb23860c9f5cd8820dc15391d6c85f5c4001c69fb484b508a7a6c0b2ccf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5745298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55b8dced45037bb279c8b4b7c6173dd938bb75674f945d9f8554ffed1b752ca6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Sat, 19 Sep 2026 06:17:46 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Sat, 19 Sep 2026 06:17:50 GMT
RUN apk add --no-cache libsasl # buildkit
# Sat, 19 Sep 2026 07:00:09 GMT
ENV MEMCACHED_VERSION=1.6.45
# Sat, 19 Sep 2026 07:00:09 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Sat, 19 Sep 2026 07:00:09 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Sat, 19 Sep 2026 07:00:09 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Sat, 19 Sep 2026 07:00:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 07:00:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Sat, 19 Sep 2026 07:00:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 07:00:09 GMT
USER memcache
# Sat, 19 Sep 2026 07:00:09 GMT
EXPOSE map[11211/tcp:{}]
# Sat, 19 Sep 2026 07:00:09 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:64f7f08b6763becdda2e72bfacdfd36663e4847bc6fdb366336127620012bc02`  
		Last Modified: Fri, 18 Sep 2026 16:49:42 GMT  
		Size: 3.6 MB (3575371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50696ee7fd6dd6a48287f1be319d7356f1aab635568394ca3f5d932466f8bc69`  
		Last Modified: Sat, 19 Sep 2026 07:00:33 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f37eda83220efe3380370c6043e0694c7ff2ccf346970849bf28d6897aeb60f5`  
		Last Modified: Sat, 19 Sep 2026 07:00:34 GMT  
		Size: 108.9 KB (108897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3259f74c8597dcf889fea8d8e6a0221da5289a45dac4f2851502a79b91f4a1f`  
		Last Modified: Sat, 19 Sep 2026 07:00:34 GMT  
		Size: 2.1 MB (2059672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bced3b020a43d00c9ff35fc2ff7e2abbc320776123d4e75d5ba63bdbde9992f`  
		Last Modified: Sat, 19 Sep 2026 07:00:34 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c55e359dc42a43fbf052b329a4eaa4484f898a931a8caff3b10d2211ebcaf55`  
		Last Modified: Sat, 19 Sep 2026 07:00:35 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:4156ffa9a211bd5adbd087c9f683e974870966536c1ae129337da66360b95151
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a4f0ecd5f404f87006c9e26865243a7998e2aafa80a461dd9752c041697bf2c`

```dockerfile
```

-	Layers:
	-	`sha256:c6980ceb4c4153eb9d97e749ed0af9b20c568aae526989597ec81e90c3b06ad9`  
		Last Modified: Sat, 19 Sep 2026 07:00:33 GMT  
		Size: 94.3 KB (94300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82e8e25f4832f3505dd2a86cfbdd4fb23a849b2a41c2a65539cc5fc2e5c853a0`  
		Last Modified: Sat, 19 Sep 2026 07:00:33 GMT  
		Size: 20.6 KB (20604 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; s390x

```console
$ docker pull memcached@sha256:91488a004e9f64eab2de7981c01b0ef3d2a1ebdd1d8ea3083e271daedb930899
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5836268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0748d0499cbde3582cbe42af5f573a3d87f870eaf9e73ab35ba83a1fb00f4a5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:24:50 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 22:24:50 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 22:27:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 22:27:56 GMT
USER memcache
# Thu, 17 Sep 2026 22:27:56 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 22:27:56 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b28ab774b98a6f29932df606a1298015f0217cceaaf48cc8b4da1a712d16dec7`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f57210d60c5d0de49a458685c32d457593dd9dc3fbe5da5e916010a9723a733`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 114.3 KB (114287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bc4422a0f2f7f71932333a312da7ab0d836e17d66ed95f5a8983d3bf0d15f4e`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 2.0 MB (2005290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45e7a27d33ae9a3ad3b5c6a329d295e218eb317d67093226b27351835b2294fd`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859163942310d61c18cdaf7abeee7b475bf01a0e6d71b759d0e9485489273ad7`  
		Last Modified: Thu, 17 Sep 2026 22:28:05 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:6684f08661c99d1a72d49a7c23c27dbb132abe46ecca960eab055413ae4430ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2a3ade50f032040600c3160b104c07040707b6172447f1ff8be2d0b43aee484`

```dockerfile
```

-	Layers:
	-	`sha256:2348ae961439981a5f9d7a98117febd705c8fd5ed703c60ba55e6302e0939ad0`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40f2ae73c6298b67d61ba80635c258460fd84b74fab96b4bda97def3dcde3994`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:latest`

```console
$ docker pull memcached@sha256:2046d6d2eb7cbd59470b533a101cbd67def3e718b04eb72478306dbc804a3171
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

### `memcached:latest` - linux; amd64

```console
$ docker pull memcached@sha256:c9f95360aa3e64f836956defe064352c9045c54d3f2dda34590a68e042927a5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32267918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f34c06c3fd851fa86d3e7555b408164af6b4b4b47ee11aa7dc0bca734e7a71aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:19:32 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:19:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:22:16 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:22:16 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:22:16 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:22:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:22:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:22:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:22:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:22:16 GMT
USER memcache
# Tue, 06 Oct 2026 01:22:16 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:22:16 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e079f3032daaade186d2131f9f18bb2c0f9935ab855336f423301f61d6e7b328`  
		Last Modified: Tue, 06 Oct 2026 01:22:22 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d40ad5a129f0aa6c523fe06d1708562030b3c6fa97cb31740c9e5ee7bf3ba534`  
		Last Modified: Tue, 06 Oct 2026 01:22:22 GMT  
		Size: 136.7 KB (136713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbe007d027e93139ff939ece02bc51476de66b1d5b505899c169d13775d510a0`  
		Last Modified: Tue, 06 Oct 2026 01:22:23 GMT  
		Size: 2.3 MB (2286344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86cf65cc96233c2b4aadc77c4c33b88129a2b62f64b9c5a021699e3eb28ebee5`  
		Last Modified: Tue, 06 Oct 2026 01:22:22 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d2d4760f47202c0b45135bb9d7ff59c58459e7ad99594786be531b150f555b6`  
		Last Modified: Tue, 06 Oct 2026 01:22:23 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:6fa0fc0329372d3ab73426a81eb03684ac37b6b44ce464f0c08ca9676c60de82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f09a49d1eaaf775f21be83947a61998647107aac63f88a4042ec77e4dbbd1ec`

```dockerfile
```

-	Layers:
	-	`sha256:b1092fc97cef42727e9036fe522d7ed2633633985bbaac4829c91acd129da3a6`  
		Last Modified: Tue, 06 Oct 2026 01:22:23 GMT  
		Size: 2.0 MB (2014332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ab446710960dba37f7b51a6eb0f7bc842602da0824da26225b23926dedefbdc`  
		Last Modified: Tue, 06 Oct 2026 01:22:22 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; arm variant v5

```console
$ docker pull memcached@sha256:f99f30eaf4a8f67b996c41f49fec4c0e4a16523901b3564394d631c35b2ccfed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30370459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ce918c60a86aa9267194a8f22739fa01607bf2c26fc25c89e64ffc01852b2f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:18:18 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:18:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:21:40 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:21:40 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:21:40 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:21:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:21:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:21:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:21:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:21:40 GMT
USER memcache
# Tue, 06 Oct 2026 01:21:40 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:21:40 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:cb79ce05d3152dc6f7b8608f1f449aa1fbf1541a5dff435139649d755dd23d93`  
		Last Modified: Tue, 06 Oct 2026 00:13:24 GMT  
		Size: 28.0 MB (28007486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0fc4c700738b0949f606b6b5601896930602894413dfc8db3b37f5bfc541a14`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a25abe783152ae88c84222cd52a115baf6ea0a88846f910d6128500df7103939`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 144.2 KB (144200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1ce858ea6db063b480bff4a3baafcc483f5817f7c4d1be66827c87c7d43b2d9`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 2.2 MB (2217261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2bdc54165033126966499027bdd3c11823f028488c41440ea755d764b21bbdd`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c3604de1f39f6d0df3b8a994bdf608a0e366a8633c1ed5551de0bdc2deb117d`  
		Last Modified: Tue, 06 Oct 2026 01:21:47 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:14fead2feed9bed8d15c272d3b4c45100e99e1a2da41c7c0dcce6d6dfca0852d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2039639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecbbdca80f1a7bc00d9cd9bba88060ee0fd9344a138a0aeed9817b4b443f39e3`

```dockerfile
```

-	Layers:
	-	`sha256:238b5082fef01c1b58fdb77c003c03415636e326c699af155126cfd037145511`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 2.0 MB (2017335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9df37609ab40ce96bcd6822f2a492aff1b99b73c211416d45a104e62aba1152c`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; arm variant v7

```console
$ docker pull memcached@sha256:2a0f066db5ab04bcc02e20ea0552bbb943884c32ceb014761763c8b713a8a410
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28566690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d6dc33010f19ca987a03eda3ed24aa29fe95ec521260ddadc1fec5883a5ee70`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:20:47 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:20:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:23:58 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:23:58 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:23:58 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:23:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:23:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:23:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:23:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:23:58 GMT
USER memcache
# Tue, 06 Oct 2026 01:23:58 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:23:58 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf458570d1c1ac6b3a5d06336f964b504bc7d5902622370f11291826321cd43f`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1b651e6ccfc4a1084deaae487cb9dec23a117ddfdb2c0fd2e82df5c8b57fcc3`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 135.4 KB (135386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc87fbda19f8ce41e669327ace6c6db485589566dae2ddb46b94a4243e656b25`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 2.2 MB (2171612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f08eca3251dd91c45d7f3898d2e97fe9e7d9d6d8d96b1981e652aa291e568d56`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ffd165e448c27fa217b74d7788471a856372780f9650a32ea2ed4473541ff7`  
		Last Modified: Tue, 06 Oct 2026 01:24:05 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:86eb842ad2b9bd0e5c38e7648723ba6df9f9b92c122a5689a24918189ad30a41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2038096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec25db8cea0645c1ab26371aec6335b17af7efe5f6eaaf8e6e3ff29936dd1815`

```dockerfile
```

-	Layers:
	-	`sha256:10f4ca9afa8376b15d1ad34282553df796975282b3cd3a46f94c45371f553cb6`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 2.0 MB (2015792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bea6373013b6cf4d05758d03fe9be9432f173977b5b83e71a96e166847cbe4f4`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:db1095291332bd58c0551af962f8940dce18d87e5ba4ff6ba9e2a901819d9c25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32622142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9207469bca7f44aecf7bff570002ede8e626e06e0cb25fa008268f97f644c75b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:19:35 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:19:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:22:35 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:22:35 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:22:35 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:22:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:22:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:22:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:22:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:22:35 GMT
USER memcache
# Tue, 06 Oct 2026 01:22:35 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:22:35 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:620da5091547ba64520d491a8b6b517cce0a3d474388b1f49bf7bf9e118d85bd`  
		Last Modified: Tue, 06 Oct 2026 01:22:41 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fae4064dd7b1370d85a82720c9a3acc9c925624f20ad91e204783b10a2ec3dfe`  
		Last Modified: Tue, 06 Oct 2026 01:22:41 GMT  
		Size: 153.5 KB (153527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6950f6af6542268dc492c1c5bbfcccef50b35f40596d348b86b238b824c1b19`  
		Last Modified: Tue, 06 Oct 2026 01:22:42 GMT  
		Size: 2.3 MB (2266820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68b55d7d01f6f7371c44460d3c04b7dd27e5d002dda63ab81d2931d02e2ffa78`  
		Last Modified: Tue, 06 Oct 2026 01:22:42 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b26a56b8e9216c4807b9c2bf095d1b3a5df29b13206a2098db60b1d90958f853`  
		Last Modified: Tue, 06 Oct 2026 01:22:43 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:d0649d2335af9e7e2a93517db111e263cd510a676fd1f13ea439a6d10362606c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fbb64c2b568e3c52baac2d8e24e2d2af7dd0063e821826e0e534070f0938e61`

```dockerfile
```

-	Layers:
	-	`sha256:bde99632d639c60d280adfc23727596b782215923117bffba5efc9a0f34480c7`  
		Last Modified: Tue, 06 Oct 2026 01:22:42 GMT  
		Size: 2.0 MB (2014640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b79d8c6a0d2eb65369ee6909525df3324d7fdfd7dd1c7e2b5f236d2d4bc9ac5`  
		Last Modified: Tue, 06 Oct 2026 01:22:42 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; 386

```console
$ docker pull memcached@sha256:aaf3189188869f4a3ccfde0f2610fd595011df2eb449251fb909a86f4220ab8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33733530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a90759960ac97d23dcce664286754ba1a507a4e61399c7fc40f1cac308182f17`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:17:26 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:17:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:20:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:20:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:20:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:20:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:20:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:20:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:20:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:20:24 GMT
USER memcache
# Tue, 06 Oct 2026 01:20:24 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:20:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78226cd621a6dc04a3c52ac5bd710b236b7e84dac2be795ed78f6270e06d5d58`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d9f6771133e91a6c72f1c941b3ca5ad178f310aa70cc67e1f45404ce10f466a`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 147.5 KB (147545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d960652d73e72b9de15a4cd637e7c31ab99b80b0de6ed50167dec7fd0b695a0b`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 2.2 MB (2231174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1a6c5315b066087aabdf4ff7fa5679a0cf33066a165cbab8cc1febe9334b403`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd2d66ec395c65b79cd82bfa9f5feee129c872bfc5a5e2c01eb6cdd967ce418`  
		Last Modified: Tue, 06 Oct 2026 01:20:31 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:715096757feec34ae4e6782045183cdfd41a9f66408fc8d67c5ab4340c457bd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba50a99f65e30b177a771da6a3d0404f45696a36b8ad29e54d4ae4ba06b5c1b8`

```dockerfile
```

-	Layers:
	-	`sha256:660aa37bc36843d550abc12f4ec61b3ae98b4ca4b38e327f60a211bf33d3173b`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 2.0 MB (2011489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2d7da2372f7dde1b48c8a8574856970d7adedf4c27a4afaefe0777877499fb5`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; ppc64le

```console
$ docker pull memcached@sha256:5f415587997b8e0f1a561a915d39e9bcdf22d98679c052071c9698ccbbf9d39b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.7 MB (36704053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87adc0c99e19a7a8da27980c7cf9b7aa831c6637f29a6a1e4bb0999f373d5499`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:39:24 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:39:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:04:32 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 02:04:32 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 02:04:32 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 02:04:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 02:04:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:04:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 02:04:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:04:35 GMT
USER memcache
# Tue, 06 Oct 2026 02:04:35 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 02:04:35 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6164d46e47235d7fd1edd7229d8f1bd765481418398465b98253d9736ec3c547`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a390cebd7020aa0d191036b56766e99b9877018eb509ea16b5448462b2ec449`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 170.4 KB (170390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3543f360a3c5a2967473a8b3f42e23c2e0c39d76ccf2f0abdbd4d683ccd3431`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 2.9 MB (2880549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6137beede6ddbecbc997c4db4ae5f39982a5a04a6921ddb419819b79469ae7d0`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f76d35c3739a1f5ca7a71bad3b15cd71a8d162428348592a7c9da5d28f34765`  
		Last Modified: Tue, 06 Oct 2026 02:05:04 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:257156567aeea78272834db591a21e418aeec1cb24edb73e54de3159465d836d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2040160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06ea07e913ac58a382529edbdc77bb6f3a94c58a5c91c09165d5e7b999f701ec`

```dockerfile
```

-	Layers:
	-	`sha256:8a367b2965262ace978c86ced51b2dc153aa2206f6c4f9400a013ba78df77d3d`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 2.0 MB (2017933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:74137664ae61f8b59bed7b2fa9df763c2ca13444ece2eba6077f57dba40a3d90`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; riscv64

```console
$ docker pull memcached@sha256:8656a4a311e8931b683fc70198a24d869bbe722750d6fc07c83f9e7237b478c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30681766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21bb47e315c736689f7d9dea92f8e99cfe69d4374074794c3b1a025fb47e7a71`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 07:21:32 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 07:22:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 07:55:26 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 07:55:26 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 07:55:26 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 07:55:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 07:55:27 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 07:55:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 07:55:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 07:55:27 GMT
USER memcache
# Tue, 06 Oct 2026 07:55:27 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 07:55:27 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21d459eef25729476a15d9c2a71497e61fe2c1196ce2b0a061be33003a44ae81`  
		Last Modified: Tue, 06 Oct 2026 07:56:25 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:263b253257e5b7560b41f9faa680bfdd51b7cff710244248157851b53d5c6aa5`  
		Last Modified: Tue, 06 Oct 2026 07:56:24 GMT  
		Size: 133.1 KB (133127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bc0a71aadf0f4e2b01e90f2bc8deff83e567c95a01aa9ee2f63a2aa9b78181d`  
		Last Modified: Tue, 06 Oct 2026 07:56:25 GMT  
		Size: 2.2 MB (2213364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf6adaa4db7702afeeff21184d36c11cb9b535da6897e7c20fb6b715bcfdea7c`  
		Last Modified: Tue, 06 Oct 2026 07:56:24 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c52b03c9f42bf5cc7e456fe818e7d30afca4a4aafdeb44fa0909799871255978`  
		Last Modified: Tue, 06 Oct 2026 07:56:26 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:77be1f72ce3d91c4c7c73cd87f8878f429e7d3d34618f913d85362946d18cc14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b833cdf252d8ef60135fb683ad467b12dba50840f19d3fad115113cc8b3612b`

```dockerfile
```

-	Layers:
	-	`sha256:1196e2adc1677841feebedecd6d0432decb685bdab29f5bafa15a9bf1abfcddb`  
		Last Modified: Tue, 06 Oct 2026 07:56:25 GMT  
		Size: 2.0 MB (2008296 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad5fac857c1ca1386708151b7fc10b65c7d061ad865939ed8c614ee0929c753a`  
		Last Modified: Tue, 06 Oct 2026 07:56:24 GMT  
		Size: 22.2 KB (22226 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; s390x

```console
$ docker pull memcached@sha256:60efa47221d8959fc57e5a883a13a0cdbd4c6c2c106fb75b43cb48c0a93badcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32352682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fdb24e98011f7cc5569c516a3fd13bdf2768a566e90affe67ee8620fd761173`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:16:36 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:16:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:19:49 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:19:49 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:19:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:19:49 GMT
USER memcache
# Tue, 06 Oct 2026 01:19:49 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:19:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:fd14e6ce0256b9093e480e6146009effeb6c2bc486ff0052d50a32cbab8335fc`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 29.9 MB (29909247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9eee2ff929ea4e7ec919f80e7190bae923598fa62b8353765197bc11ea5a486`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36b740724da913e5a0891835dd7f5882ee3431869ff315c5d470924c36a412ce`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 140.5 KB (140516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a13b7ad2fafa15b3e37dc61ffe8e8a697b0e775edc6e1de88ba91f558e7faf20`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 2.3 MB (2301406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d53df8fb22e01bbb39ceb207639fc38f6f6e44053037d57e9616b0f22380bce`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5378341f5e20367bd2680911105891faeeda0d235ae58c94101d2253a616814`  
		Last Modified: Tue, 06 Oct 2026 01:20:00 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:90b4789ca09efcc93d0068d240f0acb339dc8d4afa13951cb103a2cbe5329276
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d301a021e72bdde47c24ea7b9f7168d0dcad77663582a1b44d8164cd505b1ae`

```dockerfile
```

-	Layers:
	-	`sha256:58444f61165c9d6f2dc18ea544c9788885fbf0f3fe3af01dce90eb14eac020b9`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 2.0 MB (2015769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5e7acc93643035fc7961ac9b6f7c3514ffa025c8aa43dd09cdc4c1b8b6c79de`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 22.2 KB (22152 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:trixie`

```console
$ docker pull memcached@sha256:2046d6d2eb7cbd59470b533a101cbd67def3e718b04eb72478306dbc804a3171
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

### `memcached:trixie` - linux; amd64

```console
$ docker pull memcached@sha256:c9f95360aa3e64f836956defe064352c9045c54d3f2dda34590a68e042927a5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32267918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f34c06c3fd851fa86d3e7555b408164af6b4b4b47ee11aa7dc0bca734e7a71aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:19:32 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:19:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:22:16 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:22:16 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:22:16 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:22:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:22:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:22:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:22:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:22:16 GMT
USER memcache
# Tue, 06 Oct 2026 01:22:16 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:22:16 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e079f3032daaade186d2131f9f18bb2c0f9935ab855336f423301f61d6e7b328`  
		Last Modified: Tue, 06 Oct 2026 01:22:22 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d40ad5a129f0aa6c523fe06d1708562030b3c6fa97cb31740c9e5ee7bf3ba534`  
		Last Modified: Tue, 06 Oct 2026 01:22:22 GMT  
		Size: 136.7 KB (136713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbe007d027e93139ff939ece02bc51476de66b1d5b505899c169d13775d510a0`  
		Last Modified: Tue, 06 Oct 2026 01:22:23 GMT  
		Size: 2.3 MB (2286344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86cf65cc96233c2b4aadc77c4c33b88129a2b62f64b9c5a021699e3eb28ebee5`  
		Last Modified: Tue, 06 Oct 2026 01:22:22 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d2d4760f47202c0b45135bb9d7ff59c58459e7ad99594786be531b150f555b6`  
		Last Modified: Tue, 06 Oct 2026 01:22:23 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:6fa0fc0329372d3ab73426a81eb03684ac37b6b44ce464f0c08ca9676c60de82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f09a49d1eaaf775f21be83947a61998647107aac63f88a4042ec77e4dbbd1ec`

```dockerfile
```

-	Layers:
	-	`sha256:b1092fc97cef42727e9036fe522d7ed2633633985bbaac4829c91acd129da3a6`  
		Last Modified: Tue, 06 Oct 2026 01:22:23 GMT  
		Size: 2.0 MB (2014332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ab446710960dba37f7b51a6eb0f7bc842602da0824da26225b23926dedefbdc`  
		Last Modified: Tue, 06 Oct 2026 01:22:22 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; arm variant v5

```console
$ docker pull memcached@sha256:f99f30eaf4a8f67b996c41f49fec4c0e4a16523901b3564394d631c35b2ccfed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30370459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ce918c60a86aa9267194a8f22739fa01607bf2c26fc25c89e64ffc01852b2f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:18:18 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:18:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:21:40 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:21:40 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:21:40 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:21:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:21:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:21:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:21:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:21:40 GMT
USER memcache
# Tue, 06 Oct 2026 01:21:40 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:21:40 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:cb79ce05d3152dc6f7b8608f1f449aa1fbf1541a5dff435139649d755dd23d93`  
		Last Modified: Tue, 06 Oct 2026 00:13:24 GMT  
		Size: 28.0 MB (28007486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0fc4c700738b0949f606b6b5601896930602894413dfc8db3b37f5bfc541a14`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a25abe783152ae88c84222cd52a115baf6ea0a88846f910d6128500df7103939`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 144.2 KB (144200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1ce858ea6db063b480bff4a3baafcc483f5817f7c4d1be66827c87c7d43b2d9`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 2.2 MB (2217261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2bdc54165033126966499027bdd3c11823f028488c41440ea755d764b21bbdd`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c3604de1f39f6d0df3b8a994bdf608a0e366a8633c1ed5551de0bdc2deb117d`  
		Last Modified: Tue, 06 Oct 2026 01:21:47 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:14fead2feed9bed8d15c272d3b4c45100e99e1a2da41c7c0dcce6d6dfca0852d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2039639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecbbdca80f1a7bc00d9cd9bba88060ee0fd9344a138a0aeed9817b4b443f39e3`

```dockerfile
```

-	Layers:
	-	`sha256:238b5082fef01c1b58fdb77c003c03415636e326c699af155126cfd037145511`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 2.0 MB (2017335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9df37609ab40ce96bcd6822f2a492aff1b99b73c211416d45a104e62aba1152c`  
		Last Modified: Tue, 06 Oct 2026 01:21:46 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; arm variant v7

```console
$ docker pull memcached@sha256:2a0f066db5ab04bcc02e20ea0552bbb943884c32ceb014761763c8b713a8a410
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28566690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d6dc33010f19ca987a03eda3ed24aa29fe95ec521260ddadc1fec5883a5ee70`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:20:47 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:20:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:23:58 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:23:58 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:23:58 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:23:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:23:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:23:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:23:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:23:58 GMT
USER memcache
# Tue, 06 Oct 2026 01:23:58 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:23:58 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf458570d1c1ac6b3a5d06336f964b504bc7d5902622370f11291826321cd43f`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1b651e6ccfc4a1084deaae487cb9dec23a117ddfdb2c0fd2e82df5c8b57fcc3`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 135.4 KB (135386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc87fbda19f8ce41e669327ace6c6db485589566dae2ddb46b94a4243e656b25`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 2.2 MB (2171612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f08eca3251dd91c45d7f3898d2e97fe9e7d9d6d8d96b1981e652aa291e568d56`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ffd165e448c27fa217b74d7788471a856372780f9650a32ea2ed4473541ff7`  
		Last Modified: Tue, 06 Oct 2026 01:24:05 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:86eb842ad2b9bd0e5c38e7648723ba6df9f9b92c122a5689a24918189ad30a41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2038096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec25db8cea0645c1ab26371aec6335b17af7efe5f6eaaf8e6e3ff29936dd1815`

```dockerfile
```

-	Layers:
	-	`sha256:10f4ca9afa8376b15d1ad34282553df796975282b3cd3a46f94c45371f553cb6`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 2.0 MB (2015792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bea6373013b6cf4d05758d03fe9be9432f173977b5b83e71a96e166847cbe4f4`  
		Last Modified: Tue, 06 Oct 2026 01:24:04 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:db1095291332bd58c0551af962f8940dce18d87e5ba4ff6ba9e2a901819d9c25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32622142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9207469bca7f44aecf7bff570002ede8e626e06e0cb25fa008268f97f644c75b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:19:35 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:19:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:22:35 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:22:35 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:22:35 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:22:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:22:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:22:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:22:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:22:35 GMT
USER memcache
# Tue, 06 Oct 2026 01:22:35 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:22:35 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:620da5091547ba64520d491a8b6b517cce0a3d474388b1f49bf7bf9e118d85bd`  
		Last Modified: Tue, 06 Oct 2026 01:22:41 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fae4064dd7b1370d85a82720c9a3acc9c925624f20ad91e204783b10a2ec3dfe`  
		Last Modified: Tue, 06 Oct 2026 01:22:41 GMT  
		Size: 153.5 KB (153527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6950f6af6542268dc492c1c5bbfcccef50b35f40596d348b86b238b824c1b19`  
		Last Modified: Tue, 06 Oct 2026 01:22:42 GMT  
		Size: 2.3 MB (2266820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68b55d7d01f6f7371c44460d3c04b7dd27e5d002dda63ab81d2931d02e2ffa78`  
		Last Modified: Tue, 06 Oct 2026 01:22:42 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b26a56b8e9216c4807b9c2bf095d1b3a5df29b13206a2098db60b1d90958f853`  
		Last Modified: Tue, 06 Oct 2026 01:22:43 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:d0649d2335af9e7e2a93517db111e263cd510a676fd1f13ea439a6d10362606c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fbb64c2b568e3c52baac2d8e24e2d2af7dd0063e821826e0e534070f0938e61`

```dockerfile
```

-	Layers:
	-	`sha256:bde99632d639c60d280adfc23727596b782215923117bffba5efc9a0f34480c7`  
		Last Modified: Tue, 06 Oct 2026 01:22:42 GMT  
		Size: 2.0 MB (2014640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b79d8c6a0d2eb65369ee6909525df3324d7fdfd7dd1c7e2b5f236d2d4bc9ac5`  
		Last Modified: Tue, 06 Oct 2026 01:22:42 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; 386

```console
$ docker pull memcached@sha256:aaf3189188869f4a3ccfde0f2610fd595011df2eb449251fb909a86f4220ab8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33733530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a90759960ac97d23dcce664286754ba1a507a4e61399c7fc40f1cac308182f17`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:17:26 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:17:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:20:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:20:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:20:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:20:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:20:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:20:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:20:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:20:24 GMT
USER memcache
# Tue, 06 Oct 2026 01:20:24 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:20:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78226cd621a6dc04a3c52ac5bd710b236b7e84dac2be795ed78f6270e06d5d58`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d9f6771133e91a6c72f1c941b3ca5ad178f310aa70cc67e1f45404ce10f466a`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 147.5 KB (147545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d960652d73e72b9de15a4cd637e7c31ab99b80b0de6ed50167dec7fd0b695a0b`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 2.2 MB (2231174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1a6c5315b066087aabdf4ff7fa5679a0cf33066a165cbab8cc1febe9334b403`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd2d66ec395c65b79cd82bfa9f5feee129c872bfc5a5e2c01eb6cdd967ce418`  
		Last Modified: Tue, 06 Oct 2026 01:20:31 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:715096757feec34ae4e6782045183cdfd41a9f66408fc8d67c5ab4340c457bd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba50a99f65e30b177a771da6a3d0404f45696a36b8ad29e54d4ae4ba06b5c1b8`

```dockerfile
```

-	Layers:
	-	`sha256:660aa37bc36843d550abc12f4ec61b3ae98b4ca4b38e327f60a211bf33d3173b`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 2.0 MB (2011489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2d7da2372f7dde1b48c8a8574856970d7adedf4c27a4afaefe0777877499fb5`  
		Last Modified: Tue, 06 Oct 2026 01:20:30 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; ppc64le

```console
$ docker pull memcached@sha256:5f415587997b8e0f1a561a915d39e9bcdf22d98679c052071c9698ccbbf9d39b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.7 MB (36704053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87adc0c99e19a7a8da27980c7cf9b7aa831c6637f29a6a1e4bb0999f373d5499`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:39:24 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:39:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:04:32 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 02:04:32 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 02:04:32 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 02:04:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 02:04:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:04:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 02:04:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:04:35 GMT
USER memcache
# Tue, 06 Oct 2026 02:04:35 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 02:04:35 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6164d46e47235d7fd1edd7229d8f1bd765481418398465b98253d9736ec3c547`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a390cebd7020aa0d191036b56766e99b9877018eb509ea16b5448462b2ec449`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 170.4 KB (170390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3543f360a3c5a2967473a8b3f42e23c2e0c39d76ccf2f0abdbd4d683ccd3431`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 2.9 MB (2880549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6137beede6ddbecbc997c4db4ae5f39982a5a04a6921ddb419819b79469ae7d0`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f76d35c3739a1f5ca7a71bad3b15cd71a8d162428348592a7c9da5d28f34765`  
		Last Modified: Tue, 06 Oct 2026 02:05:04 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:257156567aeea78272834db591a21e418aeec1cb24edb73e54de3159465d836d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2040160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06ea07e913ac58a382529edbdc77bb6f3a94c58a5c91c09165d5e7b999f701ec`

```dockerfile
```

-	Layers:
	-	`sha256:8a367b2965262ace978c86ced51b2dc153aa2206f6c4f9400a013ba78df77d3d`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 2.0 MB (2017933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:74137664ae61f8b59bed7b2fa9df763c2ca13444ece2eba6077f57dba40a3d90`  
		Last Modified: Tue, 06 Oct 2026 02:05:03 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; riscv64

```console
$ docker pull memcached@sha256:8656a4a311e8931b683fc70198a24d869bbe722750d6fc07c83f9e7237b478c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30681766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21bb47e315c736689f7d9dea92f8e99cfe69d4374074794c3b1a025fb47e7a71`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 07:21:32 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 07:22:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 07:55:26 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 07:55:26 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 07:55:26 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 07:55:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 07:55:27 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 07:55:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 07:55:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 07:55:27 GMT
USER memcache
# Tue, 06 Oct 2026 07:55:27 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 07:55:27 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21d459eef25729476a15d9c2a71497e61fe2c1196ce2b0a061be33003a44ae81`  
		Last Modified: Tue, 06 Oct 2026 07:56:25 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:263b253257e5b7560b41f9faa680bfdd51b7cff710244248157851b53d5c6aa5`  
		Last Modified: Tue, 06 Oct 2026 07:56:24 GMT  
		Size: 133.1 KB (133127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bc0a71aadf0f4e2b01e90f2bc8deff83e567c95a01aa9ee2f63a2aa9b78181d`  
		Last Modified: Tue, 06 Oct 2026 07:56:25 GMT  
		Size: 2.2 MB (2213364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf6adaa4db7702afeeff21184d36c11cb9b535da6897e7c20fb6b715bcfdea7c`  
		Last Modified: Tue, 06 Oct 2026 07:56:24 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c52b03c9f42bf5cc7e456fe818e7d30afca4a4aafdeb44fa0909799871255978`  
		Last Modified: Tue, 06 Oct 2026 07:56:26 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:77be1f72ce3d91c4c7c73cd87f8878f429e7d3d34618f913d85362946d18cc14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b833cdf252d8ef60135fb683ad467b12dba50840f19d3fad115113cc8b3612b`

```dockerfile
```

-	Layers:
	-	`sha256:1196e2adc1677841feebedecd6d0432decb685bdab29f5bafa15a9bf1abfcddb`  
		Last Modified: Tue, 06 Oct 2026 07:56:25 GMT  
		Size: 2.0 MB (2008296 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad5fac857c1ca1386708151b7fc10b65c7d061ad865939ed8c614ee0929c753a`  
		Last Modified: Tue, 06 Oct 2026 07:56:24 GMT  
		Size: 22.2 KB (22226 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; s390x

```console
$ docker pull memcached@sha256:60efa47221d8959fc57e5a883a13a0cdbd4c6c2c106fb75b43cb48c0a93badcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32352682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fdb24e98011f7cc5569c516a3fd13bdf2768a566e90affe67ee8620fd761173`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:16:36 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 06 Oct 2026 01:16:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 06 Oct 2026 01:19:49 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 06 Oct 2026 01:19:49 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 06 Oct 2026 01:19:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:19:49 GMT
USER memcache
# Tue, 06 Oct 2026 01:19:49 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 06 Oct 2026 01:19:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:fd14e6ce0256b9093e480e6146009effeb6c2bc486ff0052d50a32cbab8335fc`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 29.9 MB (29909247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9eee2ff929ea4e7ec919f80e7190bae923598fa62b8353765197bc11ea5a486`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36b740724da913e5a0891835dd7f5882ee3431869ff315c5d470924c36a412ce`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 140.5 KB (140516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a13b7ad2fafa15b3e37dc61ffe8e8a697b0e775edc6e1de88ba91f558e7faf20`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 2.3 MB (2301406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d53df8fb22e01bbb39ceb207639fc38f6f6e44053037d57e9616b0f22380bce`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5378341f5e20367bd2680911105891faeeda0d235ae58c94101d2253a616814`  
		Last Modified: Tue, 06 Oct 2026 01:20:00 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:90b4789ca09efcc93d0068d240f0acb339dc8d4afa13951cb103a2cbe5329276
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d301a021e72bdde47c24ea7b9f7168d0dcad77663582a1b44d8164cd505b1ae`

```dockerfile
```

-	Layers:
	-	`sha256:58444f61165c9d6f2dc18ea544c9788885fbf0f3fe3af01dce90eb14eac020b9`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 2.0 MB (2015769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5e7acc93643035fc7961ac9b6f7c3514ffa025c8aa43dd09cdc4c1b8b6c79de`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 22.2 KB (22152 bytes)  
		MIME: application/vnd.in-toto+json
