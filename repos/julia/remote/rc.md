## `julia:rc`

```console
$ docker pull julia@sha256:bdd67f4eb75f7d76c94453a91616eca2bf0e22cbed2314b626e57f7b9a7eea21
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	windows version 10.0.26100.33828; amd64
	-	windows version 10.0.20348.5873; amd64

### `julia:rc` - linux; amd64

```console
$ docker pull julia@sha256:5f5ab63ef945fac2f6df7f0c98fc2dfb27c0cdf5648fcc36fa3b5d4883df433c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.2 MB (260163537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f4a78be78bc4391abca789cd2c50236997f7dbf31da4665bef30bb9c5f24d89`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:17:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:17:16 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 24 Nov 2026 04:17:16 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:17:16 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 24 Nov 2026 04:17:16 GMT
ENV JULIA_VERSION=1.14.0-beta1
# Tue, 24 Nov 2026 04:17:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.14/julia-1.14.0-beta1-linux-x86_64.tar.gz'; 			sha256='c13cfca1ab9a8682319fb2b9a40106602390d0f7452553f8c0bf22551589101a'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.14/julia-1.14.0-beta1-linux-i686.tar.gz'; 			sha256='1ee8ca55c63da5ffc789f2eb4a7069fab0d1db45cceb572ec2192b605882c5ee'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.14/julia-1.14.0-beta1-linux-aarch64.tar.gz'; 			sha256='3e10c730dfa021ef3a0715b9e9eb3c41b9cd7a0883072f551a5c23641e62ab45'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 24 Nov 2026 04:17:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:17:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:17:16 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:930575c9bd9de7aaf6527d66218f4abfc904a317365f305ceedc5b93af2decdd`  
		Last Modified: Tue, 24 Nov 2026 04:17:45 GMT  
		Size: 6.2 MB (6248454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b2a38a141c2a9679ff14787684cc5ce35dca70036f7df6163ead61da4d1c1a8`  
		Last Modified: Tue, 24 Nov 2026 04:17:50 GMT  
		Size: 224.1 MB (224072530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b99ada8069f286ce8eefeecf8df8a773f9f7d61be806afeb8d887e25620f8b2`  
		Last Modified: Tue, 24 Nov 2026 04:17:45 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:rc` - unknown; unknown

```console
$ docker pull julia@sha256:56d8ab70b4663608d6a429a309878e5f1d1fd4b2617fe2ab74c3eec75c0fb3a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2263061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f52d002cc8b78058382ace4f2ad87650fe67a14e243d56ac3b292e8d4c507ff`

```dockerfile
```

-	Layers:
	-	`sha256:b650184272ab3c3102bac78c210105c82542ff50555145439ff5dfca1abb8a7f`  
		Last Modified: Tue, 24 Nov 2026 04:17:45 GMT  
		Size: 2.2 MB (2245860 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:abb1be70458a7716fa156873fc216178a8f958d2d131f00f00e5d40c860f7a6c`  
		Last Modified: Tue, 24 Nov 2026 04:17:45 GMT  
		Size: 17.2 KB (17201 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:rc` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:db2718eeae70f23c8e2233826fccb51fdc572533e8498f4057b3476e48d9ac6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.9 MB (272887925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0ec9c176e311f4dfad6c6113479f588782e18914cf6bd91d8dcfe3ed3e150bc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:17:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:17:37 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 24 Nov 2026 04:17:37 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:17:37 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 24 Nov 2026 04:17:37 GMT
ENV JULIA_VERSION=1.14.0-beta1
# Tue, 24 Nov 2026 04:17:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.14/julia-1.14.0-beta1-linux-x86_64.tar.gz'; 			sha256='c13cfca1ab9a8682319fb2b9a40106602390d0f7452553f8c0bf22551589101a'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.14/julia-1.14.0-beta1-linux-i686.tar.gz'; 			sha256='1ee8ca55c63da5ffc789f2eb4a7069fab0d1db45cceb572ec2192b605882c5ee'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.14/julia-1.14.0-beta1-linux-aarch64.tar.gz'; 			sha256='3e10c730dfa021ef3a0715b9e9eb3c41b9cd7a0883072f551a5c23641e62ab45'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 24 Nov 2026 04:17:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:17:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:17:37 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1000852ad69db755d699910d9329acb924e1a18c621c8350453d88265d85c00`  
		Last Modified: Tue, 24 Nov 2026 04:18:08 GMT  
		Size: 6.2 MB (6154602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ae197c0a6929904adc48a1f4de3f74de0da3d46c1984fba41ac9ff31c21b351`  
		Last Modified: Tue, 24 Nov 2026 04:18:12 GMT  
		Size: 236.5 MB (236534920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea8bb942bc5a799a72a2ee93b2839201a3252d9d4c50c22b10b349719a2fe2c3`  
		Last Modified: Tue, 24 Nov 2026 04:18:08 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:rc` - unknown; unknown

```console
$ docker pull julia@sha256:1b9c54d73df298a98f58d3ae5662d8e78072e3248222587c0de65258e6bde870
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2263504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30f1d6bc1d46ca2e178a395b1ff8f436ef45ad392e3f34210345deca15f830d7`

```dockerfile
```

-	Layers:
	-	`sha256:66c8a79a7e13ba46569d9861ee5a6f032e631872352b23d13d92fd4bcb81bd99`  
		Last Modified: Tue, 24 Nov 2026 04:18:08 GMT  
		Size: 2.2 MB (2246160 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a18f310c9ae7d8b6da12bfba430b95ca0dc96b5befa20c3cb4b92e71bf763f3a`  
		Last Modified: Tue, 24 Nov 2026 04:18:07 GMT  
		Size: 17.3 KB (17344 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:rc` - linux; 386

```console
$ docker pull julia@sha256:b2ade0276e12f7a0211af760a19a7e15558092991515dd781c60c5004c26d082
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.7 MB (226667198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2e5d86b45a8be2e26ee5bf177797710f944acd374ce4b814e6ee90fd7650625`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:14:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:15:14 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 24 Nov 2026 04:15:14 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:15:14 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 24 Nov 2026 04:15:14 GMT
ENV JULIA_VERSION=1.14.0-beta1
# Tue, 24 Nov 2026 04:15:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.14/julia-1.14.0-beta1-linux-x86_64.tar.gz'; 			sha256='c13cfca1ab9a8682319fb2b9a40106602390d0f7452553f8c0bf22551589101a'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.14/julia-1.14.0-beta1-linux-i686.tar.gz'; 			sha256='1ee8ca55c63da5ffc789f2eb4a7069fab0d1db45cceb572ec2192b605882c5ee'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.14/julia-1.14.0-beta1-linux-aarch64.tar.gz'; 			sha256='3e10c730dfa021ef3a0715b9e9eb3c41b9cd7a0883072f551a5c23641e62ab45'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 24 Nov 2026 04:15:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:15:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:15:14 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:7fb9e5f471a439ab129e9fe258623bccb6c4da1d0313890202b55fd6b5839533`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 31.4 MB (31357919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df294204ee9d9a4c852079c79f971840726fe2501f5bb3a76ce214e2efb67de6`  
		Last Modified: Tue, 24 Nov 2026 04:15:38 GMT  
		Size: 6.4 MB (6433133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04b51ab8e3d978fd5a77388c0c61ec39746f610f0ad0c3a4070dedace1e0129e`  
		Last Modified: Tue, 24 Nov 2026 04:15:42 GMT  
		Size: 188.9 MB (188875777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5c153a9e2483c7cee52695e6d42f1aa66bdc01eda542c6ccd985771cad6c85a`  
		Last Modified: Tue, 24 Nov 2026 04:15:37 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:rc` - unknown; unknown

```console
$ docker pull julia@sha256:cf0b9c7189551275c6e9ae90b6e2853cfe68ba786d759eb8d76246d2000615b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2260152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:602e10ff97b47b5df92ef045d9843d538bac8fe711817eaee4e4394385301c00`

```dockerfile
```

-	Layers:
	-	`sha256:99b1cfb6d0d660f6ca884aa55376824cbdd806ca5468bb5e5603346e11d925bc`  
		Last Modified: Tue, 24 Nov 2026 04:15:38 GMT  
		Size: 2.2 MB (2242995 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f033c4175c543716df09fcd4b08d447f450b382f69b6b6613058526d82f8940a`  
		Last Modified: Tue, 24 Nov 2026 04:15:38 GMT  
		Size: 17.2 KB (17157 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:rc` - windows version 10.0.26100.33828; amd64

```console
$ docker pull julia@sha256:8dfe99e4df2d570a005a4f8e87a7eb7e519c7832891c57f6434d36b23b055a0d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2632359889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c73135b5aec64218062db9d77a00b0815026d76aa0c8a7513a334fc1aa18b6c`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Wed, 11 Nov 2026 23:09:50 GMT
RUN Install update 10.0.26100.33828
# Mon, 16 Nov 2026 19:53:52 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 16 Nov 2026 19:53:53 GMT
ENV JULIA_VERSION=1.14.0-beta1
# Mon, 16 Nov 2026 19:53:54 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.14/julia-1.14.0-beta1-win64.exe
# Mon, 16 Nov 2026 19:53:55 GMT
ENV JULIA_SHA256=91d2984f7dfa990e7ac500d19f6ff92bb7a210af43dbcc3fca1ba45d291a74de
# Mon, 16 Nov 2026 19:54:58 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Mon, 16 Nov 2026 19:54:59 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9defc15cca887258ad49b1f75aa00c54b7a6a070717bc0cd09bcae97046b4b3c`  
		Last Modified: Fri, 13 Nov 2026 18:53:03 GMT  
		Size: 884.0 MB (884008369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:906b11f6b971c9ec10e22f7c73bfa31b3907b2da7bb2c600a529c04428fdaaf1`  
		Last Modified: Mon, 16 Nov 2026 19:55:08 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae631ceb2d3518f81272f5d16abff1cb7b59c702e77edee41be0411d52849d0`  
		Last Modified: Mon, 16 Nov 2026 19:55:06 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e2e84a7af0c1e79d5aad9ca0e45e7faefc4dc0b931697db7db462b6f6d2a530`  
		Last Modified: Mon, 16 Nov 2026 19:55:06 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca1ebd55550ba065ea71c5cd57028af31324ce552759f6ec70939cb9e2f5220`  
		Last Modified: Mon, 16 Nov 2026 19:55:06 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972393111f5f5bb20110338b10f8b508413a041bdf389cb486929d6e1a53c76f`  
		Last Modified: Mon, 16 Nov 2026 19:55:33 GMT  
		Size: 225.3 MB (225285716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91fddadaec2a4279964a04a2b1e74f273122eedb4e6d8f8741158638c56d4627`  
		Last Modified: Mon, 16 Nov 2026 19:55:06 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:rc` - windows version 10.0.20348.5873; amd64

```console
$ docker pull julia@sha256:a5ed053812f16a7e18cf9da6f09d2d11ee775d289ca407a512971b7474da56ca
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2471377120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6819fd36ee65f5c3714031a159b7523458c5f56d446d2dc8de4a8ffadc709d6`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Thu, 12 Nov 2026 02:40:01 GMT
RUN Install update 10.0.20348.5873
# Mon, 16 Nov 2026 19:53:38 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 16 Nov 2026 19:53:39 GMT
ENV JULIA_VERSION=1.14.0-beta1
# Mon, 16 Nov 2026 19:53:40 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.14/julia-1.14.0-beta1-win64.exe
# Mon, 16 Nov 2026 19:53:42 GMT
ENV JULIA_SHA256=91d2984f7dfa990e7ac500d19f6ff92bb7a210af43dbcc3fca1ba45d291a74de
# Mon, 16 Nov 2026 19:54:55 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Mon, 16 Nov 2026 19:54:56 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514cbd3dfae445158cf4fa5649b0749cf2aab51510ffee9cbb4a56b3d3adc7d4`  
		Last Modified: Fri, 13 Nov 2026 18:51:30 GMT  
		Size: 757.1 MB (757071602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bdc4b4629459846fc9c6d7b2672783825a6e836f828d40126be8bc3e0d85ac`  
		Last Modified: Mon, 16 Nov 2026 19:55:05 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf301bf93590dec50673071b62131cc8290ac23fab6cbaca5f7bc37a284868a`  
		Last Modified: Mon, 16 Nov 2026 19:55:03 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:446d3a58712bb8a09a61371966015e88b7e6fd624f3319b693a11db6b8eaafaa`  
		Last Modified: Mon, 16 Nov 2026 19:55:03 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7f9574125895c95f97715900bb4227f3edb9fc612852959589868f3d8bdf669`  
		Last Modified: Mon, 16 Nov 2026 19:55:03 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d02cba5e77306ea0d8777504f6692486cee28a585781024cbc6fa50404e00c14`  
		Last Modified: Mon, 16 Nov 2026 19:55:32 GMT  
		Size: 225.3 MB (225279896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a625496fb90965843dc1aa5604f7aacbf01d622ca23208c4dc11f5fe6292c85`  
		Last Modified: Mon, 16 Nov 2026 19:55:03 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
