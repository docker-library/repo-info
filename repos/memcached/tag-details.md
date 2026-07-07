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
-	[`memcached:1.6.43`](#memcached1643)
-	[`memcached:1.6.43-alpine`](#memcached1643-alpine)
-	[`memcached:1.6.43-alpine3.24`](#memcached1643-alpine324)
-	[`memcached:1.6.43-trixie`](#memcached1643-trixie)
-	[`memcached:alpine`](#memcachedalpine)
-	[`memcached:alpine3.24`](#memcachedalpine324)
-	[`memcached:latest`](#memcachedlatest)
-	[`memcached:trixie`](#memcachedtrixie)

## `memcached:1`

```console
$ docker pull memcached@sha256:c7d4a9f4398df209a23dd8025a04fde0a415709cda293e2cad6496cf9888d1ef
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
$ docker pull memcached@sha256:656a6cfc8ed69f32c4b5a126e5f67b0af87fb4f3397bf938dcffba145f524f23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32204955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a090ff2819a8baa8927a1504d25e57248289de7d035c09b27016aa6778b20671`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:38:59 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:39:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:41:47 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:47 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:47 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:47 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:47 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:47 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:47 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fbf1c8c52a26c7246a7962c9ff3b39c4d01827da5bec5975bf09972034ebd07`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a856d8d29335e9bb89c4ac70a692292e2d9289888f82e2493fa33920a6818cf2`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 136.7 KB (136699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f462e97e45ac49cd49fbd7b6c887d9f60b02ef658985bae749a545250a982db`  
		Last Modified: Mon, 06 Jul 2026 21:41:54 GMT  
		Size: 2.3 MB (2281324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01f91d925073819971c78c22c597acd3d11339a7bc0ecbec0fc1f29dfc75e3ee`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d497385966554717bce54e3bd2e58aa97e93409de213297aafe5ed2b7b284f71`  
		Last Modified: Mon, 06 Jul 2026 21:41:54 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:cbbe127b3e2a069ef5f514d27653fc24242c02c9eac9b2643b8b1fe547f90e4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e980845da04a5b245b3b3b06501510f29735c64ad84ec1958397e73ecf8f2af3`

```dockerfile
```

-	Layers:
	-	`sha256:b2ba902ea7ef1dd0aeaa90d23c7408cd52b48cfd0d4de1771bd6d7cb26068ba3`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 2.0 MB (2008368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd3e3320b0b76edfb87dc1cecd7798b471b2db3ffe01c26cec2c36862ac2b3af`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; arm variant v5

```console
$ docker pull memcached@sha256:e12299225626e23ced92dbec45865333ae66504d813c8258ba4ca8fd37aab586
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30317940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef73b1d7a006c523b24f707628218537bd2256d972ad65e394a1b170dff6f9c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:38:33 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:38:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:41:54 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:54 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:54 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:54 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:54 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:54 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:da43bc6a07a9cd7cc23faa538adc0797482747316b5a85b9f3f94ed17f6c1a2a`  
		Last Modified: Wed, 24 Jun 2026 00:28:12 GMT  
		Size: 28.0 MB (27959221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:912e0265a9bef2049f461667c203b04c5d953f55d3bad7fd06009d17233e8c1b`  
		Last Modified: Mon, 06 Jul 2026 21:42:00 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a61804d5bb4f8881f2bda238950beb1d4061cb3cd45e3bcd4c73e45ae8cb368`  
		Last Modified: Mon, 06 Jul 2026 21:42:01 GMT  
		Size: 144.2 KB (144184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3f95616646814d54f714ea24851e4b510b62aaf05006e19ab3c2b4fff72e31a`  
		Last Modified: Mon, 06 Jul 2026 21:42:01 GMT  
		Size: 2.2 MB (2213023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d33b96d1e686356248b385146a036f7722b228e793cb44a4139fc3e911377f2`  
		Last Modified: Mon, 06 Jul 2026 21:42:01 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef3d232ed4ac1acf774bc29d4e5bb041150ae0690a6ad8dfbc827d39ba67e4f`  
		Last Modified: Mon, 06 Jul 2026 21:42:02 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:04ec002d7fc434c575de2e3b150bc2f94892905ab29a1442fde1aaf52d91559f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:657d5c8bd24ce14e139f22cd05551b37ad0f747e0f17d0803f7f72904eb45338`

```dockerfile
```

-	Layers:
	-	`sha256:5a134601bcd31b5b86b890a3e2dfa44f32c19503a7f8132d46df61e1191c91a7`  
		Last Modified: Mon, 06 Jul 2026 21:42:01 GMT  
		Size: 2.0 MB (2011371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95754d0d5ed2078de0d4c37786bf409b4f5de4e43cdb36388ff5eb2b7570f2bd`  
		Last Modified: Mon, 06 Jul 2026 21:42:00 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; arm variant v7

```console
$ docker pull memcached@sha256:6f681e43471b6ba99e8861c81f644754db4aa35554ee097b2b438f7e7c5c267b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28514937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdc0ab0d0e5f8809ea81cacb053a5820256c72a85d46672a50396adcffc9c385`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:39:20 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:39:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:42:34 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:42:34 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:42:34 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:42:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:42:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:42:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:42:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:42:34 GMT
USER memcache
# Mon, 06 Jul 2026 21:42:34 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:42:34 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16710e5b885dd2f9f0d4f3a68d20ee3052ef7eeebb026cd8c76860317060c3f4`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d69824716fa350bb35cb1be065c8493b5241e9cb5a07318f5d7f2a4b81802ef`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 135.4 KB (135382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:293dd91233448f2cc893f3db5669239f4a64de61f71eb8f6b1b3a131e8e6356d`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 2.2 MB (2166986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b180e4022ce73ec0e0049fe1d68843ba4601570343a6f6b578624174351963d3`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81192fef36610c3f90e846a5959b26829e120dbf32a909e3d1c287e542a86895`  
		Last Modified: Mon, 06 Jul 2026 21:42:42 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:1ce1c4df7e869abd47eeb3f73eac8583fccbd5c057a7d74957955276e22a6170
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2032132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee61bcf236cc2e3765d25b70b40c452f036895398f82a37ce9e765b6e31fb21e`

```dockerfile
```

-	Layers:
	-	`sha256:a1e168963faef5a94750a3afe81a447b1c0b24daf7ae75b35eadba8c13579e06`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 2.0 MB (2009828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aaca361028b5c03cfe69d0f2877a95f4b68d27086bc94c0785cb7fcbe73708c2`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:61b1d3943ec1fef8b57a16150315cab848d09a2a5cd95b4f2373e9bf069927c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32566996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09b7981a23c3b8ad6c6e27145ee0ee1eadff16c409312807abea1fb6c90456dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:39:02 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:39:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:42:03 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:42:03 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:42:03 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:42:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:42:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:42:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:42:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:42:03 GMT
USER memcache
# Mon, 06 Jul 2026 21:42:03 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:42:03 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb3a9db0b552ee84467be61022b454f3f8d3fcf6645f1ef421dbc4e5dc17c1f7`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2baa2ada261da15b63b6aa4545f54303c26da020d8d73b28aad12fbeb383e381`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 153.5 KB (153501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63a169b8dfa3c4e20bdac3db66840fbc677728ec228cc7ff4197cdbc2d70692d`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 2.3 MB (2263430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12575e3ba7dcfe911406d84a26c38fb3285198d8565de14f54e7d0ee83515141`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7471454cf4c9d8bf3e1028d4f9890185ec1e6216908733ab24eb5a4c8cad3154`  
		Last Modified: Mon, 06 Jul 2026 21:42:11 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:a6f5908bfc77290cbd322b08baa25baf20cd7d918e4739ee8f44ecb27c5e9954
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55a2398b634f5aa30e528ce79af556a18b2ca9c8c967290e8855b2db75050aa5`

```dockerfile
```

-	Layers:
	-	`sha256:d905dff6358a991386cde295b73a010f87a7259a80916ed7a6a56b4e32f03b5e`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 2.0 MB (2008676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e569c815cafd8f0caa21ee5639693ff9fb5169b3e266aaa4ca20d90243c0f47`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; 386

```console
$ docker pull memcached@sha256:5c54ebcc9adda03074cd6f582dc9d47f2c597af9347338bf69a815476aba85df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33676183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:972f94eb4da4e3cadae40e616f31b0c988375d1372f4de37403c9d35de40ad89`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:39:45 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:39:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:42:55 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:42:55 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:42:55 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:42:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:42:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:42:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:42:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:42:55 GMT
USER memcache
# Mon, 06 Jul 2026 21:42:55 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:42:55 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:984d3baa100eb8c4d7c83b7c23b4748e508aa6ed5903297f02be90a681f52d41`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 31.3 MB (31301210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40a5a431eae5f7382bbe3702131b8e5257dde1ab3f42b0bdae2017173d030bfb`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1e45b65fb40b92a3640f6c3f98c81c726756107a1a3cf54e9556839b5434314`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 147.5 KB (147522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c8bf709284a2d6ce9b302597a13416dceb853b25f1df95330c09a2a247c458d`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 2.2 MB (2225936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64199d124a7a80324df2952272fbeeca3578646cdc58dc2452ff83a7cb05ff80`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0a2c694d180348fe8a62f58a1cc8141df9eb8cc8e77aa8d7fc2bc57cbde7693`  
		Last Modified: Mon, 06 Jul 2026 21:43:03 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:854626f034a18e92820f9cab215dc02f1ff1a8c4a00c40561cc65029d83a2f3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2027620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10d6da14e5186bdd10781072e2d4a8370bc308ffc7e5f4e1564a6a5eededac39`

```dockerfile
```

-	Layers:
	-	`sha256:6e31f8780d98fc1b31d8f166958e7cd9a63a656d09bfacce23983c74ea9322d0`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 2.0 MB (2005525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:28abd28639656318b2a292318661c673a1965a0817aee3ebda62c8f3019a1059`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; ppc64le

```console
$ docker pull memcached@sha256:8f5c7302d6d437cff3c3823ce82b23e5b3cdbd91aeddea51fe63f3dbc86526b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.7 MB (36655139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbf273f8d7258224f3d1d7b29b885ef6fdc80a930babdc82f0fd5ebfcd022f30`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:41:59 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:42:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 22:05:05 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 22:05:05 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 22:05:05 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 22:05:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 22:05:06 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 22:05:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 22:05:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 22:05:07 GMT
USER memcache
# Mon, 06 Jul 2026 22:05:07 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 22:05:07 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c28d0960fd8ccb8d0d804cad9b7ac5adde1950d50a041fa6d9667b7574818b`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e8cde463d54b5d9ccc864b2a22a3fb1cb6d32662e187d2161215ccf3fae998`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 170.4 KB (170371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab94abc799598aba483c2ac576bfb440dedb2386e4afa185f536f3fcc1f38546`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 2.9 MB (2876865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8005a8ca890b984bdf2737e11b5d86d0d3db6f003c9fad496aa7107e57a616f7`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9fcd1b9234dadfc95a6d9c67e86f29e354b2a757eb1fa564f7047034d98b3ed`  
		Last Modified: Mon, 06 Jul 2026 22:05:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:ea4a2604bb3579325c6ab97f9b0cb6e9cb56296e1e6350e9e7bacbb42c6a47dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2034195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dde9ebb92580e852e351418fa4adf0509fd654f32375d26113b5208169eda80e`

```dockerfile
```

-	Layers:
	-	`sha256:1b4c5eddb6aa89c1696286ead3633a6d5ed17e39ee9c6ba50002625d89d16752`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 2.0 MB (2011969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9950a833f3ed093b05d5de4ffbdb64942119af8e5fc3b731f9584c2bc961843e`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 22.2 KB (22226 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; riscv64

```console
$ docker pull memcached@sha256:1d09cc6da0fcd7fbfd1eb9a04ab9aeb8557f8a977d85bc7758ddc33f1fae7e8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30626877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e932fab34f25980444b8d9d4042f4f019d633ae41731c4d58de9d0425aacbb5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 20:53:15 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 24 Jun 2026 20:53:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 25 Jun 2026 19:11:35 GMT
ENV MEMCACHED_VERSION=1.6.42
# Thu, 25 Jun 2026 19:11:35 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.42.tar.gz
# Thu, 25 Jun 2026 19:11:35 GMT
ENV MEMCACHED_SHA1=de453f58745238c70091fe243549c406aabdc3c5
# Thu, 25 Jun 2026 19:11:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 25 Jun 2026 19:11:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 25 Jun 2026 19:11:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 25 Jun 2026 19:11:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Jun 2026 19:11:35 GMT
USER memcache
# Thu, 25 Jun 2026 19:11:35 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 25 Jun 2026 19:11:35 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:58bface994ba631e609596a2ca5032d9d75de27f1b6476034b581e226205adab`  
		Last Modified: Wed, 24 Jun 2026 03:41:42 GMT  
		Size: 28.3 MB (28282378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88be0d85b1f48be753592f62cac7ef80c23a61c7848026bd2d489c40d2214a58`  
		Last Modified: Thu, 25 Jun 2026 19:12:23 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5924e63da94311a18a309f02e655774d7a7dd21bf3dc267215c524167fb7ca02`  
		Last Modified: Thu, 25 Jun 2026 19:12:23 GMT  
		Size: 133.1 KB (133093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acfa9af5e6df6f7145e6f80ab61869e6613b9f5caa0cfa94788cbf01b3041add`  
		Last Modified: Thu, 25 Jun 2026 19:12:23 GMT  
		Size: 2.2 MB (2209890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ace1c66f882f3224670cc80ac0c47197433c688d59a6bad4e5e137d6947a7d9`  
		Last Modified: Thu, 25 Jun 2026 19:12:23 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:470dc087e4a89d9d58d8fa29a67ac089e3c4b569f1c1c79265bfe24ba39500d2`  
		Last Modified: Thu, 25 Jun 2026 19:12:24 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:10dc6cdb2cd2787d533382c9b0e6ae2f8f3b637c254e1b54762fc75d6b7c2066
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2024559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:173dffb05aa61f0096ec844832f392e17573e61865ef528ee8b742faa7e4b6db`

```dockerfile
```

-	Layers:
	-	`sha256:69ed82bb373c86c8fbec635b83221f89933079ee40e6fcf48418d1a69ca5bb89`  
		Last Modified: Thu, 25 Jun 2026 19:12:23 GMT  
		Size: 2.0 MB (2002332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cea64cfdecc1c5a9f3c417e6a679e88cd0613790ff8f658ca9e3ec73325fa9cc`  
		Last Modified: Thu, 25 Jun 2026 19:12:23 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; s390x

```console
$ docker pull memcached@sha256:d3cd3e513f2ddee32452ba0ec987fa00b5e1fb1d8db488eaf4fbe26b5d76074c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32292489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5460628bdf70beec088e32d0e29e4bfdc0f288d2df4a23fb962ca9ab72e0d959`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:38:22 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:38:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:41:41 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:41 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:41 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:41 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:41 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd3b24daa3730c2808288ea42c60ca7198480d38cea1e21d7cfe2adc3844917`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba2cdc589f233d4d27d14cf3372db956515683acd0fb9cb15af8b293489125d5`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 140.5 KB (140525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33665ac46f2cf8ddf33ff9813a3727015c6dcc7d0c0f089feafe19ae89e34adb`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 2.3 MB (2299071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e96808b26b5232fb910ecf5cdc8493ae86733873c9f25bfa119fafa1c55b35c6`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dece698c0594201d0475a857aef447a96b29dbe79232e3557f4b64ba5741d09`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:3dd79394e3bb85b237653f075e202aa7f0c15898c5c5b1fe856df01cf9290536
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:463e703a269bd4656b96a53f3edcf89aa6c7b4270b4ba2f5be5b7da5304db134`

```dockerfile
```

-	Layers:
	-	`sha256:9fb3957b58d9cfc05cffe13f8e337f7a892cc305727f708d376fed40ce5fa0b1`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 2.0 MB (2009805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0635cd2ab613bff3b59e1c667e4c91d4c53f0e3375457d65df65880d46c59fed`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 22.2 KB (22152 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:cd4b42e6cee87000353712623f8a4be411e5a06f61bc1fbc6864fb9b23402fe4
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
$ docker pull memcached@sha256:d24f1303e8fd2dfb03fcb756adaf6867879cdfece89c08a6e9f4a677ca8dadf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5922727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad6151f346a2bd04c3b277f22740e18cc3c044354e521cc519c92a8c84451d60`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:39:01 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:39:02 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:36 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:36 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72537507ddd4bf18613bb8a53b242da50a994ed2f47cea30e1f6c88efbee2a78`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7faa191428d835180295942536af93f611e77740cf097b3e8df24f089e6627e9`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 106.1 KB (106072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3a8994078ed716f7b7d9bf0c3d456fc16a781de709310bb595531d35228ff54`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 2.0 MB (1968919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16fb68556a5eec82c8c88c2fed3144af0ed956d9f11c575f55e2da6863dda7a5`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1e36d6e60879e2d185ee42a79191f0f8ac04cfc130cc0bebd0beca60d2aa9e4`  
		Last Modified: Mon, 06 Jul 2026 21:41:42 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:d930c2046b540ebb74e7a5b8fd2a6fdf468da9ff2293cb4dd827472ff5031831
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fe897885a6263d1427bd866148b454137670c770f04e071d66d2feff8085250`

```dockerfile
```

-	Layers:
	-	`sha256:51f430a0e1d8ff67dc96eae767c7f0711a583e92c9ff33dd9fe9a50d9efcff88`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0743f7aa18fbb7703101bbeab0bd523094977be5ea27494e0164581ec1c92a3b`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:73acf9d22c4bdbd48aa2de5bf1e220ce75378480569c24ba9c18811287233a1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5573817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2e136b1ff362f5bdc367ccbf1880be64dc78c0fc8b0d253d79c397c576ea533`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:38:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:38:34 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:51:09 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:51:09 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:51:09 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:51:09 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:51:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:51:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:51:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:51:10 GMT
USER memcache
# Mon, 06 Jul 2026 21:51:10 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:51:10 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:293879983da14bd43faca40a46b9a0ce087b83f1d447e044e4951610593ebc91`  
		Last Modified: Mon, 06 Jul 2026 21:51:13 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e795a1b77921c10d97c236f11aa756351bf412f979662f1acbc3c2ad62fd05e`  
		Last Modified: Mon, 06 Jul 2026 21:51:13 GMT  
		Size: 102.6 KB (102628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8ba8eb1b8820dd0e9f0738b9b8e91c53acd9c3d9940d0432e0c8f2ad44217aa`  
		Last Modified: Mon, 06 Jul 2026 21:51:14 GMT  
		Size: 1.9 MB (1916390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:106dee74d5261f5e566fd9e348ba286421a4d1e483cb173f96bed3521dcc687a`  
		Last Modified: Mon, 06 Jul 2026 21:51:13 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d806648e37a5bc66afa3a2b45eff733ca3b8570c352bf6036f8b077bfde9bbe5`  
		Last Modified: Mon, 06 Jul 2026 21:51:14 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:bae0d2964b7b9f665f5e8dd26b51a2cfe10653f7ef8757d7d4cc60c4f40ca919
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5e30efe0e3752cd34280817d416a8e537c8012155b6178564abb4bb870ef4c5`

```dockerfile
```

-	Layers:
	-	`sha256:c2e8d0f0d8af34b5281ae36052d97c6b73b3fe9383a62a22f836382f3bff4b76`  
		Last Modified: Mon, 06 Jul 2026 21:51:13 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; arm variant v7

```console
$ docker pull memcached@sha256:75e71baae6434f00bc3570e729ba883ff0b3934a99ef187ffb20c47bf6515cc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5231085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81e055b173d6abaed66778f7b1de84e94a2cd5148a272964eac221122af04b3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:39:18 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:39:19 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:42:14 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:42:14 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:42:14 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:42:14 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:42:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:42:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:42:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:42:14 GMT
USER memcache
# Mon, 06 Jul 2026 21:42:14 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:42:14 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13a07349f740cf45b2454a9b34effb1074b3eafef6ec97a67946c2bfc8f0a609`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:182bc05d2ae8d54d4f592cc6a72c1f46e7dd676340c1bd306f81a0f773e3a694`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 92.4 KB (92369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30172b660bdb95335d0d41ef5f5865718d434cd394d65a78795782f39fa8a31d`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 1.9 MB (1876756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3279f748468a4e79c099100b34acfca01161d3a4c7e3491050d37b9750ec0de5`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2271c46a5c6b2e2f9a4d581113b47bbc27ae767c172026bb9a21b3532d2e7b33`  
		Last Modified: Mon, 06 Jul 2026 21:42:20 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:ee9bff19b784d2bfc1f4a6c997bda2fe5d2f569951169a6da4490dc9aabf38f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:878949ad5f39565e088eb87ab96a6e6d8be7f7be57e4a3ea2fffe2791f38276f`

```dockerfile
```

-	Layers:
	-	`sha256:8d693e5f45f27e0a1b3a67573b03d554ba4a78bae37e0dfe37efd9bb0ad7aad9`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ed989ea1e997e400d8acfe1b1ac32263efc1404a751615fce2355b24920f262`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:9c1f017b1a9c14d8367d0886615b2f4cf5dbeb0abe803cff62e1ccf763a83309
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6251555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c2345e75471f47c2aaf508a6c0aed3a6394293ab98a83467476f018dbd966b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:39:04 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:39:05 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:41:51 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:51 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:51 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:51 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:51 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:51 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6611430365db147600c92bd762f806ab97f387ae400dfededdb339ed761b38d7`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba750e4cc6a2574aa4c85ae98490be9a705504b4bacc27dc37393172a38113ad`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 121.9 KB (121857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b15b9832850c680687cd3e192fc2b47f402a577cc7936b1429f8bf960043115`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 1.9 MB (1945317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:186ad9601948dfa94625c72f2efeb90cec5a856cf8dfc961fe0fb100a7612ceb`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:252c6c60ae667ad99277f31f2eb6995dc3c97517567345a95b9bfb6bfc7f4973`  
		Last Modified: Mon, 06 Jul 2026 21:41:57 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:4bf91160995d46f465e01fc0d092960db99f29c302767ea7693e51fe04664e1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b66911cd710529f8661a583ca5293311eab2646f7c5df648420879ccfb96710f`

```dockerfile
```

-	Layers:
	-	`sha256:69745701c406c0a0eaeb9398f5a3408b0ed98dc5f7c9eec5b69224b44fae3a07`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd96cdd23bab41a8c795d813ad3bca912cb0390a4664e71979b2ce937af558ce`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 20.7 KB (20728 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; 386

```console
$ docker pull memcached@sha256:99e3a43ede008cdb2a7404fba0c0d589df056cf317fc4530a43e9a18432057ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5704609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4259473df875ca4b335a6f5fe39a294e95701a65977bdb72708000b400db44ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:39:47 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:39:48 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:42:36 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:42:36 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:42:36 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:42:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:42:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:42:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:42:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:42:36 GMT
USER memcache
# Mon, 06 Jul 2026 21:42:36 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:42:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61e1fdddad44a79ab90599c3a732f61d9fe751fc44b20138c34ddac45fd68ef5`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:678ab87dad9650d15a64f037d1c0d3983c1d49b794975d97c2497b8f9fd2bd57`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 110.7 KB (110733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b879347f774880c414c9983ecc840683885be02e16e79eb8c9cdcaac056637d7`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 1.9 MB (1922386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc4f23ef17cd394d2b5b3c4ff9ace06ec964a74e6e4b1054ce2dab36ef9cf7ac`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02e0bb4aee5e6e8f857e6e53c13a85acc2ba624960d52685b39ca7a7824a257d`  
		Last Modified: Mon, 06 Jul 2026 21:42:42 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:39a379ca667774a1849a872c123e3fda6a96b382db34f7ae07976d3ddb3fb1cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a30528c0c40b7f3cd7ac8a1d6ba7b49c8754f8382944c04619fb7bf92ed3d05a`

```dockerfile
```

-	Layers:
	-	`sha256:bb24486845b08d5db14f90720802598a00f4e035591469f741bbcb785aa4b0bf`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62cc5e8bf2657465cce189ee097f4812ba020e1eebad5596743a2358bce26893`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:7d2ba96d4241409819ccd5423027938262a071d4072846016da6f9225e4836d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6000224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aeec582954a162c8fb264ed5e6fa0c143bebbe9b755034ea3a2cb6d9ea92fa0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:42:01 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:42:02 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:44:46 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:44:46 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:44:46 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:44:46 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:44:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:44:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:44:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:44:46 GMT
USER memcache
# Mon, 06 Jul 2026 21:44:46 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:44:46 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09ab42e9fa209561ea35daa341e0c8b7840004d01353cc66a0fc8ebfba557a81`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45ad51dfd812c83d08ee5e405f4aa86ae6e735e02525178ce71feae27365c2a0`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 126.3 KB (126251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85d469d6b6b1e3b775fe5fe688def9850c709a6baed475555f1bbf86568749a3`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 2.1 MB (2059215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dddc956aa4fc60444b4d8984d1191ef930b711b263d6dba62b3e8109db1dd376`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92ede20e44eec94165101cde31c847b60fb02a26d0f32608851af2406139c96d`  
		Last Modified: Mon, 06 Jul 2026 21:45:01 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:0c8a3274873521aa4eaf05ee6bed653147bf23787d0237504c685fcbcca987b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e8b08bf8ba35127924f8bf0a7bd38cdbe4611ca3be7eb03883f11f8a106f60e`

```dockerfile
```

-	Layers:
	-	`sha256:4cd76b089083157c73c2fc7f020e42f03ae6146c8526f3a002aedd79855d755f`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1baceadbe03e9e6d2078a0728a365e375cb5a7b949807fbb2d1ad605006f4fbb`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; riscv64

```console
$ docker pull memcached@sha256:ba5bf40b4adc1fe04f32e2e239fa9c0020d4e89bf4079493f8bc11a92c8f4b51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5738070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d12fbf86d6880aaa9d517425d9cecddcf545ba87e577a039dea9ea99ad53d8a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Fri, 19 Jun 2026 08:28:27 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Fri, 19 Jun 2026 08:28:31 GMT
RUN apk add --no-cache libsasl # buildkit
# Fri, 19 Jun 2026 08:41:52 GMT
ENV MEMCACHED_VERSION=1.6.42
# Fri, 19 Jun 2026 08:41:52 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.42.tar.gz
# Fri, 19 Jun 2026 08:41:52 GMT
ENV MEMCACHED_SHA1=de453f58745238c70091fe243549c406aabdc3c5
# Fri, 19 Jun 2026 08:41:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 19 Jun 2026 08:41:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 19 Jun 2026 08:41:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 19 Jun 2026 08:41:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Jun 2026 08:41:53 GMT
USER memcache
# Fri, 19 Jun 2026 08:41:53 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 19 Jun 2026 08:41:53 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e09d95a0f414638430c0cd3ecfdcce75606201917a27c7cb2ce1e34cb928b26a`  
		Last Modified: Fri, 19 Jun 2026 08:42:17 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a5335c7af79a1b08af55862ba77644afdae5544d9a7871e45c91b364bd4f71d`  
		Last Modified: Fri, 19 Jun 2026 08:42:17 GMT  
		Size: 108.9 KB (108888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3622a6ea71515db1ef566afdbb121daed1f408aacf1519f4173b40dabe2ae627`  
		Last Modified: Fri, 19 Jun 2026 08:42:17 GMT  
		Size: 2.1 MB (2053467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef1db0e3e31ca3f2830f5404436e92b1862a4078adefacacec09a9580a3ad0a2`  
		Last Modified: Fri, 19 Jun 2026 08:42:17 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1463b0fd26a37659aaad7f99696e5213764ad03bb094f40836c3309713d7a60`  
		Last Modified: Fri, 19 Jun 2026 08:42:18 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:aadb3b9338400b87692f95e00931e43940f8d6ddd13f046bd256848dd825e458
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bde4b5a4a468d795a5f58dd934b371adfe72cd2ae24e166e1258ad65aa455a56`

```dockerfile
```

-	Layers:
	-	`sha256:debb70180cf674562f7ca321270e3dfa350c5d1596c05dbfcc27b38c65652528`  
		Last Modified: Fri, 19 Jun 2026 08:42:17 GMT  
		Size: 94.3 KB (94300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a895bbe0bfec24678c1c92ddd283cb7392e0e8d229f31c769a23c95224c0d371`  
		Last Modified: Fri, 19 Jun 2026 08:42:17 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:c86f0452a9f8d13f8b5c712bf53ecad0fa72512a4e6efe178083a86c56d2c212
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5825105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:512a544a637f08526e42bf2c90d41f3684850faa148de5a7ea4756ee704eb2da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:38:26 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:38:26 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:36 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:36 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30370c595c056e472723b791337c26580ebbea923bded312d0d4eb296b2db741`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:564d2d22cc556ef61fe24d9da38570eac3ba29e020c7a6cb600c63402ef1c04f`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 114.3 KB (114290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:953e49ef00d23f602cd8f70ea70fa934c041873b3d03763c44e5882ddace30a4`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 2.0 MB (2000145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53337d858b4e79b1fc2dae92dfdea190a06175a55244c43910ea36be1b4a0e78`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1e36d6e60879e2d185ee42a79191f0f8ac04cfc130cc0bebd0beca60d2aa9e4`  
		Last Modified: Mon, 06 Jul 2026 21:41:42 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:16066c85c99eca03d74a3ccb2a1cb6ef26bd70cd1abe603e08b140aad9193229
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a25456e690ef0d7e78b9c4006d6d0a01e3dfa626d96cafca25bc3b3b6f346cc`

```dockerfile
```

-	Layers:
	-	`sha256:31477740d9cd110c119a3d7f77d6662e027c9eff9615b5d8cabba62881b75075`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bb0231be0d089eb94b312c2bc62bdcae87600bb7fd6f9edfdf6d0ecec53bd57`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1-alpine3.24`

```console
$ docker pull memcached@sha256:cd4b42e6cee87000353712623f8a4be411e5a06f61bc1fbc6864fb9b23402fe4
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
$ docker pull memcached@sha256:d24f1303e8fd2dfb03fcb756adaf6867879cdfece89c08a6e9f4a677ca8dadf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5922727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad6151f346a2bd04c3b277f22740e18cc3c044354e521cc519c92a8c84451d60`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:39:01 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:39:02 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:36 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:36 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72537507ddd4bf18613bb8a53b242da50a994ed2f47cea30e1f6c88efbee2a78`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7faa191428d835180295942536af93f611e77740cf097b3e8df24f089e6627e9`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 106.1 KB (106072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3a8994078ed716f7b7d9bf0c3d456fc16a781de709310bb595531d35228ff54`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 2.0 MB (1968919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16fb68556a5eec82c8c88c2fed3144af0ed956d9f11c575f55e2da6863dda7a5`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1e36d6e60879e2d185ee42a79191f0f8ac04cfc130cc0bebd0beca60d2aa9e4`  
		Last Modified: Mon, 06 Jul 2026 21:41:42 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:d930c2046b540ebb74e7a5b8fd2a6fdf468da9ff2293cb4dd827472ff5031831
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fe897885a6263d1427bd866148b454137670c770f04e071d66d2feff8085250`

```dockerfile
```

-	Layers:
	-	`sha256:51f430a0e1d8ff67dc96eae767c7f0711a583e92c9ff33dd9fe9a50d9efcff88`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0743f7aa18fbb7703101bbeab0bd523094977be5ea27494e0164581ec1c92a3b`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine3.24` - linux; arm variant v6

```console
$ docker pull memcached@sha256:73acf9d22c4bdbd48aa2de5bf1e220ce75378480569c24ba9c18811287233a1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5573817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2e136b1ff362f5bdc367ccbf1880be64dc78c0fc8b0d253d79c397c576ea533`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:38:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:38:34 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:51:09 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:51:09 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:51:09 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:51:09 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:51:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:51:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:51:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:51:10 GMT
USER memcache
# Mon, 06 Jul 2026 21:51:10 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:51:10 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:293879983da14bd43faca40a46b9a0ce087b83f1d447e044e4951610593ebc91`  
		Last Modified: Mon, 06 Jul 2026 21:51:13 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e795a1b77921c10d97c236f11aa756351bf412f979662f1acbc3c2ad62fd05e`  
		Last Modified: Mon, 06 Jul 2026 21:51:13 GMT  
		Size: 102.6 KB (102628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8ba8eb1b8820dd0e9f0738b9b8e91c53acd9c3d9940d0432e0c8f2ad44217aa`  
		Last Modified: Mon, 06 Jul 2026 21:51:14 GMT  
		Size: 1.9 MB (1916390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:106dee74d5261f5e566fd9e348ba286421a4d1e483cb173f96bed3521dcc687a`  
		Last Modified: Mon, 06 Jul 2026 21:51:13 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d806648e37a5bc66afa3a2b45eff733ca3b8570c352bf6036f8b077bfde9bbe5`  
		Last Modified: Mon, 06 Jul 2026 21:51:14 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:bae0d2964b7b9f665f5e8dd26b51a2cfe10653f7ef8757d7d4cc60c4f40ca919
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5e30efe0e3752cd34280817d416a8e537c8012155b6178564abb4bb870ef4c5`

```dockerfile
```

-	Layers:
	-	`sha256:c2e8d0f0d8af34b5281ae36052d97c6b73b3fe9383a62a22f836382f3bff4b76`  
		Last Modified: Mon, 06 Jul 2026 21:51:13 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine3.24` - linux; arm variant v7

```console
$ docker pull memcached@sha256:75e71baae6434f00bc3570e729ba883ff0b3934a99ef187ffb20c47bf6515cc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5231085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81e055b173d6abaed66778f7b1de84e94a2cd5148a272964eac221122af04b3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:39:18 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:39:19 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:42:14 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:42:14 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:42:14 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:42:14 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:42:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:42:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:42:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:42:14 GMT
USER memcache
# Mon, 06 Jul 2026 21:42:14 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:42:14 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13a07349f740cf45b2454a9b34effb1074b3eafef6ec97a67946c2bfc8f0a609`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:182bc05d2ae8d54d4f592cc6a72c1f46e7dd676340c1bd306f81a0f773e3a694`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 92.4 KB (92369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30172b660bdb95335d0d41ef5f5865718d434cd394d65a78795782f39fa8a31d`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 1.9 MB (1876756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3279f748468a4e79c099100b34acfca01161d3a4c7e3491050d37b9750ec0de5`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2271c46a5c6b2e2f9a4d581113b47bbc27ae767c172026bb9a21b3532d2e7b33`  
		Last Modified: Mon, 06 Jul 2026 21:42:20 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:ee9bff19b784d2bfc1f4a6c997bda2fe5d2f569951169a6da4490dc9aabf38f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:878949ad5f39565e088eb87ab96a6e6d8be7f7be57e4a3ea2fffe2791f38276f`

```dockerfile
```

-	Layers:
	-	`sha256:8d693e5f45f27e0a1b3a67573b03d554ba4a78bae37e0dfe37efd9bb0ad7aad9`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ed989ea1e997e400d8acfe1b1ac32263efc1404a751615fce2355b24920f262`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:9c1f017b1a9c14d8367d0886615b2f4cf5dbeb0abe803cff62e1ccf763a83309
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6251555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c2345e75471f47c2aaf508a6c0aed3a6394293ab98a83467476f018dbd966b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:39:04 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:39:05 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:41:51 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:51 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:51 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:51 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:51 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:51 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6611430365db147600c92bd762f806ab97f387ae400dfededdb339ed761b38d7`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba750e4cc6a2574aa4c85ae98490be9a705504b4bacc27dc37393172a38113ad`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 121.9 KB (121857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b15b9832850c680687cd3e192fc2b47f402a577cc7936b1429f8bf960043115`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 1.9 MB (1945317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:186ad9601948dfa94625c72f2efeb90cec5a856cf8dfc961fe0fb100a7612ceb`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:252c6c60ae667ad99277f31f2eb6995dc3c97517567345a95b9bfb6bfc7f4973`  
		Last Modified: Mon, 06 Jul 2026 21:41:57 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:4bf91160995d46f465e01fc0d092960db99f29c302767ea7693e51fe04664e1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b66911cd710529f8661a583ca5293311eab2646f7c5df648420879ccfb96710f`

```dockerfile
```

-	Layers:
	-	`sha256:69745701c406c0a0eaeb9398f5a3408b0ed98dc5f7c9eec5b69224b44fae3a07`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd96cdd23bab41a8c795d813ad3bca912cb0390a4664e71979b2ce937af558ce`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 20.7 KB (20728 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine3.24` - linux; 386

```console
$ docker pull memcached@sha256:99e3a43ede008cdb2a7404fba0c0d589df056cf317fc4530a43e9a18432057ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5704609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4259473df875ca4b335a6f5fe39a294e95701a65977bdb72708000b400db44ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:39:47 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:39:48 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:42:36 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:42:36 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:42:36 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:42:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:42:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:42:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:42:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:42:36 GMT
USER memcache
# Mon, 06 Jul 2026 21:42:36 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:42:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61e1fdddad44a79ab90599c3a732f61d9fe751fc44b20138c34ddac45fd68ef5`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:678ab87dad9650d15a64f037d1c0d3983c1d49b794975d97c2497b8f9fd2bd57`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 110.7 KB (110733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b879347f774880c414c9983ecc840683885be02e16e79eb8c9cdcaac056637d7`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 1.9 MB (1922386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc4f23ef17cd394d2b5b3c4ff9ace06ec964a74e6e4b1054ce2dab36ef9cf7ac`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02e0bb4aee5e6e8f857e6e53c13a85acc2ba624960d52685b39ca7a7824a257d`  
		Last Modified: Mon, 06 Jul 2026 21:42:42 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:39a379ca667774a1849a872c123e3fda6a96b382db34f7ae07976d3ddb3fb1cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a30528c0c40b7f3cd7ac8a1d6ba7b49c8754f8382944c04619fb7bf92ed3d05a`

```dockerfile
```

-	Layers:
	-	`sha256:bb24486845b08d5db14f90720802598a00f4e035591469f741bbcb785aa4b0bf`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62cc5e8bf2657465cce189ee097f4812ba020e1eebad5596743a2358bce26893`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine3.24` - linux; ppc64le

```console
$ docker pull memcached@sha256:7d2ba96d4241409819ccd5423027938262a071d4072846016da6f9225e4836d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6000224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aeec582954a162c8fb264ed5e6fa0c143bebbe9b755034ea3a2cb6d9ea92fa0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:42:01 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:42:02 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:44:46 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:44:46 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:44:46 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:44:46 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:44:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:44:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:44:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:44:46 GMT
USER memcache
# Mon, 06 Jul 2026 21:44:46 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:44:46 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09ab42e9fa209561ea35daa341e0c8b7840004d01353cc66a0fc8ebfba557a81`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45ad51dfd812c83d08ee5e405f4aa86ae6e735e02525178ce71feae27365c2a0`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 126.3 KB (126251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85d469d6b6b1e3b775fe5fe688def9850c709a6baed475555f1bbf86568749a3`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 2.1 MB (2059215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dddc956aa4fc60444b4d8984d1191ef930b711b263d6dba62b3e8109db1dd376`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92ede20e44eec94165101cde31c847b60fb02a26d0f32608851af2406139c96d`  
		Last Modified: Mon, 06 Jul 2026 21:45:01 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:0c8a3274873521aa4eaf05ee6bed653147bf23787d0237504c685fcbcca987b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e8b08bf8ba35127924f8bf0a7bd38cdbe4611ca3be7eb03883f11f8a106f60e`

```dockerfile
```

-	Layers:
	-	`sha256:4cd76b089083157c73c2fc7f020e42f03ae6146c8526f3a002aedd79855d755f`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1baceadbe03e9e6d2078a0728a365e375cb5a7b949807fbb2d1ad605006f4fbb`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine3.24` - linux; riscv64

```console
$ docker pull memcached@sha256:ba5bf40b4adc1fe04f32e2e239fa9c0020d4e89bf4079493f8bc11a92c8f4b51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5738070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d12fbf86d6880aaa9d517425d9cecddcf545ba87e577a039dea9ea99ad53d8a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Fri, 19 Jun 2026 08:28:27 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Fri, 19 Jun 2026 08:28:31 GMT
RUN apk add --no-cache libsasl # buildkit
# Fri, 19 Jun 2026 08:41:52 GMT
ENV MEMCACHED_VERSION=1.6.42
# Fri, 19 Jun 2026 08:41:52 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.42.tar.gz
# Fri, 19 Jun 2026 08:41:52 GMT
ENV MEMCACHED_SHA1=de453f58745238c70091fe243549c406aabdc3c5
# Fri, 19 Jun 2026 08:41:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 19 Jun 2026 08:41:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 19 Jun 2026 08:41:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 19 Jun 2026 08:41:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Jun 2026 08:41:53 GMT
USER memcache
# Fri, 19 Jun 2026 08:41:53 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 19 Jun 2026 08:41:53 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e09d95a0f414638430c0cd3ecfdcce75606201917a27c7cb2ce1e34cb928b26a`  
		Last Modified: Fri, 19 Jun 2026 08:42:17 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a5335c7af79a1b08af55862ba77644afdae5544d9a7871e45c91b364bd4f71d`  
		Last Modified: Fri, 19 Jun 2026 08:42:17 GMT  
		Size: 108.9 KB (108888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3622a6ea71515db1ef566afdbb121daed1f408aacf1519f4173b40dabe2ae627`  
		Last Modified: Fri, 19 Jun 2026 08:42:17 GMT  
		Size: 2.1 MB (2053467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef1db0e3e31ca3f2830f5404436e92b1862a4078adefacacec09a9580a3ad0a2`  
		Last Modified: Fri, 19 Jun 2026 08:42:17 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1463b0fd26a37659aaad7f99696e5213764ad03bb094f40836c3309713d7a60`  
		Last Modified: Fri, 19 Jun 2026 08:42:18 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:aadb3b9338400b87692f95e00931e43940f8d6ddd13f046bd256848dd825e458
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bde4b5a4a468d795a5f58dd934b371adfe72cd2ae24e166e1258ad65aa455a56`

```dockerfile
```

-	Layers:
	-	`sha256:debb70180cf674562f7ca321270e3dfa350c5d1596c05dbfcc27b38c65652528`  
		Last Modified: Fri, 19 Jun 2026 08:42:17 GMT  
		Size: 94.3 KB (94300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a895bbe0bfec24678c1c92ddd283cb7392e0e8d229f31c769a23c95224c0d371`  
		Last Modified: Fri, 19 Jun 2026 08:42:17 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine3.24` - linux; s390x

```console
$ docker pull memcached@sha256:c86f0452a9f8d13f8b5c712bf53ecad0fa72512a4e6efe178083a86c56d2c212
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5825105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:512a544a637f08526e42bf2c90d41f3684850faa148de5a7ea4756ee704eb2da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:38:26 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:38:26 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:36 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:36 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30370c595c056e472723b791337c26580ebbea923bded312d0d4eb296b2db741`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:564d2d22cc556ef61fe24d9da38570eac3ba29e020c7a6cb600c63402ef1c04f`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 114.3 KB (114290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:953e49ef00d23f602cd8f70ea70fa934c041873b3d03763c44e5882ddace30a4`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 2.0 MB (2000145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53337d858b4e79b1fc2dae92dfdea190a06175a55244c43910ea36be1b4a0e78`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1e36d6e60879e2d185ee42a79191f0f8ac04cfc130cc0bebd0beca60d2aa9e4`  
		Last Modified: Mon, 06 Jul 2026 21:41:42 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:16066c85c99eca03d74a3ccb2a1cb6ef26bd70cd1abe603e08b140aad9193229
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a25456e690ef0d7e78b9c4006d6d0a01e3dfa626d96cafca25bc3b3b6f346cc`

```dockerfile
```

-	Layers:
	-	`sha256:31477740d9cd110c119a3d7f77d6662e027c9eff9615b5d8cabba62881b75075`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bb0231be0d089eb94b312c2bc62bdcae87600bb7fd6f9edfdf6d0ecec53bd57`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1-trixie`

```console
$ docker pull memcached@sha256:c7d4a9f4398df209a23dd8025a04fde0a415709cda293e2cad6496cf9888d1ef
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
$ docker pull memcached@sha256:656a6cfc8ed69f32c4b5a126e5f67b0af87fb4f3397bf938dcffba145f524f23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32204955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a090ff2819a8baa8927a1504d25e57248289de7d035c09b27016aa6778b20671`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:38:59 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:39:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:41:47 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:47 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:47 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:47 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:47 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:47 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:47 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fbf1c8c52a26c7246a7962c9ff3b39c4d01827da5bec5975bf09972034ebd07`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a856d8d29335e9bb89c4ac70a692292e2d9289888f82e2493fa33920a6818cf2`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 136.7 KB (136699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f462e97e45ac49cd49fbd7b6c887d9f60b02ef658985bae749a545250a982db`  
		Last Modified: Mon, 06 Jul 2026 21:41:54 GMT  
		Size: 2.3 MB (2281324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01f91d925073819971c78c22c597acd3d11339a7bc0ecbec0fc1f29dfc75e3ee`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d497385966554717bce54e3bd2e58aa97e93409de213297aafe5ed2b7b284f71`  
		Last Modified: Mon, 06 Jul 2026 21:41:54 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:cbbe127b3e2a069ef5f514d27653fc24242c02c9eac9b2643b8b1fe547f90e4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e980845da04a5b245b3b3b06501510f29735c64ad84ec1958397e73ecf8f2af3`

```dockerfile
```

-	Layers:
	-	`sha256:b2ba902ea7ef1dd0aeaa90d23c7408cd52b48cfd0d4de1771bd6d7cb26068ba3`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 2.0 MB (2008368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd3e3320b0b76edfb87dc1cecd7798b471b2db3ffe01c26cec2c36862ac2b3af`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; arm variant v5

```console
$ docker pull memcached@sha256:e12299225626e23ced92dbec45865333ae66504d813c8258ba4ca8fd37aab586
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30317940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef73b1d7a006c523b24f707628218537bd2256d972ad65e394a1b170dff6f9c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:38:33 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:38:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:41:54 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:54 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:54 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:54 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:54 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:54 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:da43bc6a07a9cd7cc23faa538adc0797482747316b5a85b9f3f94ed17f6c1a2a`  
		Last Modified: Wed, 24 Jun 2026 00:28:12 GMT  
		Size: 28.0 MB (27959221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:912e0265a9bef2049f461667c203b04c5d953f55d3bad7fd06009d17233e8c1b`  
		Last Modified: Mon, 06 Jul 2026 21:42:00 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a61804d5bb4f8881f2bda238950beb1d4061cb3cd45e3bcd4c73e45ae8cb368`  
		Last Modified: Mon, 06 Jul 2026 21:42:01 GMT  
		Size: 144.2 KB (144184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3f95616646814d54f714ea24851e4b510b62aaf05006e19ab3c2b4fff72e31a`  
		Last Modified: Mon, 06 Jul 2026 21:42:01 GMT  
		Size: 2.2 MB (2213023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d33b96d1e686356248b385146a036f7722b228e793cb44a4139fc3e911377f2`  
		Last Modified: Mon, 06 Jul 2026 21:42:01 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef3d232ed4ac1acf774bc29d4e5bb041150ae0690a6ad8dfbc827d39ba67e4f`  
		Last Modified: Mon, 06 Jul 2026 21:42:02 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:04ec002d7fc434c575de2e3b150bc2f94892905ab29a1442fde1aaf52d91559f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:657d5c8bd24ce14e139f22cd05551b37ad0f747e0f17d0803f7f72904eb45338`

```dockerfile
```

-	Layers:
	-	`sha256:5a134601bcd31b5b86b890a3e2dfa44f32c19503a7f8132d46df61e1191c91a7`  
		Last Modified: Mon, 06 Jul 2026 21:42:01 GMT  
		Size: 2.0 MB (2011371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95754d0d5ed2078de0d4c37786bf409b4f5de4e43cdb36388ff5eb2b7570f2bd`  
		Last Modified: Mon, 06 Jul 2026 21:42:00 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; arm variant v7

```console
$ docker pull memcached@sha256:6f681e43471b6ba99e8861c81f644754db4aa35554ee097b2b438f7e7c5c267b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28514937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdc0ab0d0e5f8809ea81cacb053a5820256c72a85d46672a50396adcffc9c385`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:39:20 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:39:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:42:34 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:42:34 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:42:34 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:42:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:42:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:42:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:42:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:42:34 GMT
USER memcache
# Mon, 06 Jul 2026 21:42:34 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:42:34 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16710e5b885dd2f9f0d4f3a68d20ee3052ef7eeebb026cd8c76860317060c3f4`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d69824716fa350bb35cb1be065c8493b5241e9cb5a07318f5d7f2a4b81802ef`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 135.4 KB (135382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:293dd91233448f2cc893f3db5669239f4a64de61f71eb8f6b1b3a131e8e6356d`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 2.2 MB (2166986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b180e4022ce73ec0e0049fe1d68843ba4601570343a6f6b578624174351963d3`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81192fef36610c3f90e846a5959b26829e120dbf32a909e3d1c287e542a86895`  
		Last Modified: Mon, 06 Jul 2026 21:42:42 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:1ce1c4df7e869abd47eeb3f73eac8583fccbd5c057a7d74957955276e22a6170
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2032132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee61bcf236cc2e3765d25b70b40c452f036895398f82a37ce9e765b6e31fb21e`

```dockerfile
```

-	Layers:
	-	`sha256:a1e168963faef5a94750a3afe81a447b1c0b24daf7ae75b35eadba8c13579e06`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 2.0 MB (2009828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aaca361028b5c03cfe69d0f2877a95f4b68d27086bc94c0785cb7fcbe73708c2`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:61b1d3943ec1fef8b57a16150315cab848d09a2a5cd95b4f2373e9bf069927c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32566996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09b7981a23c3b8ad6c6e27145ee0ee1eadff16c409312807abea1fb6c90456dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:39:02 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:39:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:42:03 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:42:03 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:42:03 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:42:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:42:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:42:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:42:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:42:03 GMT
USER memcache
# Mon, 06 Jul 2026 21:42:03 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:42:03 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb3a9db0b552ee84467be61022b454f3f8d3fcf6645f1ef421dbc4e5dc17c1f7`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2baa2ada261da15b63b6aa4545f54303c26da020d8d73b28aad12fbeb383e381`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 153.5 KB (153501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63a169b8dfa3c4e20bdac3db66840fbc677728ec228cc7ff4197cdbc2d70692d`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 2.3 MB (2263430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12575e3ba7dcfe911406d84a26c38fb3285198d8565de14f54e7d0ee83515141`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7471454cf4c9d8bf3e1028d4f9890185ec1e6216908733ab24eb5a4c8cad3154`  
		Last Modified: Mon, 06 Jul 2026 21:42:11 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:a6f5908bfc77290cbd322b08baa25baf20cd7d918e4739ee8f44ecb27c5e9954
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55a2398b634f5aa30e528ce79af556a18b2ca9c8c967290e8855b2db75050aa5`

```dockerfile
```

-	Layers:
	-	`sha256:d905dff6358a991386cde295b73a010f87a7259a80916ed7a6a56b4e32f03b5e`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 2.0 MB (2008676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e569c815cafd8f0caa21ee5639693ff9fb5169b3e266aaa4ca20d90243c0f47`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; 386

```console
$ docker pull memcached@sha256:5c54ebcc9adda03074cd6f582dc9d47f2c597af9347338bf69a815476aba85df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33676183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:972f94eb4da4e3cadae40e616f31b0c988375d1372f4de37403c9d35de40ad89`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:39:45 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:39:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:42:55 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:42:55 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:42:55 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:42:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:42:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:42:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:42:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:42:55 GMT
USER memcache
# Mon, 06 Jul 2026 21:42:55 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:42:55 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:984d3baa100eb8c4d7c83b7c23b4748e508aa6ed5903297f02be90a681f52d41`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 31.3 MB (31301210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40a5a431eae5f7382bbe3702131b8e5257dde1ab3f42b0bdae2017173d030bfb`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1e45b65fb40b92a3640f6c3f98c81c726756107a1a3cf54e9556839b5434314`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 147.5 KB (147522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c8bf709284a2d6ce9b302597a13416dceb853b25f1df95330c09a2a247c458d`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 2.2 MB (2225936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64199d124a7a80324df2952272fbeeca3578646cdc58dc2452ff83a7cb05ff80`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0a2c694d180348fe8a62f58a1cc8141df9eb8cc8e77aa8d7fc2bc57cbde7693`  
		Last Modified: Mon, 06 Jul 2026 21:43:03 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:854626f034a18e92820f9cab215dc02f1ff1a8c4a00c40561cc65029d83a2f3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2027620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10d6da14e5186bdd10781072e2d4a8370bc308ffc7e5f4e1564a6a5eededac39`

```dockerfile
```

-	Layers:
	-	`sha256:6e31f8780d98fc1b31d8f166958e7cd9a63a656d09bfacce23983c74ea9322d0`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 2.0 MB (2005525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:28abd28639656318b2a292318661c673a1965a0817aee3ebda62c8f3019a1059`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; ppc64le

```console
$ docker pull memcached@sha256:8f5c7302d6d437cff3c3823ce82b23e5b3cdbd91aeddea51fe63f3dbc86526b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.7 MB (36655139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbf273f8d7258224f3d1d7b29b885ef6fdc80a930babdc82f0fd5ebfcd022f30`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:41:59 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:42:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 22:05:05 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 22:05:05 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 22:05:05 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 22:05:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 22:05:06 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 22:05:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 22:05:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 22:05:07 GMT
USER memcache
# Mon, 06 Jul 2026 22:05:07 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 22:05:07 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c28d0960fd8ccb8d0d804cad9b7ac5adde1950d50a041fa6d9667b7574818b`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e8cde463d54b5d9ccc864b2a22a3fb1cb6d32662e187d2161215ccf3fae998`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 170.4 KB (170371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab94abc799598aba483c2ac576bfb440dedb2386e4afa185f536f3fcc1f38546`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 2.9 MB (2876865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8005a8ca890b984bdf2737e11b5d86d0d3db6f003c9fad496aa7107e57a616f7`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9fcd1b9234dadfc95a6d9c67e86f29e354b2a757eb1fa564f7047034d98b3ed`  
		Last Modified: Mon, 06 Jul 2026 22:05:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:ea4a2604bb3579325c6ab97f9b0cb6e9cb56296e1e6350e9e7bacbb42c6a47dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2034195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dde9ebb92580e852e351418fa4adf0509fd654f32375d26113b5208169eda80e`

```dockerfile
```

-	Layers:
	-	`sha256:1b4c5eddb6aa89c1696286ead3633a6d5ed17e39ee9c6ba50002625d89d16752`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 2.0 MB (2011969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9950a833f3ed093b05d5de4ffbdb64942119af8e5fc3b731f9584c2bc961843e`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 22.2 KB (22226 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; riscv64

```console
$ docker pull memcached@sha256:1d09cc6da0fcd7fbfd1eb9a04ab9aeb8557f8a977d85bc7758ddc33f1fae7e8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30626877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e932fab34f25980444b8d9d4042f4f019d633ae41731c4d58de9d0425aacbb5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 20:53:15 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 24 Jun 2026 20:53:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 25 Jun 2026 19:11:35 GMT
ENV MEMCACHED_VERSION=1.6.42
# Thu, 25 Jun 2026 19:11:35 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.42.tar.gz
# Thu, 25 Jun 2026 19:11:35 GMT
ENV MEMCACHED_SHA1=de453f58745238c70091fe243549c406aabdc3c5
# Thu, 25 Jun 2026 19:11:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 25 Jun 2026 19:11:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 25 Jun 2026 19:11:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 25 Jun 2026 19:11:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Jun 2026 19:11:35 GMT
USER memcache
# Thu, 25 Jun 2026 19:11:35 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 25 Jun 2026 19:11:35 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:58bface994ba631e609596a2ca5032d9d75de27f1b6476034b581e226205adab`  
		Last Modified: Wed, 24 Jun 2026 03:41:42 GMT  
		Size: 28.3 MB (28282378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88be0d85b1f48be753592f62cac7ef80c23a61c7848026bd2d489c40d2214a58`  
		Last Modified: Thu, 25 Jun 2026 19:12:23 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5924e63da94311a18a309f02e655774d7a7dd21bf3dc267215c524167fb7ca02`  
		Last Modified: Thu, 25 Jun 2026 19:12:23 GMT  
		Size: 133.1 KB (133093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acfa9af5e6df6f7145e6f80ab61869e6613b9f5caa0cfa94788cbf01b3041add`  
		Last Modified: Thu, 25 Jun 2026 19:12:23 GMT  
		Size: 2.2 MB (2209890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ace1c66f882f3224670cc80ac0c47197433c688d59a6bad4e5e137d6947a7d9`  
		Last Modified: Thu, 25 Jun 2026 19:12:23 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:470dc087e4a89d9d58d8fa29a67ac089e3c4b569f1c1c79265bfe24ba39500d2`  
		Last Modified: Thu, 25 Jun 2026 19:12:24 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:10dc6cdb2cd2787d533382c9b0e6ae2f8f3b637c254e1b54762fc75d6b7c2066
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2024559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:173dffb05aa61f0096ec844832f392e17573e61865ef528ee8b742faa7e4b6db`

```dockerfile
```

-	Layers:
	-	`sha256:69ed82bb373c86c8fbec635b83221f89933079ee40e6fcf48418d1a69ca5bb89`  
		Last Modified: Thu, 25 Jun 2026 19:12:23 GMT  
		Size: 2.0 MB (2002332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cea64cfdecc1c5a9f3c417e6a679e88cd0613790ff8f658ca9e3ec73325fa9cc`  
		Last Modified: Thu, 25 Jun 2026 19:12:23 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; s390x

```console
$ docker pull memcached@sha256:d3cd3e513f2ddee32452ba0ec987fa00b5e1fb1d8db488eaf4fbe26b5d76074c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32292489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5460628bdf70beec088e32d0e29e4bfdc0f288d2df4a23fb962ca9ab72e0d959`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:38:22 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:38:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:41:41 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:41 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:41 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:41 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:41 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd3b24daa3730c2808288ea42c60ca7198480d38cea1e21d7cfe2adc3844917`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba2cdc589f233d4d27d14cf3372db956515683acd0fb9cb15af8b293489125d5`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 140.5 KB (140525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33665ac46f2cf8ddf33ff9813a3727015c6dcc7d0c0f089feafe19ae89e34adb`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 2.3 MB (2299071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e96808b26b5232fb910ecf5cdc8493ae86733873c9f25bfa119fafa1c55b35c6`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dece698c0594201d0475a857aef447a96b29dbe79232e3557f4b64ba5741d09`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:3dd79394e3bb85b237653f075e202aa7f0c15898c5c5b1fe856df01cf9290536
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:463e703a269bd4656b96a53f3edcf89aa6c7b4270b4ba2f5be5b7da5304db134`

```dockerfile
```

-	Layers:
	-	`sha256:9fb3957b58d9cfc05cffe13f8e337f7a892cc305727f708d376fed40ce5fa0b1`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 2.0 MB (2009805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0635cd2ab613bff3b59e1c667e4c91d4c53f0e3375457d65df65880d46c59fed`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 22.2 KB (22152 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6`

```console
$ docker pull memcached@sha256:c7d4a9f4398df209a23dd8025a04fde0a415709cda293e2cad6496cf9888d1ef
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
$ docker pull memcached@sha256:656a6cfc8ed69f32c4b5a126e5f67b0af87fb4f3397bf938dcffba145f524f23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32204955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a090ff2819a8baa8927a1504d25e57248289de7d035c09b27016aa6778b20671`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:38:59 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:39:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:41:47 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:47 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:47 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:47 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:47 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:47 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:47 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fbf1c8c52a26c7246a7962c9ff3b39c4d01827da5bec5975bf09972034ebd07`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a856d8d29335e9bb89c4ac70a692292e2d9289888f82e2493fa33920a6818cf2`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 136.7 KB (136699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f462e97e45ac49cd49fbd7b6c887d9f60b02ef658985bae749a545250a982db`  
		Last Modified: Mon, 06 Jul 2026 21:41:54 GMT  
		Size: 2.3 MB (2281324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01f91d925073819971c78c22c597acd3d11339a7bc0ecbec0fc1f29dfc75e3ee`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d497385966554717bce54e3bd2e58aa97e93409de213297aafe5ed2b7b284f71`  
		Last Modified: Mon, 06 Jul 2026 21:41:54 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:cbbe127b3e2a069ef5f514d27653fc24242c02c9eac9b2643b8b1fe547f90e4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e980845da04a5b245b3b3b06501510f29735c64ad84ec1958397e73ecf8f2af3`

```dockerfile
```

-	Layers:
	-	`sha256:b2ba902ea7ef1dd0aeaa90d23c7408cd52b48cfd0d4de1771bd6d7cb26068ba3`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 2.0 MB (2008368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd3e3320b0b76edfb87dc1cecd7798b471b2db3ffe01c26cec2c36862ac2b3af`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; arm variant v5

```console
$ docker pull memcached@sha256:e12299225626e23ced92dbec45865333ae66504d813c8258ba4ca8fd37aab586
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30317940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef73b1d7a006c523b24f707628218537bd2256d972ad65e394a1b170dff6f9c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:38:33 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:38:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:41:54 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:54 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:54 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:54 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:54 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:54 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:da43bc6a07a9cd7cc23faa538adc0797482747316b5a85b9f3f94ed17f6c1a2a`  
		Last Modified: Wed, 24 Jun 2026 00:28:12 GMT  
		Size: 28.0 MB (27959221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:912e0265a9bef2049f461667c203b04c5d953f55d3bad7fd06009d17233e8c1b`  
		Last Modified: Mon, 06 Jul 2026 21:42:00 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a61804d5bb4f8881f2bda238950beb1d4061cb3cd45e3bcd4c73e45ae8cb368`  
		Last Modified: Mon, 06 Jul 2026 21:42:01 GMT  
		Size: 144.2 KB (144184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3f95616646814d54f714ea24851e4b510b62aaf05006e19ab3c2b4fff72e31a`  
		Last Modified: Mon, 06 Jul 2026 21:42:01 GMT  
		Size: 2.2 MB (2213023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d33b96d1e686356248b385146a036f7722b228e793cb44a4139fc3e911377f2`  
		Last Modified: Mon, 06 Jul 2026 21:42:01 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef3d232ed4ac1acf774bc29d4e5bb041150ae0690a6ad8dfbc827d39ba67e4f`  
		Last Modified: Mon, 06 Jul 2026 21:42:02 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:04ec002d7fc434c575de2e3b150bc2f94892905ab29a1442fde1aaf52d91559f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:657d5c8bd24ce14e139f22cd05551b37ad0f747e0f17d0803f7f72904eb45338`

```dockerfile
```

-	Layers:
	-	`sha256:5a134601bcd31b5b86b890a3e2dfa44f32c19503a7f8132d46df61e1191c91a7`  
		Last Modified: Mon, 06 Jul 2026 21:42:01 GMT  
		Size: 2.0 MB (2011371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95754d0d5ed2078de0d4c37786bf409b4f5de4e43cdb36388ff5eb2b7570f2bd`  
		Last Modified: Mon, 06 Jul 2026 21:42:00 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; arm variant v7

```console
$ docker pull memcached@sha256:6f681e43471b6ba99e8861c81f644754db4aa35554ee097b2b438f7e7c5c267b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28514937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdc0ab0d0e5f8809ea81cacb053a5820256c72a85d46672a50396adcffc9c385`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:39:20 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:39:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:42:34 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:42:34 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:42:34 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:42:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:42:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:42:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:42:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:42:34 GMT
USER memcache
# Mon, 06 Jul 2026 21:42:34 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:42:34 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16710e5b885dd2f9f0d4f3a68d20ee3052ef7eeebb026cd8c76860317060c3f4`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d69824716fa350bb35cb1be065c8493b5241e9cb5a07318f5d7f2a4b81802ef`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 135.4 KB (135382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:293dd91233448f2cc893f3db5669239f4a64de61f71eb8f6b1b3a131e8e6356d`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 2.2 MB (2166986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b180e4022ce73ec0e0049fe1d68843ba4601570343a6f6b578624174351963d3`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81192fef36610c3f90e846a5959b26829e120dbf32a909e3d1c287e542a86895`  
		Last Modified: Mon, 06 Jul 2026 21:42:42 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:1ce1c4df7e869abd47eeb3f73eac8583fccbd5c057a7d74957955276e22a6170
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2032132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee61bcf236cc2e3765d25b70b40c452f036895398f82a37ce9e765b6e31fb21e`

```dockerfile
```

-	Layers:
	-	`sha256:a1e168963faef5a94750a3afe81a447b1c0b24daf7ae75b35eadba8c13579e06`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 2.0 MB (2009828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aaca361028b5c03cfe69d0f2877a95f4b68d27086bc94c0785cb7fcbe73708c2`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:61b1d3943ec1fef8b57a16150315cab848d09a2a5cd95b4f2373e9bf069927c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32566996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09b7981a23c3b8ad6c6e27145ee0ee1eadff16c409312807abea1fb6c90456dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:39:02 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:39:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:42:03 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:42:03 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:42:03 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:42:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:42:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:42:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:42:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:42:03 GMT
USER memcache
# Mon, 06 Jul 2026 21:42:03 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:42:03 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb3a9db0b552ee84467be61022b454f3f8d3fcf6645f1ef421dbc4e5dc17c1f7`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2baa2ada261da15b63b6aa4545f54303c26da020d8d73b28aad12fbeb383e381`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 153.5 KB (153501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63a169b8dfa3c4e20bdac3db66840fbc677728ec228cc7ff4197cdbc2d70692d`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 2.3 MB (2263430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12575e3ba7dcfe911406d84a26c38fb3285198d8565de14f54e7d0ee83515141`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7471454cf4c9d8bf3e1028d4f9890185ec1e6216908733ab24eb5a4c8cad3154`  
		Last Modified: Mon, 06 Jul 2026 21:42:11 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:a6f5908bfc77290cbd322b08baa25baf20cd7d918e4739ee8f44ecb27c5e9954
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55a2398b634f5aa30e528ce79af556a18b2ca9c8c967290e8855b2db75050aa5`

```dockerfile
```

-	Layers:
	-	`sha256:d905dff6358a991386cde295b73a010f87a7259a80916ed7a6a56b4e32f03b5e`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 2.0 MB (2008676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e569c815cafd8f0caa21ee5639693ff9fb5169b3e266aaa4ca20d90243c0f47`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; 386

```console
$ docker pull memcached@sha256:5c54ebcc9adda03074cd6f582dc9d47f2c597af9347338bf69a815476aba85df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33676183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:972f94eb4da4e3cadae40e616f31b0c988375d1372f4de37403c9d35de40ad89`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:39:45 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:39:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:42:55 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:42:55 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:42:55 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:42:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:42:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:42:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:42:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:42:55 GMT
USER memcache
# Mon, 06 Jul 2026 21:42:55 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:42:55 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:984d3baa100eb8c4d7c83b7c23b4748e508aa6ed5903297f02be90a681f52d41`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 31.3 MB (31301210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40a5a431eae5f7382bbe3702131b8e5257dde1ab3f42b0bdae2017173d030bfb`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1e45b65fb40b92a3640f6c3f98c81c726756107a1a3cf54e9556839b5434314`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 147.5 KB (147522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c8bf709284a2d6ce9b302597a13416dceb853b25f1df95330c09a2a247c458d`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 2.2 MB (2225936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64199d124a7a80324df2952272fbeeca3578646cdc58dc2452ff83a7cb05ff80`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0a2c694d180348fe8a62f58a1cc8141df9eb8cc8e77aa8d7fc2bc57cbde7693`  
		Last Modified: Mon, 06 Jul 2026 21:43:03 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:854626f034a18e92820f9cab215dc02f1ff1a8c4a00c40561cc65029d83a2f3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2027620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10d6da14e5186bdd10781072e2d4a8370bc308ffc7e5f4e1564a6a5eededac39`

```dockerfile
```

-	Layers:
	-	`sha256:6e31f8780d98fc1b31d8f166958e7cd9a63a656d09bfacce23983c74ea9322d0`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 2.0 MB (2005525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:28abd28639656318b2a292318661c673a1965a0817aee3ebda62c8f3019a1059`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; ppc64le

```console
$ docker pull memcached@sha256:8f5c7302d6d437cff3c3823ce82b23e5b3cdbd91aeddea51fe63f3dbc86526b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.7 MB (36655139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbf273f8d7258224f3d1d7b29b885ef6fdc80a930babdc82f0fd5ebfcd022f30`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:41:59 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:42:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 22:05:05 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 22:05:05 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 22:05:05 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 22:05:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 22:05:06 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 22:05:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 22:05:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 22:05:07 GMT
USER memcache
# Mon, 06 Jul 2026 22:05:07 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 22:05:07 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c28d0960fd8ccb8d0d804cad9b7ac5adde1950d50a041fa6d9667b7574818b`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e8cde463d54b5d9ccc864b2a22a3fb1cb6d32662e187d2161215ccf3fae998`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 170.4 KB (170371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab94abc799598aba483c2ac576bfb440dedb2386e4afa185f536f3fcc1f38546`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 2.9 MB (2876865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8005a8ca890b984bdf2737e11b5d86d0d3db6f003c9fad496aa7107e57a616f7`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9fcd1b9234dadfc95a6d9c67e86f29e354b2a757eb1fa564f7047034d98b3ed`  
		Last Modified: Mon, 06 Jul 2026 22:05:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:ea4a2604bb3579325c6ab97f9b0cb6e9cb56296e1e6350e9e7bacbb42c6a47dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2034195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dde9ebb92580e852e351418fa4adf0509fd654f32375d26113b5208169eda80e`

```dockerfile
```

-	Layers:
	-	`sha256:1b4c5eddb6aa89c1696286ead3633a6d5ed17e39ee9c6ba50002625d89d16752`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 2.0 MB (2011969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9950a833f3ed093b05d5de4ffbdb64942119af8e5fc3b731f9584c2bc961843e`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 22.2 KB (22226 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; riscv64

```console
$ docker pull memcached@sha256:1d09cc6da0fcd7fbfd1eb9a04ab9aeb8557f8a977d85bc7758ddc33f1fae7e8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30626877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e932fab34f25980444b8d9d4042f4f019d633ae41731c4d58de9d0425aacbb5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 20:53:15 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 24 Jun 2026 20:53:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 25 Jun 2026 19:11:35 GMT
ENV MEMCACHED_VERSION=1.6.42
# Thu, 25 Jun 2026 19:11:35 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.42.tar.gz
# Thu, 25 Jun 2026 19:11:35 GMT
ENV MEMCACHED_SHA1=de453f58745238c70091fe243549c406aabdc3c5
# Thu, 25 Jun 2026 19:11:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 25 Jun 2026 19:11:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 25 Jun 2026 19:11:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 25 Jun 2026 19:11:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Jun 2026 19:11:35 GMT
USER memcache
# Thu, 25 Jun 2026 19:11:35 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 25 Jun 2026 19:11:35 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:58bface994ba631e609596a2ca5032d9d75de27f1b6476034b581e226205adab`  
		Last Modified: Wed, 24 Jun 2026 03:41:42 GMT  
		Size: 28.3 MB (28282378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88be0d85b1f48be753592f62cac7ef80c23a61c7848026bd2d489c40d2214a58`  
		Last Modified: Thu, 25 Jun 2026 19:12:23 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5924e63da94311a18a309f02e655774d7a7dd21bf3dc267215c524167fb7ca02`  
		Last Modified: Thu, 25 Jun 2026 19:12:23 GMT  
		Size: 133.1 KB (133093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acfa9af5e6df6f7145e6f80ab61869e6613b9f5caa0cfa94788cbf01b3041add`  
		Last Modified: Thu, 25 Jun 2026 19:12:23 GMT  
		Size: 2.2 MB (2209890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ace1c66f882f3224670cc80ac0c47197433c688d59a6bad4e5e137d6947a7d9`  
		Last Modified: Thu, 25 Jun 2026 19:12:23 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:470dc087e4a89d9d58d8fa29a67ac089e3c4b569f1c1c79265bfe24ba39500d2`  
		Last Modified: Thu, 25 Jun 2026 19:12:24 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:10dc6cdb2cd2787d533382c9b0e6ae2f8f3b637c254e1b54762fc75d6b7c2066
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2024559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:173dffb05aa61f0096ec844832f392e17573e61865ef528ee8b742faa7e4b6db`

```dockerfile
```

-	Layers:
	-	`sha256:69ed82bb373c86c8fbec635b83221f89933079ee40e6fcf48418d1a69ca5bb89`  
		Last Modified: Thu, 25 Jun 2026 19:12:23 GMT  
		Size: 2.0 MB (2002332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cea64cfdecc1c5a9f3c417e6a679e88cd0613790ff8f658ca9e3ec73325fa9cc`  
		Last Modified: Thu, 25 Jun 2026 19:12:23 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; s390x

```console
$ docker pull memcached@sha256:d3cd3e513f2ddee32452ba0ec987fa00b5e1fb1d8db488eaf4fbe26b5d76074c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32292489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5460628bdf70beec088e32d0e29e4bfdc0f288d2df4a23fb962ca9ab72e0d959`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:38:22 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:38:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:41:41 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:41 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:41 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:41 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:41 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd3b24daa3730c2808288ea42c60ca7198480d38cea1e21d7cfe2adc3844917`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba2cdc589f233d4d27d14cf3372db956515683acd0fb9cb15af8b293489125d5`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 140.5 KB (140525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33665ac46f2cf8ddf33ff9813a3727015c6dcc7d0c0f089feafe19ae89e34adb`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 2.3 MB (2299071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e96808b26b5232fb910ecf5cdc8493ae86733873c9f25bfa119fafa1c55b35c6`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dece698c0594201d0475a857aef447a96b29dbe79232e3557f4b64ba5741d09`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:3dd79394e3bb85b237653f075e202aa7f0c15898c5c5b1fe856df01cf9290536
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:463e703a269bd4656b96a53f3edcf89aa6c7b4270b4ba2f5be5b7da5304db134`

```dockerfile
```

-	Layers:
	-	`sha256:9fb3957b58d9cfc05cffe13f8e337f7a892cc305727f708d376fed40ce5fa0b1`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 2.0 MB (2009805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0635cd2ab613bff3b59e1c667e4c91d4c53f0e3375457d65df65880d46c59fed`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 22.2 KB (22152 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6-alpine`

```console
$ docker pull memcached@sha256:cd4b42e6cee87000353712623f8a4be411e5a06f61bc1fbc6864fb9b23402fe4
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
$ docker pull memcached@sha256:d24f1303e8fd2dfb03fcb756adaf6867879cdfece89c08a6e9f4a677ca8dadf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5922727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad6151f346a2bd04c3b277f22740e18cc3c044354e521cc519c92a8c84451d60`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:39:01 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:39:02 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:36 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:36 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72537507ddd4bf18613bb8a53b242da50a994ed2f47cea30e1f6c88efbee2a78`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7faa191428d835180295942536af93f611e77740cf097b3e8df24f089e6627e9`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 106.1 KB (106072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3a8994078ed716f7b7d9bf0c3d456fc16a781de709310bb595531d35228ff54`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 2.0 MB (1968919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16fb68556a5eec82c8c88c2fed3144af0ed956d9f11c575f55e2da6863dda7a5`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1e36d6e60879e2d185ee42a79191f0f8ac04cfc130cc0bebd0beca60d2aa9e4`  
		Last Modified: Mon, 06 Jul 2026 21:41:42 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:d930c2046b540ebb74e7a5b8fd2a6fdf468da9ff2293cb4dd827472ff5031831
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fe897885a6263d1427bd866148b454137670c770f04e071d66d2feff8085250`

```dockerfile
```

-	Layers:
	-	`sha256:51f430a0e1d8ff67dc96eae767c7f0711a583e92c9ff33dd9fe9a50d9efcff88`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0743f7aa18fbb7703101bbeab0bd523094977be5ea27494e0164581ec1c92a3b`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:73acf9d22c4bdbd48aa2de5bf1e220ce75378480569c24ba9c18811287233a1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5573817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2e136b1ff362f5bdc367ccbf1880be64dc78c0fc8b0d253d79c397c576ea533`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:38:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:38:34 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:51:09 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:51:09 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:51:09 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:51:09 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:51:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:51:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:51:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:51:10 GMT
USER memcache
# Mon, 06 Jul 2026 21:51:10 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:51:10 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:293879983da14bd43faca40a46b9a0ce087b83f1d447e044e4951610593ebc91`  
		Last Modified: Mon, 06 Jul 2026 21:51:13 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e795a1b77921c10d97c236f11aa756351bf412f979662f1acbc3c2ad62fd05e`  
		Last Modified: Mon, 06 Jul 2026 21:51:13 GMT  
		Size: 102.6 KB (102628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8ba8eb1b8820dd0e9f0738b9b8e91c53acd9c3d9940d0432e0c8f2ad44217aa`  
		Last Modified: Mon, 06 Jul 2026 21:51:14 GMT  
		Size: 1.9 MB (1916390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:106dee74d5261f5e566fd9e348ba286421a4d1e483cb173f96bed3521dcc687a`  
		Last Modified: Mon, 06 Jul 2026 21:51:13 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d806648e37a5bc66afa3a2b45eff733ca3b8570c352bf6036f8b077bfde9bbe5`  
		Last Modified: Mon, 06 Jul 2026 21:51:14 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:bae0d2964b7b9f665f5e8dd26b51a2cfe10653f7ef8757d7d4cc60c4f40ca919
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5e30efe0e3752cd34280817d416a8e537c8012155b6178564abb4bb870ef4c5`

```dockerfile
```

-	Layers:
	-	`sha256:c2e8d0f0d8af34b5281ae36052d97c6b73b3fe9383a62a22f836382f3bff4b76`  
		Last Modified: Mon, 06 Jul 2026 21:51:13 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine` - linux; arm variant v7

```console
$ docker pull memcached@sha256:75e71baae6434f00bc3570e729ba883ff0b3934a99ef187ffb20c47bf6515cc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5231085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81e055b173d6abaed66778f7b1de84e94a2cd5148a272964eac221122af04b3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:39:18 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:39:19 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:42:14 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:42:14 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:42:14 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:42:14 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:42:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:42:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:42:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:42:14 GMT
USER memcache
# Mon, 06 Jul 2026 21:42:14 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:42:14 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13a07349f740cf45b2454a9b34effb1074b3eafef6ec97a67946c2bfc8f0a609`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:182bc05d2ae8d54d4f592cc6a72c1f46e7dd676340c1bd306f81a0f773e3a694`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 92.4 KB (92369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30172b660bdb95335d0d41ef5f5865718d434cd394d65a78795782f39fa8a31d`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 1.9 MB (1876756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3279f748468a4e79c099100b34acfca01161d3a4c7e3491050d37b9750ec0de5`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2271c46a5c6b2e2f9a4d581113b47bbc27ae767c172026bb9a21b3532d2e7b33`  
		Last Modified: Mon, 06 Jul 2026 21:42:20 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:ee9bff19b784d2bfc1f4a6c997bda2fe5d2f569951169a6da4490dc9aabf38f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:878949ad5f39565e088eb87ab96a6e6d8be7f7be57e4a3ea2fffe2791f38276f`

```dockerfile
```

-	Layers:
	-	`sha256:8d693e5f45f27e0a1b3a67573b03d554ba4a78bae37e0dfe37efd9bb0ad7aad9`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ed989ea1e997e400d8acfe1b1ac32263efc1404a751615fce2355b24920f262`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:9c1f017b1a9c14d8367d0886615b2f4cf5dbeb0abe803cff62e1ccf763a83309
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6251555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c2345e75471f47c2aaf508a6c0aed3a6394293ab98a83467476f018dbd966b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:39:04 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:39:05 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:41:51 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:51 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:51 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:51 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:51 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:51 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6611430365db147600c92bd762f806ab97f387ae400dfededdb339ed761b38d7`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba750e4cc6a2574aa4c85ae98490be9a705504b4bacc27dc37393172a38113ad`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 121.9 KB (121857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b15b9832850c680687cd3e192fc2b47f402a577cc7936b1429f8bf960043115`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 1.9 MB (1945317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:186ad9601948dfa94625c72f2efeb90cec5a856cf8dfc961fe0fb100a7612ceb`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:252c6c60ae667ad99277f31f2eb6995dc3c97517567345a95b9bfb6bfc7f4973`  
		Last Modified: Mon, 06 Jul 2026 21:41:57 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:4bf91160995d46f465e01fc0d092960db99f29c302767ea7693e51fe04664e1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b66911cd710529f8661a583ca5293311eab2646f7c5df648420879ccfb96710f`

```dockerfile
```

-	Layers:
	-	`sha256:69745701c406c0a0eaeb9398f5a3408b0ed98dc5f7c9eec5b69224b44fae3a07`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd96cdd23bab41a8c795d813ad3bca912cb0390a4664e71979b2ce937af558ce`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 20.7 KB (20728 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine` - linux; 386

```console
$ docker pull memcached@sha256:99e3a43ede008cdb2a7404fba0c0d589df056cf317fc4530a43e9a18432057ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5704609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4259473df875ca4b335a6f5fe39a294e95701a65977bdb72708000b400db44ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:39:47 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:39:48 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:42:36 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:42:36 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:42:36 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:42:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:42:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:42:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:42:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:42:36 GMT
USER memcache
# Mon, 06 Jul 2026 21:42:36 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:42:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61e1fdddad44a79ab90599c3a732f61d9fe751fc44b20138c34ddac45fd68ef5`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:678ab87dad9650d15a64f037d1c0d3983c1d49b794975d97c2497b8f9fd2bd57`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 110.7 KB (110733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b879347f774880c414c9983ecc840683885be02e16e79eb8c9cdcaac056637d7`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 1.9 MB (1922386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc4f23ef17cd394d2b5b3c4ff9ace06ec964a74e6e4b1054ce2dab36ef9cf7ac`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02e0bb4aee5e6e8f857e6e53c13a85acc2ba624960d52685b39ca7a7824a257d`  
		Last Modified: Mon, 06 Jul 2026 21:42:42 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:39a379ca667774a1849a872c123e3fda6a96b382db34f7ae07976d3ddb3fb1cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a30528c0c40b7f3cd7ac8a1d6ba7b49c8754f8382944c04619fb7bf92ed3d05a`

```dockerfile
```

-	Layers:
	-	`sha256:bb24486845b08d5db14f90720802598a00f4e035591469f741bbcb785aa4b0bf`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62cc5e8bf2657465cce189ee097f4812ba020e1eebad5596743a2358bce26893`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:7d2ba96d4241409819ccd5423027938262a071d4072846016da6f9225e4836d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6000224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aeec582954a162c8fb264ed5e6fa0c143bebbe9b755034ea3a2cb6d9ea92fa0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:42:01 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:42:02 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:44:46 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:44:46 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:44:46 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:44:46 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:44:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:44:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:44:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:44:46 GMT
USER memcache
# Mon, 06 Jul 2026 21:44:46 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:44:46 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09ab42e9fa209561ea35daa341e0c8b7840004d01353cc66a0fc8ebfba557a81`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45ad51dfd812c83d08ee5e405f4aa86ae6e735e02525178ce71feae27365c2a0`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 126.3 KB (126251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85d469d6b6b1e3b775fe5fe688def9850c709a6baed475555f1bbf86568749a3`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 2.1 MB (2059215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dddc956aa4fc60444b4d8984d1191ef930b711b263d6dba62b3e8109db1dd376`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92ede20e44eec94165101cde31c847b60fb02a26d0f32608851af2406139c96d`  
		Last Modified: Mon, 06 Jul 2026 21:45:01 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:0c8a3274873521aa4eaf05ee6bed653147bf23787d0237504c685fcbcca987b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e8b08bf8ba35127924f8bf0a7bd38cdbe4611ca3be7eb03883f11f8a106f60e`

```dockerfile
```

-	Layers:
	-	`sha256:4cd76b089083157c73c2fc7f020e42f03ae6146c8526f3a002aedd79855d755f`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1baceadbe03e9e6d2078a0728a365e375cb5a7b949807fbb2d1ad605006f4fbb`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine` - linux; riscv64

```console
$ docker pull memcached@sha256:ba5bf40b4adc1fe04f32e2e239fa9c0020d4e89bf4079493f8bc11a92c8f4b51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5738070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d12fbf86d6880aaa9d517425d9cecddcf545ba87e577a039dea9ea99ad53d8a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Fri, 19 Jun 2026 08:28:27 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Fri, 19 Jun 2026 08:28:31 GMT
RUN apk add --no-cache libsasl # buildkit
# Fri, 19 Jun 2026 08:41:52 GMT
ENV MEMCACHED_VERSION=1.6.42
# Fri, 19 Jun 2026 08:41:52 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.42.tar.gz
# Fri, 19 Jun 2026 08:41:52 GMT
ENV MEMCACHED_SHA1=de453f58745238c70091fe243549c406aabdc3c5
# Fri, 19 Jun 2026 08:41:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 19 Jun 2026 08:41:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 19 Jun 2026 08:41:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 19 Jun 2026 08:41:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Jun 2026 08:41:53 GMT
USER memcache
# Fri, 19 Jun 2026 08:41:53 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 19 Jun 2026 08:41:53 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e09d95a0f414638430c0cd3ecfdcce75606201917a27c7cb2ce1e34cb928b26a`  
		Last Modified: Fri, 19 Jun 2026 08:42:17 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a5335c7af79a1b08af55862ba77644afdae5544d9a7871e45c91b364bd4f71d`  
		Last Modified: Fri, 19 Jun 2026 08:42:17 GMT  
		Size: 108.9 KB (108888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3622a6ea71515db1ef566afdbb121daed1f408aacf1519f4173b40dabe2ae627`  
		Last Modified: Fri, 19 Jun 2026 08:42:17 GMT  
		Size: 2.1 MB (2053467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef1db0e3e31ca3f2830f5404436e92b1862a4078adefacacec09a9580a3ad0a2`  
		Last Modified: Fri, 19 Jun 2026 08:42:17 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1463b0fd26a37659aaad7f99696e5213764ad03bb094f40836c3309713d7a60`  
		Last Modified: Fri, 19 Jun 2026 08:42:18 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:aadb3b9338400b87692f95e00931e43940f8d6ddd13f046bd256848dd825e458
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bde4b5a4a468d795a5f58dd934b371adfe72cd2ae24e166e1258ad65aa455a56`

```dockerfile
```

-	Layers:
	-	`sha256:debb70180cf674562f7ca321270e3dfa350c5d1596c05dbfcc27b38c65652528`  
		Last Modified: Fri, 19 Jun 2026 08:42:17 GMT  
		Size: 94.3 KB (94300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a895bbe0bfec24678c1c92ddd283cb7392e0e8d229f31c769a23c95224c0d371`  
		Last Modified: Fri, 19 Jun 2026 08:42:17 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:c86f0452a9f8d13f8b5c712bf53ecad0fa72512a4e6efe178083a86c56d2c212
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5825105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:512a544a637f08526e42bf2c90d41f3684850faa148de5a7ea4756ee704eb2da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:38:26 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:38:26 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:36 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:36 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30370c595c056e472723b791337c26580ebbea923bded312d0d4eb296b2db741`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:564d2d22cc556ef61fe24d9da38570eac3ba29e020c7a6cb600c63402ef1c04f`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 114.3 KB (114290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:953e49ef00d23f602cd8f70ea70fa934c041873b3d03763c44e5882ddace30a4`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 2.0 MB (2000145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53337d858b4e79b1fc2dae92dfdea190a06175a55244c43910ea36be1b4a0e78`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1e36d6e60879e2d185ee42a79191f0f8ac04cfc130cc0bebd0beca60d2aa9e4`  
		Last Modified: Mon, 06 Jul 2026 21:41:42 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:16066c85c99eca03d74a3ccb2a1cb6ef26bd70cd1abe603e08b140aad9193229
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a25456e690ef0d7e78b9c4006d6d0a01e3dfa626d96cafca25bc3b3b6f346cc`

```dockerfile
```

-	Layers:
	-	`sha256:31477740d9cd110c119a3d7f77d6662e027c9eff9615b5d8cabba62881b75075`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bb0231be0d089eb94b312c2bc62bdcae87600bb7fd6f9edfdf6d0ecec53bd57`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6-alpine3.24`

```console
$ docker pull memcached@sha256:cd4b42e6cee87000353712623f8a4be411e5a06f61bc1fbc6864fb9b23402fe4
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
$ docker pull memcached@sha256:d24f1303e8fd2dfb03fcb756adaf6867879cdfece89c08a6e9f4a677ca8dadf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5922727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad6151f346a2bd04c3b277f22740e18cc3c044354e521cc519c92a8c84451d60`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:39:01 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:39:02 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:36 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:36 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72537507ddd4bf18613bb8a53b242da50a994ed2f47cea30e1f6c88efbee2a78`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7faa191428d835180295942536af93f611e77740cf097b3e8df24f089e6627e9`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 106.1 KB (106072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3a8994078ed716f7b7d9bf0c3d456fc16a781de709310bb595531d35228ff54`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 2.0 MB (1968919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16fb68556a5eec82c8c88c2fed3144af0ed956d9f11c575f55e2da6863dda7a5`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1e36d6e60879e2d185ee42a79191f0f8ac04cfc130cc0bebd0beca60d2aa9e4`  
		Last Modified: Mon, 06 Jul 2026 21:41:42 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:d930c2046b540ebb74e7a5b8fd2a6fdf468da9ff2293cb4dd827472ff5031831
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fe897885a6263d1427bd866148b454137670c770f04e071d66d2feff8085250`

```dockerfile
```

-	Layers:
	-	`sha256:51f430a0e1d8ff67dc96eae767c7f0711a583e92c9ff33dd9fe9a50d9efcff88`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0743f7aa18fbb7703101bbeab0bd523094977be5ea27494e0164581ec1c92a3b`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine3.24` - linux; arm variant v6

```console
$ docker pull memcached@sha256:73acf9d22c4bdbd48aa2de5bf1e220ce75378480569c24ba9c18811287233a1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5573817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2e136b1ff362f5bdc367ccbf1880be64dc78c0fc8b0d253d79c397c576ea533`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:38:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:38:34 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:51:09 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:51:09 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:51:09 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:51:09 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:51:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:51:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:51:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:51:10 GMT
USER memcache
# Mon, 06 Jul 2026 21:51:10 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:51:10 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:293879983da14bd43faca40a46b9a0ce087b83f1d447e044e4951610593ebc91`  
		Last Modified: Mon, 06 Jul 2026 21:51:13 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e795a1b77921c10d97c236f11aa756351bf412f979662f1acbc3c2ad62fd05e`  
		Last Modified: Mon, 06 Jul 2026 21:51:13 GMT  
		Size: 102.6 KB (102628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8ba8eb1b8820dd0e9f0738b9b8e91c53acd9c3d9940d0432e0c8f2ad44217aa`  
		Last Modified: Mon, 06 Jul 2026 21:51:14 GMT  
		Size: 1.9 MB (1916390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:106dee74d5261f5e566fd9e348ba286421a4d1e483cb173f96bed3521dcc687a`  
		Last Modified: Mon, 06 Jul 2026 21:51:13 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d806648e37a5bc66afa3a2b45eff733ca3b8570c352bf6036f8b077bfde9bbe5`  
		Last Modified: Mon, 06 Jul 2026 21:51:14 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:bae0d2964b7b9f665f5e8dd26b51a2cfe10653f7ef8757d7d4cc60c4f40ca919
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5e30efe0e3752cd34280817d416a8e537c8012155b6178564abb4bb870ef4c5`

```dockerfile
```

-	Layers:
	-	`sha256:c2e8d0f0d8af34b5281ae36052d97c6b73b3fe9383a62a22f836382f3bff4b76`  
		Last Modified: Mon, 06 Jul 2026 21:51:13 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine3.24` - linux; arm variant v7

```console
$ docker pull memcached@sha256:75e71baae6434f00bc3570e729ba883ff0b3934a99ef187ffb20c47bf6515cc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5231085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81e055b173d6abaed66778f7b1de84e94a2cd5148a272964eac221122af04b3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:39:18 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:39:19 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:42:14 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:42:14 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:42:14 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:42:14 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:42:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:42:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:42:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:42:14 GMT
USER memcache
# Mon, 06 Jul 2026 21:42:14 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:42:14 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13a07349f740cf45b2454a9b34effb1074b3eafef6ec97a67946c2bfc8f0a609`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:182bc05d2ae8d54d4f592cc6a72c1f46e7dd676340c1bd306f81a0f773e3a694`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 92.4 KB (92369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30172b660bdb95335d0d41ef5f5865718d434cd394d65a78795782f39fa8a31d`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 1.9 MB (1876756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3279f748468a4e79c099100b34acfca01161d3a4c7e3491050d37b9750ec0de5`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2271c46a5c6b2e2f9a4d581113b47bbc27ae767c172026bb9a21b3532d2e7b33`  
		Last Modified: Mon, 06 Jul 2026 21:42:20 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:ee9bff19b784d2bfc1f4a6c997bda2fe5d2f569951169a6da4490dc9aabf38f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:878949ad5f39565e088eb87ab96a6e6d8be7f7be57e4a3ea2fffe2791f38276f`

```dockerfile
```

-	Layers:
	-	`sha256:8d693e5f45f27e0a1b3a67573b03d554ba4a78bae37e0dfe37efd9bb0ad7aad9`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ed989ea1e997e400d8acfe1b1ac32263efc1404a751615fce2355b24920f262`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:9c1f017b1a9c14d8367d0886615b2f4cf5dbeb0abe803cff62e1ccf763a83309
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6251555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c2345e75471f47c2aaf508a6c0aed3a6394293ab98a83467476f018dbd966b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:39:04 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:39:05 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:41:51 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:51 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:51 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:51 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:51 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:51 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6611430365db147600c92bd762f806ab97f387ae400dfededdb339ed761b38d7`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba750e4cc6a2574aa4c85ae98490be9a705504b4bacc27dc37393172a38113ad`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 121.9 KB (121857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b15b9832850c680687cd3e192fc2b47f402a577cc7936b1429f8bf960043115`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 1.9 MB (1945317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:186ad9601948dfa94625c72f2efeb90cec5a856cf8dfc961fe0fb100a7612ceb`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:252c6c60ae667ad99277f31f2eb6995dc3c97517567345a95b9bfb6bfc7f4973`  
		Last Modified: Mon, 06 Jul 2026 21:41:57 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:4bf91160995d46f465e01fc0d092960db99f29c302767ea7693e51fe04664e1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b66911cd710529f8661a583ca5293311eab2646f7c5df648420879ccfb96710f`

```dockerfile
```

-	Layers:
	-	`sha256:69745701c406c0a0eaeb9398f5a3408b0ed98dc5f7c9eec5b69224b44fae3a07`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd96cdd23bab41a8c795d813ad3bca912cb0390a4664e71979b2ce937af558ce`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 20.7 KB (20728 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine3.24` - linux; 386

```console
$ docker pull memcached@sha256:99e3a43ede008cdb2a7404fba0c0d589df056cf317fc4530a43e9a18432057ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5704609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4259473df875ca4b335a6f5fe39a294e95701a65977bdb72708000b400db44ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:39:47 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:39:48 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:42:36 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:42:36 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:42:36 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:42:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:42:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:42:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:42:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:42:36 GMT
USER memcache
# Mon, 06 Jul 2026 21:42:36 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:42:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61e1fdddad44a79ab90599c3a732f61d9fe751fc44b20138c34ddac45fd68ef5`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:678ab87dad9650d15a64f037d1c0d3983c1d49b794975d97c2497b8f9fd2bd57`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 110.7 KB (110733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b879347f774880c414c9983ecc840683885be02e16e79eb8c9cdcaac056637d7`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 1.9 MB (1922386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc4f23ef17cd394d2b5b3c4ff9ace06ec964a74e6e4b1054ce2dab36ef9cf7ac`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02e0bb4aee5e6e8f857e6e53c13a85acc2ba624960d52685b39ca7a7824a257d`  
		Last Modified: Mon, 06 Jul 2026 21:42:42 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:39a379ca667774a1849a872c123e3fda6a96b382db34f7ae07976d3ddb3fb1cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a30528c0c40b7f3cd7ac8a1d6ba7b49c8754f8382944c04619fb7bf92ed3d05a`

```dockerfile
```

-	Layers:
	-	`sha256:bb24486845b08d5db14f90720802598a00f4e035591469f741bbcb785aa4b0bf`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62cc5e8bf2657465cce189ee097f4812ba020e1eebad5596743a2358bce26893`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine3.24` - linux; ppc64le

```console
$ docker pull memcached@sha256:7d2ba96d4241409819ccd5423027938262a071d4072846016da6f9225e4836d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6000224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aeec582954a162c8fb264ed5e6fa0c143bebbe9b755034ea3a2cb6d9ea92fa0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:42:01 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:42:02 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:44:46 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:44:46 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:44:46 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:44:46 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:44:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:44:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:44:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:44:46 GMT
USER memcache
# Mon, 06 Jul 2026 21:44:46 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:44:46 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09ab42e9fa209561ea35daa341e0c8b7840004d01353cc66a0fc8ebfba557a81`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45ad51dfd812c83d08ee5e405f4aa86ae6e735e02525178ce71feae27365c2a0`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 126.3 KB (126251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85d469d6b6b1e3b775fe5fe688def9850c709a6baed475555f1bbf86568749a3`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 2.1 MB (2059215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dddc956aa4fc60444b4d8984d1191ef930b711b263d6dba62b3e8109db1dd376`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92ede20e44eec94165101cde31c847b60fb02a26d0f32608851af2406139c96d`  
		Last Modified: Mon, 06 Jul 2026 21:45:01 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:0c8a3274873521aa4eaf05ee6bed653147bf23787d0237504c685fcbcca987b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e8b08bf8ba35127924f8bf0a7bd38cdbe4611ca3be7eb03883f11f8a106f60e`

```dockerfile
```

-	Layers:
	-	`sha256:4cd76b089083157c73c2fc7f020e42f03ae6146c8526f3a002aedd79855d755f`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1baceadbe03e9e6d2078a0728a365e375cb5a7b949807fbb2d1ad605006f4fbb`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine3.24` - linux; riscv64

```console
$ docker pull memcached@sha256:ba5bf40b4adc1fe04f32e2e239fa9c0020d4e89bf4079493f8bc11a92c8f4b51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5738070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d12fbf86d6880aaa9d517425d9cecddcf545ba87e577a039dea9ea99ad53d8a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Fri, 19 Jun 2026 08:28:27 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Fri, 19 Jun 2026 08:28:31 GMT
RUN apk add --no-cache libsasl # buildkit
# Fri, 19 Jun 2026 08:41:52 GMT
ENV MEMCACHED_VERSION=1.6.42
# Fri, 19 Jun 2026 08:41:52 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.42.tar.gz
# Fri, 19 Jun 2026 08:41:52 GMT
ENV MEMCACHED_SHA1=de453f58745238c70091fe243549c406aabdc3c5
# Fri, 19 Jun 2026 08:41:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 19 Jun 2026 08:41:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 19 Jun 2026 08:41:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 19 Jun 2026 08:41:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Jun 2026 08:41:53 GMT
USER memcache
# Fri, 19 Jun 2026 08:41:53 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 19 Jun 2026 08:41:53 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e09d95a0f414638430c0cd3ecfdcce75606201917a27c7cb2ce1e34cb928b26a`  
		Last Modified: Fri, 19 Jun 2026 08:42:17 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a5335c7af79a1b08af55862ba77644afdae5544d9a7871e45c91b364bd4f71d`  
		Last Modified: Fri, 19 Jun 2026 08:42:17 GMT  
		Size: 108.9 KB (108888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3622a6ea71515db1ef566afdbb121daed1f408aacf1519f4173b40dabe2ae627`  
		Last Modified: Fri, 19 Jun 2026 08:42:17 GMT  
		Size: 2.1 MB (2053467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef1db0e3e31ca3f2830f5404436e92b1862a4078adefacacec09a9580a3ad0a2`  
		Last Modified: Fri, 19 Jun 2026 08:42:17 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1463b0fd26a37659aaad7f99696e5213764ad03bb094f40836c3309713d7a60`  
		Last Modified: Fri, 19 Jun 2026 08:42:18 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:aadb3b9338400b87692f95e00931e43940f8d6ddd13f046bd256848dd825e458
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bde4b5a4a468d795a5f58dd934b371adfe72cd2ae24e166e1258ad65aa455a56`

```dockerfile
```

-	Layers:
	-	`sha256:debb70180cf674562f7ca321270e3dfa350c5d1596c05dbfcc27b38c65652528`  
		Last Modified: Fri, 19 Jun 2026 08:42:17 GMT  
		Size: 94.3 KB (94300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a895bbe0bfec24678c1c92ddd283cb7392e0e8d229f31c769a23c95224c0d371`  
		Last Modified: Fri, 19 Jun 2026 08:42:17 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine3.24` - linux; s390x

```console
$ docker pull memcached@sha256:c86f0452a9f8d13f8b5c712bf53ecad0fa72512a4e6efe178083a86c56d2c212
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5825105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:512a544a637f08526e42bf2c90d41f3684850faa148de5a7ea4756ee704eb2da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:38:26 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:38:26 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:36 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:36 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30370c595c056e472723b791337c26580ebbea923bded312d0d4eb296b2db741`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:564d2d22cc556ef61fe24d9da38570eac3ba29e020c7a6cb600c63402ef1c04f`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 114.3 KB (114290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:953e49ef00d23f602cd8f70ea70fa934c041873b3d03763c44e5882ddace30a4`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 2.0 MB (2000145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53337d858b4e79b1fc2dae92dfdea190a06175a55244c43910ea36be1b4a0e78`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1e36d6e60879e2d185ee42a79191f0f8ac04cfc130cc0bebd0beca60d2aa9e4`  
		Last Modified: Mon, 06 Jul 2026 21:41:42 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:16066c85c99eca03d74a3ccb2a1cb6ef26bd70cd1abe603e08b140aad9193229
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a25456e690ef0d7e78b9c4006d6d0a01e3dfa626d96cafca25bc3b3b6f346cc`

```dockerfile
```

-	Layers:
	-	`sha256:31477740d9cd110c119a3d7f77d6662e027c9eff9615b5d8cabba62881b75075`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bb0231be0d089eb94b312c2bc62bdcae87600bb7fd6f9edfdf6d0ecec53bd57`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6-trixie`

```console
$ docker pull memcached@sha256:c7d4a9f4398df209a23dd8025a04fde0a415709cda293e2cad6496cf9888d1ef
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
$ docker pull memcached@sha256:656a6cfc8ed69f32c4b5a126e5f67b0af87fb4f3397bf938dcffba145f524f23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32204955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a090ff2819a8baa8927a1504d25e57248289de7d035c09b27016aa6778b20671`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:38:59 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:39:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:41:47 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:47 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:47 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:47 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:47 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:47 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:47 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fbf1c8c52a26c7246a7962c9ff3b39c4d01827da5bec5975bf09972034ebd07`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a856d8d29335e9bb89c4ac70a692292e2d9289888f82e2493fa33920a6818cf2`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 136.7 KB (136699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f462e97e45ac49cd49fbd7b6c887d9f60b02ef658985bae749a545250a982db`  
		Last Modified: Mon, 06 Jul 2026 21:41:54 GMT  
		Size: 2.3 MB (2281324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01f91d925073819971c78c22c597acd3d11339a7bc0ecbec0fc1f29dfc75e3ee`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d497385966554717bce54e3bd2e58aa97e93409de213297aafe5ed2b7b284f71`  
		Last Modified: Mon, 06 Jul 2026 21:41:54 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:cbbe127b3e2a069ef5f514d27653fc24242c02c9eac9b2643b8b1fe547f90e4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e980845da04a5b245b3b3b06501510f29735c64ad84ec1958397e73ecf8f2af3`

```dockerfile
```

-	Layers:
	-	`sha256:b2ba902ea7ef1dd0aeaa90d23c7408cd52b48cfd0d4de1771bd6d7cb26068ba3`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 2.0 MB (2008368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd3e3320b0b76edfb87dc1cecd7798b471b2db3ffe01c26cec2c36862ac2b3af`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; arm variant v5

```console
$ docker pull memcached@sha256:e12299225626e23ced92dbec45865333ae66504d813c8258ba4ca8fd37aab586
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30317940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef73b1d7a006c523b24f707628218537bd2256d972ad65e394a1b170dff6f9c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:38:33 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:38:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:41:54 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:54 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:54 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:54 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:54 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:54 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:da43bc6a07a9cd7cc23faa538adc0797482747316b5a85b9f3f94ed17f6c1a2a`  
		Last Modified: Wed, 24 Jun 2026 00:28:12 GMT  
		Size: 28.0 MB (27959221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:912e0265a9bef2049f461667c203b04c5d953f55d3bad7fd06009d17233e8c1b`  
		Last Modified: Mon, 06 Jul 2026 21:42:00 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a61804d5bb4f8881f2bda238950beb1d4061cb3cd45e3bcd4c73e45ae8cb368`  
		Last Modified: Mon, 06 Jul 2026 21:42:01 GMT  
		Size: 144.2 KB (144184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3f95616646814d54f714ea24851e4b510b62aaf05006e19ab3c2b4fff72e31a`  
		Last Modified: Mon, 06 Jul 2026 21:42:01 GMT  
		Size: 2.2 MB (2213023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d33b96d1e686356248b385146a036f7722b228e793cb44a4139fc3e911377f2`  
		Last Modified: Mon, 06 Jul 2026 21:42:01 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef3d232ed4ac1acf774bc29d4e5bb041150ae0690a6ad8dfbc827d39ba67e4f`  
		Last Modified: Mon, 06 Jul 2026 21:42:02 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:04ec002d7fc434c575de2e3b150bc2f94892905ab29a1442fde1aaf52d91559f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:657d5c8bd24ce14e139f22cd05551b37ad0f747e0f17d0803f7f72904eb45338`

```dockerfile
```

-	Layers:
	-	`sha256:5a134601bcd31b5b86b890a3e2dfa44f32c19503a7f8132d46df61e1191c91a7`  
		Last Modified: Mon, 06 Jul 2026 21:42:01 GMT  
		Size: 2.0 MB (2011371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95754d0d5ed2078de0d4c37786bf409b4f5de4e43cdb36388ff5eb2b7570f2bd`  
		Last Modified: Mon, 06 Jul 2026 21:42:00 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; arm variant v7

```console
$ docker pull memcached@sha256:6f681e43471b6ba99e8861c81f644754db4aa35554ee097b2b438f7e7c5c267b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28514937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdc0ab0d0e5f8809ea81cacb053a5820256c72a85d46672a50396adcffc9c385`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:39:20 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:39:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:42:34 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:42:34 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:42:34 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:42:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:42:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:42:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:42:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:42:34 GMT
USER memcache
# Mon, 06 Jul 2026 21:42:34 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:42:34 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16710e5b885dd2f9f0d4f3a68d20ee3052ef7eeebb026cd8c76860317060c3f4`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d69824716fa350bb35cb1be065c8493b5241e9cb5a07318f5d7f2a4b81802ef`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 135.4 KB (135382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:293dd91233448f2cc893f3db5669239f4a64de61f71eb8f6b1b3a131e8e6356d`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 2.2 MB (2166986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b180e4022ce73ec0e0049fe1d68843ba4601570343a6f6b578624174351963d3`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81192fef36610c3f90e846a5959b26829e120dbf32a909e3d1c287e542a86895`  
		Last Modified: Mon, 06 Jul 2026 21:42:42 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:1ce1c4df7e869abd47eeb3f73eac8583fccbd5c057a7d74957955276e22a6170
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2032132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee61bcf236cc2e3765d25b70b40c452f036895398f82a37ce9e765b6e31fb21e`

```dockerfile
```

-	Layers:
	-	`sha256:a1e168963faef5a94750a3afe81a447b1c0b24daf7ae75b35eadba8c13579e06`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 2.0 MB (2009828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aaca361028b5c03cfe69d0f2877a95f4b68d27086bc94c0785cb7fcbe73708c2`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:61b1d3943ec1fef8b57a16150315cab848d09a2a5cd95b4f2373e9bf069927c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32566996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09b7981a23c3b8ad6c6e27145ee0ee1eadff16c409312807abea1fb6c90456dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:39:02 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:39:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:42:03 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:42:03 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:42:03 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:42:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:42:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:42:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:42:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:42:03 GMT
USER memcache
# Mon, 06 Jul 2026 21:42:03 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:42:03 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb3a9db0b552ee84467be61022b454f3f8d3fcf6645f1ef421dbc4e5dc17c1f7`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2baa2ada261da15b63b6aa4545f54303c26da020d8d73b28aad12fbeb383e381`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 153.5 KB (153501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63a169b8dfa3c4e20bdac3db66840fbc677728ec228cc7ff4197cdbc2d70692d`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 2.3 MB (2263430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12575e3ba7dcfe911406d84a26c38fb3285198d8565de14f54e7d0ee83515141`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7471454cf4c9d8bf3e1028d4f9890185ec1e6216908733ab24eb5a4c8cad3154`  
		Last Modified: Mon, 06 Jul 2026 21:42:11 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:a6f5908bfc77290cbd322b08baa25baf20cd7d918e4739ee8f44ecb27c5e9954
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55a2398b634f5aa30e528ce79af556a18b2ca9c8c967290e8855b2db75050aa5`

```dockerfile
```

-	Layers:
	-	`sha256:d905dff6358a991386cde295b73a010f87a7259a80916ed7a6a56b4e32f03b5e`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 2.0 MB (2008676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e569c815cafd8f0caa21ee5639693ff9fb5169b3e266aaa4ca20d90243c0f47`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; 386

```console
$ docker pull memcached@sha256:5c54ebcc9adda03074cd6f582dc9d47f2c597af9347338bf69a815476aba85df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33676183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:972f94eb4da4e3cadae40e616f31b0c988375d1372f4de37403c9d35de40ad89`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:39:45 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:39:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:42:55 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:42:55 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:42:55 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:42:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:42:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:42:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:42:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:42:55 GMT
USER memcache
# Mon, 06 Jul 2026 21:42:55 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:42:55 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:984d3baa100eb8c4d7c83b7c23b4748e508aa6ed5903297f02be90a681f52d41`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 31.3 MB (31301210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40a5a431eae5f7382bbe3702131b8e5257dde1ab3f42b0bdae2017173d030bfb`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1e45b65fb40b92a3640f6c3f98c81c726756107a1a3cf54e9556839b5434314`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 147.5 KB (147522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c8bf709284a2d6ce9b302597a13416dceb853b25f1df95330c09a2a247c458d`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 2.2 MB (2225936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64199d124a7a80324df2952272fbeeca3578646cdc58dc2452ff83a7cb05ff80`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0a2c694d180348fe8a62f58a1cc8141df9eb8cc8e77aa8d7fc2bc57cbde7693`  
		Last Modified: Mon, 06 Jul 2026 21:43:03 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:854626f034a18e92820f9cab215dc02f1ff1a8c4a00c40561cc65029d83a2f3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2027620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10d6da14e5186bdd10781072e2d4a8370bc308ffc7e5f4e1564a6a5eededac39`

```dockerfile
```

-	Layers:
	-	`sha256:6e31f8780d98fc1b31d8f166958e7cd9a63a656d09bfacce23983c74ea9322d0`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 2.0 MB (2005525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:28abd28639656318b2a292318661c673a1965a0817aee3ebda62c8f3019a1059`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; ppc64le

```console
$ docker pull memcached@sha256:8f5c7302d6d437cff3c3823ce82b23e5b3cdbd91aeddea51fe63f3dbc86526b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.7 MB (36655139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbf273f8d7258224f3d1d7b29b885ef6fdc80a930babdc82f0fd5ebfcd022f30`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:41:59 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:42:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 22:05:05 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 22:05:05 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 22:05:05 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 22:05:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 22:05:06 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 22:05:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 22:05:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 22:05:07 GMT
USER memcache
# Mon, 06 Jul 2026 22:05:07 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 22:05:07 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c28d0960fd8ccb8d0d804cad9b7ac5adde1950d50a041fa6d9667b7574818b`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e8cde463d54b5d9ccc864b2a22a3fb1cb6d32662e187d2161215ccf3fae998`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 170.4 KB (170371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab94abc799598aba483c2ac576bfb440dedb2386e4afa185f536f3fcc1f38546`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 2.9 MB (2876865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8005a8ca890b984bdf2737e11b5d86d0d3db6f003c9fad496aa7107e57a616f7`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9fcd1b9234dadfc95a6d9c67e86f29e354b2a757eb1fa564f7047034d98b3ed`  
		Last Modified: Mon, 06 Jul 2026 22:05:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:ea4a2604bb3579325c6ab97f9b0cb6e9cb56296e1e6350e9e7bacbb42c6a47dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2034195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dde9ebb92580e852e351418fa4adf0509fd654f32375d26113b5208169eda80e`

```dockerfile
```

-	Layers:
	-	`sha256:1b4c5eddb6aa89c1696286ead3633a6d5ed17e39ee9c6ba50002625d89d16752`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 2.0 MB (2011969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9950a833f3ed093b05d5de4ffbdb64942119af8e5fc3b731f9584c2bc961843e`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 22.2 KB (22226 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; riscv64

```console
$ docker pull memcached@sha256:1d09cc6da0fcd7fbfd1eb9a04ab9aeb8557f8a977d85bc7758ddc33f1fae7e8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30626877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e932fab34f25980444b8d9d4042f4f019d633ae41731c4d58de9d0425aacbb5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 20:53:15 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 24 Jun 2026 20:53:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 25 Jun 2026 19:11:35 GMT
ENV MEMCACHED_VERSION=1.6.42
# Thu, 25 Jun 2026 19:11:35 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.42.tar.gz
# Thu, 25 Jun 2026 19:11:35 GMT
ENV MEMCACHED_SHA1=de453f58745238c70091fe243549c406aabdc3c5
# Thu, 25 Jun 2026 19:11:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 25 Jun 2026 19:11:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 25 Jun 2026 19:11:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 25 Jun 2026 19:11:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Jun 2026 19:11:35 GMT
USER memcache
# Thu, 25 Jun 2026 19:11:35 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 25 Jun 2026 19:11:35 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:58bface994ba631e609596a2ca5032d9d75de27f1b6476034b581e226205adab`  
		Last Modified: Wed, 24 Jun 2026 03:41:42 GMT  
		Size: 28.3 MB (28282378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88be0d85b1f48be753592f62cac7ef80c23a61c7848026bd2d489c40d2214a58`  
		Last Modified: Thu, 25 Jun 2026 19:12:23 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5924e63da94311a18a309f02e655774d7a7dd21bf3dc267215c524167fb7ca02`  
		Last Modified: Thu, 25 Jun 2026 19:12:23 GMT  
		Size: 133.1 KB (133093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acfa9af5e6df6f7145e6f80ab61869e6613b9f5caa0cfa94788cbf01b3041add`  
		Last Modified: Thu, 25 Jun 2026 19:12:23 GMT  
		Size: 2.2 MB (2209890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ace1c66f882f3224670cc80ac0c47197433c688d59a6bad4e5e137d6947a7d9`  
		Last Modified: Thu, 25 Jun 2026 19:12:23 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:470dc087e4a89d9d58d8fa29a67ac089e3c4b569f1c1c79265bfe24ba39500d2`  
		Last Modified: Thu, 25 Jun 2026 19:12:24 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:10dc6cdb2cd2787d533382c9b0e6ae2f8f3b637c254e1b54762fc75d6b7c2066
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2024559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:173dffb05aa61f0096ec844832f392e17573e61865ef528ee8b742faa7e4b6db`

```dockerfile
```

-	Layers:
	-	`sha256:69ed82bb373c86c8fbec635b83221f89933079ee40e6fcf48418d1a69ca5bb89`  
		Last Modified: Thu, 25 Jun 2026 19:12:23 GMT  
		Size: 2.0 MB (2002332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cea64cfdecc1c5a9f3c417e6a679e88cd0613790ff8f658ca9e3ec73325fa9cc`  
		Last Modified: Thu, 25 Jun 2026 19:12:23 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; s390x

```console
$ docker pull memcached@sha256:d3cd3e513f2ddee32452ba0ec987fa00b5e1fb1d8db488eaf4fbe26b5d76074c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32292489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5460628bdf70beec088e32d0e29e4bfdc0f288d2df4a23fb962ca9ab72e0d959`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:38:22 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:38:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:41:41 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:41 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:41 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:41 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:41 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd3b24daa3730c2808288ea42c60ca7198480d38cea1e21d7cfe2adc3844917`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba2cdc589f233d4d27d14cf3372db956515683acd0fb9cb15af8b293489125d5`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 140.5 KB (140525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33665ac46f2cf8ddf33ff9813a3727015c6dcc7d0c0f089feafe19ae89e34adb`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 2.3 MB (2299071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e96808b26b5232fb910ecf5cdc8493ae86733873c9f25bfa119fafa1c55b35c6`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dece698c0594201d0475a857aef447a96b29dbe79232e3557f4b64ba5741d09`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:3dd79394e3bb85b237653f075e202aa7f0c15898c5c5b1fe856df01cf9290536
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:463e703a269bd4656b96a53f3edcf89aa6c7b4270b4ba2f5be5b7da5304db134`

```dockerfile
```

-	Layers:
	-	`sha256:9fb3957b58d9cfc05cffe13f8e337f7a892cc305727f708d376fed40ce5fa0b1`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 2.0 MB (2009805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0635cd2ab613bff3b59e1c667e4c91d4c53f0e3375457d65df65880d46c59fed`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 22.2 KB (22152 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6.43`

```console
$ docker pull memcached@sha256:983a925a6f47ffcce7adfe00e5f16b229af7311f4d418ae5cd8efd93f0246ae4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
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
	-	linux; s390x
	-	unknown; unknown

### `memcached:1.6.43` - linux; amd64

```console
$ docker pull memcached@sha256:656a6cfc8ed69f32c4b5a126e5f67b0af87fb4f3397bf938dcffba145f524f23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32204955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a090ff2819a8baa8927a1504d25e57248289de7d035c09b27016aa6778b20671`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:38:59 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:39:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:41:47 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:47 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:47 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:47 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:47 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:47 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:47 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fbf1c8c52a26c7246a7962c9ff3b39c4d01827da5bec5975bf09972034ebd07`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a856d8d29335e9bb89c4ac70a692292e2d9289888f82e2493fa33920a6818cf2`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 136.7 KB (136699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f462e97e45ac49cd49fbd7b6c887d9f60b02ef658985bae749a545250a982db`  
		Last Modified: Mon, 06 Jul 2026 21:41:54 GMT  
		Size: 2.3 MB (2281324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01f91d925073819971c78c22c597acd3d11339a7bc0ecbec0fc1f29dfc75e3ee`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d497385966554717bce54e3bd2e58aa97e93409de213297aafe5ed2b7b284f71`  
		Last Modified: Mon, 06 Jul 2026 21:41:54 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.43` - unknown; unknown

```console
$ docker pull memcached@sha256:cbbe127b3e2a069ef5f514d27653fc24242c02c9eac9b2643b8b1fe547f90e4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e980845da04a5b245b3b3b06501510f29735c64ad84ec1958397e73ecf8f2af3`

```dockerfile
```

-	Layers:
	-	`sha256:b2ba902ea7ef1dd0aeaa90d23c7408cd52b48cfd0d4de1771bd6d7cb26068ba3`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 2.0 MB (2008368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd3e3320b0b76edfb87dc1cecd7798b471b2db3ffe01c26cec2c36862ac2b3af`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.43` - linux; arm variant v5

```console
$ docker pull memcached@sha256:e12299225626e23ced92dbec45865333ae66504d813c8258ba4ca8fd37aab586
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30317940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef73b1d7a006c523b24f707628218537bd2256d972ad65e394a1b170dff6f9c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:38:33 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:38:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:41:54 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:54 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:54 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:54 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:54 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:54 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:da43bc6a07a9cd7cc23faa538adc0797482747316b5a85b9f3f94ed17f6c1a2a`  
		Last Modified: Wed, 24 Jun 2026 00:28:12 GMT  
		Size: 28.0 MB (27959221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:912e0265a9bef2049f461667c203b04c5d953f55d3bad7fd06009d17233e8c1b`  
		Last Modified: Mon, 06 Jul 2026 21:42:00 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a61804d5bb4f8881f2bda238950beb1d4061cb3cd45e3bcd4c73e45ae8cb368`  
		Last Modified: Mon, 06 Jul 2026 21:42:01 GMT  
		Size: 144.2 KB (144184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3f95616646814d54f714ea24851e4b510b62aaf05006e19ab3c2b4fff72e31a`  
		Last Modified: Mon, 06 Jul 2026 21:42:01 GMT  
		Size: 2.2 MB (2213023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d33b96d1e686356248b385146a036f7722b228e793cb44a4139fc3e911377f2`  
		Last Modified: Mon, 06 Jul 2026 21:42:01 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef3d232ed4ac1acf774bc29d4e5bb041150ae0690a6ad8dfbc827d39ba67e4f`  
		Last Modified: Mon, 06 Jul 2026 21:42:02 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.43` - unknown; unknown

```console
$ docker pull memcached@sha256:04ec002d7fc434c575de2e3b150bc2f94892905ab29a1442fde1aaf52d91559f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:657d5c8bd24ce14e139f22cd05551b37ad0f747e0f17d0803f7f72904eb45338`

```dockerfile
```

-	Layers:
	-	`sha256:5a134601bcd31b5b86b890a3e2dfa44f32c19503a7f8132d46df61e1191c91a7`  
		Last Modified: Mon, 06 Jul 2026 21:42:01 GMT  
		Size: 2.0 MB (2011371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95754d0d5ed2078de0d4c37786bf409b4f5de4e43cdb36388ff5eb2b7570f2bd`  
		Last Modified: Mon, 06 Jul 2026 21:42:00 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.43` - linux; arm variant v7

```console
$ docker pull memcached@sha256:6f681e43471b6ba99e8861c81f644754db4aa35554ee097b2b438f7e7c5c267b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28514937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdc0ab0d0e5f8809ea81cacb053a5820256c72a85d46672a50396adcffc9c385`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:39:20 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:39:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:42:34 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:42:34 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:42:34 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:42:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:42:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:42:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:42:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:42:34 GMT
USER memcache
# Mon, 06 Jul 2026 21:42:34 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:42:34 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16710e5b885dd2f9f0d4f3a68d20ee3052ef7eeebb026cd8c76860317060c3f4`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d69824716fa350bb35cb1be065c8493b5241e9cb5a07318f5d7f2a4b81802ef`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 135.4 KB (135382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:293dd91233448f2cc893f3db5669239f4a64de61f71eb8f6b1b3a131e8e6356d`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 2.2 MB (2166986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b180e4022ce73ec0e0049fe1d68843ba4601570343a6f6b578624174351963d3`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81192fef36610c3f90e846a5959b26829e120dbf32a909e3d1c287e542a86895`  
		Last Modified: Mon, 06 Jul 2026 21:42:42 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.43` - unknown; unknown

```console
$ docker pull memcached@sha256:1ce1c4df7e869abd47eeb3f73eac8583fccbd5c057a7d74957955276e22a6170
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2032132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee61bcf236cc2e3765d25b70b40c452f036895398f82a37ce9e765b6e31fb21e`

```dockerfile
```

-	Layers:
	-	`sha256:a1e168963faef5a94750a3afe81a447b1c0b24daf7ae75b35eadba8c13579e06`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 2.0 MB (2009828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aaca361028b5c03cfe69d0f2877a95f4b68d27086bc94c0785cb7fcbe73708c2`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.43` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:61b1d3943ec1fef8b57a16150315cab848d09a2a5cd95b4f2373e9bf069927c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32566996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09b7981a23c3b8ad6c6e27145ee0ee1eadff16c409312807abea1fb6c90456dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:39:02 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:39:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:42:03 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:42:03 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:42:03 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:42:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:42:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:42:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:42:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:42:03 GMT
USER memcache
# Mon, 06 Jul 2026 21:42:03 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:42:03 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb3a9db0b552ee84467be61022b454f3f8d3fcf6645f1ef421dbc4e5dc17c1f7`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2baa2ada261da15b63b6aa4545f54303c26da020d8d73b28aad12fbeb383e381`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 153.5 KB (153501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63a169b8dfa3c4e20bdac3db66840fbc677728ec228cc7ff4197cdbc2d70692d`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 2.3 MB (2263430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12575e3ba7dcfe911406d84a26c38fb3285198d8565de14f54e7d0ee83515141`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7471454cf4c9d8bf3e1028d4f9890185ec1e6216908733ab24eb5a4c8cad3154`  
		Last Modified: Mon, 06 Jul 2026 21:42:11 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.43` - unknown; unknown

```console
$ docker pull memcached@sha256:a6f5908bfc77290cbd322b08baa25baf20cd7d918e4739ee8f44ecb27c5e9954
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55a2398b634f5aa30e528ce79af556a18b2ca9c8c967290e8855b2db75050aa5`

```dockerfile
```

-	Layers:
	-	`sha256:d905dff6358a991386cde295b73a010f87a7259a80916ed7a6a56b4e32f03b5e`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 2.0 MB (2008676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e569c815cafd8f0caa21ee5639693ff9fb5169b3e266aaa4ca20d90243c0f47`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.43` - linux; 386

```console
$ docker pull memcached@sha256:5c54ebcc9adda03074cd6f582dc9d47f2c597af9347338bf69a815476aba85df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33676183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:972f94eb4da4e3cadae40e616f31b0c988375d1372f4de37403c9d35de40ad89`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:39:45 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:39:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:42:55 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:42:55 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:42:55 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:42:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:42:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:42:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:42:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:42:55 GMT
USER memcache
# Mon, 06 Jul 2026 21:42:55 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:42:55 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:984d3baa100eb8c4d7c83b7c23b4748e508aa6ed5903297f02be90a681f52d41`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 31.3 MB (31301210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40a5a431eae5f7382bbe3702131b8e5257dde1ab3f42b0bdae2017173d030bfb`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1e45b65fb40b92a3640f6c3f98c81c726756107a1a3cf54e9556839b5434314`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 147.5 KB (147522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c8bf709284a2d6ce9b302597a13416dceb853b25f1df95330c09a2a247c458d`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 2.2 MB (2225936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64199d124a7a80324df2952272fbeeca3578646cdc58dc2452ff83a7cb05ff80`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0a2c694d180348fe8a62f58a1cc8141df9eb8cc8e77aa8d7fc2bc57cbde7693`  
		Last Modified: Mon, 06 Jul 2026 21:43:03 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.43` - unknown; unknown

```console
$ docker pull memcached@sha256:854626f034a18e92820f9cab215dc02f1ff1a8c4a00c40561cc65029d83a2f3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2027620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10d6da14e5186bdd10781072e2d4a8370bc308ffc7e5f4e1564a6a5eededac39`

```dockerfile
```

-	Layers:
	-	`sha256:6e31f8780d98fc1b31d8f166958e7cd9a63a656d09bfacce23983c74ea9322d0`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 2.0 MB (2005525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:28abd28639656318b2a292318661c673a1965a0817aee3ebda62c8f3019a1059`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.43` - linux; ppc64le

```console
$ docker pull memcached@sha256:8f5c7302d6d437cff3c3823ce82b23e5b3cdbd91aeddea51fe63f3dbc86526b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.7 MB (36655139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbf273f8d7258224f3d1d7b29b885ef6fdc80a930babdc82f0fd5ebfcd022f30`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:41:59 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:42:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 22:05:05 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 22:05:05 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 22:05:05 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 22:05:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 22:05:06 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 22:05:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 22:05:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 22:05:07 GMT
USER memcache
# Mon, 06 Jul 2026 22:05:07 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 22:05:07 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c28d0960fd8ccb8d0d804cad9b7ac5adde1950d50a041fa6d9667b7574818b`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e8cde463d54b5d9ccc864b2a22a3fb1cb6d32662e187d2161215ccf3fae998`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 170.4 KB (170371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab94abc799598aba483c2ac576bfb440dedb2386e4afa185f536f3fcc1f38546`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 2.9 MB (2876865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8005a8ca890b984bdf2737e11b5d86d0d3db6f003c9fad496aa7107e57a616f7`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9fcd1b9234dadfc95a6d9c67e86f29e354b2a757eb1fa564f7047034d98b3ed`  
		Last Modified: Mon, 06 Jul 2026 22:05:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.43` - unknown; unknown

```console
$ docker pull memcached@sha256:ea4a2604bb3579325c6ab97f9b0cb6e9cb56296e1e6350e9e7bacbb42c6a47dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2034195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dde9ebb92580e852e351418fa4adf0509fd654f32375d26113b5208169eda80e`

```dockerfile
```

-	Layers:
	-	`sha256:1b4c5eddb6aa89c1696286ead3633a6d5ed17e39ee9c6ba50002625d89d16752`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 2.0 MB (2011969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9950a833f3ed093b05d5de4ffbdb64942119af8e5fc3b731f9584c2bc961843e`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 22.2 KB (22226 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.43` - linux; s390x

```console
$ docker pull memcached@sha256:d3cd3e513f2ddee32452ba0ec987fa00b5e1fb1d8db488eaf4fbe26b5d76074c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32292489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5460628bdf70beec088e32d0e29e4bfdc0f288d2df4a23fb962ca9ab72e0d959`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:38:22 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:38:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:41:41 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:41 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:41 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:41 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:41 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd3b24daa3730c2808288ea42c60ca7198480d38cea1e21d7cfe2adc3844917`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba2cdc589f233d4d27d14cf3372db956515683acd0fb9cb15af8b293489125d5`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 140.5 KB (140525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33665ac46f2cf8ddf33ff9813a3727015c6dcc7d0c0f089feafe19ae89e34adb`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 2.3 MB (2299071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e96808b26b5232fb910ecf5cdc8493ae86733873c9f25bfa119fafa1c55b35c6`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dece698c0594201d0475a857aef447a96b29dbe79232e3557f4b64ba5741d09`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.43` - unknown; unknown

```console
$ docker pull memcached@sha256:3dd79394e3bb85b237653f075e202aa7f0c15898c5c5b1fe856df01cf9290536
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:463e703a269bd4656b96a53f3edcf89aa6c7b4270b4ba2f5be5b7da5304db134`

```dockerfile
```

-	Layers:
	-	`sha256:9fb3957b58d9cfc05cffe13f8e337f7a892cc305727f708d376fed40ce5fa0b1`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 2.0 MB (2009805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0635cd2ab613bff3b59e1c667e4c91d4c53f0e3375457d65df65880d46c59fed`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 22.2 KB (22152 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6.43-alpine`

```console
$ docker pull memcached@sha256:2365ce753fdf4592b63d461a43a2fa1b9214d5fb74686a3b42f38a6ef7667ad0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
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
	-	linux; s390x
	-	unknown; unknown

### `memcached:1.6.43-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:d24f1303e8fd2dfb03fcb756adaf6867879cdfece89c08a6e9f4a677ca8dadf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5922727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad6151f346a2bd04c3b277f22740e18cc3c044354e521cc519c92a8c84451d60`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:39:01 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:39:02 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:36 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:36 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72537507ddd4bf18613bb8a53b242da50a994ed2f47cea30e1f6c88efbee2a78`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7faa191428d835180295942536af93f611e77740cf097b3e8df24f089e6627e9`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 106.1 KB (106072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3a8994078ed716f7b7d9bf0c3d456fc16a781de709310bb595531d35228ff54`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 2.0 MB (1968919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16fb68556a5eec82c8c88c2fed3144af0ed956d9f11c575f55e2da6863dda7a5`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1e36d6e60879e2d185ee42a79191f0f8ac04cfc130cc0bebd0beca60d2aa9e4`  
		Last Modified: Mon, 06 Jul 2026 21:41:42 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.43-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:d930c2046b540ebb74e7a5b8fd2a6fdf468da9ff2293cb4dd827472ff5031831
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fe897885a6263d1427bd866148b454137670c770f04e071d66d2feff8085250`

```dockerfile
```

-	Layers:
	-	`sha256:51f430a0e1d8ff67dc96eae767c7f0711a583e92c9ff33dd9fe9a50d9efcff88`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0743f7aa18fbb7703101bbeab0bd523094977be5ea27494e0164581ec1c92a3b`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.43-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:73acf9d22c4bdbd48aa2de5bf1e220ce75378480569c24ba9c18811287233a1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5573817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2e136b1ff362f5bdc367ccbf1880be64dc78c0fc8b0d253d79c397c576ea533`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:38:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:38:34 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:51:09 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:51:09 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:51:09 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:51:09 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:51:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:51:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:51:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:51:10 GMT
USER memcache
# Mon, 06 Jul 2026 21:51:10 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:51:10 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:293879983da14bd43faca40a46b9a0ce087b83f1d447e044e4951610593ebc91`  
		Last Modified: Mon, 06 Jul 2026 21:51:13 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e795a1b77921c10d97c236f11aa756351bf412f979662f1acbc3c2ad62fd05e`  
		Last Modified: Mon, 06 Jul 2026 21:51:13 GMT  
		Size: 102.6 KB (102628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8ba8eb1b8820dd0e9f0738b9b8e91c53acd9c3d9940d0432e0c8f2ad44217aa`  
		Last Modified: Mon, 06 Jul 2026 21:51:14 GMT  
		Size: 1.9 MB (1916390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:106dee74d5261f5e566fd9e348ba286421a4d1e483cb173f96bed3521dcc687a`  
		Last Modified: Mon, 06 Jul 2026 21:51:13 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d806648e37a5bc66afa3a2b45eff733ca3b8570c352bf6036f8b077bfde9bbe5`  
		Last Modified: Mon, 06 Jul 2026 21:51:14 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.43-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:bae0d2964b7b9f665f5e8dd26b51a2cfe10653f7ef8757d7d4cc60c4f40ca919
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5e30efe0e3752cd34280817d416a8e537c8012155b6178564abb4bb870ef4c5`

```dockerfile
```

-	Layers:
	-	`sha256:c2e8d0f0d8af34b5281ae36052d97c6b73b3fe9383a62a22f836382f3bff4b76`  
		Last Modified: Mon, 06 Jul 2026 21:51:13 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.43-alpine` - linux; arm variant v7

```console
$ docker pull memcached@sha256:75e71baae6434f00bc3570e729ba883ff0b3934a99ef187ffb20c47bf6515cc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5231085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81e055b173d6abaed66778f7b1de84e94a2cd5148a272964eac221122af04b3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:39:18 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:39:19 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:42:14 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:42:14 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:42:14 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:42:14 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:42:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:42:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:42:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:42:14 GMT
USER memcache
# Mon, 06 Jul 2026 21:42:14 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:42:14 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13a07349f740cf45b2454a9b34effb1074b3eafef6ec97a67946c2bfc8f0a609`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:182bc05d2ae8d54d4f592cc6a72c1f46e7dd676340c1bd306f81a0f773e3a694`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 92.4 KB (92369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30172b660bdb95335d0d41ef5f5865718d434cd394d65a78795782f39fa8a31d`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 1.9 MB (1876756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3279f748468a4e79c099100b34acfca01161d3a4c7e3491050d37b9750ec0de5`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2271c46a5c6b2e2f9a4d581113b47bbc27ae767c172026bb9a21b3532d2e7b33`  
		Last Modified: Mon, 06 Jul 2026 21:42:20 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.43-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:ee9bff19b784d2bfc1f4a6c997bda2fe5d2f569951169a6da4490dc9aabf38f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:878949ad5f39565e088eb87ab96a6e6d8be7f7be57e4a3ea2fffe2791f38276f`

```dockerfile
```

-	Layers:
	-	`sha256:8d693e5f45f27e0a1b3a67573b03d554ba4a78bae37e0dfe37efd9bb0ad7aad9`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ed989ea1e997e400d8acfe1b1ac32263efc1404a751615fce2355b24920f262`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.43-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:9c1f017b1a9c14d8367d0886615b2f4cf5dbeb0abe803cff62e1ccf763a83309
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6251555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c2345e75471f47c2aaf508a6c0aed3a6394293ab98a83467476f018dbd966b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:39:04 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:39:05 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:41:51 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:51 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:51 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:51 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:51 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:51 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6611430365db147600c92bd762f806ab97f387ae400dfededdb339ed761b38d7`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba750e4cc6a2574aa4c85ae98490be9a705504b4bacc27dc37393172a38113ad`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 121.9 KB (121857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b15b9832850c680687cd3e192fc2b47f402a577cc7936b1429f8bf960043115`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 1.9 MB (1945317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:186ad9601948dfa94625c72f2efeb90cec5a856cf8dfc961fe0fb100a7612ceb`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:252c6c60ae667ad99277f31f2eb6995dc3c97517567345a95b9bfb6bfc7f4973`  
		Last Modified: Mon, 06 Jul 2026 21:41:57 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.43-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:4bf91160995d46f465e01fc0d092960db99f29c302767ea7693e51fe04664e1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b66911cd710529f8661a583ca5293311eab2646f7c5df648420879ccfb96710f`

```dockerfile
```

-	Layers:
	-	`sha256:69745701c406c0a0eaeb9398f5a3408b0ed98dc5f7c9eec5b69224b44fae3a07`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd96cdd23bab41a8c795d813ad3bca912cb0390a4664e71979b2ce937af558ce`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 20.7 KB (20728 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.43-alpine` - linux; 386

```console
$ docker pull memcached@sha256:99e3a43ede008cdb2a7404fba0c0d589df056cf317fc4530a43e9a18432057ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5704609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4259473df875ca4b335a6f5fe39a294e95701a65977bdb72708000b400db44ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:39:47 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:39:48 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:42:36 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:42:36 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:42:36 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:42:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:42:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:42:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:42:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:42:36 GMT
USER memcache
# Mon, 06 Jul 2026 21:42:36 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:42:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61e1fdddad44a79ab90599c3a732f61d9fe751fc44b20138c34ddac45fd68ef5`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:678ab87dad9650d15a64f037d1c0d3983c1d49b794975d97c2497b8f9fd2bd57`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 110.7 KB (110733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b879347f774880c414c9983ecc840683885be02e16e79eb8c9cdcaac056637d7`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 1.9 MB (1922386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc4f23ef17cd394d2b5b3c4ff9ace06ec964a74e6e4b1054ce2dab36ef9cf7ac`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02e0bb4aee5e6e8f857e6e53c13a85acc2ba624960d52685b39ca7a7824a257d`  
		Last Modified: Mon, 06 Jul 2026 21:42:42 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.43-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:39a379ca667774a1849a872c123e3fda6a96b382db34f7ae07976d3ddb3fb1cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a30528c0c40b7f3cd7ac8a1d6ba7b49c8754f8382944c04619fb7bf92ed3d05a`

```dockerfile
```

-	Layers:
	-	`sha256:bb24486845b08d5db14f90720802598a00f4e035591469f741bbcb785aa4b0bf`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62cc5e8bf2657465cce189ee097f4812ba020e1eebad5596743a2358bce26893`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.43-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:7d2ba96d4241409819ccd5423027938262a071d4072846016da6f9225e4836d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6000224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aeec582954a162c8fb264ed5e6fa0c143bebbe9b755034ea3a2cb6d9ea92fa0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:42:01 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:42:02 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:44:46 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:44:46 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:44:46 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:44:46 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:44:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:44:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:44:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:44:46 GMT
USER memcache
# Mon, 06 Jul 2026 21:44:46 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:44:46 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09ab42e9fa209561ea35daa341e0c8b7840004d01353cc66a0fc8ebfba557a81`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45ad51dfd812c83d08ee5e405f4aa86ae6e735e02525178ce71feae27365c2a0`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 126.3 KB (126251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85d469d6b6b1e3b775fe5fe688def9850c709a6baed475555f1bbf86568749a3`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 2.1 MB (2059215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dddc956aa4fc60444b4d8984d1191ef930b711b263d6dba62b3e8109db1dd376`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92ede20e44eec94165101cde31c847b60fb02a26d0f32608851af2406139c96d`  
		Last Modified: Mon, 06 Jul 2026 21:45:01 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.43-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:0c8a3274873521aa4eaf05ee6bed653147bf23787d0237504c685fcbcca987b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e8b08bf8ba35127924f8bf0a7bd38cdbe4611ca3be7eb03883f11f8a106f60e`

```dockerfile
```

-	Layers:
	-	`sha256:4cd76b089083157c73c2fc7f020e42f03ae6146c8526f3a002aedd79855d755f`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1baceadbe03e9e6d2078a0728a365e375cb5a7b949807fbb2d1ad605006f4fbb`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.43-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:c86f0452a9f8d13f8b5c712bf53ecad0fa72512a4e6efe178083a86c56d2c212
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5825105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:512a544a637f08526e42bf2c90d41f3684850faa148de5a7ea4756ee704eb2da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:38:26 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:38:26 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:36 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:36 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30370c595c056e472723b791337c26580ebbea923bded312d0d4eb296b2db741`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:564d2d22cc556ef61fe24d9da38570eac3ba29e020c7a6cb600c63402ef1c04f`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 114.3 KB (114290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:953e49ef00d23f602cd8f70ea70fa934c041873b3d03763c44e5882ddace30a4`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 2.0 MB (2000145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53337d858b4e79b1fc2dae92dfdea190a06175a55244c43910ea36be1b4a0e78`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1e36d6e60879e2d185ee42a79191f0f8ac04cfc130cc0bebd0beca60d2aa9e4`  
		Last Modified: Mon, 06 Jul 2026 21:41:42 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.43-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:16066c85c99eca03d74a3ccb2a1cb6ef26bd70cd1abe603e08b140aad9193229
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a25456e690ef0d7e78b9c4006d6d0a01e3dfa626d96cafca25bc3b3b6f346cc`

```dockerfile
```

-	Layers:
	-	`sha256:31477740d9cd110c119a3d7f77d6662e027c9eff9615b5d8cabba62881b75075`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bb0231be0d089eb94b312c2bc62bdcae87600bb7fd6f9edfdf6d0ecec53bd57`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6.43-alpine3.24`

```console
$ docker pull memcached@sha256:2365ce753fdf4592b63d461a43a2fa1b9214d5fb74686a3b42f38a6ef7667ad0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
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
	-	linux; s390x
	-	unknown; unknown

### `memcached:1.6.43-alpine3.24` - linux; amd64

```console
$ docker pull memcached@sha256:d24f1303e8fd2dfb03fcb756adaf6867879cdfece89c08a6e9f4a677ca8dadf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5922727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad6151f346a2bd04c3b277f22740e18cc3c044354e521cc519c92a8c84451d60`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:39:01 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:39:02 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:36 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:36 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72537507ddd4bf18613bb8a53b242da50a994ed2f47cea30e1f6c88efbee2a78`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7faa191428d835180295942536af93f611e77740cf097b3e8df24f089e6627e9`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 106.1 KB (106072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3a8994078ed716f7b7d9bf0c3d456fc16a781de709310bb595531d35228ff54`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 2.0 MB (1968919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16fb68556a5eec82c8c88c2fed3144af0ed956d9f11c575f55e2da6863dda7a5`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1e36d6e60879e2d185ee42a79191f0f8ac04cfc130cc0bebd0beca60d2aa9e4`  
		Last Modified: Mon, 06 Jul 2026 21:41:42 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.43-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:d930c2046b540ebb74e7a5b8fd2a6fdf468da9ff2293cb4dd827472ff5031831
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fe897885a6263d1427bd866148b454137670c770f04e071d66d2feff8085250`

```dockerfile
```

-	Layers:
	-	`sha256:51f430a0e1d8ff67dc96eae767c7f0711a583e92c9ff33dd9fe9a50d9efcff88`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0743f7aa18fbb7703101bbeab0bd523094977be5ea27494e0164581ec1c92a3b`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.43-alpine3.24` - linux; arm variant v6

```console
$ docker pull memcached@sha256:73acf9d22c4bdbd48aa2de5bf1e220ce75378480569c24ba9c18811287233a1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5573817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2e136b1ff362f5bdc367ccbf1880be64dc78c0fc8b0d253d79c397c576ea533`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:38:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:38:34 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:51:09 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:51:09 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:51:09 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:51:09 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:51:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:51:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:51:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:51:10 GMT
USER memcache
# Mon, 06 Jul 2026 21:51:10 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:51:10 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:293879983da14bd43faca40a46b9a0ce087b83f1d447e044e4951610593ebc91`  
		Last Modified: Mon, 06 Jul 2026 21:51:13 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e795a1b77921c10d97c236f11aa756351bf412f979662f1acbc3c2ad62fd05e`  
		Last Modified: Mon, 06 Jul 2026 21:51:13 GMT  
		Size: 102.6 KB (102628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8ba8eb1b8820dd0e9f0738b9b8e91c53acd9c3d9940d0432e0c8f2ad44217aa`  
		Last Modified: Mon, 06 Jul 2026 21:51:14 GMT  
		Size: 1.9 MB (1916390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:106dee74d5261f5e566fd9e348ba286421a4d1e483cb173f96bed3521dcc687a`  
		Last Modified: Mon, 06 Jul 2026 21:51:13 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d806648e37a5bc66afa3a2b45eff733ca3b8570c352bf6036f8b077bfde9bbe5`  
		Last Modified: Mon, 06 Jul 2026 21:51:14 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.43-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:bae0d2964b7b9f665f5e8dd26b51a2cfe10653f7ef8757d7d4cc60c4f40ca919
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5e30efe0e3752cd34280817d416a8e537c8012155b6178564abb4bb870ef4c5`

```dockerfile
```

-	Layers:
	-	`sha256:c2e8d0f0d8af34b5281ae36052d97c6b73b3fe9383a62a22f836382f3bff4b76`  
		Last Modified: Mon, 06 Jul 2026 21:51:13 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.43-alpine3.24` - linux; arm variant v7

```console
$ docker pull memcached@sha256:75e71baae6434f00bc3570e729ba883ff0b3934a99ef187ffb20c47bf6515cc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5231085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81e055b173d6abaed66778f7b1de84e94a2cd5148a272964eac221122af04b3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:39:18 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:39:19 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:42:14 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:42:14 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:42:14 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:42:14 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:42:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:42:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:42:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:42:14 GMT
USER memcache
# Mon, 06 Jul 2026 21:42:14 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:42:14 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13a07349f740cf45b2454a9b34effb1074b3eafef6ec97a67946c2bfc8f0a609`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:182bc05d2ae8d54d4f592cc6a72c1f46e7dd676340c1bd306f81a0f773e3a694`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 92.4 KB (92369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30172b660bdb95335d0d41ef5f5865718d434cd394d65a78795782f39fa8a31d`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 1.9 MB (1876756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3279f748468a4e79c099100b34acfca01161d3a4c7e3491050d37b9750ec0de5`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2271c46a5c6b2e2f9a4d581113b47bbc27ae767c172026bb9a21b3532d2e7b33`  
		Last Modified: Mon, 06 Jul 2026 21:42:20 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.43-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:ee9bff19b784d2bfc1f4a6c997bda2fe5d2f569951169a6da4490dc9aabf38f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:878949ad5f39565e088eb87ab96a6e6d8be7f7be57e4a3ea2fffe2791f38276f`

```dockerfile
```

-	Layers:
	-	`sha256:8d693e5f45f27e0a1b3a67573b03d554ba4a78bae37e0dfe37efd9bb0ad7aad9`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ed989ea1e997e400d8acfe1b1ac32263efc1404a751615fce2355b24920f262`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.43-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:9c1f017b1a9c14d8367d0886615b2f4cf5dbeb0abe803cff62e1ccf763a83309
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6251555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c2345e75471f47c2aaf508a6c0aed3a6394293ab98a83467476f018dbd966b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:39:04 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:39:05 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:41:51 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:51 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:51 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:51 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:51 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:51 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6611430365db147600c92bd762f806ab97f387ae400dfededdb339ed761b38d7`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba750e4cc6a2574aa4c85ae98490be9a705504b4bacc27dc37393172a38113ad`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 121.9 KB (121857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b15b9832850c680687cd3e192fc2b47f402a577cc7936b1429f8bf960043115`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 1.9 MB (1945317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:186ad9601948dfa94625c72f2efeb90cec5a856cf8dfc961fe0fb100a7612ceb`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:252c6c60ae667ad99277f31f2eb6995dc3c97517567345a95b9bfb6bfc7f4973`  
		Last Modified: Mon, 06 Jul 2026 21:41:57 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.43-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:4bf91160995d46f465e01fc0d092960db99f29c302767ea7693e51fe04664e1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b66911cd710529f8661a583ca5293311eab2646f7c5df648420879ccfb96710f`

```dockerfile
```

-	Layers:
	-	`sha256:69745701c406c0a0eaeb9398f5a3408b0ed98dc5f7c9eec5b69224b44fae3a07`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd96cdd23bab41a8c795d813ad3bca912cb0390a4664e71979b2ce937af558ce`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 20.7 KB (20728 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.43-alpine3.24` - linux; 386

```console
$ docker pull memcached@sha256:99e3a43ede008cdb2a7404fba0c0d589df056cf317fc4530a43e9a18432057ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5704609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4259473df875ca4b335a6f5fe39a294e95701a65977bdb72708000b400db44ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:39:47 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:39:48 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:42:36 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:42:36 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:42:36 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:42:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:42:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:42:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:42:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:42:36 GMT
USER memcache
# Mon, 06 Jul 2026 21:42:36 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:42:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61e1fdddad44a79ab90599c3a732f61d9fe751fc44b20138c34ddac45fd68ef5`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:678ab87dad9650d15a64f037d1c0d3983c1d49b794975d97c2497b8f9fd2bd57`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 110.7 KB (110733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b879347f774880c414c9983ecc840683885be02e16e79eb8c9cdcaac056637d7`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 1.9 MB (1922386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc4f23ef17cd394d2b5b3c4ff9ace06ec964a74e6e4b1054ce2dab36ef9cf7ac`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02e0bb4aee5e6e8f857e6e53c13a85acc2ba624960d52685b39ca7a7824a257d`  
		Last Modified: Mon, 06 Jul 2026 21:42:42 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.43-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:39a379ca667774a1849a872c123e3fda6a96b382db34f7ae07976d3ddb3fb1cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a30528c0c40b7f3cd7ac8a1d6ba7b49c8754f8382944c04619fb7bf92ed3d05a`

```dockerfile
```

-	Layers:
	-	`sha256:bb24486845b08d5db14f90720802598a00f4e035591469f741bbcb785aa4b0bf`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62cc5e8bf2657465cce189ee097f4812ba020e1eebad5596743a2358bce26893`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.43-alpine3.24` - linux; ppc64le

```console
$ docker pull memcached@sha256:7d2ba96d4241409819ccd5423027938262a071d4072846016da6f9225e4836d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6000224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aeec582954a162c8fb264ed5e6fa0c143bebbe9b755034ea3a2cb6d9ea92fa0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:42:01 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:42:02 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:44:46 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:44:46 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:44:46 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:44:46 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:44:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:44:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:44:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:44:46 GMT
USER memcache
# Mon, 06 Jul 2026 21:44:46 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:44:46 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09ab42e9fa209561ea35daa341e0c8b7840004d01353cc66a0fc8ebfba557a81`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45ad51dfd812c83d08ee5e405f4aa86ae6e735e02525178ce71feae27365c2a0`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 126.3 KB (126251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85d469d6b6b1e3b775fe5fe688def9850c709a6baed475555f1bbf86568749a3`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 2.1 MB (2059215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dddc956aa4fc60444b4d8984d1191ef930b711b263d6dba62b3e8109db1dd376`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92ede20e44eec94165101cde31c847b60fb02a26d0f32608851af2406139c96d`  
		Last Modified: Mon, 06 Jul 2026 21:45:01 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.43-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:0c8a3274873521aa4eaf05ee6bed653147bf23787d0237504c685fcbcca987b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e8b08bf8ba35127924f8bf0a7bd38cdbe4611ca3be7eb03883f11f8a106f60e`

```dockerfile
```

-	Layers:
	-	`sha256:4cd76b089083157c73c2fc7f020e42f03ae6146c8526f3a002aedd79855d755f`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1baceadbe03e9e6d2078a0728a365e375cb5a7b949807fbb2d1ad605006f4fbb`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.43-alpine3.24` - linux; s390x

```console
$ docker pull memcached@sha256:c86f0452a9f8d13f8b5c712bf53ecad0fa72512a4e6efe178083a86c56d2c212
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5825105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:512a544a637f08526e42bf2c90d41f3684850faa148de5a7ea4756ee704eb2da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:38:26 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:38:26 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:36 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:36 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30370c595c056e472723b791337c26580ebbea923bded312d0d4eb296b2db741`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:564d2d22cc556ef61fe24d9da38570eac3ba29e020c7a6cb600c63402ef1c04f`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 114.3 KB (114290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:953e49ef00d23f602cd8f70ea70fa934c041873b3d03763c44e5882ddace30a4`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 2.0 MB (2000145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53337d858b4e79b1fc2dae92dfdea190a06175a55244c43910ea36be1b4a0e78`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1e36d6e60879e2d185ee42a79191f0f8ac04cfc130cc0bebd0beca60d2aa9e4`  
		Last Modified: Mon, 06 Jul 2026 21:41:42 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.43-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:16066c85c99eca03d74a3ccb2a1cb6ef26bd70cd1abe603e08b140aad9193229
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a25456e690ef0d7e78b9c4006d6d0a01e3dfa626d96cafca25bc3b3b6f346cc`

```dockerfile
```

-	Layers:
	-	`sha256:31477740d9cd110c119a3d7f77d6662e027c9eff9615b5d8cabba62881b75075`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bb0231be0d089eb94b312c2bc62bdcae87600bb7fd6f9edfdf6d0ecec53bd57`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6.43-trixie`

```console
$ docker pull memcached@sha256:983a925a6f47ffcce7adfe00e5f16b229af7311f4d418ae5cd8efd93f0246ae4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
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
	-	linux; s390x
	-	unknown; unknown

### `memcached:1.6.43-trixie` - linux; amd64

```console
$ docker pull memcached@sha256:656a6cfc8ed69f32c4b5a126e5f67b0af87fb4f3397bf938dcffba145f524f23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32204955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a090ff2819a8baa8927a1504d25e57248289de7d035c09b27016aa6778b20671`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:38:59 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:39:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:41:47 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:47 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:47 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:47 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:47 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:47 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:47 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fbf1c8c52a26c7246a7962c9ff3b39c4d01827da5bec5975bf09972034ebd07`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a856d8d29335e9bb89c4ac70a692292e2d9289888f82e2493fa33920a6818cf2`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 136.7 KB (136699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f462e97e45ac49cd49fbd7b6c887d9f60b02ef658985bae749a545250a982db`  
		Last Modified: Mon, 06 Jul 2026 21:41:54 GMT  
		Size: 2.3 MB (2281324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01f91d925073819971c78c22c597acd3d11339a7bc0ecbec0fc1f29dfc75e3ee`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d497385966554717bce54e3bd2e58aa97e93409de213297aafe5ed2b7b284f71`  
		Last Modified: Mon, 06 Jul 2026 21:41:54 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.43-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:cbbe127b3e2a069ef5f514d27653fc24242c02c9eac9b2643b8b1fe547f90e4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e980845da04a5b245b3b3b06501510f29735c64ad84ec1958397e73ecf8f2af3`

```dockerfile
```

-	Layers:
	-	`sha256:b2ba902ea7ef1dd0aeaa90d23c7408cd52b48cfd0d4de1771bd6d7cb26068ba3`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 2.0 MB (2008368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd3e3320b0b76edfb87dc1cecd7798b471b2db3ffe01c26cec2c36862ac2b3af`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.43-trixie` - linux; arm variant v5

```console
$ docker pull memcached@sha256:e12299225626e23ced92dbec45865333ae66504d813c8258ba4ca8fd37aab586
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30317940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef73b1d7a006c523b24f707628218537bd2256d972ad65e394a1b170dff6f9c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:38:33 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:38:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:41:54 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:54 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:54 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:54 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:54 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:54 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:da43bc6a07a9cd7cc23faa538adc0797482747316b5a85b9f3f94ed17f6c1a2a`  
		Last Modified: Wed, 24 Jun 2026 00:28:12 GMT  
		Size: 28.0 MB (27959221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:912e0265a9bef2049f461667c203b04c5d953f55d3bad7fd06009d17233e8c1b`  
		Last Modified: Mon, 06 Jul 2026 21:42:00 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a61804d5bb4f8881f2bda238950beb1d4061cb3cd45e3bcd4c73e45ae8cb368`  
		Last Modified: Mon, 06 Jul 2026 21:42:01 GMT  
		Size: 144.2 KB (144184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3f95616646814d54f714ea24851e4b510b62aaf05006e19ab3c2b4fff72e31a`  
		Last Modified: Mon, 06 Jul 2026 21:42:01 GMT  
		Size: 2.2 MB (2213023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d33b96d1e686356248b385146a036f7722b228e793cb44a4139fc3e911377f2`  
		Last Modified: Mon, 06 Jul 2026 21:42:01 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef3d232ed4ac1acf774bc29d4e5bb041150ae0690a6ad8dfbc827d39ba67e4f`  
		Last Modified: Mon, 06 Jul 2026 21:42:02 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.43-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:04ec002d7fc434c575de2e3b150bc2f94892905ab29a1442fde1aaf52d91559f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:657d5c8bd24ce14e139f22cd05551b37ad0f747e0f17d0803f7f72904eb45338`

```dockerfile
```

-	Layers:
	-	`sha256:5a134601bcd31b5b86b890a3e2dfa44f32c19503a7f8132d46df61e1191c91a7`  
		Last Modified: Mon, 06 Jul 2026 21:42:01 GMT  
		Size: 2.0 MB (2011371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95754d0d5ed2078de0d4c37786bf409b4f5de4e43cdb36388ff5eb2b7570f2bd`  
		Last Modified: Mon, 06 Jul 2026 21:42:00 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.43-trixie` - linux; arm variant v7

```console
$ docker pull memcached@sha256:6f681e43471b6ba99e8861c81f644754db4aa35554ee097b2b438f7e7c5c267b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28514937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdc0ab0d0e5f8809ea81cacb053a5820256c72a85d46672a50396adcffc9c385`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:39:20 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:39:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:42:34 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:42:34 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:42:34 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:42:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:42:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:42:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:42:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:42:34 GMT
USER memcache
# Mon, 06 Jul 2026 21:42:34 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:42:34 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16710e5b885dd2f9f0d4f3a68d20ee3052ef7eeebb026cd8c76860317060c3f4`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d69824716fa350bb35cb1be065c8493b5241e9cb5a07318f5d7f2a4b81802ef`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 135.4 KB (135382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:293dd91233448f2cc893f3db5669239f4a64de61f71eb8f6b1b3a131e8e6356d`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 2.2 MB (2166986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b180e4022ce73ec0e0049fe1d68843ba4601570343a6f6b578624174351963d3`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81192fef36610c3f90e846a5959b26829e120dbf32a909e3d1c287e542a86895`  
		Last Modified: Mon, 06 Jul 2026 21:42:42 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.43-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:1ce1c4df7e869abd47eeb3f73eac8583fccbd5c057a7d74957955276e22a6170
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2032132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee61bcf236cc2e3765d25b70b40c452f036895398f82a37ce9e765b6e31fb21e`

```dockerfile
```

-	Layers:
	-	`sha256:a1e168963faef5a94750a3afe81a447b1c0b24daf7ae75b35eadba8c13579e06`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 2.0 MB (2009828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aaca361028b5c03cfe69d0f2877a95f4b68d27086bc94c0785cb7fcbe73708c2`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.43-trixie` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:61b1d3943ec1fef8b57a16150315cab848d09a2a5cd95b4f2373e9bf069927c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32566996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09b7981a23c3b8ad6c6e27145ee0ee1eadff16c409312807abea1fb6c90456dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:39:02 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:39:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:42:03 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:42:03 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:42:03 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:42:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:42:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:42:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:42:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:42:03 GMT
USER memcache
# Mon, 06 Jul 2026 21:42:03 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:42:03 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb3a9db0b552ee84467be61022b454f3f8d3fcf6645f1ef421dbc4e5dc17c1f7`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2baa2ada261da15b63b6aa4545f54303c26da020d8d73b28aad12fbeb383e381`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 153.5 KB (153501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63a169b8dfa3c4e20bdac3db66840fbc677728ec228cc7ff4197cdbc2d70692d`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 2.3 MB (2263430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12575e3ba7dcfe911406d84a26c38fb3285198d8565de14f54e7d0ee83515141`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7471454cf4c9d8bf3e1028d4f9890185ec1e6216908733ab24eb5a4c8cad3154`  
		Last Modified: Mon, 06 Jul 2026 21:42:11 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.43-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:a6f5908bfc77290cbd322b08baa25baf20cd7d918e4739ee8f44ecb27c5e9954
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55a2398b634f5aa30e528ce79af556a18b2ca9c8c967290e8855b2db75050aa5`

```dockerfile
```

-	Layers:
	-	`sha256:d905dff6358a991386cde295b73a010f87a7259a80916ed7a6a56b4e32f03b5e`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 2.0 MB (2008676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e569c815cafd8f0caa21ee5639693ff9fb5169b3e266aaa4ca20d90243c0f47`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.43-trixie` - linux; 386

```console
$ docker pull memcached@sha256:5c54ebcc9adda03074cd6f582dc9d47f2c597af9347338bf69a815476aba85df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33676183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:972f94eb4da4e3cadae40e616f31b0c988375d1372f4de37403c9d35de40ad89`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:39:45 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:39:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:42:55 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:42:55 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:42:55 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:42:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:42:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:42:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:42:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:42:55 GMT
USER memcache
# Mon, 06 Jul 2026 21:42:55 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:42:55 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:984d3baa100eb8c4d7c83b7c23b4748e508aa6ed5903297f02be90a681f52d41`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 31.3 MB (31301210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40a5a431eae5f7382bbe3702131b8e5257dde1ab3f42b0bdae2017173d030bfb`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1e45b65fb40b92a3640f6c3f98c81c726756107a1a3cf54e9556839b5434314`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 147.5 KB (147522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c8bf709284a2d6ce9b302597a13416dceb853b25f1df95330c09a2a247c458d`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 2.2 MB (2225936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64199d124a7a80324df2952272fbeeca3578646cdc58dc2452ff83a7cb05ff80`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0a2c694d180348fe8a62f58a1cc8141df9eb8cc8e77aa8d7fc2bc57cbde7693`  
		Last Modified: Mon, 06 Jul 2026 21:43:03 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.43-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:854626f034a18e92820f9cab215dc02f1ff1a8c4a00c40561cc65029d83a2f3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2027620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10d6da14e5186bdd10781072e2d4a8370bc308ffc7e5f4e1564a6a5eededac39`

```dockerfile
```

-	Layers:
	-	`sha256:6e31f8780d98fc1b31d8f166958e7cd9a63a656d09bfacce23983c74ea9322d0`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 2.0 MB (2005525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:28abd28639656318b2a292318661c673a1965a0817aee3ebda62c8f3019a1059`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.43-trixie` - linux; ppc64le

```console
$ docker pull memcached@sha256:8f5c7302d6d437cff3c3823ce82b23e5b3cdbd91aeddea51fe63f3dbc86526b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.7 MB (36655139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbf273f8d7258224f3d1d7b29b885ef6fdc80a930babdc82f0fd5ebfcd022f30`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:41:59 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:42:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 22:05:05 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 22:05:05 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 22:05:05 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 22:05:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 22:05:06 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 22:05:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 22:05:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 22:05:07 GMT
USER memcache
# Mon, 06 Jul 2026 22:05:07 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 22:05:07 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c28d0960fd8ccb8d0d804cad9b7ac5adde1950d50a041fa6d9667b7574818b`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e8cde463d54b5d9ccc864b2a22a3fb1cb6d32662e187d2161215ccf3fae998`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 170.4 KB (170371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab94abc799598aba483c2ac576bfb440dedb2386e4afa185f536f3fcc1f38546`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 2.9 MB (2876865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8005a8ca890b984bdf2737e11b5d86d0d3db6f003c9fad496aa7107e57a616f7`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9fcd1b9234dadfc95a6d9c67e86f29e354b2a757eb1fa564f7047034d98b3ed`  
		Last Modified: Mon, 06 Jul 2026 22:05:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.43-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:ea4a2604bb3579325c6ab97f9b0cb6e9cb56296e1e6350e9e7bacbb42c6a47dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2034195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dde9ebb92580e852e351418fa4adf0509fd654f32375d26113b5208169eda80e`

```dockerfile
```

-	Layers:
	-	`sha256:1b4c5eddb6aa89c1696286ead3633a6d5ed17e39ee9c6ba50002625d89d16752`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 2.0 MB (2011969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9950a833f3ed093b05d5de4ffbdb64942119af8e5fc3b731f9584c2bc961843e`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 22.2 KB (22226 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.43-trixie` - linux; s390x

```console
$ docker pull memcached@sha256:d3cd3e513f2ddee32452ba0ec987fa00b5e1fb1d8db488eaf4fbe26b5d76074c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32292489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5460628bdf70beec088e32d0e29e4bfdc0f288d2df4a23fb962ca9ab72e0d959`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:38:22 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:38:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:41:41 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:41 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:41 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:41 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:41 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd3b24daa3730c2808288ea42c60ca7198480d38cea1e21d7cfe2adc3844917`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba2cdc589f233d4d27d14cf3372db956515683acd0fb9cb15af8b293489125d5`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 140.5 KB (140525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33665ac46f2cf8ddf33ff9813a3727015c6dcc7d0c0f089feafe19ae89e34adb`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 2.3 MB (2299071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e96808b26b5232fb910ecf5cdc8493ae86733873c9f25bfa119fafa1c55b35c6`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dece698c0594201d0475a857aef447a96b29dbe79232e3557f4b64ba5741d09`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.43-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:3dd79394e3bb85b237653f075e202aa7f0c15898c5c5b1fe856df01cf9290536
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:463e703a269bd4656b96a53f3edcf89aa6c7b4270b4ba2f5be5b7da5304db134`

```dockerfile
```

-	Layers:
	-	`sha256:9fb3957b58d9cfc05cffe13f8e337f7a892cc305727f708d376fed40ce5fa0b1`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 2.0 MB (2009805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0635cd2ab613bff3b59e1c667e4c91d4c53f0e3375457d65df65880d46c59fed`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 22.2 KB (22152 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:alpine`

```console
$ docker pull memcached@sha256:cd4b42e6cee87000353712623f8a4be411e5a06f61bc1fbc6864fb9b23402fe4
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
$ docker pull memcached@sha256:d24f1303e8fd2dfb03fcb756adaf6867879cdfece89c08a6e9f4a677ca8dadf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5922727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad6151f346a2bd04c3b277f22740e18cc3c044354e521cc519c92a8c84451d60`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:39:01 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:39:02 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:36 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:36 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72537507ddd4bf18613bb8a53b242da50a994ed2f47cea30e1f6c88efbee2a78`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7faa191428d835180295942536af93f611e77740cf097b3e8df24f089e6627e9`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 106.1 KB (106072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3a8994078ed716f7b7d9bf0c3d456fc16a781de709310bb595531d35228ff54`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 2.0 MB (1968919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16fb68556a5eec82c8c88c2fed3144af0ed956d9f11c575f55e2da6863dda7a5`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1e36d6e60879e2d185ee42a79191f0f8ac04cfc130cc0bebd0beca60d2aa9e4`  
		Last Modified: Mon, 06 Jul 2026 21:41:42 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:d930c2046b540ebb74e7a5b8fd2a6fdf468da9ff2293cb4dd827472ff5031831
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fe897885a6263d1427bd866148b454137670c770f04e071d66d2feff8085250`

```dockerfile
```

-	Layers:
	-	`sha256:51f430a0e1d8ff67dc96eae767c7f0711a583e92c9ff33dd9fe9a50d9efcff88`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0743f7aa18fbb7703101bbeab0bd523094977be5ea27494e0164581ec1c92a3b`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:73acf9d22c4bdbd48aa2de5bf1e220ce75378480569c24ba9c18811287233a1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5573817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2e136b1ff362f5bdc367ccbf1880be64dc78c0fc8b0d253d79c397c576ea533`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:38:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:38:34 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:51:09 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:51:09 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:51:09 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:51:09 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:51:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:51:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:51:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:51:10 GMT
USER memcache
# Mon, 06 Jul 2026 21:51:10 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:51:10 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:293879983da14bd43faca40a46b9a0ce087b83f1d447e044e4951610593ebc91`  
		Last Modified: Mon, 06 Jul 2026 21:51:13 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e795a1b77921c10d97c236f11aa756351bf412f979662f1acbc3c2ad62fd05e`  
		Last Modified: Mon, 06 Jul 2026 21:51:13 GMT  
		Size: 102.6 KB (102628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8ba8eb1b8820dd0e9f0738b9b8e91c53acd9c3d9940d0432e0c8f2ad44217aa`  
		Last Modified: Mon, 06 Jul 2026 21:51:14 GMT  
		Size: 1.9 MB (1916390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:106dee74d5261f5e566fd9e348ba286421a4d1e483cb173f96bed3521dcc687a`  
		Last Modified: Mon, 06 Jul 2026 21:51:13 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d806648e37a5bc66afa3a2b45eff733ca3b8570c352bf6036f8b077bfde9bbe5`  
		Last Modified: Mon, 06 Jul 2026 21:51:14 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:bae0d2964b7b9f665f5e8dd26b51a2cfe10653f7ef8757d7d4cc60c4f40ca919
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5e30efe0e3752cd34280817d416a8e537c8012155b6178564abb4bb870ef4c5`

```dockerfile
```

-	Layers:
	-	`sha256:c2e8d0f0d8af34b5281ae36052d97c6b73b3fe9383a62a22f836382f3bff4b76`  
		Last Modified: Mon, 06 Jul 2026 21:51:13 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; arm variant v7

```console
$ docker pull memcached@sha256:75e71baae6434f00bc3570e729ba883ff0b3934a99ef187ffb20c47bf6515cc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5231085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81e055b173d6abaed66778f7b1de84e94a2cd5148a272964eac221122af04b3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:39:18 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:39:19 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:42:14 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:42:14 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:42:14 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:42:14 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:42:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:42:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:42:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:42:14 GMT
USER memcache
# Mon, 06 Jul 2026 21:42:14 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:42:14 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13a07349f740cf45b2454a9b34effb1074b3eafef6ec97a67946c2bfc8f0a609`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:182bc05d2ae8d54d4f592cc6a72c1f46e7dd676340c1bd306f81a0f773e3a694`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 92.4 KB (92369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30172b660bdb95335d0d41ef5f5865718d434cd394d65a78795782f39fa8a31d`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 1.9 MB (1876756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3279f748468a4e79c099100b34acfca01161d3a4c7e3491050d37b9750ec0de5`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2271c46a5c6b2e2f9a4d581113b47bbc27ae767c172026bb9a21b3532d2e7b33`  
		Last Modified: Mon, 06 Jul 2026 21:42:20 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:ee9bff19b784d2bfc1f4a6c997bda2fe5d2f569951169a6da4490dc9aabf38f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:878949ad5f39565e088eb87ab96a6e6d8be7f7be57e4a3ea2fffe2791f38276f`

```dockerfile
```

-	Layers:
	-	`sha256:8d693e5f45f27e0a1b3a67573b03d554ba4a78bae37e0dfe37efd9bb0ad7aad9`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ed989ea1e997e400d8acfe1b1ac32263efc1404a751615fce2355b24920f262`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:9c1f017b1a9c14d8367d0886615b2f4cf5dbeb0abe803cff62e1ccf763a83309
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6251555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c2345e75471f47c2aaf508a6c0aed3a6394293ab98a83467476f018dbd966b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:39:04 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:39:05 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:41:51 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:51 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:51 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:51 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:51 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:51 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6611430365db147600c92bd762f806ab97f387ae400dfededdb339ed761b38d7`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba750e4cc6a2574aa4c85ae98490be9a705504b4bacc27dc37393172a38113ad`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 121.9 KB (121857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b15b9832850c680687cd3e192fc2b47f402a577cc7936b1429f8bf960043115`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 1.9 MB (1945317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:186ad9601948dfa94625c72f2efeb90cec5a856cf8dfc961fe0fb100a7612ceb`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:252c6c60ae667ad99277f31f2eb6995dc3c97517567345a95b9bfb6bfc7f4973`  
		Last Modified: Mon, 06 Jul 2026 21:41:57 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:4bf91160995d46f465e01fc0d092960db99f29c302767ea7693e51fe04664e1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b66911cd710529f8661a583ca5293311eab2646f7c5df648420879ccfb96710f`

```dockerfile
```

-	Layers:
	-	`sha256:69745701c406c0a0eaeb9398f5a3408b0ed98dc5f7c9eec5b69224b44fae3a07`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd96cdd23bab41a8c795d813ad3bca912cb0390a4664e71979b2ce937af558ce`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 20.7 KB (20728 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; 386

```console
$ docker pull memcached@sha256:99e3a43ede008cdb2a7404fba0c0d589df056cf317fc4530a43e9a18432057ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5704609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4259473df875ca4b335a6f5fe39a294e95701a65977bdb72708000b400db44ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:39:47 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:39:48 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:42:36 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:42:36 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:42:36 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:42:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:42:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:42:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:42:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:42:36 GMT
USER memcache
# Mon, 06 Jul 2026 21:42:36 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:42:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61e1fdddad44a79ab90599c3a732f61d9fe751fc44b20138c34ddac45fd68ef5`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:678ab87dad9650d15a64f037d1c0d3983c1d49b794975d97c2497b8f9fd2bd57`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 110.7 KB (110733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b879347f774880c414c9983ecc840683885be02e16e79eb8c9cdcaac056637d7`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 1.9 MB (1922386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc4f23ef17cd394d2b5b3c4ff9ace06ec964a74e6e4b1054ce2dab36ef9cf7ac`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02e0bb4aee5e6e8f857e6e53c13a85acc2ba624960d52685b39ca7a7824a257d`  
		Last Modified: Mon, 06 Jul 2026 21:42:42 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:39a379ca667774a1849a872c123e3fda6a96b382db34f7ae07976d3ddb3fb1cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a30528c0c40b7f3cd7ac8a1d6ba7b49c8754f8382944c04619fb7bf92ed3d05a`

```dockerfile
```

-	Layers:
	-	`sha256:bb24486845b08d5db14f90720802598a00f4e035591469f741bbcb785aa4b0bf`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62cc5e8bf2657465cce189ee097f4812ba020e1eebad5596743a2358bce26893`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:7d2ba96d4241409819ccd5423027938262a071d4072846016da6f9225e4836d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6000224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aeec582954a162c8fb264ed5e6fa0c143bebbe9b755034ea3a2cb6d9ea92fa0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:42:01 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:42:02 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:44:46 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:44:46 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:44:46 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:44:46 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:44:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:44:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:44:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:44:46 GMT
USER memcache
# Mon, 06 Jul 2026 21:44:46 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:44:46 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09ab42e9fa209561ea35daa341e0c8b7840004d01353cc66a0fc8ebfba557a81`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45ad51dfd812c83d08ee5e405f4aa86ae6e735e02525178ce71feae27365c2a0`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 126.3 KB (126251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85d469d6b6b1e3b775fe5fe688def9850c709a6baed475555f1bbf86568749a3`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 2.1 MB (2059215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dddc956aa4fc60444b4d8984d1191ef930b711b263d6dba62b3e8109db1dd376`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92ede20e44eec94165101cde31c847b60fb02a26d0f32608851af2406139c96d`  
		Last Modified: Mon, 06 Jul 2026 21:45:01 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:0c8a3274873521aa4eaf05ee6bed653147bf23787d0237504c685fcbcca987b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e8b08bf8ba35127924f8bf0a7bd38cdbe4611ca3be7eb03883f11f8a106f60e`

```dockerfile
```

-	Layers:
	-	`sha256:4cd76b089083157c73c2fc7f020e42f03ae6146c8526f3a002aedd79855d755f`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1baceadbe03e9e6d2078a0728a365e375cb5a7b949807fbb2d1ad605006f4fbb`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; riscv64

```console
$ docker pull memcached@sha256:ba5bf40b4adc1fe04f32e2e239fa9c0020d4e89bf4079493f8bc11a92c8f4b51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5738070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d12fbf86d6880aaa9d517425d9cecddcf545ba87e577a039dea9ea99ad53d8a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Fri, 19 Jun 2026 08:28:27 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Fri, 19 Jun 2026 08:28:31 GMT
RUN apk add --no-cache libsasl # buildkit
# Fri, 19 Jun 2026 08:41:52 GMT
ENV MEMCACHED_VERSION=1.6.42
# Fri, 19 Jun 2026 08:41:52 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.42.tar.gz
# Fri, 19 Jun 2026 08:41:52 GMT
ENV MEMCACHED_SHA1=de453f58745238c70091fe243549c406aabdc3c5
# Fri, 19 Jun 2026 08:41:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 19 Jun 2026 08:41:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 19 Jun 2026 08:41:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 19 Jun 2026 08:41:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Jun 2026 08:41:53 GMT
USER memcache
# Fri, 19 Jun 2026 08:41:53 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 19 Jun 2026 08:41:53 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e09d95a0f414638430c0cd3ecfdcce75606201917a27c7cb2ce1e34cb928b26a`  
		Last Modified: Fri, 19 Jun 2026 08:42:17 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a5335c7af79a1b08af55862ba77644afdae5544d9a7871e45c91b364bd4f71d`  
		Last Modified: Fri, 19 Jun 2026 08:42:17 GMT  
		Size: 108.9 KB (108888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3622a6ea71515db1ef566afdbb121daed1f408aacf1519f4173b40dabe2ae627`  
		Last Modified: Fri, 19 Jun 2026 08:42:17 GMT  
		Size: 2.1 MB (2053467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef1db0e3e31ca3f2830f5404436e92b1862a4078adefacacec09a9580a3ad0a2`  
		Last Modified: Fri, 19 Jun 2026 08:42:17 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1463b0fd26a37659aaad7f99696e5213764ad03bb094f40836c3309713d7a60`  
		Last Modified: Fri, 19 Jun 2026 08:42:18 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:aadb3b9338400b87692f95e00931e43940f8d6ddd13f046bd256848dd825e458
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bde4b5a4a468d795a5f58dd934b371adfe72cd2ae24e166e1258ad65aa455a56`

```dockerfile
```

-	Layers:
	-	`sha256:debb70180cf674562f7ca321270e3dfa350c5d1596c05dbfcc27b38c65652528`  
		Last Modified: Fri, 19 Jun 2026 08:42:17 GMT  
		Size: 94.3 KB (94300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a895bbe0bfec24678c1c92ddd283cb7392e0e8d229f31c769a23c95224c0d371`  
		Last Modified: Fri, 19 Jun 2026 08:42:17 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; s390x

```console
$ docker pull memcached@sha256:c86f0452a9f8d13f8b5c712bf53ecad0fa72512a4e6efe178083a86c56d2c212
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5825105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:512a544a637f08526e42bf2c90d41f3684850faa148de5a7ea4756ee704eb2da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:38:26 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:38:26 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:36 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:36 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30370c595c056e472723b791337c26580ebbea923bded312d0d4eb296b2db741`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:564d2d22cc556ef61fe24d9da38570eac3ba29e020c7a6cb600c63402ef1c04f`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 114.3 KB (114290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:953e49ef00d23f602cd8f70ea70fa934c041873b3d03763c44e5882ddace30a4`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 2.0 MB (2000145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53337d858b4e79b1fc2dae92dfdea190a06175a55244c43910ea36be1b4a0e78`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1e36d6e60879e2d185ee42a79191f0f8ac04cfc130cc0bebd0beca60d2aa9e4`  
		Last Modified: Mon, 06 Jul 2026 21:41:42 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:16066c85c99eca03d74a3ccb2a1cb6ef26bd70cd1abe603e08b140aad9193229
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a25456e690ef0d7e78b9c4006d6d0a01e3dfa626d96cafca25bc3b3b6f346cc`

```dockerfile
```

-	Layers:
	-	`sha256:31477740d9cd110c119a3d7f77d6662e027c9eff9615b5d8cabba62881b75075`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bb0231be0d089eb94b312c2bc62bdcae87600bb7fd6f9edfdf6d0ecec53bd57`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:alpine3.24`

```console
$ docker pull memcached@sha256:cd4b42e6cee87000353712623f8a4be411e5a06f61bc1fbc6864fb9b23402fe4
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
$ docker pull memcached@sha256:d24f1303e8fd2dfb03fcb756adaf6867879cdfece89c08a6e9f4a677ca8dadf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5922727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad6151f346a2bd04c3b277f22740e18cc3c044354e521cc519c92a8c84451d60`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:39:01 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:39:02 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:36 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:36 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72537507ddd4bf18613bb8a53b242da50a994ed2f47cea30e1f6c88efbee2a78`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7faa191428d835180295942536af93f611e77740cf097b3e8df24f089e6627e9`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 106.1 KB (106072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3a8994078ed716f7b7d9bf0c3d456fc16a781de709310bb595531d35228ff54`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 2.0 MB (1968919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16fb68556a5eec82c8c88c2fed3144af0ed956d9f11c575f55e2da6863dda7a5`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1e36d6e60879e2d185ee42a79191f0f8ac04cfc130cc0bebd0beca60d2aa9e4`  
		Last Modified: Mon, 06 Jul 2026 21:41:42 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:d930c2046b540ebb74e7a5b8fd2a6fdf468da9ff2293cb4dd827472ff5031831
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fe897885a6263d1427bd866148b454137670c770f04e071d66d2feff8085250`

```dockerfile
```

-	Layers:
	-	`sha256:51f430a0e1d8ff67dc96eae767c7f0711a583e92c9ff33dd9fe9a50d9efcff88`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0743f7aa18fbb7703101bbeab0bd523094977be5ea27494e0164581ec1c92a3b`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; arm variant v6

```console
$ docker pull memcached@sha256:73acf9d22c4bdbd48aa2de5bf1e220ce75378480569c24ba9c18811287233a1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5573817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2e136b1ff362f5bdc367ccbf1880be64dc78c0fc8b0d253d79c397c576ea533`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:38:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:38:34 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:51:09 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:51:09 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:51:09 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:51:09 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:51:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:51:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:51:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:51:10 GMT
USER memcache
# Mon, 06 Jul 2026 21:51:10 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:51:10 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:293879983da14bd43faca40a46b9a0ce087b83f1d447e044e4951610593ebc91`  
		Last Modified: Mon, 06 Jul 2026 21:51:13 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e795a1b77921c10d97c236f11aa756351bf412f979662f1acbc3c2ad62fd05e`  
		Last Modified: Mon, 06 Jul 2026 21:51:13 GMT  
		Size: 102.6 KB (102628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8ba8eb1b8820dd0e9f0738b9b8e91c53acd9c3d9940d0432e0c8f2ad44217aa`  
		Last Modified: Mon, 06 Jul 2026 21:51:14 GMT  
		Size: 1.9 MB (1916390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:106dee74d5261f5e566fd9e348ba286421a4d1e483cb173f96bed3521dcc687a`  
		Last Modified: Mon, 06 Jul 2026 21:51:13 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d806648e37a5bc66afa3a2b45eff733ca3b8570c352bf6036f8b077bfde9bbe5`  
		Last Modified: Mon, 06 Jul 2026 21:51:14 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:bae0d2964b7b9f665f5e8dd26b51a2cfe10653f7ef8757d7d4cc60c4f40ca919
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5e30efe0e3752cd34280817d416a8e537c8012155b6178564abb4bb870ef4c5`

```dockerfile
```

-	Layers:
	-	`sha256:c2e8d0f0d8af34b5281ae36052d97c6b73b3fe9383a62a22f836382f3bff4b76`  
		Last Modified: Mon, 06 Jul 2026 21:51:13 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; arm variant v7

```console
$ docker pull memcached@sha256:75e71baae6434f00bc3570e729ba883ff0b3934a99ef187ffb20c47bf6515cc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5231085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81e055b173d6abaed66778f7b1de84e94a2cd5148a272964eac221122af04b3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:39:18 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:39:19 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:42:14 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:42:14 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:42:14 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:42:14 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:42:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:42:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:42:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:42:14 GMT
USER memcache
# Mon, 06 Jul 2026 21:42:14 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:42:14 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13a07349f740cf45b2454a9b34effb1074b3eafef6ec97a67946c2bfc8f0a609`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:182bc05d2ae8d54d4f592cc6a72c1f46e7dd676340c1bd306f81a0f773e3a694`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 92.4 KB (92369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30172b660bdb95335d0d41ef5f5865718d434cd394d65a78795782f39fa8a31d`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 1.9 MB (1876756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3279f748468a4e79c099100b34acfca01161d3a4c7e3491050d37b9750ec0de5`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2271c46a5c6b2e2f9a4d581113b47bbc27ae767c172026bb9a21b3532d2e7b33`  
		Last Modified: Mon, 06 Jul 2026 21:42:20 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:ee9bff19b784d2bfc1f4a6c997bda2fe5d2f569951169a6da4490dc9aabf38f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:878949ad5f39565e088eb87ab96a6e6d8be7f7be57e4a3ea2fffe2791f38276f`

```dockerfile
```

-	Layers:
	-	`sha256:8d693e5f45f27e0a1b3a67573b03d554ba4a78bae37e0dfe37efd9bb0ad7aad9`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ed989ea1e997e400d8acfe1b1ac32263efc1404a751615fce2355b24920f262`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:9c1f017b1a9c14d8367d0886615b2f4cf5dbeb0abe803cff62e1ccf763a83309
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6251555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c2345e75471f47c2aaf508a6c0aed3a6394293ab98a83467476f018dbd966b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:39:04 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:39:05 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:41:51 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:51 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:51 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:51 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:51 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:51 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6611430365db147600c92bd762f806ab97f387ae400dfededdb339ed761b38d7`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba750e4cc6a2574aa4c85ae98490be9a705504b4bacc27dc37393172a38113ad`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 121.9 KB (121857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b15b9832850c680687cd3e192fc2b47f402a577cc7936b1429f8bf960043115`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 1.9 MB (1945317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:186ad9601948dfa94625c72f2efeb90cec5a856cf8dfc961fe0fb100a7612ceb`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:252c6c60ae667ad99277f31f2eb6995dc3c97517567345a95b9bfb6bfc7f4973`  
		Last Modified: Mon, 06 Jul 2026 21:41:57 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:4bf91160995d46f465e01fc0d092960db99f29c302767ea7693e51fe04664e1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b66911cd710529f8661a583ca5293311eab2646f7c5df648420879ccfb96710f`

```dockerfile
```

-	Layers:
	-	`sha256:69745701c406c0a0eaeb9398f5a3408b0ed98dc5f7c9eec5b69224b44fae3a07`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd96cdd23bab41a8c795d813ad3bca912cb0390a4664e71979b2ce937af558ce`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 20.7 KB (20728 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; 386

```console
$ docker pull memcached@sha256:99e3a43ede008cdb2a7404fba0c0d589df056cf317fc4530a43e9a18432057ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5704609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4259473df875ca4b335a6f5fe39a294e95701a65977bdb72708000b400db44ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:39:47 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:39:48 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:42:36 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:42:36 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:42:36 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:42:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:42:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:42:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:42:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:42:36 GMT
USER memcache
# Mon, 06 Jul 2026 21:42:36 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:42:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61e1fdddad44a79ab90599c3a732f61d9fe751fc44b20138c34ddac45fd68ef5`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:678ab87dad9650d15a64f037d1c0d3983c1d49b794975d97c2497b8f9fd2bd57`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 110.7 KB (110733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b879347f774880c414c9983ecc840683885be02e16e79eb8c9cdcaac056637d7`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 1.9 MB (1922386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc4f23ef17cd394d2b5b3c4ff9ace06ec964a74e6e4b1054ce2dab36ef9cf7ac`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02e0bb4aee5e6e8f857e6e53c13a85acc2ba624960d52685b39ca7a7824a257d`  
		Last Modified: Mon, 06 Jul 2026 21:42:42 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:39a379ca667774a1849a872c123e3fda6a96b382db34f7ae07976d3ddb3fb1cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a30528c0c40b7f3cd7ac8a1d6ba7b49c8754f8382944c04619fb7bf92ed3d05a`

```dockerfile
```

-	Layers:
	-	`sha256:bb24486845b08d5db14f90720802598a00f4e035591469f741bbcb785aa4b0bf`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62cc5e8bf2657465cce189ee097f4812ba020e1eebad5596743a2358bce26893`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; ppc64le

```console
$ docker pull memcached@sha256:7d2ba96d4241409819ccd5423027938262a071d4072846016da6f9225e4836d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6000224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aeec582954a162c8fb264ed5e6fa0c143bebbe9b755034ea3a2cb6d9ea92fa0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:42:01 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:42:02 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:44:46 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:44:46 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:44:46 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:44:46 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:44:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:44:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:44:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:44:46 GMT
USER memcache
# Mon, 06 Jul 2026 21:44:46 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:44:46 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09ab42e9fa209561ea35daa341e0c8b7840004d01353cc66a0fc8ebfba557a81`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45ad51dfd812c83d08ee5e405f4aa86ae6e735e02525178ce71feae27365c2a0`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 126.3 KB (126251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85d469d6b6b1e3b775fe5fe688def9850c709a6baed475555f1bbf86568749a3`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 2.1 MB (2059215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dddc956aa4fc60444b4d8984d1191ef930b711b263d6dba62b3e8109db1dd376`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92ede20e44eec94165101cde31c847b60fb02a26d0f32608851af2406139c96d`  
		Last Modified: Mon, 06 Jul 2026 21:45:01 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:0c8a3274873521aa4eaf05ee6bed653147bf23787d0237504c685fcbcca987b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e8b08bf8ba35127924f8bf0a7bd38cdbe4611ca3be7eb03883f11f8a106f60e`

```dockerfile
```

-	Layers:
	-	`sha256:4cd76b089083157c73c2fc7f020e42f03ae6146c8526f3a002aedd79855d755f`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1baceadbe03e9e6d2078a0728a365e375cb5a7b949807fbb2d1ad605006f4fbb`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; riscv64

```console
$ docker pull memcached@sha256:ba5bf40b4adc1fe04f32e2e239fa9c0020d4e89bf4079493f8bc11a92c8f4b51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5738070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d12fbf86d6880aaa9d517425d9cecddcf545ba87e577a039dea9ea99ad53d8a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Fri, 19 Jun 2026 08:28:27 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Fri, 19 Jun 2026 08:28:31 GMT
RUN apk add --no-cache libsasl # buildkit
# Fri, 19 Jun 2026 08:41:52 GMT
ENV MEMCACHED_VERSION=1.6.42
# Fri, 19 Jun 2026 08:41:52 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.42.tar.gz
# Fri, 19 Jun 2026 08:41:52 GMT
ENV MEMCACHED_SHA1=de453f58745238c70091fe243549c406aabdc3c5
# Fri, 19 Jun 2026 08:41:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 19 Jun 2026 08:41:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 19 Jun 2026 08:41:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 19 Jun 2026 08:41:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Jun 2026 08:41:53 GMT
USER memcache
# Fri, 19 Jun 2026 08:41:53 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 19 Jun 2026 08:41:53 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e09d95a0f414638430c0cd3ecfdcce75606201917a27c7cb2ce1e34cb928b26a`  
		Last Modified: Fri, 19 Jun 2026 08:42:17 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a5335c7af79a1b08af55862ba77644afdae5544d9a7871e45c91b364bd4f71d`  
		Last Modified: Fri, 19 Jun 2026 08:42:17 GMT  
		Size: 108.9 KB (108888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3622a6ea71515db1ef566afdbb121daed1f408aacf1519f4173b40dabe2ae627`  
		Last Modified: Fri, 19 Jun 2026 08:42:17 GMT  
		Size: 2.1 MB (2053467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef1db0e3e31ca3f2830f5404436e92b1862a4078adefacacec09a9580a3ad0a2`  
		Last Modified: Fri, 19 Jun 2026 08:42:17 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1463b0fd26a37659aaad7f99696e5213764ad03bb094f40836c3309713d7a60`  
		Last Modified: Fri, 19 Jun 2026 08:42:18 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:aadb3b9338400b87692f95e00931e43940f8d6ddd13f046bd256848dd825e458
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bde4b5a4a468d795a5f58dd934b371adfe72cd2ae24e166e1258ad65aa455a56`

```dockerfile
```

-	Layers:
	-	`sha256:debb70180cf674562f7ca321270e3dfa350c5d1596c05dbfcc27b38c65652528`  
		Last Modified: Fri, 19 Jun 2026 08:42:17 GMT  
		Size: 94.3 KB (94300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a895bbe0bfec24678c1c92ddd283cb7392e0e8d229f31c769a23c95224c0d371`  
		Last Modified: Fri, 19 Jun 2026 08:42:17 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; s390x

```console
$ docker pull memcached@sha256:c86f0452a9f8d13f8b5c712bf53ecad0fa72512a4e6efe178083a86c56d2c212
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5825105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:512a544a637f08526e42bf2c90d41f3684850faa148de5a7ea4756ee704eb2da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:38:26 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:38:26 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:36 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:36 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30370c595c056e472723b791337c26580ebbea923bded312d0d4eb296b2db741`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:564d2d22cc556ef61fe24d9da38570eac3ba29e020c7a6cb600c63402ef1c04f`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 114.3 KB (114290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:953e49ef00d23f602cd8f70ea70fa934c041873b3d03763c44e5882ddace30a4`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 2.0 MB (2000145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53337d858b4e79b1fc2dae92dfdea190a06175a55244c43910ea36be1b4a0e78`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1e36d6e60879e2d185ee42a79191f0f8ac04cfc130cc0bebd0beca60d2aa9e4`  
		Last Modified: Mon, 06 Jul 2026 21:41:42 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:16066c85c99eca03d74a3ccb2a1cb6ef26bd70cd1abe603e08b140aad9193229
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a25456e690ef0d7e78b9c4006d6d0a01e3dfa626d96cafca25bc3b3b6f346cc`

```dockerfile
```

-	Layers:
	-	`sha256:31477740d9cd110c119a3d7f77d6662e027c9eff9615b5d8cabba62881b75075`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bb0231be0d089eb94b312c2bc62bdcae87600bb7fd6f9edfdf6d0ecec53bd57`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:latest`

```console
$ docker pull memcached@sha256:c7d4a9f4398df209a23dd8025a04fde0a415709cda293e2cad6496cf9888d1ef
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
$ docker pull memcached@sha256:656a6cfc8ed69f32c4b5a126e5f67b0af87fb4f3397bf938dcffba145f524f23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32204955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a090ff2819a8baa8927a1504d25e57248289de7d035c09b27016aa6778b20671`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:38:59 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:39:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:41:47 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:47 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:47 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:47 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:47 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:47 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:47 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fbf1c8c52a26c7246a7962c9ff3b39c4d01827da5bec5975bf09972034ebd07`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a856d8d29335e9bb89c4ac70a692292e2d9289888f82e2493fa33920a6818cf2`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 136.7 KB (136699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f462e97e45ac49cd49fbd7b6c887d9f60b02ef658985bae749a545250a982db`  
		Last Modified: Mon, 06 Jul 2026 21:41:54 GMT  
		Size: 2.3 MB (2281324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01f91d925073819971c78c22c597acd3d11339a7bc0ecbec0fc1f29dfc75e3ee`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d497385966554717bce54e3bd2e58aa97e93409de213297aafe5ed2b7b284f71`  
		Last Modified: Mon, 06 Jul 2026 21:41:54 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:cbbe127b3e2a069ef5f514d27653fc24242c02c9eac9b2643b8b1fe547f90e4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e980845da04a5b245b3b3b06501510f29735c64ad84ec1958397e73ecf8f2af3`

```dockerfile
```

-	Layers:
	-	`sha256:b2ba902ea7ef1dd0aeaa90d23c7408cd52b48cfd0d4de1771bd6d7cb26068ba3`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 2.0 MB (2008368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd3e3320b0b76edfb87dc1cecd7798b471b2db3ffe01c26cec2c36862ac2b3af`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; arm variant v5

```console
$ docker pull memcached@sha256:e12299225626e23ced92dbec45865333ae66504d813c8258ba4ca8fd37aab586
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30317940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef73b1d7a006c523b24f707628218537bd2256d972ad65e394a1b170dff6f9c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:38:33 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:38:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:41:54 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:54 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:54 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:54 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:54 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:54 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:da43bc6a07a9cd7cc23faa538adc0797482747316b5a85b9f3f94ed17f6c1a2a`  
		Last Modified: Wed, 24 Jun 2026 00:28:12 GMT  
		Size: 28.0 MB (27959221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:912e0265a9bef2049f461667c203b04c5d953f55d3bad7fd06009d17233e8c1b`  
		Last Modified: Mon, 06 Jul 2026 21:42:00 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a61804d5bb4f8881f2bda238950beb1d4061cb3cd45e3bcd4c73e45ae8cb368`  
		Last Modified: Mon, 06 Jul 2026 21:42:01 GMT  
		Size: 144.2 KB (144184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3f95616646814d54f714ea24851e4b510b62aaf05006e19ab3c2b4fff72e31a`  
		Last Modified: Mon, 06 Jul 2026 21:42:01 GMT  
		Size: 2.2 MB (2213023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d33b96d1e686356248b385146a036f7722b228e793cb44a4139fc3e911377f2`  
		Last Modified: Mon, 06 Jul 2026 21:42:01 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef3d232ed4ac1acf774bc29d4e5bb041150ae0690a6ad8dfbc827d39ba67e4f`  
		Last Modified: Mon, 06 Jul 2026 21:42:02 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:04ec002d7fc434c575de2e3b150bc2f94892905ab29a1442fde1aaf52d91559f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:657d5c8bd24ce14e139f22cd05551b37ad0f747e0f17d0803f7f72904eb45338`

```dockerfile
```

-	Layers:
	-	`sha256:5a134601bcd31b5b86b890a3e2dfa44f32c19503a7f8132d46df61e1191c91a7`  
		Last Modified: Mon, 06 Jul 2026 21:42:01 GMT  
		Size: 2.0 MB (2011371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95754d0d5ed2078de0d4c37786bf409b4f5de4e43cdb36388ff5eb2b7570f2bd`  
		Last Modified: Mon, 06 Jul 2026 21:42:00 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; arm variant v7

```console
$ docker pull memcached@sha256:6f681e43471b6ba99e8861c81f644754db4aa35554ee097b2b438f7e7c5c267b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28514937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdc0ab0d0e5f8809ea81cacb053a5820256c72a85d46672a50396adcffc9c385`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:39:20 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:39:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:42:34 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:42:34 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:42:34 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:42:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:42:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:42:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:42:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:42:34 GMT
USER memcache
# Mon, 06 Jul 2026 21:42:34 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:42:34 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16710e5b885dd2f9f0d4f3a68d20ee3052ef7eeebb026cd8c76860317060c3f4`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d69824716fa350bb35cb1be065c8493b5241e9cb5a07318f5d7f2a4b81802ef`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 135.4 KB (135382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:293dd91233448f2cc893f3db5669239f4a64de61f71eb8f6b1b3a131e8e6356d`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 2.2 MB (2166986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b180e4022ce73ec0e0049fe1d68843ba4601570343a6f6b578624174351963d3`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81192fef36610c3f90e846a5959b26829e120dbf32a909e3d1c287e542a86895`  
		Last Modified: Mon, 06 Jul 2026 21:42:42 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:1ce1c4df7e869abd47eeb3f73eac8583fccbd5c057a7d74957955276e22a6170
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2032132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee61bcf236cc2e3765d25b70b40c452f036895398f82a37ce9e765b6e31fb21e`

```dockerfile
```

-	Layers:
	-	`sha256:a1e168963faef5a94750a3afe81a447b1c0b24daf7ae75b35eadba8c13579e06`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 2.0 MB (2009828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aaca361028b5c03cfe69d0f2877a95f4b68d27086bc94c0785cb7fcbe73708c2`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:61b1d3943ec1fef8b57a16150315cab848d09a2a5cd95b4f2373e9bf069927c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32566996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09b7981a23c3b8ad6c6e27145ee0ee1eadff16c409312807abea1fb6c90456dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:39:02 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:39:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:42:03 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:42:03 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:42:03 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:42:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:42:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:42:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:42:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:42:03 GMT
USER memcache
# Mon, 06 Jul 2026 21:42:03 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:42:03 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb3a9db0b552ee84467be61022b454f3f8d3fcf6645f1ef421dbc4e5dc17c1f7`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2baa2ada261da15b63b6aa4545f54303c26da020d8d73b28aad12fbeb383e381`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 153.5 KB (153501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63a169b8dfa3c4e20bdac3db66840fbc677728ec228cc7ff4197cdbc2d70692d`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 2.3 MB (2263430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12575e3ba7dcfe911406d84a26c38fb3285198d8565de14f54e7d0ee83515141`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7471454cf4c9d8bf3e1028d4f9890185ec1e6216908733ab24eb5a4c8cad3154`  
		Last Modified: Mon, 06 Jul 2026 21:42:11 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:a6f5908bfc77290cbd322b08baa25baf20cd7d918e4739ee8f44ecb27c5e9954
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55a2398b634f5aa30e528ce79af556a18b2ca9c8c967290e8855b2db75050aa5`

```dockerfile
```

-	Layers:
	-	`sha256:d905dff6358a991386cde295b73a010f87a7259a80916ed7a6a56b4e32f03b5e`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 2.0 MB (2008676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e569c815cafd8f0caa21ee5639693ff9fb5169b3e266aaa4ca20d90243c0f47`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; 386

```console
$ docker pull memcached@sha256:5c54ebcc9adda03074cd6f582dc9d47f2c597af9347338bf69a815476aba85df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33676183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:972f94eb4da4e3cadae40e616f31b0c988375d1372f4de37403c9d35de40ad89`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:39:45 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:39:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:42:55 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:42:55 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:42:55 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:42:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:42:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:42:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:42:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:42:55 GMT
USER memcache
# Mon, 06 Jul 2026 21:42:55 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:42:55 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:984d3baa100eb8c4d7c83b7c23b4748e508aa6ed5903297f02be90a681f52d41`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 31.3 MB (31301210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40a5a431eae5f7382bbe3702131b8e5257dde1ab3f42b0bdae2017173d030bfb`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1e45b65fb40b92a3640f6c3f98c81c726756107a1a3cf54e9556839b5434314`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 147.5 KB (147522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c8bf709284a2d6ce9b302597a13416dceb853b25f1df95330c09a2a247c458d`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 2.2 MB (2225936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64199d124a7a80324df2952272fbeeca3578646cdc58dc2452ff83a7cb05ff80`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0a2c694d180348fe8a62f58a1cc8141df9eb8cc8e77aa8d7fc2bc57cbde7693`  
		Last Modified: Mon, 06 Jul 2026 21:43:03 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:854626f034a18e92820f9cab215dc02f1ff1a8c4a00c40561cc65029d83a2f3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2027620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10d6da14e5186bdd10781072e2d4a8370bc308ffc7e5f4e1564a6a5eededac39`

```dockerfile
```

-	Layers:
	-	`sha256:6e31f8780d98fc1b31d8f166958e7cd9a63a656d09bfacce23983c74ea9322d0`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 2.0 MB (2005525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:28abd28639656318b2a292318661c673a1965a0817aee3ebda62c8f3019a1059`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; ppc64le

```console
$ docker pull memcached@sha256:8f5c7302d6d437cff3c3823ce82b23e5b3cdbd91aeddea51fe63f3dbc86526b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.7 MB (36655139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbf273f8d7258224f3d1d7b29b885ef6fdc80a930babdc82f0fd5ebfcd022f30`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:41:59 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:42:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 22:05:05 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 22:05:05 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 22:05:05 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 22:05:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 22:05:06 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 22:05:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 22:05:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 22:05:07 GMT
USER memcache
# Mon, 06 Jul 2026 22:05:07 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 22:05:07 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c28d0960fd8ccb8d0d804cad9b7ac5adde1950d50a041fa6d9667b7574818b`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e8cde463d54b5d9ccc864b2a22a3fb1cb6d32662e187d2161215ccf3fae998`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 170.4 KB (170371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab94abc799598aba483c2ac576bfb440dedb2386e4afa185f536f3fcc1f38546`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 2.9 MB (2876865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8005a8ca890b984bdf2737e11b5d86d0d3db6f003c9fad496aa7107e57a616f7`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9fcd1b9234dadfc95a6d9c67e86f29e354b2a757eb1fa564f7047034d98b3ed`  
		Last Modified: Mon, 06 Jul 2026 22:05:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:ea4a2604bb3579325c6ab97f9b0cb6e9cb56296e1e6350e9e7bacbb42c6a47dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2034195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dde9ebb92580e852e351418fa4adf0509fd654f32375d26113b5208169eda80e`

```dockerfile
```

-	Layers:
	-	`sha256:1b4c5eddb6aa89c1696286ead3633a6d5ed17e39ee9c6ba50002625d89d16752`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 2.0 MB (2011969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9950a833f3ed093b05d5de4ffbdb64942119af8e5fc3b731f9584c2bc961843e`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 22.2 KB (22226 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; riscv64

```console
$ docker pull memcached@sha256:1d09cc6da0fcd7fbfd1eb9a04ab9aeb8557f8a977d85bc7758ddc33f1fae7e8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30626877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e932fab34f25980444b8d9d4042f4f019d633ae41731c4d58de9d0425aacbb5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 20:53:15 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 24 Jun 2026 20:53:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 25 Jun 2026 19:11:35 GMT
ENV MEMCACHED_VERSION=1.6.42
# Thu, 25 Jun 2026 19:11:35 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.42.tar.gz
# Thu, 25 Jun 2026 19:11:35 GMT
ENV MEMCACHED_SHA1=de453f58745238c70091fe243549c406aabdc3c5
# Thu, 25 Jun 2026 19:11:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 25 Jun 2026 19:11:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 25 Jun 2026 19:11:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 25 Jun 2026 19:11:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Jun 2026 19:11:35 GMT
USER memcache
# Thu, 25 Jun 2026 19:11:35 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 25 Jun 2026 19:11:35 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:58bface994ba631e609596a2ca5032d9d75de27f1b6476034b581e226205adab`  
		Last Modified: Wed, 24 Jun 2026 03:41:42 GMT  
		Size: 28.3 MB (28282378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88be0d85b1f48be753592f62cac7ef80c23a61c7848026bd2d489c40d2214a58`  
		Last Modified: Thu, 25 Jun 2026 19:12:23 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5924e63da94311a18a309f02e655774d7a7dd21bf3dc267215c524167fb7ca02`  
		Last Modified: Thu, 25 Jun 2026 19:12:23 GMT  
		Size: 133.1 KB (133093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acfa9af5e6df6f7145e6f80ab61869e6613b9f5caa0cfa94788cbf01b3041add`  
		Last Modified: Thu, 25 Jun 2026 19:12:23 GMT  
		Size: 2.2 MB (2209890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ace1c66f882f3224670cc80ac0c47197433c688d59a6bad4e5e137d6947a7d9`  
		Last Modified: Thu, 25 Jun 2026 19:12:23 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:470dc087e4a89d9d58d8fa29a67ac089e3c4b569f1c1c79265bfe24ba39500d2`  
		Last Modified: Thu, 25 Jun 2026 19:12:24 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:10dc6cdb2cd2787d533382c9b0e6ae2f8f3b637c254e1b54762fc75d6b7c2066
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2024559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:173dffb05aa61f0096ec844832f392e17573e61865ef528ee8b742faa7e4b6db`

```dockerfile
```

-	Layers:
	-	`sha256:69ed82bb373c86c8fbec635b83221f89933079ee40e6fcf48418d1a69ca5bb89`  
		Last Modified: Thu, 25 Jun 2026 19:12:23 GMT  
		Size: 2.0 MB (2002332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cea64cfdecc1c5a9f3c417e6a679e88cd0613790ff8f658ca9e3ec73325fa9cc`  
		Last Modified: Thu, 25 Jun 2026 19:12:23 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; s390x

```console
$ docker pull memcached@sha256:d3cd3e513f2ddee32452ba0ec987fa00b5e1fb1d8db488eaf4fbe26b5d76074c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32292489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5460628bdf70beec088e32d0e29e4bfdc0f288d2df4a23fb962ca9ab72e0d959`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:38:22 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:38:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:41:41 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:41 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:41 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:41 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:41 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd3b24daa3730c2808288ea42c60ca7198480d38cea1e21d7cfe2adc3844917`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba2cdc589f233d4d27d14cf3372db956515683acd0fb9cb15af8b293489125d5`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 140.5 KB (140525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33665ac46f2cf8ddf33ff9813a3727015c6dcc7d0c0f089feafe19ae89e34adb`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 2.3 MB (2299071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e96808b26b5232fb910ecf5cdc8493ae86733873c9f25bfa119fafa1c55b35c6`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dece698c0594201d0475a857aef447a96b29dbe79232e3557f4b64ba5741d09`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:3dd79394e3bb85b237653f075e202aa7f0c15898c5c5b1fe856df01cf9290536
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:463e703a269bd4656b96a53f3edcf89aa6c7b4270b4ba2f5be5b7da5304db134`

```dockerfile
```

-	Layers:
	-	`sha256:9fb3957b58d9cfc05cffe13f8e337f7a892cc305727f708d376fed40ce5fa0b1`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 2.0 MB (2009805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0635cd2ab613bff3b59e1c667e4c91d4c53f0e3375457d65df65880d46c59fed`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 22.2 KB (22152 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:trixie`

```console
$ docker pull memcached@sha256:c7d4a9f4398df209a23dd8025a04fde0a415709cda293e2cad6496cf9888d1ef
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
$ docker pull memcached@sha256:656a6cfc8ed69f32c4b5a126e5f67b0af87fb4f3397bf938dcffba145f524f23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32204955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a090ff2819a8baa8927a1504d25e57248289de7d035c09b27016aa6778b20671`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:38:59 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:39:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:41:47 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:47 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:47 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:47 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:47 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:47 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:47 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fbf1c8c52a26c7246a7962c9ff3b39c4d01827da5bec5975bf09972034ebd07`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a856d8d29335e9bb89c4ac70a692292e2d9289888f82e2493fa33920a6818cf2`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 136.7 KB (136699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f462e97e45ac49cd49fbd7b6c887d9f60b02ef658985bae749a545250a982db`  
		Last Modified: Mon, 06 Jul 2026 21:41:54 GMT  
		Size: 2.3 MB (2281324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01f91d925073819971c78c22c597acd3d11339a7bc0ecbec0fc1f29dfc75e3ee`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d497385966554717bce54e3bd2e58aa97e93409de213297aafe5ed2b7b284f71`  
		Last Modified: Mon, 06 Jul 2026 21:41:54 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:cbbe127b3e2a069ef5f514d27653fc24242c02c9eac9b2643b8b1fe547f90e4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e980845da04a5b245b3b3b06501510f29735c64ad84ec1958397e73ecf8f2af3`

```dockerfile
```

-	Layers:
	-	`sha256:b2ba902ea7ef1dd0aeaa90d23c7408cd52b48cfd0d4de1771bd6d7cb26068ba3`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 2.0 MB (2008368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd3e3320b0b76edfb87dc1cecd7798b471b2db3ffe01c26cec2c36862ac2b3af`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; arm variant v5

```console
$ docker pull memcached@sha256:e12299225626e23ced92dbec45865333ae66504d813c8258ba4ca8fd37aab586
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30317940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef73b1d7a006c523b24f707628218537bd2256d972ad65e394a1b170dff6f9c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:38:33 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:38:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:41:54 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:54 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:54 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:54 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:54 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:54 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:da43bc6a07a9cd7cc23faa538adc0797482747316b5a85b9f3f94ed17f6c1a2a`  
		Last Modified: Wed, 24 Jun 2026 00:28:12 GMT  
		Size: 28.0 MB (27959221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:912e0265a9bef2049f461667c203b04c5d953f55d3bad7fd06009d17233e8c1b`  
		Last Modified: Mon, 06 Jul 2026 21:42:00 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a61804d5bb4f8881f2bda238950beb1d4061cb3cd45e3bcd4c73e45ae8cb368`  
		Last Modified: Mon, 06 Jul 2026 21:42:01 GMT  
		Size: 144.2 KB (144184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3f95616646814d54f714ea24851e4b510b62aaf05006e19ab3c2b4fff72e31a`  
		Last Modified: Mon, 06 Jul 2026 21:42:01 GMT  
		Size: 2.2 MB (2213023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d33b96d1e686356248b385146a036f7722b228e793cb44a4139fc3e911377f2`  
		Last Modified: Mon, 06 Jul 2026 21:42:01 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef3d232ed4ac1acf774bc29d4e5bb041150ae0690a6ad8dfbc827d39ba67e4f`  
		Last Modified: Mon, 06 Jul 2026 21:42:02 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:04ec002d7fc434c575de2e3b150bc2f94892905ab29a1442fde1aaf52d91559f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:657d5c8bd24ce14e139f22cd05551b37ad0f747e0f17d0803f7f72904eb45338`

```dockerfile
```

-	Layers:
	-	`sha256:5a134601bcd31b5b86b890a3e2dfa44f32c19503a7f8132d46df61e1191c91a7`  
		Last Modified: Mon, 06 Jul 2026 21:42:01 GMT  
		Size: 2.0 MB (2011371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95754d0d5ed2078de0d4c37786bf409b4f5de4e43cdb36388ff5eb2b7570f2bd`  
		Last Modified: Mon, 06 Jul 2026 21:42:00 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; arm variant v7

```console
$ docker pull memcached@sha256:6f681e43471b6ba99e8861c81f644754db4aa35554ee097b2b438f7e7c5c267b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28514937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdc0ab0d0e5f8809ea81cacb053a5820256c72a85d46672a50396adcffc9c385`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:39:20 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:39:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:42:34 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:42:34 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:42:34 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:42:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:42:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:42:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:42:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:42:34 GMT
USER memcache
# Mon, 06 Jul 2026 21:42:34 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:42:34 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16710e5b885dd2f9f0d4f3a68d20ee3052ef7eeebb026cd8c76860317060c3f4`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d69824716fa350bb35cb1be065c8493b5241e9cb5a07318f5d7f2a4b81802ef`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 135.4 KB (135382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:293dd91233448f2cc893f3db5669239f4a64de61f71eb8f6b1b3a131e8e6356d`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 2.2 MB (2166986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b180e4022ce73ec0e0049fe1d68843ba4601570343a6f6b578624174351963d3`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81192fef36610c3f90e846a5959b26829e120dbf32a909e3d1c287e542a86895`  
		Last Modified: Mon, 06 Jul 2026 21:42:42 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:1ce1c4df7e869abd47eeb3f73eac8583fccbd5c057a7d74957955276e22a6170
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2032132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee61bcf236cc2e3765d25b70b40c452f036895398f82a37ce9e765b6e31fb21e`

```dockerfile
```

-	Layers:
	-	`sha256:a1e168963faef5a94750a3afe81a447b1c0b24daf7ae75b35eadba8c13579e06`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 2.0 MB (2009828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aaca361028b5c03cfe69d0f2877a95f4b68d27086bc94c0785cb7fcbe73708c2`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:61b1d3943ec1fef8b57a16150315cab848d09a2a5cd95b4f2373e9bf069927c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32566996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09b7981a23c3b8ad6c6e27145ee0ee1eadff16c409312807abea1fb6c90456dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:39:02 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:39:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:42:03 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:42:03 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:42:03 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:42:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:42:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:42:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:42:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:42:03 GMT
USER memcache
# Mon, 06 Jul 2026 21:42:03 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:42:03 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb3a9db0b552ee84467be61022b454f3f8d3fcf6645f1ef421dbc4e5dc17c1f7`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2baa2ada261da15b63b6aa4545f54303c26da020d8d73b28aad12fbeb383e381`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 153.5 KB (153501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63a169b8dfa3c4e20bdac3db66840fbc677728ec228cc7ff4197cdbc2d70692d`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 2.3 MB (2263430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12575e3ba7dcfe911406d84a26c38fb3285198d8565de14f54e7d0ee83515141`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7471454cf4c9d8bf3e1028d4f9890185ec1e6216908733ab24eb5a4c8cad3154`  
		Last Modified: Mon, 06 Jul 2026 21:42:11 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:a6f5908bfc77290cbd322b08baa25baf20cd7d918e4739ee8f44ecb27c5e9954
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55a2398b634f5aa30e528ce79af556a18b2ca9c8c967290e8855b2db75050aa5`

```dockerfile
```

-	Layers:
	-	`sha256:d905dff6358a991386cde295b73a010f87a7259a80916ed7a6a56b4e32f03b5e`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 2.0 MB (2008676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e569c815cafd8f0caa21ee5639693ff9fb5169b3e266aaa4ca20d90243c0f47`  
		Last Modified: Mon, 06 Jul 2026 21:42:10 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; 386

```console
$ docker pull memcached@sha256:5c54ebcc9adda03074cd6f582dc9d47f2c597af9347338bf69a815476aba85df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33676183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:972f94eb4da4e3cadae40e616f31b0c988375d1372f4de37403c9d35de40ad89`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:39:45 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:39:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:42:55 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:42:55 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:42:55 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:42:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:42:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:42:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:42:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:42:55 GMT
USER memcache
# Mon, 06 Jul 2026 21:42:55 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:42:55 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:984d3baa100eb8c4d7c83b7c23b4748e508aa6ed5903297f02be90a681f52d41`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 31.3 MB (31301210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40a5a431eae5f7382bbe3702131b8e5257dde1ab3f42b0bdae2017173d030bfb`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1e45b65fb40b92a3640f6c3f98c81c726756107a1a3cf54e9556839b5434314`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 147.5 KB (147522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c8bf709284a2d6ce9b302597a13416dceb853b25f1df95330c09a2a247c458d`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 2.2 MB (2225936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64199d124a7a80324df2952272fbeeca3578646cdc58dc2452ff83a7cb05ff80`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0a2c694d180348fe8a62f58a1cc8141df9eb8cc8e77aa8d7fc2bc57cbde7693`  
		Last Modified: Mon, 06 Jul 2026 21:43:03 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:854626f034a18e92820f9cab215dc02f1ff1a8c4a00c40561cc65029d83a2f3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2027620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10d6da14e5186bdd10781072e2d4a8370bc308ffc7e5f4e1564a6a5eededac39`

```dockerfile
```

-	Layers:
	-	`sha256:6e31f8780d98fc1b31d8f166958e7cd9a63a656d09bfacce23983c74ea9322d0`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 2.0 MB (2005525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:28abd28639656318b2a292318661c673a1965a0817aee3ebda62c8f3019a1059`  
		Last Modified: Mon, 06 Jul 2026 21:43:02 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; ppc64le

```console
$ docker pull memcached@sha256:8f5c7302d6d437cff3c3823ce82b23e5b3cdbd91aeddea51fe63f3dbc86526b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.7 MB (36655139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbf273f8d7258224f3d1d7b29b885ef6fdc80a930babdc82f0fd5ebfcd022f30`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:41:59 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:42:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 22:05:05 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 22:05:05 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 22:05:05 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 22:05:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 22:05:06 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 22:05:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 22:05:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 22:05:07 GMT
USER memcache
# Mon, 06 Jul 2026 22:05:07 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 22:05:07 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c28d0960fd8ccb8d0d804cad9b7ac5adde1950d50a041fa6d9667b7574818b`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e8cde463d54b5d9ccc864b2a22a3fb1cb6d32662e187d2161215ccf3fae998`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 170.4 KB (170371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab94abc799598aba483c2ac576bfb440dedb2386e4afa185f536f3fcc1f38546`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 2.9 MB (2876865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8005a8ca890b984bdf2737e11b5d86d0d3db6f003c9fad496aa7107e57a616f7`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9fcd1b9234dadfc95a6d9c67e86f29e354b2a757eb1fa564f7047034d98b3ed`  
		Last Modified: Mon, 06 Jul 2026 22:05:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:ea4a2604bb3579325c6ab97f9b0cb6e9cb56296e1e6350e9e7bacbb42c6a47dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2034195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dde9ebb92580e852e351418fa4adf0509fd654f32375d26113b5208169eda80e`

```dockerfile
```

-	Layers:
	-	`sha256:1b4c5eddb6aa89c1696286ead3633a6d5ed17e39ee9c6ba50002625d89d16752`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 2.0 MB (2011969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9950a833f3ed093b05d5de4ffbdb64942119af8e5fc3b731f9584c2bc961843e`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 22.2 KB (22226 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; riscv64

```console
$ docker pull memcached@sha256:1d09cc6da0fcd7fbfd1eb9a04ab9aeb8557f8a977d85bc7758ddc33f1fae7e8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30626877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e932fab34f25980444b8d9d4042f4f019d633ae41731c4d58de9d0425aacbb5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 20:53:15 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 24 Jun 2026 20:53:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 25 Jun 2026 19:11:35 GMT
ENV MEMCACHED_VERSION=1.6.42
# Thu, 25 Jun 2026 19:11:35 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.42.tar.gz
# Thu, 25 Jun 2026 19:11:35 GMT
ENV MEMCACHED_SHA1=de453f58745238c70091fe243549c406aabdc3c5
# Thu, 25 Jun 2026 19:11:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 25 Jun 2026 19:11:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 25 Jun 2026 19:11:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 25 Jun 2026 19:11:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Jun 2026 19:11:35 GMT
USER memcache
# Thu, 25 Jun 2026 19:11:35 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 25 Jun 2026 19:11:35 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:58bface994ba631e609596a2ca5032d9d75de27f1b6476034b581e226205adab`  
		Last Modified: Wed, 24 Jun 2026 03:41:42 GMT  
		Size: 28.3 MB (28282378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88be0d85b1f48be753592f62cac7ef80c23a61c7848026bd2d489c40d2214a58`  
		Last Modified: Thu, 25 Jun 2026 19:12:23 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5924e63da94311a18a309f02e655774d7a7dd21bf3dc267215c524167fb7ca02`  
		Last Modified: Thu, 25 Jun 2026 19:12:23 GMT  
		Size: 133.1 KB (133093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acfa9af5e6df6f7145e6f80ab61869e6613b9f5caa0cfa94788cbf01b3041add`  
		Last Modified: Thu, 25 Jun 2026 19:12:23 GMT  
		Size: 2.2 MB (2209890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ace1c66f882f3224670cc80ac0c47197433c688d59a6bad4e5e137d6947a7d9`  
		Last Modified: Thu, 25 Jun 2026 19:12:23 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:470dc087e4a89d9d58d8fa29a67ac089e3c4b569f1c1c79265bfe24ba39500d2`  
		Last Modified: Thu, 25 Jun 2026 19:12:24 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:10dc6cdb2cd2787d533382c9b0e6ae2f8f3b637c254e1b54762fc75d6b7c2066
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2024559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:173dffb05aa61f0096ec844832f392e17573e61865ef528ee8b742faa7e4b6db`

```dockerfile
```

-	Layers:
	-	`sha256:69ed82bb373c86c8fbec635b83221f89933079ee40e6fcf48418d1a69ca5bb89`  
		Last Modified: Thu, 25 Jun 2026 19:12:23 GMT  
		Size: 2.0 MB (2002332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cea64cfdecc1c5a9f3c417e6a679e88cd0613790ff8f658ca9e3ec73325fa9cc`  
		Last Modified: Thu, 25 Jun 2026 19:12:23 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; s390x

```console
$ docker pull memcached@sha256:d3cd3e513f2ddee32452ba0ec987fa00b5e1fb1d8db488eaf4fbe26b5d76074c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32292489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5460628bdf70beec088e32d0e29e4bfdc0f288d2df4a23fb962ca9ab72e0d959`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:38:22 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:38:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:41:41 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:41 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:41 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:41 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:41 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd3b24daa3730c2808288ea42c60ca7198480d38cea1e21d7cfe2adc3844917`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba2cdc589f233d4d27d14cf3372db956515683acd0fb9cb15af8b293489125d5`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 140.5 KB (140525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33665ac46f2cf8ddf33ff9813a3727015c6dcc7d0c0f089feafe19ae89e34adb`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 2.3 MB (2299071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e96808b26b5232fb910ecf5cdc8493ae86733873c9f25bfa119fafa1c55b35c6`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dece698c0594201d0475a857aef447a96b29dbe79232e3557f4b64ba5741d09`  
		Last Modified: Mon, 06 Jul 2026 21:41:53 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:3dd79394e3bb85b237653f075e202aa7f0c15898c5c5b1fe856df01cf9290536
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:463e703a269bd4656b96a53f3edcf89aa6c7b4270b4ba2f5be5b7da5304db134`

```dockerfile
```

-	Layers:
	-	`sha256:9fb3957b58d9cfc05cffe13f8e337f7a892cc305727f708d376fed40ce5fa0b1`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 2.0 MB (2009805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0635cd2ab613bff3b59e1c667e4c91d4c53f0e3375457d65df65880d46c59fed`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 22.2 KB (22152 bytes)  
		MIME: application/vnd.in-toto+json
