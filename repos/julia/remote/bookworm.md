## `julia:bookworm`

```console
$ docker pull julia@sha256:9160ce27bc8472ff441574a67fda0bbdf71988bc2872d414e51004749b5f219a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `julia:bookworm` - linux; amd64

```console
$ docker pull julia@sha256:24abe2aaccb8e56e9eb94b015a9729102d26979f9a62151ac30f11233e49c036
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.0 MB (340971242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cbc7257a535accf65694835a06ec39905be8e97ee401d17945e748e657d6293`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Thu, 10 Sep 2026 20:40:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 10 Sep 2026 20:40:38 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 10 Sep 2026 20:40:38 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 Sep 2026 20:40:38 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Thu, 10 Sep 2026 20:40:38 GMT
ENV JULIA_VERSION=1.13.0
# Thu, 10 Sep 2026 20:40:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.0-linux-x86_64.tar.gz'; 			sha256='8975da61c128a5e5ded3e719e868da8c8781deb7ad7913d37fb99be02a81904b'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.0-linux-i686.tar.gz'; 			sha256='811a3d82afd11b6a069c0a49111a98eeaf9a107139c188ff3d4cba5721ae8e5d'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.0-linux-aarch64.tar.gz'; 			sha256='6cd4a3e4baa2dc5f55638c28e9835fc294f41c78ada4a740dc408436778ab8b4'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Thu, 10 Sep 2026 20:40:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 10 Sep 2026 20:40:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 10 Sep 2026 20:40:38 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acb892673d60be64b8bde04352c7574b0f26b23a7af4bd72b2e4806a53aa3c46`  
		Last Modified: Thu, 10 Sep 2026 20:41:21 GMT  
		Size: 5.7 MB (5736865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8ff0e0528a0d7db5c2153d0819e7cd33303f4384abfa843940aebbb458da385`  
		Last Modified: Thu, 10 Sep 2026 20:41:28 GMT  
		Size: 307.0 MB (307001348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff4a82bd91dd22a76026cc4aa7cf49eba3ac6969661c73021f68d7a1bf725646`  
		Last Modified: Thu, 10 Sep 2026 20:41:21 GMT  
		Size: 374.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:aa789836239eae85d40354a244ec0eeae53b4db81ff806d8d77ae9c53e106cf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2590762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff3699e1d695772088c3bd96656ec157f0d2c0200812d31517ea62468e7ca77c`

```dockerfile
```

-	Layers:
	-	`sha256:83a30835af5e7c81c85ab9a627e61dea3c33f350f5e23dfeffa38e91eb7daf0d`  
		Last Modified: Thu, 10 Sep 2026 20:41:21 GMT  
		Size: 2.6 MB (2574207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d7922e7c759fe3bda72b13b8ad6b1bc4ffc7fac84af1c83c6575343279a112c`  
		Last Modified: Thu, 10 Sep 2026 20:41:21 GMT  
		Size: 16.6 KB (16555 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:bookworm` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:9324fe746c4a2aab525b989b69341a63a0cae20f01390a0920f388b1e82acea7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.6 MB (359603205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb7c1e7d18474a793ff8e86d1a33f4feb59abb72c88a977a6f0a14881385d619`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Thu, 10 Sep 2026 20:39:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 10 Sep 2026 20:39:52 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 10 Sep 2026 20:39:52 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 Sep 2026 20:39:52 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Thu, 10 Sep 2026 20:39:52 GMT
ENV JULIA_VERSION=1.13.0
# Thu, 10 Sep 2026 20:39:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.0-linux-x86_64.tar.gz'; 			sha256='8975da61c128a5e5ded3e719e868da8c8781deb7ad7913d37fb99be02a81904b'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.0-linux-i686.tar.gz'; 			sha256='811a3d82afd11b6a069c0a49111a98eeaf9a107139c188ff3d4cba5721ae8e5d'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.0-linux-aarch64.tar.gz'; 			sha256='6cd4a3e4baa2dc5f55638c28e9835fc294f41c78ada4a740dc408436778ab8b4'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Thu, 10 Sep 2026 20:39:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 10 Sep 2026 20:39:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 10 Sep 2026 20:39:52 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:750ff1c31d5b663154e02c6074301b7c04c669c1d2403a4465cdab5ccd82abd6`  
		Last Modified: Thu, 10 Sep 2026 20:40:39 GMT  
		Size: 5.6 MB (5582297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47f587d893a28e668729473f76a04e97745aaf0d3ec61aafe68dd9c427d515e5`  
		Last Modified: Thu, 10 Sep 2026 20:40:46 GMT  
		Size: 325.9 MB (325903248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf47303273318460fdda1f798fb51ec829dd66803b31d38346ac54fac0720b10`  
		Last Modified: Thu, 10 Sep 2026 20:40:39 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:cd3e122e2fb061bc14b3d7b00b696a44f03c59c30a9cfed8572b74591fc5962b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2591156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e70460bcee01c58fa8a61fbdc6206220ed3f2119ac0e8a6b80590806004e6e0`

```dockerfile
```

-	Layers:
	-	`sha256:af792657989694f7406caf1ba94dcd3232fc996314fd8a44ca42affd2c7e17d5`  
		Last Modified: Thu, 10 Sep 2026 20:40:39 GMT  
		Size: 2.6 MB (2574482 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44227f2885bf06e604c24b8e654b53cd2817e2abe68cf04a25fc4083aa0a1412`  
		Last Modified: Thu, 10 Sep 2026 20:40:39 GMT  
		Size: 16.7 KB (16674 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:bookworm` - linux; 386

```console
$ docker pull julia@sha256:58d51c932dd462ef5eb7cda23b62a0f3a924108637592008b1ce37996f61ce68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.2 MB (278189466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ccf66b2525fe5d56c2013955ddf14670dc89fe710d90b14c6aff4732339e3ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Thu, 10 Sep 2026 20:39:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 10 Sep 2026 20:39:52 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 10 Sep 2026 20:39:52 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 Sep 2026 20:39:52 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Thu, 10 Sep 2026 20:39:52 GMT
ENV JULIA_VERSION=1.13.0
# Thu, 10 Sep 2026 20:39:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.0-linux-x86_64.tar.gz'; 			sha256='8975da61c128a5e5ded3e719e868da8c8781deb7ad7913d37fb99be02a81904b'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.0-linux-i686.tar.gz'; 			sha256='811a3d82afd11b6a069c0a49111a98eeaf9a107139c188ff3d4cba5721ae8e5d'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.0-linux-aarch64.tar.gz'; 			sha256='6cd4a3e4baa2dc5f55638c28e9835fc294f41c78ada4a740dc408436778ab8b4'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Thu, 10 Sep 2026 20:39:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 10 Sep 2026 20:39:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 10 Sep 2026 20:39:52 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:916fb20376728caa546c535959e4183327c2e505d617f0cc2f2d4d1c33da898f`  
		Last Modified: Mon, 24 Aug 2026 23:20:30 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33564bcddbd8bd9a72825d0df72065c27c222135e9e58c5798b7f251522fed14`  
		Last Modified: Thu, 10 Sep 2026 20:40:26 GMT  
		Size: 5.9 MB (5897329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5195955450b184924c80a7d0069a888b4dd23b1e8373257aaeac06f57646c39c`  
		Last Modified: Thu, 10 Sep 2026 20:40:30 GMT  
		Size: 243.1 MB (243070712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18a93e7ee229c1f49c02c79b2d83d843e8765de6a04b9bfeac9063a2ec50b99b`  
		Last Modified: Thu, 10 Sep 2026 20:40:25 GMT  
		Size: 373.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:feaf6e05d47f93094fb8770347ff35ab4dcdf816e6ab1b713952eba298f454bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2587874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5df4b307bea106fefcb1da396ee55921d63536d133eb598122b3f69adb7c4274`

```dockerfile
```

-	Layers:
	-	`sha256:1031b32d75515003064e929302efc674a19a5300e32297c2191175c58f88cfc5`  
		Last Modified: Thu, 10 Sep 2026 20:40:26 GMT  
		Size: 2.6 MB (2571354 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec0d06dceaa40d4a58ff5d41bc3f33c8246831fbda4902898f0bf1ebfcff7d3a`  
		Last Modified: Thu, 10 Sep 2026 20:40:25 GMT  
		Size: 16.5 KB (16520 bytes)  
		MIME: application/vnd.in-toto+json
