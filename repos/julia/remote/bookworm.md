## `julia:bookworm`

```console
$ docker pull julia@sha256:2e8bf8ccf70e8d1ad0ea92c67d355f31877338e40b9e0bee085b8b4d3f280f78
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
$ docker pull julia@sha256:12f8b4e791582c9b6b2af2f6113f996a1c91ce8bbab4f0aabfec41b899d569bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.6 MB (340586458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cda8ae418b9072458bc5ba851a9993b84a253ace6f9bb2aa7a337c04aad9f785`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:16:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:16:28 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 28 Oct 2026 01:16:28 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:16:28 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 28 Oct 2026 01:16:28 GMT
ENV JULIA_VERSION=1.13.3
# Wed, 28 Oct 2026 01:16:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.3-linux-x86_64.tar.gz'; 			sha256='5c61cb4b40332cb5a3504e7779e2f5dac093caa4a1116ded19f01413f85c63e4'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.3-linux-i686.tar.gz'; 			sha256='df41358eddc884b022af86102de706e0ca11ea69792241570688943645cdb1bc'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.3-linux-aarch64.tar.gz'; 			sha256='9ceb053bee6dfb8189bd40afd6925de3a9b7ff8fac8d01a5fcdd84af171ddf03'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 28 Oct 2026 01:16:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:16:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:16:28 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1a18dc338f6646fa2e295094a49984dc0a0fb6caa690c86e74b4f170c1ccfe9`  
		Last Modified: Wed, 28 Oct 2026 01:17:15 GMT  
		Size: 5.5 MB (5543352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:792084100caa15eea14df7975debc29e7d9146ac2dd0c00584c52117b717a393`  
		Last Modified: Wed, 28 Oct 2026 01:17:21 GMT  
		Size: 306.8 MB (306795300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:368056445c82d24dd6b82ea9375c403be882e70f31fc616f551b60862e953d70`  
		Last Modified: Wed, 28 Oct 2026 01:17:15 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:b63a48857d2bf787c8e7756c6c3cc2b511aea2ed045427db9b83381b6056483f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2589531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e537eb662eb8aa2390be5fe85d1a29d53bcfd6399027311f2bf55172a5c6faf0`

```dockerfile
```

-	Layers:
	-	`sha256:52c51df6a2828d954fa4aefe982606e037cff912978c37e7d6dbef9c00f801e5`  
		Last Modified: Wed, 28 Oct 2026 01:17:15 GMT  
		Size: 2.6 MB (2572976 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a92a773a281d05ac36801490b507e524729938cd4ee80d85e4cf3f1882f5669d`  
		Last Modified: Wed, 28 Oct 2026 01:17:15 GMT  
		Size: 16.6 KB (16555 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:bookworm` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:1c50c398746a05b5d0af832ccb449a02645a435d228f4d169832e48401db4e0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.0 MB (358975285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c6b9fd9db93d5d6ee8de32cf67186fd445d2b2c6e4aa2785e9c5eb321ce5412`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:15:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:16:11 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 28 Oct 2026 01:16:11 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:16:11 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 28 Oct 2026 01:16:11 GMT
ENV JULIA_VERSION=1.13.3
# Wed, 28 Oct 2026 01:16:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.3-linux-x86_64.tar.gz'; 			sha256='5c61cb4b40332cb5a3504e7779e2f5dac093caa4a1116ded19f01413f85c63e4'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.3-linux-i686.tar.gz'; 			sha256='df41358eddc884b022af86102de706e0ca11ea69792241570688943645cdb1bc'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.3-linux-aarch64.tar.gz'; 			sha256='9ceb053bee6dfb8189bd40afd6925de3a9b7ff8fac8d01a5fcdd84af171ddf03'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 28 Oct 2026 01:16:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:16:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:16:11 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35ac53d74ed9ea6485b6257726646feb526bce42df61c6ac34b4bf7f113c0960`  
		Last Modified: Wed, 28 Oct 2026 01:16:59 GMT  
		Size: 5.4 MB (5387841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb20373619ef8f5b517defd0a35138e1541cbfb5a3ff3798640bcccaae03b0fe`  
		Last Modified: Wed, 28 Oct 2026 01:17:05 GMT  
		Size: 325.4 MB (325449124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60f6093a7e790f15e2b70aee1e77d8a7b2db13f80d15aa0af3a9e1282c15e6dc`  
		Last Modified: Wed, 28 Oct 2026 01:16:58 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:3ecb55427be6e26ef8b2004a527d57003f31dd32478d759428a9bf9cc28de825
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2589925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95a94e1d14722c5a47555be394455481c97914235f468f59b4b4d8ea53559d9d`

```dockerfile
```

-	Layers:
	-	`sha256:41bc6e8f33480f69812cd9d1398668345eb296966d7dd9c901983ce44577a42c`  
		Last Modified: Wed, 28 Oct 2026 01:16:58 GMT  
		Size: 2.6 MB (2573251 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c0941102438dd42898bfddc8f8f53e26246faa4a639b0d3c564b7551466b727a`  
		Last Modified: Wed, 28 Oct 2026 01:16:58 GMT  
		Size: 16.7 KB (16674 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:bookworm` - linux; 386

```console
$ docker pull julia@sha256:7185535b1f2dff9c0646273ff3105f30837fb3551a372b3e1e134fb61644b7ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.2 MB (278227695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e68c35a5d9ea034dd4c701e7220337949038f30f14a1a92a44809fe9e18af321`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:14:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:15:09 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 28 Oct 2026 01:15:09 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:15:09 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 28 Oct 2026 01:15:09 GMT
ENV JULIA_VERSION=1.13.3
# Wed, 28 Oct 2026 01:15:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.3-linux-x86_64.tar.gz'; 			sha256='5c61cb4b40332cb5a3504e7779e2f5dac093caa4a1116ded19f01413f85c63e4'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.3-linux-i686.tar.gz'; 			sha256='df41358eddc884b022af86102de706e0ca11ea69792241570688943645cdb1bc'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.3-linux-aarch64.tar.gz'; 			sha256='9ceb053bee6dfb8189bd40afd6925de3a9b7ff8fac8d01a5fcdd84af171ddf03'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 28 Oct 2026 01:15:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:15:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:15:09 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:8268d978265dc07d9054d3d23c581ec1e6c2d82b134331d09069a923d04dc48a`  
		Last Modified: Wed, 28 Oct 2026 00:10:24 GMT  
		Size: 29.2 MB (29238779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d9de8b335bb41e9e0e3a3460e906dee0f894f7b53dca67ab7b25cf1e3a35c09`  
		Last Modified: Wed, 28 Oct 2026 01:15:41 GMT  
		Size: 5.7 MB (5700958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0531668510fcb7d1ba2b30a086a6b601e81362d075a4554b790fae8063885eaf`  
		Last Modified: Wed, 28 Oct 2026 01:15:45 GMT  
		Size: 243.3 MB (243287586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82a3ff78583b238412992885a3f9c18e3cbf3670a1329d927d29bfc2f2dc6480`  
		Last Modified: Wed, 28 Oct 2026 01:15:41 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:febd020d4e7cf4c5841139288d7a5659d0178a05890b647a8bb3d06e001927f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2586644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29e16e9b17256b07b6389a3dbfef272f983088977b89a640a7b66049955ce880`

```dockerfile
```

-	Layers:
	-	`sha256:ed68d571bd9c22e73d41a9e4627017cc4aef615054463262cdbcf1e4ab22b1a9`  
		Last Modified: Wed, 28 Oct 2026 01:15:41 GMT  
		Size: 2.6 MB (2570123 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ecd511145687210df12dcd5825e3f34763cb1799a8e6a8657404585598a6670`  
		Last Modified: Wed, 28 Oct 2026 01:15:41 GMT  
		Size: 16.5 KB (16521 bytes)  
		MIME: application/vnd.in-toto+json
