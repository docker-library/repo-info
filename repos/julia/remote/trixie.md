## `julia:trixie`

```console
$ docker pull julia@sha256:c3c08d668c230df060f2141bdb2314371a351c04ecdffc1366218fbf229309d3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `julia:trixie` - linux; amd64

```console
$ docker pull julia@sha256:c92a7eb68eea15f8d3ec32bd74eb309361db9c9dd84915182654a06e9ba83fca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.9 MB (342926300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3f9d536170b2cbb8dec1d810dfbd07ce672290a046b3d79c95c3c053b4d152c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:15:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:15:25 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 28 Oct 2026 01:15:25 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:15:25 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 28 Oct 2026 01:15:25 GMT
ENV JULIA_VERSION=1.13.3
# Wed, 28 Oct 2026 01:15:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.3-linux-x86_64.tar.gz'; 			sha256='5c61cb4b40332cb5a3504e7779e2f5dac093caa4a1116ded19f01413f85c63e4'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.3-linux-i686.tar.gz'; 			sha256='df41358eddc884b022af86102de706e0ca11ea69792241570688943645cdb1bc'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.3-linux-aarch64.tar.gz'; 			sha256='9ceb053bee6dfb8189bd40afd6925de3a9b7ff8fac8d01a5fcdd84af171ddf03'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 28 Oct 2026 01:15:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:15:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:15:25 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89aa1770392db4c2e2b10d99f5b76bd900047e26c28d17d646468445e785ab9c`  
		Last Modified: Wed, 28 Oct 2026 01:16:08 GMT  
		Size: 6.2 MB (6247566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:827256ec6c8cc83515e76d778eba88786487442debfb9820a606eb7e512b343c`  
		Last Modified: Wed, 28 Oct 2026 01:16:14 GMT  
		Size: 306.8 MB (306823128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44e19e7a31844faf2f8fda1a19bfe7b771971690303c85342d5e7280656d1faa`  
		Last Modified: Wed, 28 Oct 2026 01:16:08 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:trixie` - unknown; unknown

```console
$ docker pull julia@sha256:98c1c678aafafdeb48b656d7b5b0a1325284b3604070b4b990556595a79c4a74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2264085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8259daaba88627e88a3916583ac868690796a3636c0a5c3be641f8f55a981351`

```dockerfile
```

-	Layers:
	-	`sha256:f51146e6e39c61374d8fcbb8b8522b704482fea6b82cb5690560f035ea2ee58c`  
		Last Modified: Wed, 28 Oct 2026 01:16:08 GMT  
		Size: 2.2 MB (2246384 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:513a8d07a1885c84ed03e743a4716b475f2d5c1bda7115906b8554288185af23`  
		Last Modified: Wed, 28 Oct 2026 01:16:08 GMT  
		Size: 17.7 KB (17701 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:trixie` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:58f8a0ae6eb0838bd3b93935f714377beb953286c267f597e5f091cb9f917bf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.9 MB (361856149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a4bbb656495c3e203822e42b1f0fb13d9abdb9fc4f0c6169a3df76cf85a2721`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:14:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:15:10 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 28 Oct 2026 01:15:10 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:15:10 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 28 Oct 2026 01:15:10 GMT
ENV JULIA_VERSION=1.13.3
# Wed, 28 Oct 2026 01:15:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.3-linux-x86_64.tar.gz'; 			sha256='5c61cb4b40332cb5a3504e7779e2f5dac093caa4a1116ded19f01413f85c63e4'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.3-linux-i686.tar.gz'; 			sha256='df41358eddc884b022af86102de706e0ca11ea69792241570688943645cdb1bc'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.3-linux-aarch64.tar.gz'; 			sha256='9ceb053bee6dfb8189bd40afd6925de3a9b7ff8fac8d01a5fcdd84af171ddf03'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 28 Oct 2026 01:15:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:15:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:15:10 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c139b580448b6bd40a7b66c21003711b1673925f3c6114db2630fff81567e18`  
		Last Modified: Wed, 28 Oct 2026 01:15:58 GMT  
		Size: 6.2 MB (6153898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7945b3a7082ce9a25ccd7521a25dcc8e3352e0c4669957c7e2553af5a030cc9d`  
		Last Modified: Wed, 28 Oct 2026 01:16:04 GMT  
		Size: 325.5 MB (325488382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:844d5c68a6d95a4e5b66d16dc4979978c970671855635a24ad4d7ec0162d012c`  
		Last Modified: Wed, 28 Oct 2026 01:15:57 GMT  
		Size: 373.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:trixie` - unknown; unknown

```console
$ docker pull julia@sha256:15b21543feb683c07ce11d2d58fe57f535e763cecf8c185bf123aa59d8823029
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2264576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7d56857afc2dd4c1c5f9b7e6d56eed6f3ccbd36844330d7d47c60218b480a5b`

```dockerfile
```

-	Layers:
	-	`sha256:a71491b820ef8e82c0ac3b0aa56c510623a4bda07c66badf7bc0c2b6969e8714`  
		Last Modified: Wed, 28 Oct 2026 01:15:57 GMT  
		Size: 2.2 MB (2246708 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b2b4aa079a6387eda6c09a7dcb443169869f1480fbe79dcadec19f66411b7fc`  
		Last Modified: Wed, 28 Oct 2026 01:15:57 GMT  
		Size: 17.9 KB (17868 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:trixie` - linux; 386

```console
$ docker pull julia@sha256:5d49155bdf3d5a831d0bc40c4c864183154ffae84b2e2301f40778346c625a65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.1 MB (281127941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f2b1ab978416b482cbad5a40e21f080d4aedf653f416726669c29877f7b7ae6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:14:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:15:08 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 28 Oct 2026 01:15:08 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:15:08 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 28 Oct 2026 01:15:08 GMT
ENV JULIA_VERSION=1.13.3
# Wed, 28 Oct 2026 01:15:08 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.3-linux-x86_64.tar.gz'; 			sha256='5c61cb4b40332cb5a3504e7779e2f5dac093caa4a1116ded19f01413f85c63e4'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.3-linux-i686.tar.gz'; 			sha256='df41358eddc884b022af86102de706e0ca11ea69792241570688943645cdb1bc'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.3-linux-aarch64.tar.gz'; 			sha256='9ceb053bee6dfb8189bd40afd6925de3a9b7ff8fac8d01a5fcdd84af171ddf03'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 28 Oct 2026 01:15:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:15:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:15:08 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:8de786efd9f843bb6c3b38a5b42b133b1940ce9f9efbdcf2a555339daf02c662`  
		Last Modified: Wed, 28 Oct 2026 00:11:00 GMT  
		Size: 31.4 MB (31368586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aae8806be249d4a5769807e90f8cd5a357bf9927cecfe02720bcf651e4813c10`  
		Last Modified: Wed, 28 Oct 2026 01:15:41 GMT  
		Size: 6.4 MB (6432462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dec22460db44f40e70a73190fd1347980d490efd1fa9ff46457ba156f94a092`  
		Last Modified: Wed, 28 Oct 2026 01:15:45 GMT  
		Size: 243.3 MB (243326520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8f5875fa2c944e16827b3db211eae42609502f7bb10e984af3bdf302a481112`  
		Last Modified: Wed, 28 Oct 2026 01:15:40 GMT  
		Size: 373.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:trixie` - unknown; unknown

```console
$ docker pull julia@sha256:4b068e9933dd52e62e63cbe8f9f10c60300912493fdcc7118dd480c2be4d72b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2261156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3168515d3b51fb0545d9f7ffb946919a0140ae3fb747781f07180b4a03fdba0a`

```dockerfile
```

-	Layers:
	-	`sha256:35518f9e164c221a864fad829ced7a59e422f2b8a72764441dd067f899ac34fc`  
		Last Modified: Wed, 28 Oct 2026 01:15:40 GMT  
		Size: 2.2 MB (2243509 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ad97f0e2eb248c443a9797eeef5e49d4746dc4b051e8fcff9a1d5daa0bec5b6`  
		Last Modified: Wed, 28 Oct 2026 01:15:40 GMT  
		Size: 17.6 KB (17647 bytes)  
		MIME: application/vnd.in-toto+json
