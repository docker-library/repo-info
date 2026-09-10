## `julia:latest`

```console
$ docker pull julia@sha256:a1fbd9d099a0517bdb70e7471955f09dc92beb822e7a5a74938f7ec8d5682693
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `julia:latest` - linux; amd64

```console
$ docker pull julia@sha256:7b089e985164efb83c5441e58cd486d130ec8c716dccecdb4e5b20b948061807
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.8 MB (329827391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee50bf0dbbb7a78e80f53af6683782906cc29e9fe4fe7c20107990646ffd77e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:20:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:21:06 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 25 Aug 2026 00:21:06 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:21:06 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 25 Aug 2026 00:21:06 GMT
ENV JULIA_VERSION=1.12.7
# Tue, 25 Aug 2026 00:21:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.12/julia-1.12.7-linux-x86_64.tar.gz'; 			sha256='4e7e9e776634d24835250de67cde39b0d4af15bc432eb20697e6be6c28ea69e8'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.12/julia-1.12.7-linux-i686.tar.gz'; 			sha256='1e342bcabd859ada16efe7022e4075bca74814874e6878ee34cc9313dcb7ecf3'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.12/julia-1.12.7-linux-aarch64.tar.gz'; 			sha256='9243c0b524c7f300883240a1ee5ea3916a30e070bff718acf8ccaee31a731ef2'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 25 Aug 2026 00:21:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:21:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:21:07 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bddda212c9235b07c5e08105aac4c4907908358ca91c6eeeaa1395b6c43beed`  
		Last Modified: Tue, 25 Aug 2026 00:21:52 GMT  
		Size: 6.2 MB (6249075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9133cdba426f7d8fe18dd423ec546e9ad5fe8b8b26be56db9735088939ce886f`  
		Last Modified: Tue, 25 Aug 2026 00:21:57 GMT  
		Size: 293.8 MB (293785286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:934ab8bec859b4b8fe5ae402a3f1a4ad497c76f58bdd5014b9040d760725f5b3`  
		Last Modified: Tue, 25 Aug 2026 00:21:51 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:latest` - unknown; unknown

```console
$ docker pull julia@sha256:4dbfa055341e4ea16c33e77b80d01a11a3bee1b4f24d089aec1467b05244a8ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2258416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c59020a507d3be7dee8427d5991280e37c54086092ff93032c95359902a9d160`

```dockerfile
```

-	Layers:
	-	`sha256:decef49f60ba332e7a0a22dd474157a9fb9e822987ea8768edd3e15badffa79e`  
		Last Modified: Tue, 25 Aug 2026 00:21:51 GMT  
		Size: 2.2 MB (2240715 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d03153f58ad4a5f8492f2dc6e8d39bb198794bcc47480dbd6f9beee3b2fbc77`  
		Last Modified: Tue, 25 Aug 2026 00:21:51 GMT  
		Size: 17.7 KB (17701 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:latest` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:90b1dfb0ff5256c72ecd60e5b7f5bedd9ee77edab94128401c0099e581fdfe30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.8 MB (350785398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a65098712b5489ace588959709555587dbcb06b9bcdcc913c24c5c2e26aff454`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:20:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:20:50 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 25 Aug 2026 00:20:50 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:20:50 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 25 Aug 2026 00:20:50 GMT
ENV JULIA_VERSION=1.12.7
# Tue, 25 Aug 2026 00:20:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.12/julia-1.12.7-linux-x86_64.tar.gz'; 			sha256='4e7e9e776634d24835250de67cde39b0d4af15bc432eb20697e6be6c28ea69e8'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.12/julia-1.12.7-linux-i686.tar.gz'; 			sha256='1e342bcabd859ada16efe7022e4075bca74814874e6878ee34cc9313dcb7ecf3'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.12/julia-1.12.7-linux-aarch64.tar.gz'; 			sha256='9243c0b524c7f300883240a1ee5ea3916a30e070bff718acf8ccaee31a731ef2'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 25 Aug 2026 00:20:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:20:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:20:50 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8903accefbbb3e34ba388f4e2394916114bddd5d03191a246a89f41eef9f5c8b`  
		Last Modified: Tue, 25 Aug 2026 00:21:36 GMT  
		Size: 6.2 MB (6156054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a9c2524531d549328279ec7673d644699ba06525bfe8646f2737b1ffa92b986`  
		Last Modified: Tue, 25 Aug 2026 00:21:42 GMT  
		Size: 314.5 MB (314469390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8198a26c215a600d219c625933ed93d26179e990b9a2309f6159dae436c4ea7d`  
		Last Modified: Tue, 25 Aug 2026 00:21:36 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:latest` - unknown; unknown

```console
$ docker pull julia@sha256:3e706975bc1358a9f52907f511baf89188b303f9502d8990a829dd9fef0bab43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2258907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6c4654f4b4cfb0db01d7d3185ac0d30a66715a9434692b141ca3bc9fe55ec9e`

```dockerfile
```

-	Layers:
	-	`sha256:a2d11c336c9b3493a3f18b76559d06f115db161ae9c6531134780118eab4f734`  
		Last Modified: Tue, 25 Aug 2026 00:21:36 GMT  
		Size: 2.2 MB (2241039 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d94d26a9b17e7abe29b8825c1190f3fb5aa5ab62e0e7410add2dc2178eae43c`  
		Last Modified: Tue, 25 Aug 2026 00:21:36 GMT  
		Size: 17.9 KB (17868 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:latest` - linux; 386

```console
$ docker pull julia@sha256:f8743722a2427d5254522a8e9dde2f24c42fb6e7d3381399ff9251e67fc09c82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270269658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11fc1578949fdfab6525699a19d1e42f2e784657403da2f685d13d0e5997becc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:16:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:17:15 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 25 Aug 2026 00:17:15 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:17:15 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 25 Aug 2026 00:17:15 GMT
ENV JULIA_VERSION=1.12.7
# Tue, 25 Aug 2026 00:17:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.12/julia-1.12.7-linux-x86_64.tar.gz'; 			sha256='4e7e9e776634d24835250de67cde39b0d4af15bc432eb20697e6be6c28ea69e8'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.12/julia-1.12.7-linux-i686.tar.gz'; 			sha256='1e342bcabd859ada16efe7022e4075bca74814874e6878ee34cc9313dcb7ecf3'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.12/julia-1.12.7-linux-aarch64.tar.gz'; 			sha256='9243c0b524c7f300883240a1ee5ea3916a30e070bff718acf8ccaee31a731ef2'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 25 Aug 2026 00:17:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:17:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:17:15 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb90ed3baa818522a9754de0d26001a647d7651e3b4593f65f7dc9bbe26522c7`  
		Last Modified: Tue, 25 Aug 2026 00:17:45 GMT  
		Size: 6.4 MB (6436167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2367435c2d5c20abf173a5e6bafb2830c3e3fa40309d8641c0af953d4bb4997`  
		Last Modified: Tue, 25 Aug 2026 00:17:49 GMT  
		Size: 232.5 MB (232529723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ba1b7d28bff74dbe9cc9ccc20f897888f57d8bc1298f8dec306f4165f2b6971`  
		Last Modified: Tue, 25 Aug 2026 00:17:45 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:latest` - unknown; unknown

```console
$ docker pull julia@sha256:1e9c77a1479411a501b9f6243856f522a984a6e3b84d78d21519627b608d463c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2255487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7bf5a5dff1e68e6338883f9feecfc143610557ce2a5bfb5a7276a784d42be3a`

```dockerfile
```

-	Layers:
	-	`sha256:93ba942e5e0d66e49347a92c70c64a0f8d9f2e4af7c2c10a90363bd863697031`  
		Last Modified: Tue, 25 Aug 2026 00:17:45 GMT  
		Size: 2.2 MB (2237840 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a835a5c8f8fc814f2f8bdf8904b95cf7c46b9613f7dbdb19fe36e12f47ab0cc7`  
		Last Modified: Tue, 25 Aug 2026 00:17:45 GMT  
		Size: 17.6 KB (17647 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:latest` - windows version 10.0.26100.33438; amd64

```console
$ docker pull julia@sha256:f65e4f93c1ec7523384675e9584975b474a598cb82864dcf93d573a864c6b79d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2751709054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adc1ca75ad10307163b653905814310b58186f6f53be76cce4f88b62420f0e45`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Wed, 09 Sep 2026 22:32:00 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:32:02 GMT
ENV JULIA_VERSION=1.12.7
# Wed, 09 Sep 2026 22:32:04 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.12/julia-1.12.7-win64.exe
# Wed, 09 Sep 2026 22:32:05 GMT
ENV JULIA_SHA256=7d5113091702be4ea6eaa99f06896471fa5f3574d34fbb77826a59e279be9765
# Wed, 09 Sep 2026 22:34:14 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:34:15 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ad760a8a0dac5abb352847ef76295f82b76df46372259a4df2102ad3adf78b`  
		Last Modified: Tue, 08 Sep 2026 17:45:23 GMT  
		Size: 934.6 MB (934570301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b5a66eab7b5f15a463aff8ab14f48b32e2cc705064cf8d7586423813256d87`  
		Last Modified: Wed, 09 Sep 2026 22:34:24 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878a99a158c44bf1c8f66f4bdbe27cc165a77630c69edf804fb78894a9be685f`  
		Last Modified: Wed, 09 Sep 2026 22:34:22 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07196a148fa8439c97b96151ffdf994e9ccf4168c1beef9f9dfa8b1791c22e8e`  
		Last Modified: Wed, 09 Sep 2026 22:34:22 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26d61292cb0208966985f48478d7afc7da32c6f6297fe421522086ea9914df2`  
		Last Modified: Wed, 09 Sep 2026 22:34:22 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2a1812b06aeeaf9cc9fb214e327007554816a3cdbeb6ad68d9c4e66bcd74550`  
		Last Modified: Wed, 09 Sep 2026 22:35:00 GMT  
		Size: 294.1 MB (294073033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf2065a54e97a1ada99008921a49dca6c2c0dd4c951cb8cba238142c34fe45cf`  
		Last Modified: Wed, 09 Sep 2026 22:34:22 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:latest` - windows version 10.0.20348.5622; amd64

```console
$ docker pull julia@sha256:5aac309b621a781f08929e7c8b91e0a122d07bba9170a679234b1836d60a2ae9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2513528866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef25be7e1741eae683993b3bbfcfc541f52c3eae14f56700666ad793b4a6ad33`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 09 Sep 2026 22:32:07 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:32:08 GMT
ENV JULIA_VERSION=1.12.7
# Wed, 09 Sep 2026 22:32:09 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.12/julia-1.12.7-win64.exe
# Wed, 09 Sep 2026 22:32:10 GMT
ENV JULIA_SHA256=7d5113091702be4ea6eaa99f06896471fa5f3574d34fbb77826a59e279be9765
# Wed, 09 Sep 2026 22:35:33 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:35:35 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb36326a4e986b5e7ed3fd205237f394d9a2010ffa93cad75dc842869f221b50`  
		Last Modified: Wed, 09 Sep 2026 22:35:41 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d479fbbc633113514f7530f6a8f3a62e115ec4e62fa4ea1bbf51f1413cac5261`  
		Last Modified: Wed, 09 Sep 2026 22:35:39 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc570be5314cc5395d197a249e2ff4b785a29814cf31802c8718d2a1b0464a55`  
		Last Modified: Wed, 09 Sep 2026 22:35:39 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77df91a519a3a7b807376f275788588ac2bfd5c14d1da021b92e0499740e2117`  
		Last Modified: Wed, 09 Sep 2026 22:35:39 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a36d37eddf474a01b520bf355950aba1731f7f3acbe72200df96c59dea987e3`  
		Last Modified: Wed, 09 Sep 2026 22:36:20 GMT  
		Size: 294.0 MB (294033583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787909ac6c5a85d23b5841dd25c34ba5b9b0a808db848d7ecbd86cb97dd7223f`  
		Last Modified: Wed, 09 Sep 2026 22:35:40 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
