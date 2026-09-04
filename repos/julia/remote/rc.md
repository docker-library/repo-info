## `julia:rc`

```console
$ docker pull julia@sha256:b2a5834cd106a525e73dcb37f5afef86dbedd530358d24eb9b111dc14a99e7bc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `julia:rc` - linux; amd64

```console
$ docker pull julia@sha256:d62ac744bab3d5897330637608a11730740b00ec88e463a01c84d86de5cccb47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.8 MB (345790084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b2818683190114f4cb2f920c7fc38325255a54ca70784a2ef2a770c407a6f93`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Thu, 03 Sep 2026 23:13:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 03 Sep 2026 23:14:07 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 03 Sep 2026 23:14:07 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 03 Sep 2026 23:14:07 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Thu, 03 Sep 2026 23:14:07 GMT
ENV JULIA_VERSION=1.13.0-rc4
# Thu, 03 Sep 2026 23:14:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.0-rc4-linux-x86_64.tar.gz'; 			sha256='a66e5b87876cc1316f170014315b22e3b717dd952c74a23634bda629ad2c2b68'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.0-rc4-linux-i686.tar.gz'; 			sha256='e251827ae02a4acba561952e68ec2f5448331975783bc6f50c146104bb7b63a1'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.0-rc4-linux-aarch64.tar.gz'; 			sha256='a42e1bce94b3d3283ff74e9fe3188bf4f6872ec8609fb6ec5e8ef32b2b5a4ef4'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Thu, 03 Sep 2026 23:14:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 03 Sep 2026 23:14:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 03 Sep 2026 23:14:07 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b03147141f926c73aec20f665136f573ab41094945f94866b76b4613b67525a`  
		Last Modified: Thu, 03 Sep 2026 23:14:54 GMT  
		Size: 9.2 MB (9207833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c97564090a8d64c5c542bf3209afb794859fc67f500a1ac572aae2b1786363ac`  
		Last Modified: Thu, 03 Sep 2026 23:15:00 GMT  
		Size: 306.8 MB (306789224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55086d302cd2e6891cd647ef1da3481b2c66684e4955ceb8fcf45b2dcd55f5df`  
		Last Modified: Thu, 03 Sep 2026 23:14:53 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:rc` - unknown; unknown

```console
$ docker pull julia@sha256:21a5576908ba367503b5fefbd516ca18f5cb3d65a6493790804c832f036938fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2258531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b968bbb690a80093a07e34359746a5297a94f687558cbda0269335b156ba068`

```dockerfile
```

-	Layers:
	-	`sha256:b9f856b07564d5d2ce8d31c6c0462af8b247c9959b9b8a4b1c1392ed988ed03a`  
		Last Modified: Thu, 03 Sep 2026 23:14:54 GMT  
		Size: 2.2 MB (2241363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f71ab9f497db19b70b169595e86f51ee34ab2709303f207fb58f610d18b3a425`  
		Last Modified: Thu, 03 Sep 2026 23:14:53 GMT  
		Size: 17.2 KB (17168 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:rc` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:f64b68f03d59abef33fe826e509d260f9d631d27e52d08065e61f9b1772739c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.0 MB (365018054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fb5b138066fec513cafbe271fb060258ec126e5a5a3a590e6734df2e6f27b89`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Thu, 03 Sep 2026 23:12:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 03 Sep 2026 23:13:24 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 03 Sep 2026 23:13:24 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 03 Sep 2026 23:13:24 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Thu, 03 Sep 2026 23:13:24 GMT
ENV JULIA_VERSION=1.13.0-rc4
# Thu, 03 Sep 2026 23:13:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.0-rc4-linux-x86_64.tar.gz'; 			sha256='a66e5b87876cc1316f170014315b22e3b717dd952c74a23634bda629ad2c2b68'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.0-rc4-linux-i686.tar.gz'; 			sha256='e251827ae02a4acba561952e68ec2f5448331975783bc6f50c146104bb7b63a1'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.0-rc4-linux-aarch64.tar.gz'; 			sha256='a42e1bce94b3d3283ff74e9fe3188bf4f6872ec8609fb6ec5e8ef32b2b5a4ef4'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Thu, 03 Sep 2026 23:13:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 03 Sep 2026 23:13:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 03 Sep 2026 23:13:24 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ce2774a5229422d0a6982a550dc559fb047fb97d03a75f630191395693d2aac`  
		Last Modified: Thu, 03 Sep 2026 23:14:10 GMT  
		Size: 9.5 MB (9476415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cce8a4144a452f9b199d5c5217bdb8fce9e62b3f414ba1539cd0b4e6eca258d`  
		Last Modified: Thu, 03 Sep 2026 23:14:17 GMT  
		Size: 325.4 MB (325381684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b7a932c8c8d015c5b5ecdc6b1cfb0870e9e72803dd4b729d66b487d1af3df23`  
		Last Modified: Thu, 03 Sep 2026 23:14:10 GMT  
		Size: 373.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:rc` - unknown; unknown

```console
$ docker pull julia@sha256:2ba209e41393021e67a90e347c3a5484661478a521ee25f601c7c4503ba8e78a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2258975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ab1844c2daecdb6c9c25ad322ed21f780de7d061f676118fae3ee26eae8ab0a`

```dockerfile
```

-	Layers:
	-	`sha256:ea83fee0dbc0f21d907a7dff6cd998976c5276e31ef75e9995ae71eb02adbeeb`  
		Last Modified: Thu, 03 Sep 2026 23:14:10 GMT  
		Size: 2.2 MB (2241663 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:005edfecb149ef5ce8027f42b7b57bbe7b9e826f0a2787b313f95e9343710abc`  
		Last Modified: Thu, 03 Sep 2026 23:14:10 GMT  
		Size: 17.3 KB (17312 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:rc` - linux; 386

```console
$ docker pull julia@sha256:61f6b8cfa9c9c05dc9f690d21803747cdaf9836eefafb425ea153f0ff95d90a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.6 MB (283570674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9045d68cd078cd6b525afe305fe13a0f8b6fe5a5ae312f9466d0514affba7a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Thu, 03 Sep 2026 23:13:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 03 Sep 2026 23:13:30 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 03 Sep 2026 23:13:30 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 03 Sep 2026 23:13:30 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Thu, 03 Sep 2026 23:13:30 GMT
ENV JULIA_VERSION=1.13.0-rc4
# Thu, 03 Sep 2026 23:13:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.0-rc4-linux-x86_64.tar.gz'; 			sha256='a66e5b87876cc1316f170014315b22e3b717dd952c74a23634bda629ad2c2b68'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.0-rc4-linux-i686.tar.gz'; 			sha256='e251827ae02a4acba561952e68ec2f5448331975783bc6f50c146104bb7b63a1'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.0-rc4-linux-aarch64.tar.gz'; 			sha256='a42e1bce94b3d3283ff74e9fe3188bf4f6872ec8609fb6ec5e8ef32b2b5a4ef4'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Thu, 03 Sep 2026 23:13:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 03 Sep 2026 23:13:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 03 Sep 2026 23:13:30 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be2c054a370e91e691feed09312a35925084a35e1dca7cb2dfe3165ad3ef71c8`  
		Last Modified: Thu, 03 Sep 2026 23:14:02 GMT  
		Size: 9.3 MB (9329498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e18375ffe974b818cfd2d766060dd45d47d2e9fabde02428a6d2d938bce0e293`  
		Last Modified: Thu, 03 Sep 2026 23:14:06 GMT  
		Size: 242.9 MB (242937408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60d7f725891212f2492f8e30e61db5feccf76673142c975a4bd786a0d4bc57df`  
		Last Modified: Thu, 03 Sep 2026 23:14:01 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:rc` - unknown; unknown

```console
$ docker pull julia@sha256:c5ae870592b577a94d2f48cffc5fe23198a59e1bc2d368fc945f42b68edbb5d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2255623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12266c219ca590cb86f1cef662ac73181a07e7ed21a1a424e16be07fba4153b9`

```dockerfile
```

-	Layers:
	-	`sha256:bb5c1faa01eef6fc2417692db891d246fa4751cbe965f9be2df337f50ffd9d7d`  
		Last Modified: Thu, 03 Sep 2026 23:14:01 GMT  
		Size: 2.2 MB (2238498 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:523b52452c530d2614e91f62c091ba4b12ea7510442a8e9a65ff374cb276af20`  
		Last Modified: Thu, 03 Sep 2026 23:14:01 GMT  
		Size: 17.1 KB (17125 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:rc` - windows version 10.0.26100.33296; amd64

```console
$ docker pull julia@sha256:1e6e55e597d467e6e62d9eb0be530680bb9bb0b13db34d108fd76177a6c6e9bd
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2750240321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:845babd804a5d764a94e606bffd95a490cef2a8597918b844e2e5314de581111`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Thu, 03 Sep 2026 23:25:38 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 03 Sep 2026 23:25:40 GMT
ENV JULIA_VERSION=1.13.0-rc4
# Thu, 03 Sep 2026 23:25:41 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.0-rc4-win64.exe
# Thu, 03 Sep 2026 23:25:42 GMT
ENV JULIA_SHA256=1a7cbc243d576485d59d085872d0beb4f8fe977bfa25c37979c4e16a36e47cde
# Thu, 03 Sep 2026 23:28:07 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Thu, 03 Sep 2026 23:28:07 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e568591931490e1e7ec978b074bfcd6c72b91f9a17b47e96cfb43e4dbe72a3`  
		Last Modified: Thu, 03 Sep 2026 23:28:13 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d2df08f79dc93ba5f61c4506dbed397851956c867ada41b60b6b77207bfeac`  
		Last Modified: Thu, 03 Sep 2026 23:28:12 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d47a5d28c26f999a0d2eaeb1579ff9588d203dc81cb975dd7267366fa6d2fc7`  
		Last Modified: Thu, 03 Sep 2026 23:28:12 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4efd0e61f4d8c93145cf44508bf5fc2dc49fb94f172c866c9ad6aaa092dddc05`  
		Last Modified: Thu, 03 Sep 2026 23:28:12 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e183982e6f763f90902ba63089b43d3282a1eb81fcf2d3e1680fd01f5694261e`  
		Last Modified: Thu, 03 Sep 2026 23:28:50 GMT  
		Size: 309.4 MB (309448448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:525f774f015df8fb1cb25faf5867543f0037b8486fd9eb28f7e06ce36d982593`  
		Last Modified: Thu, 03 Sep 2026 23:28:12 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:rc` - windows version 10.0.20348.5499; amd64

```console
$ docker pull julia@sha256:1fcd924dc53ff471d32646ed499c96330e9ec0f3d040f35bdccf490f4da29688
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2493410088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3c8e040eff09254e55f80fcf493a1a337a73315f171d1e530f07dfcafd92659`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Thu, 03 Sep 2026 23:45:32 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 03 Sep 2026 23:45:35 GMT
ENV JULIA_VERSION=1.13.0-rc4
# Thu, 03 Sep 2026 23:45:36 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.0-rc4-win64.exe
# Thu, 03 Sep 2026 23:45:37 GMT
ENV JULIA_SHA256=1a7cbc243d576485d59d085872d0beb4f8fe977bfa25c37979c4e16a36e47cde
# Thu, 03 Sep 2026 23:48:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Thu, 03 Sep 2026 23:48:11 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32af9f62747befe9a8cfb455b98c57c461e3d55979c1234ee57b49981d78a652`  
		Last Modified: Thu, 03 Sep 2026 23:48:17 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42b7ac2c37093a89920298d732c29ac793237a506be582b383e68eec9f954306`  
		Last Modified: Thu, 03 Sep 2026 23:48:15 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c633d4cfcd380adb2868c0eaf127a6800d751f0ae0c0ef683a3d7d3d5b34f2`  
		Last Modified: Thu, 03 Sep 2026 23:48:15 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f04e96945d2f7061a89dfd7508d244a30b54c12aa018beccea7271ce8ebb177`  
		Last Modified: Thu, 03 Sep 2026 23:48:15 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3881a524728691b34f930fcd3f6261808fbdeddda709c9a1ebdaf5c3687dfa`  
		Last Modified: Thu, 03 Sep 2026 23:48:58 GMT  
		Size: 309.4 MB (309406080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a8c46002a2e6875c901d235b1d3b93f1ec142f9ccf11d00f83fb5eb03688d2f`  
		Last Modified: Thu, 03 Sep 2026 23:48:15 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
