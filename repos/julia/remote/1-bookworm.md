## `julia:1-bookworm`

```console
$ docker pull julia@sha256:4a16cd25727e2ae678c4b4b1dca69c3120396ce69548eb372195d22d5cc377f6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `julia:1-bookworm` - linux; amd64

```console
$ docker pull julia@sha256:ebdb993398816a7b45658924c96ab8379c016aaf42099f0d8e379d63c8399172
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.0 MB (340976963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e429437a09a23036af419c8bd9752d8f86a014aaca54cb4d30eb00fc8015703`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:18:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:18:48 GMT
ENV JULIA_PATH=/usr/local/julia
# Sat, 19 Sep 2026 00:18:48 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:18:48 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Sat, 19 Sep 2026 00:18:48 GMT
ENV JULIA_VERSION=1.13.0
# Sat, 19 Sep 2026 00:18:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.0-linux-x86_64.tar.gz'; 			sha256='8975da61c128a5e5ded3e719e868da8c8781deb7ad7913d37fb99be02a81904b'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.0-linux-i686.tar.gz'; 			sha256='811a3d82afd11b6a069c0a49111a98eeaf9a107139c188ff3d4cba5721ae8e5d'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.0-linux-aarch64.tar.gz'; 			sha256='6cd4a3e4baa2dc5f55638c28e9835fc294f41c78ada4a740dc408436778ab8b4'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Sat, 19 Sep 2026 00:18:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:18:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:18:48 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbfe88b507c0f67ce5c6a40b6b1f9ca46dbb02a6ca182f99f28359106989addf`  
		Last Modified: Sat, 19 Sep 2026 00:19:31 GMT  
		Size: 5.7 MB (5736910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55b8ff2a2f3c65c670dbb25e1fcfdaf6fcdce6315703141b5e494a9ac9c154e4`  
		Last Modified: Sat, 19 Sep 2026 00:19:36 GMT  
		Size: 307.0 MB (307001240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c638d9b0ae4cfeea820520714a63dda23228bc46c9cb5b4ea236abaf67d808f`  
		Last Modified: Sat, 19 Sep 2026 00:19:30 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:260b6a655cf1cb4a080266b2899995d9aba998410ee118a6fde1ee9378030b40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2590798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b5298e9b32162ab70752ba67d9aa2e6786307ffb01de58c884c1febecc16e11`

```dockerfile
```

-	Layers:
	-	`sha256:79eff930fda54d4643a6d4c97896cd59aeb1a5a38c6ff3fe6f2e46240889f12d`  
		Last Modified: Sat, 19 Sep 2026 00:19:30 GMT  
		Size: 2.6 MB (2574243 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9e34b2cdbd3801050d4e1b4604888036bc554bdc71ef2702b6aa4af4e65d2ba`  
		Last Modified: Sat, 19 Sep 2026 00:19:30 GMT  
		Size: 16.6 KB (16555 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1-bookworm` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:d36a61af451973df7b64f7b5fce49af5562bae2fd27be0ab9b4cf39f1feec41b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.6 MB (359609838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:786bde59d202d69178c87c9ec6c3ba226374c5c3953f9e7ce4a8122b28249930`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:20:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:20:27 GMT
ENV JULIA_PATH=/usr/local/julia
# Sat, 19 Sep 2026 00:20:27 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:20:27 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Sat, 19 Sep 2026 00:20:27 GMT
ENV JULIA_VERSION=1.13.0
# Sat, 19 Sep 2026 00:20:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.0-linux-x86_64.tar.gz'; 			sha256='8975da61c128a5e5ded3e719e868da8c8781deb7ad7913d37fb99be02a81904b'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.0-linux-i686.tar.gz'; 			sha256='811a3d82afd11b6a069c0a49111a98eeaf9a107139c188ff3d4cba5721ae8e5d'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.0-linux-aarch64.tar.gz'; 			sha256='6cd4a3e4baa2dc5f55638c28e9835fc294f41c78ada4a740dc408436778ab8b4'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Sat, 19 Sep 2026 00:20:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:20:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:20:28 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6012d228e0ab7b52828fa84fb6cf9ae88089d859af109f6c1cfe4d509632dbd7`  
		Last Modified: Sat, 19 Sep 2026 00:21:15 GMT  
		Size: 5.6 MB (5582408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:748f83dec76ab792668cf6b86507d99b6baa64512264b36991978ad3efa6ed18`  
		Last Modified: Sat, 19 Sep 2026 00:21:21 GMT  
		Size: 325.9 MB (325903379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62f7c4fde1ddfdbae72ff5ae9334aa92259ecb4c5e0be86a04513e78a1522e82`  
		Last Modified: Sat, 19 Sep 2026 00:21:15 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:bb336baa1e973f37e2bacd8bdefb764b9c6861cb0e96fc5cb86e6df6758c850a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2591192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de5d2523d41655e236247fd851186bae095972f0e15da61678bf84c303c17e2f`

```dockerfile
```

-	Layers:
	-	`sha256:b13c51202ab63c3dc6edc56e0696a40afe851b0d890d9a5c7659b7eeff543cf5`  
		Last Modified: Sat, 19 Sep 2026 00:21:15 GMT  
		Size: 2.6 MB (2574518 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d366945e84ddbe672380c81d564cefa383c7c0efca74ccda7ea14c4f06c18477`  
		Last Modified: Sat, 19 Sep 2026 00:21:15 GMT  
		Size: 16.7 KB (16674 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1-bookworm` - linux; 386

```console
$ docker pull julia@sha256:d2377eb3b62ca372b8d806f2b545f46b838054c7ffa8dcfdf8201810ff693d31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.2 MB (278194569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38781fb47ef6d9c794435c3518e18ce3ab2ede3d6b1534cee3f15bf5b47531f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:19:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:19:53 GMT
ENV JULIA_PATH=/usr/local/julia
# Sat, 19 Sep 2026 00:19:53 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:19:53 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Sat, 19 Sep 2026 00:19:53 GMT
ENV JULIA_VERSION=1.13.0
# Sat, 19 Sep 2026 00:19:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.0-linux-x86_64.tar.gz'; 			sha256='8975da61c128a5e5ded3e719e868da8c8781deb7ad7913d37fb99be02a81904b'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.0-linux-i686.tar.gz'; 			sha256='811a3d82afd11b6a069c0a49111a98eeaf9a107139c188ff3d4cba5721ae8e5d'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.0-linux-aarch64.tar.gz'; 			sha256='6cd4a3e4baa2dc5f55638c28e9835fc294f41c78ada4a740dc408436778ab8b4'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Sat, 19 Sep 2026 00:19:53 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:19:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:19:53 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5395c899952161a45075664b17e646ed1b422ff1717a34e56e95f1c6bb61b66f`  
		Last Modified: Sat, 19 Sep 2026 00:03:34 GMT  
		Size: 29.2 MB (29226105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e4370d1c4b89719423deb037d5f64cb30e9a769c5427f815bbc726411b648a5`  
		Last Modified: Sat, 19 Sep 2026 00:20:28 GMT  
		Size: 5.9 MB (5897364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0db14486f59bcb43435f0d47442dfdd0dfbd4191bd158ac14d12a3dd78eb596f`  
		Last Modified: Sat, 19 Sep 2026 00:20:33 GMT  
		Size: 243.1 MB (243070730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b084873540b65485900a87a24787b609f0011855d61965a49fec1ce2a68ba194`  
		Last Modified: Sat, 19 Sep 2026 00:20:28 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:a61958a8ebbab24d80d8320c25de98fe4ce3a58bb36f5a5c86561ce1c0fd9c01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2587911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51eb679ee34ba156128b9c5bda817abd5a2cba8c53bdbd90d91da42c943bbe31`

```dockerfile
```

-	Layers:
	-	`sha256:f328235592f69008e88e29b881cac4a0f545da1661666fd6440a5c60d217fb40`  
		Last Modified: Sat, 19 Sep 2026 00:20:28 GMT  
		Size: 2.6 MB (2571390 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7f349957697b537cb82d5d369edc92637835b9c91baa0696fd2e12d49dae444`  
		Last Modified: Sat, 19 Sep 2026 00:20:28 GMT  
		Size: 16.5 KB (16521 bytes)  
		MIME: application/vnd.in-toto+json
