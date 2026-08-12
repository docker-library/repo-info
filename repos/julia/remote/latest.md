## `julia:latest`

```console
$ docker pull julia@sha256:3688355d393347055ab3fe866dbb4231e5840ab9808382618996958f6f4a2489
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

### `julia:latest` - linux; amd64

```console
$ docker pull julia@sha256:b11ce0cc9e3f7e341947116aa7d4e813e7014a93b5883164bd727a11d1e3add9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.6 MB (329627092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a880fcc11f6ea220ce9433f7ad0ab8d99f3a3e59264cab43f7eaae36ab712b8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 20:45:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 20:45:42 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 12 Aug 2026 20:45:42 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 20:45:42 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 12 Aug 2026 20:45:42 GMT
ENV JULIA_VERSION=1.12.6
# Wed, 12 Aug 2026 20:45:42 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.12/julia-1.12.6-linux-x86_64.tar.gz'; 			sha256='bbabf3bef19421a9dbd24a767d807606ab85e444323b5a1c73ffe293fa3d079a'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.12/julia-1.12.6-linux-i686.tar.gz'; 			sha256='2ab43d56adfe96c7b0b9ddab0e049f54f49df24049ec8b482c26737c42af28cd'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.12/julia-1.12.6-linux-aarch64.tar.gz'; 			sha256='029b93b857bd0ffd627f9a8580d3bbaa63daf008d7b7aed02fbceb8fd57c4899'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 12 Aug 2026 20:45:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 12 Aug 2026 20:45:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Aug 2026 20:45:42 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd3c4b4cc37a96dabba0871ccfb9a7ec729b78c79052f7b9cf7ef5b04a0148b5`  
		Last Modified: Wed, 12 Aug 2026 20:46:27 GMT  
		Size: 6.2 MB (6249086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acef7fb0716b0d27b9ca1e37337d29371542a4a8e2be10bd45483481845e27b6`  
		Last Modified: Wed, 12 Aug 2026 20:46:32 GMT  
		Size: 293.6 MB (293596875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7440b2a608897ce0a2569890ce07804fe612a93259873a1fb4bd588d278de454`  
		Last Modified: Wed, 12 Aug 2026 20:46:27 GMT  
		Size: 366.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:latest` - unknown; unknown

```console
$ docker pull julia@sha256:76ee536b4a2b8bc6439a1cf104e8adb9462e9fdc60fcdc49f29b301f12cabee7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2258218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:239e7dc6a7c95d6dcbbb4108260c11fe9264282e55c7815f4ac99a6e76fbe249`

```dockerfile
```

-	Layers:
	-	`sha256:c902c9d9013e598a95e1e7cde5fa3b45d4f402acfd683c61f582bd77586a0de9`  
		Last Modified: Wed, 12 Aug 2026 20:46:27 GMT  
		Size: 2.2 MB (2240517 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e1e70370ed1b87e5a4adef7db72bebf0fa57a260689cf203fb56d0f67a08b5f`  
		Last Modified: Wed, 12 Aug 2026 20:46:27 GMT  
		Size: 17.7 KB (17701 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:latest` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:f04b54e53b34f6fc595b4a4b50f1e64936c3efb69abf21601053c3582b48f208
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.6 MB (350586097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad6227a45ee1fa4a2ce4bddecec7ff7065fb33770347b6aa0e7a355231039335`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 20:45:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 20:45:48 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 12 Aug 2026 20:45:48 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 20:45:48 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 12 Aug 2026 20:45:48 GMT
ENV JULIA_VERSION=1.12.6
# Wed, 12 Aug 2026 20:45:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.12/julia-1.12.6-linux-x86_64.tar.gz'; 			sha256='bbabf3bef19421a9dbd24a767d807606ab85e444323b5a1c73ffe293fa3d079a'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.12/julia-1.12.6-linux-i686.tar.gz'; 			sha256='2ab43d56adfe96c7b0b9ddab0e049f54f49df24049ec8b482c26737c42af28cd'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.12/julia-1.12.6-linux-aarch64.tar.gz'; 			sha256='029b93b857bd0ffd627f9a8580d3bbaa63daf008d7b7aed02fbceb8fd57c4899'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 12 Aug 2026 20:45:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 12 Aug 2026 20:45:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Aug 2026 20:45:48 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eab5292e3d937059d093cdd3461b4b9bbb5fe14ba73b2634e312bc12331385f4`  
		Last Modified: Wed, 12 Aug 2026 20:46:34 GMT  
		Size: 6.2 MB (6155930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b7176d4f2099a0893d8798be7febc77db8b88ef1f8c25f2a57b90a81aebca83`  
		Last Modified: Wed, 12 Aug 2026 20:46:40 GMT  
		Size: 314.3 MB (314286193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a469b45e08c91895e3dd1105cd746301cc3a936b2cca7513ae9dc82aa6bd66e8`  
		Last Modified: Wed, 12 Aug 2026 20:46:34 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:latest` - unknown; unknown

```console
$ docker pull julia@sha256:b10715637690fc0086c24de6d3a5d85cc689885d7b98b00cb19fa62dfd32a1ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2258709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1f4ecb5aaa0ac50d2bb19ca2c64070d7b46ce4b91846fd16e63a087af7ddd9e`

```dockerfile
```

-	Layers:
	-	`sha256:b2998a94a5587e8ad62ce2f2d68d243489b463ba26c053bfe9a9f65215b34e1b`  
		Last Modified: Wed, 12 Aug 2026 20:46:34 GMT  
		Size: 2.2 MB (2240841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c8adb3cd90db18bd34bf67613edf4593cddde9f41d0b68c288252e14ad796c87`  
		Last Modified: Wed, 12 Aug 2026 20:46:34 GMT  
		Size: 17.9 KB (17868 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:latest` - linux; 386

```console
$ docker pull julia@sha256:5f557709d167593fa8ae8340cb5777e89b5cf8ff6a9fd55b8bc6e9164d9a59b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270226359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89e5b9b70c6e74bfa42396c43e63058b1cb4bb130d323932165702f5ce899bed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 20:45:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 20:45:50 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 12 Aug 2026 20:45:50 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 20:45:50 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 12 Aug 2026 20:45:50 GMT
ENV JULIA_VERSION=1.12.6
# Wed, 12 Aug 2026 20:45:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.12/julia-1.12.6-linux-x86_64.tar.gz'; 			sha256='bbabf3bef19421a9dbd24a767d807606ab85e444323b5a1c73ffe293fa3d079a'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.12/julia-1.12.6-linux-i686.tar.gz'; 			sha256='2ab43d56adfe96c7b0b9ddab0e049f54f49df24049ec8b482c26737c42af28cd'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.12/julia-1.12.6-linux-aarch64.tar.gz'; 			sha256='029b93b857bd0ffd627f9a8580d3bbaa63daf008d7b7aed02fbceb8fd57c4899'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 12 Aug 2026 20:45:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 12 Aug 2026 20:45:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Aug 2026 20:45:50 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:311b26cfa6b9aedb9c35bd9a9ce5c9fb13add824446bae9f72de3efd7775647d`  
		Last Modified: Tue, 04 Aug 2026 23:52:24 GMT  
		Size: 31.3 MB (31296269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78623a6e0fd4087319f9a263fba20483db21b659b5ccab4ac65665a821844cab`  
		Last Modified: Wed, 12 Aug 2026 20:46:23 GMT  
		Size: 6.4 MB (6436175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e95cc1d8b185f10f8a94c18405aab553fc9b3a972ca38a116e6bdcddd0b6e1ce`  
		Last Modified: Wed, 12 Aug 2026 20:46:27 GMT  
		Size: 232.5 MB (232493545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4bf0bd0806b635c59a454ca492e13049a4aa0794557730710944bb10fab51d9`  
		Last Modified: Wed, 12 Aug 2026 20:46:22 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:latest` - unknown; unknown

```console
$ docker pull julia@sha256:cf82702d386eb45cc41831a4dba23e1b15366ffc8a45550c876fcfe56e8d3d53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2255289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffa1128c6bc36068329c04d6903032fe80372b0787fe19200a621a3205328dbb`

```dockerfile
```

-	Layers:
	-	`sha256:32eccfb5ccd9428ff74c9a40f120691f333cabb4fd004e218647fdee75df34f1`  
		Last Modified: Wed, 12 Aug 2026 20:46:22 GMT  
		Size: 2.2 MB (2237642 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:745d492363e554c8b1d3b24af9d82b600d83d265968fb32edf8c44ee604ebfe5`  
		Last Modified: Wed, 12 Aug 2026 20:46:22 GMT  
		Size: 17.6 KB (17647 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:latest` - windows version 10.0.26100.33296; amd64

```console
$ docker pull julia@sha256:d20afe82cb0e8b975bae2a738cacaa9eca950054c9ca511f670cf370acf0764c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2729307070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f707134f65a78e492a0f7d4d42afa39a7c5ac7b5db10de8e62f4136e094a482c`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 17:34:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Aug 2026 17:34:09 GMT
ENV JULIA_VERSION=1.12.6
# Wed, 12 Aug 2026 17:34:11 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.12/julia-1.12.6-win64.exe
# Wed, 12 Aug 2026 17:34:12 GMT
ENV JULIA_SHA256=de2d50f23995d71c224423a4872673a4e9be2c9676fc975cd90b25fc3a5e6cb6
# Wed, 12 Aug 2026 17:36:59 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Wed, 12 Aug 2026 17:37:00 GMT
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
	-	`sha256:c3bf9629e3b114b952c8857ccb303d4df4a5bcdeb86edb8a93fcb5278560c99d`  
		Last Modified: Wed, 12 Aug 2026 17:37:12 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c66e35171a44daa0abfe6714e83dc60a734a0afd539a8d65b7b63487a69c0635`  
		Last Modified: Wed, 12 Aug 2026 17:37:11 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ef132e897fe6a0a811405f49a2940cb155f584be990730d2f2f9215913054f7`  
		Last Modified: Wed, 12 Aug 2026 17:37:11 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade3d89d423e991811ccf2f92a10725e2c751c7b2df440e90bfacd28b10be891`  
		Last Modified: Wed, 12 Aug 2026 17:37:11 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4c2e1fd3c49380ed8f88b799d99048e217e06a54fc20c91d3a4f398cbbbe44`  
		Last Modified: Wed, 12 Aug 2026 17:37:50 GMT  
		Size: 288.5 MB (288515187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fff1b84e3c8881ccf6f1866bfa0f566ff46aec8d1db7a6f7c74be2878bcdd44`  
		Last Modified: Wed, 12 Aug 2026 17:37:11 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:latest` - windows version 10.0.20348.5499; amd64

```console
$ docker pull julia@sha256:899260cb3ae4d521f3c6b9383847cb695dc7c0419d4299be2756663267145279
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2472463667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b63ec13740c341ce14664da2997bbe37ac7b05a200f65db62f41f21c96c07ee`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Wed, 12 Aug 2026 17:34:07 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Aug 2026 17:34:09 GMT
ENV JULIA_VERSION=1.12.6
# Wed, 12 Aug 2026 17:34:09 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.12/julia-1.12.6-win64.exe
# Wed, 12 Aug 2026 17:34:10 GMT
ENV JULIA_SHA256=de2d50f23995d71c224423a4872673a4e9be2c9676fc975cd90b25fc3a5e6cb6
# Wed, 12 Aug 2026 17:36:16 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Wed, 12 Aug 2026 17:36:18 GMT
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
	-	`sha256:fb17e968ab4db14cc4d26ad366c8456708ec05f49c5df15e8bf9876ff1323c40`  
		Last Modified: Wed, 12 Aug 2026 17:36:24 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b6b86fa2b7d1cc75df3f084db319a603e9cf5628b37d33a312c56d131a238cf`  
		Last Modified: Wed, 12 Aug 2026 17:36:23 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0054777b2b7e6c5041c1f72a2cc81d89a1ce4344fcc753c4696f48522b6ece4`  
		Last Modified: Wed, 12 Aug 2026 17:36:23 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea51ee594ea28b167b340ef01bc62b70648e7a0165f4104dc57a22f126507475`  
		Last Modified: Wed, 12 Aug 2026 17:36:23 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc09f0202734007ee9abf851a0192ee104e6d04cd61b52204d578e416796dbb`  
		Last Modified: Wed, 12 Aug 2026 17:36:59 GMT  
		Size: 288.5 MB (288459686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67b77e03d11a1c909a33a9c1e43ec469b12645147893082b31f723d40e36e3ad`  
		Last Modified: Wed, 12 Aug 2026 17:36:23 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
