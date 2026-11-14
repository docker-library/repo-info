## `julia:1-bookworm`

```console
$ docker pull julia@sha256:90e815aa98e1b8afc23dced7014405ad7354dc539a26f5ef307006529a9cf28c
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
$ docker pull julia@sha256:40bb6d28d1ad31b3d57d1349546b5c54e0828b425cc434e59ac2a9a6a41e2a7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.1 MB (339072127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed51d1e8c69f70780bc934750a2f6e08480b42105809d66ce1cb5fa220e84b20`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Sat, 14 Nov 2026 00:16:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 14 Nov 2026 00:17:15 GMT
ENV JULIA_PATH=/usr/local/julia
# Sat, 14 Nov 2026 00:17:15 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Nov 2026 00:17:15 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Sat, 14 Nov 2026 00:17:15 GMT
ENV JULIA_VERSION=1.13.4
# Sat, 14 Nov 2026 00:17:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.4-linux-x86_64.tar.gz'; 			sha256='cf1658f13b91facccd57d41464d7125a0e48a1d24f49062d71532d04d4ec4130'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.4-linux-i686.tar.gz'; 			sha256='85ca7420927871c2e0b501481bf09908ef4e2821b5617db3ab569ddaa57e6074'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.4-linux-aarch64.tar.gz'; 			sha256='d1814cb51e49a1ecd0c95ff0e4ac267ec5ddaba051f5eed2d866d55e40274de5'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Sat, 14 Nov 2026 00:17:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 14 Nov 2026 00:17:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 14 Nov 2026 00:17:15 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:700b8cbb1ce642123aa3aacee594ba72cb8c10a575460ba7f22868ef14d6555d`  
		Last Modified: Sat, 14 Nov 2026 00:17:59 GMT  
		Size: 5.5 MB (5543341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b33af9cc1e20e8c266226734ca436a12b746d814084c7d6e4bc595b695409f31`  
		Last Modified: Sat, 14 Nov 2026 00:18:07 GMT  
		Size: 305.3 MB (305280429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3bc27b9d28fcbde5ae0dc357418917ea608837eb7debad9d6a637fa7bb24bdf`  
		Last Modified: Sat, 14 Nov 2026 00:17:59 GMT  
		Size: 375.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:7143497e136f06f3d18852103b93829e1c27f3e1e0b6267f2c7b98a09341b1ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2589585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cad68ba2b1b2ea9ebe1c326bf0b5de8e534284b516a12b212735db1581ac810`

```dockerfile
```

-	Layers:
	-	`sha256:1443dbe6c956e43ad571f2e67a7144ec19da1b2c2426138d53cf3f6a6ccd1812`  
		Last Modified: Sat, 14 Nov 2026 00:17:59 GMT  
		Size: 2.6 MB (2573030 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80c58addc78032565ec537b46ee8b98b157b22aecd7dfbc9480a34454b823538`  
		Last Modified: Sat, 14 Nov 2026 00:17:59 GMT  
		Size: 16.6 KB (16555 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1-bookworm` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:ed7a3e24a272d2286eedd15b7796619de9e2d258a7df9758353cfa91b2d20a14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.5 MB (361509801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8a0b9020d89252dd8617cfa09621fb10f14c298136b2088eb303e4cd0bb0b62`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Sat, 14 Nov 2026 00:16:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 14 Nov 2026 00:17:20 GMT
ENV JULIA_PATH=/usr/local/julia
# Sat, 14 Nov 2026 00:17:20 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Nov 2026 00:17:20 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Sat, 14 Nov 2026 00:17:20 GMT
ENV JULIA_VERSION=1.13.4
# Sat, 14 Nov 2026 00:17:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.4-linux-x86_64.tar.gz'; 			sha256='cf1658f13b91facccd57d41464d7125a0e48a1d24f49062d71532d04d4ec4130'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.4-linux-i686.tar.gz'; 			sha256='85ca7420927871c2e0b501481bf09908ef4e2821b5617db3ab569ddaa57e6074'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.4-linux-aarch64.tar.gz'; 			sha256='d1814cb51e49a1ecd0c95ff0e4ac267ec5ddaba051f5eed2d866d55e40274de5'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Sat, 14 Nov 2026 00:17:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 14 Nov 2026 00:17:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 14 Nov 2026 00:17:20 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:248f560e96e00430b17dfc4cc45edaa2f6917ddc5f791f6d9d773529c51c1ea2`  
		Last Modified: Sat, 14 Nov 2026 00:18:08 GMT  
		Size: 5.4 MB (5387889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0927a07834c6c7d3a64aa2fe451482720a5a50c9f696061c97a702318cbe95d`  
		Last Modified: Sat, 14 Nov 2026 00:18:15 GMT  
		Size: 328.0 MB (327977182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6ac1a4f09a812072dceab0862ce784843a86844eded75732e9970d110db6136`  
		Last Modified: Sat, 14 Nov 2026 00:18:08 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:2d006c52dd624667ccbedd15a12f6fde92376393e1242e9fac76628f78dba79d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2589979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1039d995cc7d4fe1c2fff440e747bc7751669c49790bffc5bd78f0d5cdfb10f2`

```dockerfile
```

-	Layers:
	-	`sha256:46b604696fd205f50b52910502cb855b64af8085dead164cc59ed1edb52e1d96`  
		Last Modified: Sat, 14 Nov 2026 00:18:08 GMT  
		Size: 2.6 MB (2573305 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:744df81ddfcd73cb3640d93cfcad8c95a85e66e967fe2eb49e05a6a5b3759671`  
		Last Modified: Sat, 14 Nov 2026 00:18:08 GMT  
		Size: 16.7 KB (16674 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1-bookworm` - linux; 386

```console
$ docker pull julia@sha256:f49277321b92ce11902f02e36d67593053503ede1c0151a4d9635bc739210f9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.4 MB (278356784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1182f187937ea333e6b335f78a3c6b71cbc760b020304a0d0dfaf9170f76a6c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793827419'
# Sat, 14 Nov 2026 00:17:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 14 Nov 2026 00:17:20 GMT
ENV JULIA_PATH=/usr/local/julia
# Sat, 14 Nov 2026 00:17:20 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Nov 2026 00:17:20 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Sat, 14 Nov 2026 00:17:20 GMT
ENV JULIA_VERSION=1.13.4
# Sat, 14 Nov 2026 00:17:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.4-linux-x86_64.tar.gz'; 			sha256='cf1658f13b91facccd57d41464d7125a0e48a1d24f49062d71532d04d4ec4130'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.4-linux-i686.tar.gz'; 			sha256='85ca7420927871c2e0b501481bf09908ef4e2821b5617db3ab569ddaa57e6074'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.4-linux-aarch64.tar.gz'; 			sha256='d1814cb51e49a1ecd0c95ff0e4ac267ec5ddaba051f5eed2d866d55e40274de5'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Sat, 14 Nov 2026 00:17:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 14 Nov 2026 00:17:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 14 Nov 2026 00:17:20 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:cf916cd28bf8a94b890c149d6b2cdc665c8beb3378aa9c98a18b6ec1bfe54b0c`  
		Last Modified: Thu, 05 Nov 2026 06:15:50 GMT  
		Size: 29.2 MB (29239212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c926738d87d20c03b866a862fffab5a2ad901374a1302cf8f163782f03d52377`  
		Last Modified: Sat, 14 Nov 2026 00:17:51 GMT  
		Size: 5.7 MB (5701098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc1295d3a51af55323c42e6dbea605efca81c2b853db7269838417b6919130a4`  
		Last Modified: Sat, 14 Nov 2026 00:17:55 GMT  
		Size: 243.4 MB (243416100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5acdd8e2a34d9ad9217859774ba66f9c7406d6041afe31c3ec8d3f1e6cdeed1`  
		Last Modified: Sat, 14 Nov 2026 00:17:51 GMT  
		Size: 374.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:0e6c42ec6d1cd0b6bf0af4cc4408025fc1e116e4644addfb0713e344bf108ddd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2586698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25813e8c0a3f118ae54d1658116de27e0d046ea0eb94189b258d70b8090f372a`

```dockerfile
```

-	Layers:
	-	`sha256:45c529cd0cd9c5b468feb74cedf7d67fdf55187876e6779c76088696baf951ed`  
		Last Modified: Sat, 14 Nov 2026 00:17:51 GMT  
		Size: 2.6 MB (2570177 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e3016c236e6b8d67d16b76b6f9b4ec53baf02e1718bb29df190805667e6cbad`  
		Last Modified: Sat, 14 Nov 2026 00:17:51 GMT  
		Size: 16.5 KB (16521 bytes)  
		MIME: application/vnd.in-toto+json
