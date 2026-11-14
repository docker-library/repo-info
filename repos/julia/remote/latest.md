## `julia:latest`

```console
$ docker pull julia@sha256:8cb392ab667d1961e12ec772d4854adcbf2bb16d5c4c8cd8438877b9d1c10e16
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	windows version 10.0.26100.33822; amd64
	-	windows version 10.0.20348.5870; amd64

### `julia:latest` - linux; amd64

```console
$ docker pull julia@sha256:39ae58bf258bb705cb91d961c37ecae19b906ff695d61e611b69e522e01fa7c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.4 MB (341422453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:152a4fec5bc90da39f891e1397a4ae79958540945e944f938763d4a250f4ff94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Sat, 14 Nov 2026 00:16:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 14 Nov 2026 00:17:10 GMT
ENV JULIA_PATH=/usr/local/julia
# Sat, 14 Nov 2026 00:17:10 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Nov 2026 00:17:10 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Sat, 14 Nov 2026 00:17:10 GMT
ENV JULIA_VERSION=1.13.4
# Sat, 14 Nov 2026 00:17:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.4-linux-x86_64.tar.gz'; 			sha256='cf1658f13b91facccd57d41464d7125a0e48a1d24f49062d71532d04d4ec4130'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.4-linux-i686.tar.gz'; 			sha256='85ca7420927871c2e0b501481bf09908ef4e2821b5617db3ab569ddaa57e6074'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.4-linux-aarch64.tar.gz'; 			sha256='d1814cb51e49a1ecd0c95ff0e4ac267ec5ddaba051f5eed2d866d55e40274de5'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Sat, 14 Nov 2026 00:17:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 14 Nov 2026 00:17:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 14 Nov 2026 00:17:10 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c179e580b86bfa956a9e24de0978c66d3be713c7535cab2a03179b37885a06f2`  
		Last Modified: Sat, 14 Nov 2026 00:17:52 GMT  
		Size: 6.2 MB (6247565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50027542bd0971f464a8ff9b1c11b4d64ec828d1fbd18a83ad60ed2b8b419535`  
		Last Modified: Sat, 14 Nov 2026 00:17:57 GMT  
		Size: 305.3 MB (305318383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6b67b71a97e5a8ec6adf1fe06325700f8df8ab62128b2745e735f7841fc2539`  
		Last Modified: Sat, 14 Nov 2026 00:17:51 GMT  
		Size: 373.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:latest` - unknown; unknown

```console
$ docker pull julia@sha256:a0b7ddd7eae7939e0f186f7145557d11eb2454454e85158f4344e327e6df57f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2264085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a97ba74225959a4f4490e4a1938b52d9ff1fe5cb915a358d68e93682ab1480e`

```dockerfile
```

-	Layers:
	-	`sha256:63440523665a22faf0e8329e4fe62eb9dbd04b15ec8a1aab87f062b11f7d6459`  
		Last Modified: Sat, 14 Nov 2026 00:17:51 GMT  
		Size: 2.2 MB (2246384 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fbd2b2ebd7eb6f0fa679dd83679216b2004b221bf6c9fe7ef128524e3d213e41`  
		Last Modified: Sat, 14 Nov 2026 00:17:51 GMT  
		Size: 17.7 KB (17701 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:latest` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:293174f99d05edb6c9816a99dea7eb208dbac060b06653e3e1f6fe440a6dae44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.4 MB (364384943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1a1e07a73de9a75c57762672f2575ad186eda229e7895d4408a2bcf537caf57`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Sat, 14 Nov 2026 00:16:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 14 Nov 2026 00:17:18 GMT
ENV JULIA_PATH=/usr/local/julia
# Sat, 14 Nov 2026 00:17:18 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Nov 2026 00:17:18 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Sat, 14 Nov 2026 00:17:18 GMT
ENV JULIA_VERSION=1.13.4
# Sat, 14 Nov 2026 00:17:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.4-linux-x86_64.tar.gz'; 			sha256='cf1658f13b91facccd57d41464d7125a0e48a1d24f49062d71532d04d4ec4130'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.4-linux-i686.tar.gz'; 			sha256='85ca7420927871c2e0b501481bf09908ef4e2821b5617db3ab569ddaa57e6074'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.4-linux-aarch64.tar.gz'; 			sha256='d1814cb51e49a1ecd0c95ff0e4ac267ec5ddaba051f5eed2d866d55e40274de5'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Sat, 14 Nov 2026 00:17:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 14 Nov 2026 00:17:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 14 Nov 2026 00:17:18 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4b0b11f627a0b69e617588eeb67a2dbc8e4a8ccbb3bfd33133b9a8225665bf7`  
		Last Modified: Sat, 14 Nov 2026 00:18:06 GMT  
		Size: 6.2 MB (6153931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d8634a3db036551eae00bec48e731dec14aade95ec59be1e4de1eb8ed875010`  
		Last Modified: Sat, 14 Nov 2026 00:18:12 GMT  
		Size: 328.0 MB (328016602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0f5eea28ddb7bae4cd6ec99b590129ddd2cb0c2e9939f4c9870e535b5feb83e`  
		Last Modified: Sat, 14 Nov 2026 00:18:05 GMT  
		Size: 373.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:latest` - unknown; unknown

```console
$ docker pull julia@sha256:3596004808cb614d87ca8de80331f7c3f75d350217b6f20307a23848d3895991
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2264576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2062f92ea9d6a72a0b09dec85a75deeea3a6dc8d31fcd3b0e27b036512b82ba7`

```dockerfile
```

-	Layers:
	-	`sha256:b9e78e2d77d82b6100bce00db46c1b8e2d8eda225fabc66c1cc65e457caf78d5`  
		Last Modified: Sat, 14 Nov 2026 00:18:06 GMT  
		Size: 2.2 MB (2246708 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:16b2818ae5a7ba0824e4d60c57476b6ad82ea6359db35023f63acc73f2b2c834`  
		Last Modified: Sat, 14 Nov 2026 00:18:06 GMT  
		Size: 17.9 KB (17868 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:latest` - linux; 386

```console
$ docker pull julia@sha256:829cd9c5ff72c49b633aacc1c48d89752df5437186c01df97aae3df35111c136
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.3 MB (281266910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a943c0527f214b752336f4c4917e119a672e2ed6ef730c927fe5f06956390bb7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Sat, 14 Nov 2026 00:17:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 14 Nov 2026 00:17:22 GMT
ENV JULIA_PATH=/usr/local/julia
# Sat, 14 Nov 2026 00:17:22 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Nov 2026 00:17:22 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Sat, 14 Nov 2026 00:17:22 GMT
ENV JULIA_VERSION=1.13.4
# Sat, 14 Nov 2026 00:17:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.4-linux-x86_64.tar.gz'; 			sha256='cf1658f13b91facccd57d41464d7125a0e48a1d24f49062d71532d04d4ec4130'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.4-linux-i686.tar.gz'; 			sha256='85ca7420927871c2e0b501481bf09908ef4e2821b5617db3ab569ddaa57e6074'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.4-linux-aarch64.tar.gz'; 			sha256='d1814cb51e49a1ecd0c95ff0e4ac267ec5ddaba051f5eed2d866d55e40274de5'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Sat, 14 Nov 2026 00:17:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 14 Nov 2026 00:17:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 14 Nov 2026 00:17:22 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00d6479347054df9c1a8a9a04a93ba2c2316dcd75359eb14be3d22dd7a725028`  
		Last Modified: Sat, 14 Nov 2026 00:17:56 GMT  
		Size: 6.4 MB (6432494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22a08bcab9153c06cefc9fb6ce1d1550843898fbc4be21b69b21ed5bae469272`  
		Last Modified: Sat, 14 Nov 2026 00:18:00 GMT  
		Size: 243.5 MB (243463282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65416a1d67c0bb3fd724a95617f4cf4f6877d5e41e1e209765109dbb10c908a1`  
		Last Modified: Sat, 14 Nov 2026 00:17:55 GMT  
		Size: 375.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:latest` - unknown; unknown

```console
$ docker pull julia@sha256:8bbf7602addea339fca53398b87b118cc8c71667cc39bcdb93240465f56e655b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2261155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:354c846f720f56f89c0a30a7f017fdb33b79bd18b18d1cfd4d64511bbf6489bf`

```dockerfile
```

-	Layers:
	-	`sha256:0d444234e74e2484e763a24acbd4edbe3ebcd4cf0686e2db58a7001e77710a50`  
		Last Modified: Sat, 14 Nov 2026 00:17:55 GMT  
		Size: 2.2 MB (2243509 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e051a1cf187873091b20a2c31a7a539b7c4dac388285f0f25514a3e32aa75afa`  
		Last Modified: Sat, 14 Nov 2026 00:17:55 GMT  
		Size: 17.6 KB (17646 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:latest` - windows version 10.0.26100.33822; amd64

```console
$ docker pull julia@sha256:8a3b24677bcfd0f713e9a8f28e435e492707c1936a381154616ba37484583dac
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2716944868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f4023d4554c92a9bb00da7411cc12f098b95a662da27d618ff33760ddf8cfff`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Mon, 09 Nov 2026 13:42:43 GMT
RUN Install update 10.0.26100.33822
# Sat, 14 Nov 2026 00:20:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 14 Nov 2026 00:20:18 GMT
ENV JULIA_VERSION=1.13.4
# Sat, 14 Nov 2026 00:20:19 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.4-win64.exe
# Sat, 14 Nov 2026 00:20:21 GMT
ENV JULIA_SHA256=3c8379cc34b51616b9d2b3014c75c57f14afd3ea940bf540cbdf9ae339224b58
# Sat, 14 Nov 2026 00:22:35 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Sat, 14 Nov 2026 00:22:36 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a01aa8c296f8ae8139a1d427afdba7dbdd8dc375687e3ae8dc46c1975fbab554`  
		Last Modified: Tue, 10 Nov 2026 19:11:08 GMT  
		Size: 884.3 MB (884271544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57b9394c0dfd52cb6f86cb8951546cc90e772e7f269cb36bf35d357660c87581`  
		Last Modified: Sat, 14 Nov 2026 00:22:42 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6142a4d0b6a0817018e0a55cf7dad0bcec6d2f23647c05226a94d7b3f2b38b`  
		Last Modified: Sat, 14 Nov 2026 00:22:40 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397d1e92acbf5c7e7b2b2f60248f7302d9cf1afb1bf85811ec0e7fec0e42f135`  
		Last Modified: Sat, 14 Nov 2026 00:22:40 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:188748ec5c5a93e6357c449c31ffff57bb51df58f3fa5d472c0001410ab083b6`  
		Last Modified: Sat, 14 Nov 2026 00:22:40 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ac3090252b6bceebaa693b77631f350a1fc89c86c26c2dae348305f9c347e1c`  
		Last Modified: Sat, 14 Nov 2026 00:23:18 GMT  
		Size: 309.6 MB (309607519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d04f6e27657c31c5ae2eef1b9684793c4025e84cc0303dafcd3bd38b2ee9ee`  
		Last Modified: Sat, 14 Nov 2026 00:22:40 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:latest` - windows version 10.0.20348.5870; amd64

```console
$ docker pull julia@sha256:09774526e8ee8eda5da780ed439cf7500e4ab5cc247ea33bad73d168295fd622
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2555940969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2f2f68286ad868c29b68e0ce090b0a2ac1c83907ff8cdcb9ef6a272dbbc0ae5`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Mon, 09 Nov 2026 05:20:19 GMT
RUN Install update 10.0.20348.5870
# Sat, 14 Nov 2026 00:43:24 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 14 Nov 2026 00:43:26 GMT
ENV JULIA_VERSION=1.13.4
# Sat, 14 Nov 2026 00:43:27 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.4-win64.exe
# Sat, 14 Nov 2026 00:43:29 GMT
ENV JULIA_SHA256=3c8379cc34b51616b9d2b3014c75c57f14afd3ea940bf540cbdf9ae339224b58
# Sat, 14 Nov 2026 00:48:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Sat, 14 Nov 2026 00:48:07 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd5ae99c0fb6e4764ec90d45aff46ebe7e1ee0a121f0a99525b9520a53c5103`  
		Last Modified: Tue, 10 Nov 2026 19:02:01 GMT  
		Size: 757.3 MB (757328679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e846341c5bdbf9be6570bc9683fbaedf58d31907e2caf235d0cbde4c4837da5`  
		Last Modified: Sat, 14 Nov 2026 00:48:19 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6494e9e415a9a3361c1a5e3073b664c1548393227686bcd5b791a1951b8cef0`  
		Last Modified: Sat, 14 Nov 2026 00:48:17 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7881e0cd59c754b1594455c7dd37c94c7b34b8e8917e39d8a6217291342f70bc`  
		Last Modified: Sat, 14 Nov 2026 00:48:17 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:180f985471f843e2664b1bed42899bcdfd7f1bfa218b0e50cbdd6a5a0a47894d`  
		Last Modified: Sat, 14 Nov 2026 00:48:17 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c65ed38afc59deef88582a07499b51ae0bd7f4fc89fda8ee211e9b883cb44a1`  
		Last Modified: Sat, 14 Nov 2026 00:48:55 GMT  
		Size: 309.6 MB (309586661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1071ea026a8619f1ea1994a6c8102b98131f098568748201385085767b905243`  
		Last Modified: Sat, 14 Nov 2026 00:48:17 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
