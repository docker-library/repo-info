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
