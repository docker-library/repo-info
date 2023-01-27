## `julia:rc-bullseye`

```console
$ docker pull julia@sha256:502a654ef4dc88a41fef3f9a1ff1e864b7545df307852b754ca2ad3e01c1eaca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `julia:rc-bullseye` - linux; amd64

```console
$ docker pull julia@sha256:7c685a2d03c0191f0616edf4e111932d6b0fc148e5a1b2e09d8c4342180196b9
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.9 MB (180937609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d16b69b7e77efc66b8206529e7bb90d0600d4210d44b42d20e121d1309a92601`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:44 GMT
ADD file:e2398d0bf516084b2b37ba1bb76b86d56e66999831df692461679fbd6a5d8eb6 in / 
# Wed, 11 Jan 2023 02:34:44 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 06:02:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 06:02:55 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 11 Jan 2023 06:02:56 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Jan 2023 06:02:56 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 20 Jan 2023 01:55:20 GMT
ENV JULIA_VERSION=1.9.0-beta3
# Fri, 20 Jan 2023 01:55:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.9/julia-1.9.0-beta3-linux-x86_64.tar.gz'; 			sha256='7b1a595c33e8fdf6e6dc04a9cecea90ca56dd8cc1e3a5a78a8e62bb22a02fbeb'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.9/julia-1.9.0-beta3-linux-aarch64.tar.gz'; 			sha256='e44cafb91ab811ae01e702e50dfcd1176f4506101b274807fca49c6e80b442ab'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.9/julia-1.9.0-beta3-linux-i686.tar.gz'; 			sha256='b6bb6d60753da455055f85fbdfa56ce749e28148891087dffd9e7ba11726fb82'; 			;; 		'ppc64el') 			url='https://julialang-s3.julialang.org/bin/linux/ppc64le/1.9/julia-1.9.0-beta3-linux-ppc64le.tar.gz'; 			sha256='b1694cd02f99c6d6cee769ebaf44b7e6ab112ec8a31ae3e115a5a29544fe7c90'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 20 Jan 2023 01:55:42 GMT
COPY file:92a2f9b3b9de38e57462f85dbe804b0eae9fea8a95aa9bfe9d3c2b95000ae42c in /usr/local/bin/ 
# Fri, 20 Jan 2023 01:55:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Jan 2023 01:55:42 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:8740c948ffd4c816ea7ca963f99ca52f4788baa23f228da9581a9ea2edd3fcd7`  
		Last Modified: Wed, 11 Jan 2023 02:39:07 GMT  
		Size: 31.4 MB (31396972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2fa56be37265448a2b510f943c9ac54b9a0beaa493933cc3ef983e8b3cec234`  
		Last Modified: Wed, 11 Jan 2023 06:06:08 GMT  
		Size: 2.4 MB (2426594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c17db3894386f443ea5b1ba440bee7d0206418ebb8f9ab39fa1db7fdf9aecfe`  
		Last Modified: Fri, 20 Jan 2023 01:59:03 GMT  
		Size: 147.1 MB (147113667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b961242d38f0126850d4543970903af48ad8f1dbb137148759aff4d8bf6ccd2a`  
		Last Modified: Fri, 20 Jan 2023 01:58:39 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:rc-bullseye` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:1c9856cfd33c87473918321eb3d57faaf4f0ef65fa66a24254e61395676e6a82
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.5 MB (173545915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a45c85731838c9ce95b934973011c03d08fe6d83c7dfd8db864f4c17cddf4f3b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:34 GMT
ADD file:92cf2c9ffaaea1a6bc1baa7b681303b1029dfd6ddbfef1792be8b21aaf09235c in / 
# Wed, 11 Jan 2023 02:57:35 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 05:34:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 05:34:35 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 11 Jan 2023 05:34:35 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Jan 2023 05:34:35 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 20 Jan 2023 02:12:21 GMT
ENV JULIA_VERSION=1.9.0-beta3
# Fri, 20 Jan 2023 02:12:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.9/julia-1.9.0-beta3-linux-x86_64.tar.gz'; 			sha256='7b1a595c33e8fdf6e6dc04a9cecea90ca56dd8cc1e3a5a78a8e62bb22a02fbeb'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.9/julia-1.9.0-beta3-linux-aarch64.tar.gz'; 			sha256='e44cafb91ab811ae01e702e50dfcd1176f4506101b274807fca49c6e80b442ab'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.9/julia-1.9.0-beta3-linux-i686.tar.gz'; 			sha256='b6bb6d60753da455055f85fbdfa56ce749e28148891087dffd9e7ba11726fb82'; 			;; 		'ppc64el') 			url='https://julialang-s3.julialang.org/bin/linux/ppc64le/1.9/julia-1.9.0-beta3-linux-ppc64le.tar.gz'; 			sha256='b1694cd02f99c6d6cee769ebaf44b7e6ab112ec8a31ae3e115a5a29544fe7c90'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 20 Jan 2023 02:12:47 GMT
COPY file:92a2f9b3b9de38e57462f85dbe804b0eae9fea8a95aa9bfe9d3c2b95000ae42c in /usr/local/bin/ 
# Fri, 20 Jan 2023 02:12:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Jan 2023 02:12:47 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:934ce60d1040c5d4922bae5879321a398777457b7514de02ef69ece49e6aa907`  
		Last Modified: Wed, 11 Jan 2023 03:01:19 GMT  
		Size: 30.0 MB (30044814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33ec9f0d04deca261a5c5b9ffc666a96675fc51615950205808fe2f6549879c`  
		Last Modified: Wed, 11 Jan 2023 05:37:21 GMT  
		Size: 2.4 MB (2414271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b12677b0c29368233c410fce7d537640650315f55112c125a156de01b2da76ce`  
		Last Modified: Fri, 20 Jan 2023 02:14:45 GMT  
		Size: 141.1 MB (141086454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af8e40b2695709b1aa078a53198be63a70c82e65da1dfbec0d31cd46daa8c69e`  
		Last Modified: Fri, 20 Jan 2023 02:14:27 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:rc-bullseye` - linux; 386

```console
$ docker pull julia@sha256:ae1fa3d1b390399e0b48ef7d6a741d718dc28903e4e84d6994b288d3ade8f82a
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.3 MB (179313509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2533afb56c89d29a6fa08da7297b28c02efd0e755de03214fece86584ba527d3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 11 Jan 2023 03:16:08 GMT
ADD file:68afc7c49a947a9fb253ffeba9950cdc39e241f8a5cf0133043cfc612447f597 in / 
# Wed, 11 Jan 2023 03:16:08 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 05:41:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 05:41:50 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 11 Jan 2023 05:41:51 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Jan 2023 05:41:52 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 20 Jan 2023 02:23:50 GMT
ENV JULIA_VERSION=1.9.0-beta3
# Fri, 20 Jan 2023 02:24:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.9/julia-1.9.0-beta3-linux-x86_64.tar.gz'; 			sha256='7b1a595c33e8fdf6e6dc04a9cecea90ca56dd8cc1e3a5a78a8e62bb22a02fbeb'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.9/julia-1.9.0-beta3-linux-aarch64.tar.gz'; 			sha256='e44cafb91ab811ae01e702e50dfcd1176f4506101b274807fca49c6e80b442ab'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.9/julia-1.9.0-beta3-linux-i686.tar.gz'; 			sha256='b6bb6d60753da455055f85fbdfa56ce749e28148891087dffd9e7ba11726fb82'; 			;; 		'ppc64el') 			url='https://julialang-s3.julialang.org/bin/linux/ppc64le/1.9/julia-1.9.0-beta3-linux-ppc64le.tar.gz'; 			sha256='b1694cd02f99c6d6cee769ebaf44b7e6ab112ec8a31ae3e115a5a29544fe7c90'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Fri, 20 Jan 2023 02:24:15 GMT
COPY file:92a2f9b3b9de38e57462f85dbe804b0eae9fea8a95aa9bfe9d3c2b95000ae42c in /usr/local/bin/ 
# Fri, 20 Jan 2023 02:24:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Jan 2023 02:24:16 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:165165b78fad597abd0883f40adcaa0edcfe981a358deea181323680a07b7011`  
		Last Modified: Wed, 11 Jan 2023 03:22:01 GMT  
		Size: 32.4 MB (32375738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33635ddeb839f7e404118d0482fc8b3e7a90a11fb654de2bf61a000fe717928`  
		Last Modified: Wed, 11 Jan 2023 05:45:47 GMT  
		Size: 2.5 MB (2531793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7998800f3799cd0fd0c07a0e9cffcae6abe98956a59421e7408a650148863947`  
		Last Modified: Fri, 20 Jan 2023 02:27:03 GMT  
		Size: 144.4 MB (144405604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17de738d68ee2ec3b373e01f22e7891c30e2553aeb0baa1eac5686bd43146df8`  
		Last Modified: Fri, 20 Jan 2023 02:26:44 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:rc-bullseye` - linux; ppc64le

```console
$ docker pull julia@sha256:67c862e15e1bcc8fa0d0db00729d3a6f53e2e8e70a60788bd3a4d90f88466203
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.7 MB (168734318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa614ed63f66e415e812c04a88b9ad336e34cfeffb1f7d0285f2871bd83b7282`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 11 Jan 2023 03:49:30 GMT
ADD file:3c7553fb5eda606d574ff6c08bc2213f9e6a68910043fe3087e4c1a04b65a18e in / 
# Wed, 11 Jan 2023 03:49:32 GMT
CMD ["bash"]
# Sat, 21 Jan 2023 00:36:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2023 00:36:23 GMT
ENV JULIA_PATH=/usr/local/julia
# Sat, 21 Jan 2023 00:36:24 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 21 Jan 2023 00:36:24 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Sat, 21 Jan 2023 00:36:24 GMT
ENV JULIA_VERSION=1.9.0-beta3
# Sat, 21 Jan 2023 00:37:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.9/julia-1.9.0-beta3-linux-x86_64.tar.gz'; 			sha256='7b1a595c33e8fdf6e6dc04a9cecea90ca56dd8cc1e3a5a78a8e62bb22a02fbeb'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.9/julia-1.9.0-beta3-linux-aarch64.tar.gz'; 			sha256='e44cafb91ab811ae01e702e50dfcd1176f4506101b274807fca49c6e80b442ab'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.9/julia-1.9.0-beta3-linux-i686.tar.gz'; 			sha256='b6bb6d60753da455055f85fbdfa56ce749e28148891087dffd9e7ba11726fb82'; 			;; 		'ppc64el') 			url='https://julialang-s3.julialang.org/bin/linux/ppc64le/1.9/julia-1.9.0-beta3-linux-ppc64le.tar.gz'; 			sha256='b1694cd02f99c6d6cee769ebaf44b7e6ab112ec8a31ae3e115a5a29544fe7c90'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version
# Sat, 21 Jan 2023 00:37:13 GMT
COPY file:92a2f9b3b9de38e57462f85dbe804b0eae9fea8a95aa9bfe9d3c2b95000ae42c in /usr/local/bin/ 
# Sat, 21 Jan 2023 00:37:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 21 Jan 2023 00:37:14 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:bbf81328aca90b7ddb122fc175443f5323674a9e51bbb00d5b1d683ef0b858f4`  
		Last Modified: Wed, 11 Jan 2023 03:55:33 GMT  
		Size: 35.3 MB (35268773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2ef65440752118c4780abbcb0554efb404a2143ec50dff5776461de04c96f7e`  
		Last Modified: Sat, 21 Jan 2023 00:38:43 GMT  
		Size: 2.6 MB (2627374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3943ec627f0296836481f3419ab5b6ec57991db89867ade3b888be402eac726`  
		Last Modified: Sat, 21 Jan 2023 00:39:20 GMT  
		Size: 130.8 MB (130837797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87a5d5f9a08fd693018311c9111edce7d6470fd31e47d5aff40f4e20b947a6a`  
		Last Modified: Sat, 21 Jan 2023 00:38:43 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
