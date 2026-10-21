## `julia:bookworm`

```console
$ docker pull julia@sha256:5f09570c9aeace067d79a1730915133eba0f72a31ef2918b5b59e152afa22665
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
$ docker pull julia@sha256:fedd3ff07be4c711e66c40c4629f1fad3a3a3add9134ab226d4c44f0bb514e63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.8 MB (339798016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f290377369ebe8ed75ccc62ead1546151fa15029957f5688904c74edc73ad290`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:18:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:18:24 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:18:24 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:18:24 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 21 Oct 2026 00:18:24 GMT
ENV JULIA_VERSION=1.13.2
# Wed, 21 Oct 2026 00:18:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:18:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:18:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:18:24 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45827739c28e7d2faaa1e197ea2a194ec52ac2ceecee87ae45cbe2c21c455a3a`  
		Last Modified: Wed, 21 Oct 2026 00:19:07 GMT  
		Size: 5.5 MB (5542596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8fe5e1055b9ac5aeae6a7cd088dc9bb0aed68fc772b55c97cb9a17d8baf51f5`  
		Last Modified: Wed, 21 Oct 2026 00:19:13 GMT  
		Size: 306.0 MB (306007113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a57c4adc8aff085072a60b11eabf3059747e315dde0098e956af1110eff66c75`  
		Last Modified: Wed, 21 Oct 2026 00:19:06 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:8f711ec4c5f331d8c7e080ae27413038213cf67bbcf62392fe44b94e5fae26fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2589503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fa9f1e6411af841677734f97e3121ccf69de6b6d47f8573c389d0a5dea0c2a9`

```dockerfile
```

-	Layers:
	-	`sha256:b322441e4386bc8b257fcc7c7bd8ac31ae1bcb577a4e61cdf31ca2bd573a2efa`  
		Last Modified: Wed, 21 Oct 2026 00:19:06 GMT  
		Size: 2.6 MB (2572948 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e913ee55c9af9991b998e85c2f485c2c28133872f12fedc9bae84652428383b0`  
		Last Modified: Wed, 21 Oct 2026 00:19:06 GMT  
		Size: 16.6 KB (16555 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:bookworm` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:5bdc915a4f2bb64d5be14e7124d8392b62fd97c3e29b9f2f1531ef1162df9a13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.2 MB (358241971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aef5b1126cb3110ff5dfe8c951d91acd177735f47b85b1fb3f2b0b4c1782985b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:17:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:17:45 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:17:45 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:17:45 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 21 Oct 2026 00:17:45 GMT
ENV JULIA_VERSION=1.13.2
# Wed, 21 Oct 2026 00:17:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:17:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:17:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:17:45 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dca3f363be28f103d76bfbf036b9ac170321de5d64effd732589d914d4444e57`  
		Last Modified: Wed, 21 Oct 2026 00:18:32 GMT  
		Size: 5.4 MB (5387935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8099c7aaafdc106ecb9258b452f37056a25b564f2efb6c5b6928fd6b6423bce7`  
		Last Modified: Wed, 21 Oct 2026 00:18:38 GMT  
		Size: 324.7 MB (324715239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38aed825ccba3b6d0244075619682c0daffdf6ee3dbf25713258a9ac3a23368e`  
		Last Modified: Wed, 21 Oct 2026 00:18:31 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:ed173b945c92460a73ae19a6c1a656f2f034adb999756b3bebfa01dac7d7d1bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2589896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e82e20cf734ca50c686c2911f1b2b07a33a5975d01146c83b69b052de55268c9`

```dockerfile
```

-	Layers:
	-	`sha256:a4dabaf2a434be4e7dec56899e7c5809345da5435daa79e31a3cf7da7863b108`  
		Last Modified: Wed, 21 Oct 2026 00:18:32 GMT  
		Size: 2.6 MB (2573223 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ab70b12c916fc1aeb13776a6a295c305a90348713200d9a33acd83e462cc468`  
		Last Modified: Wed, 21 Oct 2026 00:18:31 GMT  
		Size: 16.7 KB (16673 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:bookworm` - linux; 386

```console
$ docker pull julia@sha256:a8bf7bddaae15f8a6498b47ba8a23c8dfd13badef9ef14633120dc93716b195f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.7 MB (277693522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cf2cff5b8fac117a593ce6f920d031abfcd38708fd0dd4d96047c4eff511eb4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1791158400'
# Fri, 16 Oct 2026 20:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:38:20 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 16 Oct 2026 20:38:20 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:38:20 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Fri, 16 Oct 2026 20:38:20 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:38:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Fri, 16 Oct 2026 20:38:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:38:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:38:20 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:4fde7ff71d38b44de13588c355f9acc395f4ecbec569968085401a6d6b40eff2`  
		Last Modified: Tue, 06 Oct 2026 00:13:26 GMT  
		Size: 29.2 MB (29239373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1ba0b5a5ce54e241440155d54462fc5aa89ba068bc7da22e2340203bbf94ffe`  
		Last Modified: Fri, 16 Oct 2026 20:38:52 GMT  
		Size: 5.7 MB (5705016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:438b668b820f2df12c42a0157087e1da2475a13f7ca7c842c03b279a6cd61fea`  
		Last Modified: Fri, 16 Oct 2026 20:38:58 GMT  
		Size: 242.7 MB (242748761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18789dbad7bcadcc5332855e6ad27089ccafc8f0670787536f8c508378d9ed80`  
		Last Modified: Fri, 16 Oct 2026 20:38:52 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:a2c50efe4635d540345c2256b49aa1d15eace481913c9c63b4a1560955c24b27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2587908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42608ae662cdb6a8994a433d3f346dcf684d07ec338776365c3ff3cc942ce9fc`

```dockerfile
```

-	Layers:
	-	`sha256:ae79d2d5740e507f83579caf4f0867322f32ba0ea40bff2eed582539aad517f2`  
		Last Modified: Fri, 16 Oct 2026 20:38:52 GMT  
		Size: 2.6 MB (2571390 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:372e5a7289d9df4b7f2152abb578c18fa455817e3cd1c46b3d1c9188b2404201`  
		Last Modified: Fri, 16 Oct 2026 20:38:51 GMT  
		Size: 16.5 KB (16518 bytes)  
		MIME: application/vnd.in-toto+json
