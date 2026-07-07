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
