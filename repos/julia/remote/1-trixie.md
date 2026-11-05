## `julia:1-trixie`

```console
$ docker pull julia@sha256:e69bf1397928c84ebe298ddc8489973ce8f0447a696607b620ea9422de240aac
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `julia:1-trixie` - linux; amd64

```console
$ docker pull julia@sha256:2b6af13fa09f949fa5801e25861c27d7f71b2fb9573effd44e93b16d96fa0db3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.9 MB (342927154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d7045957bf0750d480a19e528f819b286c52429fc8c6bf35219df44531c78dc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:15:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:16:11 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 05 Nov 2026 07:16:11 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:16:11 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Thu, 05 Nov 2026 07:16:11 GMT
ENV JULIA_VERSION=1.13.3
# Thu, 05 Nov 2026 07:16:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.3-linux-x86_64.tar.gz'; 			sha256='5c61cb4b40332cb5a3504e7779e2f5dac093caa4a1116ded19f01413f85c63e4'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.3-linux-i686.tar.gz'; 			sha256='df41358eddc884b022af86102de706e0ca11ea69792241570688943645cdb1bc'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.3-linux-aarch64.tar.gz'; 			sha256='9ceb053bee6dfb8189bd40afd6925de3a9b7ff8fac8d01a5fcdd84af171ddf03'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Thu, 05 Nov 2026 07:16:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:16:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:16:11 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c28614d2b7e956195d3e3b8863e7d127195af4fa28a369e581da057391bf18c`  
		Last Modified: Thu, 05 Nov 2026 07:16:58 GMT  
		Size: 6.2 MB (6247531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b334feddcecc50e7601f5123b932445e23dc58601e60360b85ba5f0c43cbf0b`  
		Last Modified: Thu, 05 Nov 2026 07:17:03 GMT  
		Size: 306.8 MB (306823119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3864940e02ccb7154d13317eb15f797e818b67c5d1335490e97d59190a1d4c83`  
		Last Modified: Thu, 05 Nov 2026 07:16:57 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:27e6283f0e8977dc1ca0eed5fcf3d3b2140e30a96b0d95aa4a3307740486895c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2264085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d0ebe0401184f1478750a13b3b52138059928e88e7324edaf26c1ec7aac2785`

```dockerfile
```

-	Layers:
	-	`sha256:39e3cd03bca9b6b6860661cdf5cc337b0a1ed3a039404c99c22872df474a45e5`  
		Last Modified: Thu, 05 Nov 2026 07:16:58 GMT  
		Size: 2.2 MB (2246384 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:35ec0bfe2b9023b27e8ef50f947aeb6002bc111b337c7684cf7672a106eb0943`  
		Last Modified: Thu, 05 Nov 2026 07:16:57 GMT  
		Size: 17.7 KB (17701 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1-trixie` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:40965a4a8c991ce111648781f8a6c1215eda4dcaa28677d1344ad3d4a26229ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.9 MB (361856771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ce0ec78840e37ad5ea1cb924b399f3c5cb95ec94ba9f6108fe34e7287737a26`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:14:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:14:26 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 05 Nov 2026 07:14:26 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:14:26 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Thu, 05 Nov 2026 07:14:26 GMT
ENV JULIA_VERSION=1.13.3
# Thu, 05 Nov 2026 07:14:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.3-linux-x86_64.tar.gz'; 			sha256='5c61cb4b40332cb5a3504e7779e2f5dac093caa4a1116ded19f01413f85c63e4'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.3-linux-i686.tar.gz'; 			sha256='df41358eddc884b022af86102de706e0ca11ea69792241570688943645cdb1bc'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.3-linux-aarch64.tar.gz'; 			sha256='9ceb053bee6dfb8189bd40afd6925de3a9b7ff8fac8d01a5fcdd84af171ddf03'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Thu, 05 Nov 2026 07:14:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:14:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:14:26 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e99b2f1e6d4e9d2c388cd04f2cc0db0d14d31c1db4959f70cdc1c5454fdc7036`  
		Last Modified: Thu, 05 Nov 2026 07:15:12 GMT  
		Size: 6.2 MB (6153951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dcdf2875bb199faab7ac61e05abcf8163eaaea9fd49bb5a333b468deed7a964`  
		Last Modified: Thu, 05 Nov 2026 07:15:20 GMT  
		Size: 325.5 MB (325488409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48962318c32f06f1c6fb8323f93692962f26a0adfa677ee81e78b275b1d7e66f`  
		Last Modified: Thu, 05 Nov 2026 07:15:12 GMT  
		Size: 374.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:0bbddd092cb118fdaf24710879ce42327d6d60475f538a224a59fbdcb54f3b1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2264576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b21898da813ad358c52aa25c25a46d5d2a1e01697f05b063d978753f1048e0ce`

```dockerfile
```

-	Layers:
	-	`sha256:71f4393f3baf9c126d8aa57877708c0ac77af15a1f52b9f34f5d16ec97883f61`  
		Last Modified: Thu, 05 Nov 2026 07:15:12 GMT  
		Size: 2.2 MB (2246708 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a6545873da56be384ffd5b09a1656fecee2d1d784d244ab2219ae166d516aae`  
		Last Modified: Thu, 05 Nov 2026 07:15:12 GMT  
		Size: 17.9 KB (17868 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1-trixie` - linux; 386

```console
$ docker pull julia@sha256:3787653b2e09a1d69fa982bb104c77358550ae142c1565555154c1755b573690
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.1 MB (281130182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd3e1d0d9179800d1693794eb7d3d85d0fe044ffa7d1026c2d779ddbd811cfeb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:14:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:14:20 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 05 Nov 2026 07:14:20 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:14:20 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Thu, 05 Nov 2026 07:14:20 GMT
ENV JULIA_VERSION=1.13.3
# Thu, 05 Nov 2026 07:14:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.3-linux-x86_64.tar.gz'; 			sha256='5c61cb4b40332cb5a3504e7779e2f5dac093caa4a1116ded19f01413f85c63e4'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.3-linux-i686.tar.gz'; 			sha256='df41358eddc884b022af86102de706e0ca11ea69792241570688943645cdb1bc'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.3-linux-aarch64.tar.gz'; 			sha256='9ceb053bee6dfb8189bd40afd6925de3a9b7ff8fac8d01a5fcdd84af171ddf03'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Thu, 05 Nov 2026 07:14:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:14:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:14:20 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60d7fe4e40e8b4cbf987616e54c652b317cb0b5ce053c7a900b0269588856be0`  
		Last Modified: Thu, 05 Nov 2026 07:14:53 GMT  
		Size: 6.4 MB (6432499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7983b0daf27c7ee34e2ab5951fd51c61446fb07b27bb4d01035ebaa19e3945c0`  
		Last Modified: Thu, 05 Nov 2026 07:14:57 GMT  
		Size: 243.3 MB (243326550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38ac640952c4dd4e5243b018dcb41ee811f3cb139654963dbbe60198e704df15`  
		Last Modified: Thu, 05 Nov 2026 07:14:52 GMT  
		Size: 374.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:fe4fa50a8297229a4154764c2e1510e55f0da9ec46d2f83b835b4adb4ded935f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2261156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7675ae6aa6f974893973d93a3864780b96eed3213bfeb81a50c2fad4e9df7fcd`

```dockerfile
```

-	Layers:
	-	`sha256:162966bf4780db4f9954f9ed0eac058868826ada28021ec26eed8d9b29433a46`  
		Last Modified: Thu, 05 Nov 2026 07:14:53 GMT  
		Size: 2.2 MB (2243509 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4566e38c4bee279d5ca598b9b672961d3abc4a9aa9085ca0ef09d3699eaeb25f`  
		Last Modified: Thu, 05 Nov 2026 07:14:52 GMT  
		Size: 17.6 KB (17647 bytes)  
		MIME: application/vnd.in-toto+json
