## `julia:rc-bookworm`

```console
$ docker pull julia@sha256:515863725ea58da0149fb3a4ecf6a3a3fb4de9fa200e77b3b011f4b40cb56307
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `julia:rc-bookworm` - linux; amd64

```console
$ docker pull julia@sha256:ebafe610c07eda1d178c16155cd999729fc94940f21730b2e42e15c0f5a80da7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.8 MB (257822928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e285524d1466217b02197f5a86c2b05ff573e0f78cf3e7ada9a5745675f9310`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:15:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:17:40 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 24 Nov 2026 04:17:40 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:17:40 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 24 Nov 2026 04:17:40 GMT
ENV JULIA_VERSION=1.14.0-beta1
# Tue, 24 Nov 2026 04:17:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.14/julia-1.14.0-beta1-linux-x86_64.tar.gz'; 			sha256='c13cfca1ab9a8682319fb2b9a40106602390d0f7452553f8c0bf22551589101a'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.14/julia-1.14.0-beta1-linux-i686.tar.gz'; 			sha256='1ee8ca55c63da5ffc789f2eb4a7069fab0d1db45cceb572ec2192b605882c5ee'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.14/julia-1.14.0-beta1-linux-aarch64.tar.gz'; 			sha256='3e10c730dfa021ef3a0715b9e9eb3c41b9cd7a0883072f551a5c23641e62ab45'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 24 Nov 2026 04:17:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:17:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:17:40 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:b1dd3d113aab1041fd80cc61d9db7ffbc058f756bf46fc149a0d9aa8b85935f4`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 28.2 MB (28247960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eafaf6317d82000ed62f1a06fee5d57ef4097c8d795ecb362d12809a0fd595f8`  
		Last Modified: Tue, 24 Nov 2026 04:17:00 GMT  
		Size: 5.5 MB (5543338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f743a696fe063471f5c4cacb78284a770077bf3b6abfede4c604dbc1a064261e`  
		Last Modified: Tue, 24 Nov 2026 04:18:15 GMT  
		Size: 224.0 MB (224031263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f951190f86f71ced13b7b9ce08e8de1ecf918f81e9fa469c80efbd1edd7f9363`  
		Last Modified: Tue, 24 Nov 2026 04:18:10 GMT  
		Size: 367.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:rc-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:9ce24798863e82449f53724c22d4d156f5cb5d73f25bc4e0ba773dffd2c70ed5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2589077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:839ed62a59de7b5601d5592ba90b788674852c09441c11ee86892e207c18b26c`

```dockerfile
```

-	Layers:
	-	`sha256:183d52ac57ff80cf96c8ef6b7c7803e2cb448fc82ec186e2d49aad6f496109f8`  
		Last Modified: Tue, 24 Nov 2026 04:18:10 GMT  
		Size: 2.6 MB (2572750 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c03c44b6e4fb8346e37fdae7a5014075227dc3dd7ac6e84c9c2a24af4e8d4f25`  
		Last Modified: Tue, 24 Nov 2026 04:18:10 GMT  
		Size: 16.3 KB (16327 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:rc-bookworm` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:faf0201b80f63ee11c34e5a461edc1c62ab478920d05421d95dfb587049b551a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.0 MB (270038077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:830d388d478a61d5fdbf4ef57cd81be1956271cec7d7bf7c390e5e3c1366d173`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:16:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:17:38 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 24 Nov 2026 04:17:38 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:17:38 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 24 Nov 2026 04:17:38 GMT
ENV JULIA_VERSION=1.14.0-beta1
# Tue, 24 Nov 2026 04:17:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.14/julia-1.14.0-beta1-linux-x86_64.tar.gz'; 			sha256='c13cfca1ab9a8682319fb2b9a40106602390d0f7452553f8c0bf22551589101a'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.14/julia-1.14.0-beta1-linux-i686.tar.gz'; 			sha256='1ee8ca55c63da5ffc789f2eb4a7069fab0d1db45cceb572ec2192b605882c5ee'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.14/julia-1.14.0-beta1-linux-aarch64.tar.gz'; 			sha256='3e10c730dfa021ef3a0715b9e9eb3c41b9cd7a0883072f551a5c23641e62ab45'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 24 Nov 2026 04:17:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:17:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:17:38 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:7f1aa0b5c351d0542b2066749ed47608e5873bcdd1fd14f4df6f0a05cac02f8e`  
		Last Modified: Tue, 24 Nov 2026 03:40:09 GMT  
		Size: 28.1 MB (28144305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c56c9da0d5b95c79140d3ea63d6a8e4b3e0856aa323c44198383ed1be22e09d`  
		Last Modified: Tue, 24 Nov 2026 04:17:09 GMT  
		Size: 5.4 MB (5387868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40a34d2a42c4a311a07b01b449392597c602ba733980364d7bb793ee7b3f00a2`  
		Last Modified: Tue, 24 Nov 2026 04:18:14 GMT  
		Size: 236.5 MB (236505536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:967894f9d2f7f5984136b56cc499998a58d96e4da919e6b2ecf01be9cc70da03`  
		Last Modified: Tue, 24 Nov 2026 04:18:09 GMT  
		Size: 368.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:rc-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:daca2e6cf5358f1ecbac89431eb865f78e697b04441a6f268da3e61a2e2981e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2589447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d7bba1451fce5e429afd6f7cae13acfb02e87c227a62ae272523a09ea933d03`

```dockerfile
```

-	Layers:
	-	`sha256:14c14dacb738d6bdc4163e93269b8845b5727ead994e7e2a5714c4bd3dfd4173`  
		Last Modified: Tue, 24 Nov 2026 04:18:09 GMT  
		Size: 2.6 MB (2573013 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b1087dbc6acbe472bfde3ce6a1347d384e829c50e7751329c3dbc732267977d`  
		Last Modified: Tue, 24 Nov 2026 04:18:09 GMT  
		Size: 16.4 KB (16434 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:rc-bookworm` - linux; 386

```console
$ docker pull julia@sha256:24a485ff82a917ec47eddce51f61dc6fcff6187d8bcf6608c17b16f2eb259a92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.8 MB (223783376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b03dc2410eee5a6b1decbd14f7bad742470a84aa618e1c8634582163fd51573d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:15:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:15:28 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 24 Nov 2026 04:15:28 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:15:28 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 24 Nov 2026 04:15:28 GMT
ENV JULIA_VERSION=1.14.0-beta1
# Tue, 24 Nov 2026 04:15:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.14/julia-1.14.0-beta1-linux-x86_64.tar.gz'; 			sha256='c13cfca1ab9a8682319fb2b9a40106602390d0f7452553f8c0bf22551589101a'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.14/julia-1.14.0-beta1-linux-i686.tar.gz'; 			sha256='1ee8ca55c63da5ffc789f2eb4a7069fab0d1db45cceb572ec2192b605882c5ee'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.14/julia-1.14.0-beta1-linux-aarch64.tar.gz'; 			sha256='3e10c730dfa021ef3a0715b9e9eb3c41b9cd7a0883072f551a5c23641e62ab45'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 24 Nov 2026 04:15:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:15:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:15:28 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:1cde02d171534450b668912ef8ef66ab259bfca33204cf933a2860bfd06fe63b`  
		Last Modified: Tue, 24 Nov 2026 03:40:03 GMT  
		Size: 29.2 MB (29239212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8932e3614651b02182664e985d008782a1a4e57ad20e3fc68d6d97eeb427ef54`  
		Last Modified: Tue, 24 Nov 2026 04:15:53 GMT  
		Size: 5.7 MB (5701085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f90855e8784dd6e5202db16a816e06c6905da72f3dc7b66de6a6c3630dde51f8`  
		Last Modified: Tue, 24 Nov 2026 04:15:57 GMT  
		Size: 188.8 MB (188842709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3c4b3d4c87f3bfa2b1d7ddae5bfb0706b9a4eb0f0cd5ced0043830895dfff2c`  
		Last Modified: Tue, 24 Nov 2026 04:15:53 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:rc-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:6812fc63ce9d6d10bbdc6f4c9a693024102c46919c608b6f6afb1640f6872025
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2586200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f3b9d15648872359a91c752c5ad33cee9c75a1b55f6e62f7391fd5e82b39946`

```dockerfile
```

-	Layers:
	-	`sha256:986b8f090e4d20ed813d57241dbf4f917fdcda46e3a0f14a8125a33911ace80b`  
		Last Modified: Tue, 24 Nov 2026 04:15:53 GMT  
		Size: 2.6 MB (2569902 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a96adde56219053ad4d6ebf6fe8228df9237594825af8ac95512a087f6d4718`  
		Last Modified: Tue, 24 Nov 2026 04:15:53 GMT  
		Size: 16.3 KB (16298 bytes)  
		MIME: application/vnd.in-toto+json
