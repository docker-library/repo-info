## `julia:latest`

```console
$ docker pull julia@sha256:8a6c6307d7034c4966e89dc95758d8a36d2a028cfbfc92a938b9b406a6a40564
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	windows version 10.0.26100.32995; amd64
	-	windows version 10.0.20348.5256; amd64

### `julia:latest` - linux; amd64

```console
$ docker pull julia@sha256:541af3b03871b928acf280eff1a9f13a7f57f4285283fbc6707db31e80bdff1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.6 MB (329627280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cd2462584f69b7c7b04e8be8fbef7950862077bcc9a397e329328b1f36ad95d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:20:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:21:12 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 14 Jul 2026 01:21:12 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 01:21:12 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 14 Jul 2026 01:21:12 GMT
ENV JULIA_VERSION=1.12.6
# Tue, 14 Jul 2026 01:21:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.12/julia-1.12.6-linux-x86_64.tar.gz'; 			sha256='bbabf3bef19421a9dbd24a767d807606ab85e444323b5a1c73ffe293fa3d079a'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.12/julia-1.12.6-linux-i686.tar.gz'; 			sha256='2ab43d56adfe96c7b0b9ddab0e049f54f49df24049ec8b482c26737c42af28cd'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.12/julia-1.12.6-linux-aarch64.tar.gz'; 			sha256='029b93b857bd0ffd627f9a8580d3bbaa63daf008d7b7aed02fbceb8fd57c4899'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 14 Jul 2026 01:21:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:21:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:21:12 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36aff873fc361682c44622b90ebccc471d31fd27849fe475515f75287855dc04`  
		Last Modified: Tue, 14 Jul 2026 01:21:58 GMT  
		Size: 6.2 MB (6249086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a924aeb8cd31ab79e5b633667fb697ee956c19eaae8b464b71abc3b2260c633`  
		Last Modified: Tue, 14 Jul 2026 01:22:03 GMT  
		Size: 293.6 MB (293596918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:664617a6abacee400a547642bdeef2794e6f4e73fef0fcbfe78150e0a217a773`  
		Last Modified: Tue, 14 Jul 2026 01:21:57 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:latest` - unknown; unknown

```console
$ docker pull julia@sha256:2591b840fdf6075739e200c52f001414d4710744f4cff90a4fbf365f47c49848
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2258206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e56358475ef6c823c434af658224d278ac42b307e34f60bdf6f872209af0c696`

```dockerfile
```

-	Layers:
	-	`sha256:664558ce886b07a6723a7fd7b614f32bd4b460b24918a7ae539c6134537c59a9`  
		Last Modified: Tue, 14 Jul 2026 01:21:58 GMT  
		Size: 2.2 MB (2240517 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d6b505297cb0fae8f349232b491a67ac1a6126a975a0258e421939656bceed7`  
		Last Modified: Tue, 14 Jul 2026 01:21:57 GMT  
		Size: 17.7 KB (17689 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:latest` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:aaa8e188250c9c8aabf626c97a6a89509f27d5b8bdd892cd6b096d6f4c13e5b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.6 MB (350586251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ca3f518078236df648aeb8bbc4e39e8418169f11b10748afea741cad464d688`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:20:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:21:20 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 14 Jul 2026 01:21:20 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 01:21:20 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 14 Jul 2026 01:21:20 GMT
ENV JULIA_VERSION=1.12.6
# Tue, 14 Jul 2026 01:21:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.12/julia-1.12.6-linux-x86_64.tar.gz'; 			sha256='bbabf3bef19421a9dbd24a767d807606ab85e444323b5a1c73ffe293fa3d079a'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.12/julia-1.12.6-linux-i686.tar.gz'; 			sha256='2ab43d56adfe96c7b0b9ddab0e049f54f49df24049ec8b482c26737c42af28cd'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.12/julia-1.12.6-linux-aarch64.tar.gz'; 			sha256='029b93b857bd0ffd627f9a8580d3bbaa63daf008d7b7aed02fbceb8fd57c4899'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 14 Jul 2026 01:21:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:21:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:21:20 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bd54c1863beb00d095ceece1e1e0746cd0394ff5a21fa447e00c78ad493d038`  
		Last Modified: Tue, 14 Jul 2026 01:22:06 GMT  
		Size: 6.2 MB (6155952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a7aced224e578874a60b602e4efac1b7cdde71ee0adb378e8db3a3594a92092`  
		Last Modified: Tue, 14 Jul 2026 01:22:12 GMT  
		Size: 314.3 MB (314286224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:394d7643a2669287a0114290bda3290699a9f0f6ce271cde116b773fb87cdf79`  
		Last Modified: Tue, 14 Jul 2026 01:22:06 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:latest` - unknown; unknown

```console
$ docker pull julia@sha256:a86cd6982f440f90599d8e046084d25ef608177b6a6154fedef3ba9b6cfc3c58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2258697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9ac8c1c49e4723f13b47ef219a708bae7eefbaa568396667420478ce6d47ede`

```dockerfile
```

-	Layers:
	-	`sha256:32a3830bb3700434e07a519058ab77840ba418634ea5830c5153b2caa5f18794`  
		Last Modified: Tue, 14 Jul 2026 01:22:06 GMT  
		Size: 2.2 MB (2240841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:030b829772e0d2febda5e8d8aae01394f5e29db0867450b6fc81a38d3b6b7d1d`  
		Last Modified: Tue, 14 Jul 2026 01:22:06 GMT  
		Size: 17.9 KB (17856 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:latest` - linux; 386

```console
$ docker pull julia@sha256:1a213cd46df11e8508253827690a03195376a69b1c09951d4dae44d6c445c388
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270226390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f3b075b7cefc7430d740d151e6bd7fdbaf5fc2889e7f7a1a37410ea1a6f6752`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:17:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:17:45 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 14 Jul 2026 01:17:45 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 01:17:45 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 14 Jul 2026 01:17:45 GMT
ENV JULIA_VERSION=1.12.6
# Tue, 14 Jul 2026 01:17:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.12/julia-1.12.6-linux-x86_64.tar.gz'; 			sha256='bbabf3bef19421a9dbd24a767d807606ab85e444323b5a1c73ffe293fa3d079a'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.12/julia-1.12.6-linux-i686.tar.gz'; 			sha256='2ab43d56adfe96c7b0b9ddab0e049f54f49df24049ec8b482c26737c42af28cd'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.12/julia-1.12.6-linux-aarch64.tar.gz'; 			sha256='029b93b857bd0ffd627f9a8580d3bbaa63daf008d7b7aed02fbceb8fd57c4899'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 14 Jul 2026 01:17:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:17:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:17:45 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:888c1464f6f5773681af0ae2a9d3a01263efa70f40fb61a274440aadc4c72f08`  
		Last Modified: Tue, 14 Jul 2026 00:14:49 GMT  
		Size: 31.3 MB (31296301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f72a4298b8c891010c8c49a8e1e27e5e4565f0327a4472e15b5ab2ac26a9122`  
		Last Modified: Tue, 14 Jul 2026 01:18:18 GMT  
		Size: 6.4 MB (6436170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcd171e2282a67fdd5bca9a9099173c11bf15ec425f49e558f41a41f95c2cf2b`  
		Last Modified: Tue, 14 Jul 2026 01:18:23 GMT  
		Size: 232.5 MB (232493550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28f6d86aadcf4ac989cf5b608f1482c7fe8c4f76f4db3e9c0b6baf9fde641cdb`  
		Last Modified: Tue, 14 Jul 2026 01:18:18 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:latest` - unknown; unknown

```console
$ docker pull julia@sha256:aa19c81061ea04aafde66c5e7ada1ac5ca1760f1639bd38e3003fa3627279bdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2255277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fc623ab129733b6c6291820d41d6332e063bef446f6766e942c7562fb4e170e`

```dockerfile
```

-	Layers:
	-	`sha256:4b481be7262c6178b3a031f5f0cf947fbb7ddb21e06fd8be49e9d5299c2aec37`  
		Last Modified: Tue, 14 Jul 2026 01:18:18 GMT  
		Size: 2.2 MB (2237642 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aedd0a3afe3aefbb318b5cf5c8f85123f83683720c16278a843398ed4f46fe18`  
		Last Modified: Tue, 14 Jul 2026 01:18:18 GMT  
		Size: 17.6 KB (17635 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:latest` - windows version 10.0.26100.32995; amd64

```console
$ docker pull julia@sha256:bf36ac6b6182557f7a0c064ce6229aad88f2ca27c7792b03522b561ee57685c9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2567652353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2aa7831bf80a77063592948e68dfa24619c78839978a9be8e36e9599241664a9`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 07 Jun 2026 07:36:39 GMT
RUN Install update 10.0.26100.32995
# Tue, 09 Jun 2026 22:12:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 09 Jun 2026 22:12:29 GMT
ENV JULIA_VERSION=1.12.6
# Tue, 09 Jun 2026 22:12:30 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.12/julia-1.12.6-win64.exe
# Tue, 09 Jun 2026 22:12:31 GMT
ENV JULIA_SHA256=de2d50f23995d71c224423a4872673a4e9be2c9676fc975cd90b25fc3a5e6cb6
# Tue, 09 Jun 2026 22:14:13 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 09 Jun 2026 22:14:14 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee71d57b2226db82d002abc39a97b7dd144f007db435566364a0285bf115b83`  
		Last Modified: Tue, 09 Jun 2026 18:08:12 GMT  
		Size: 756.1 MB (756083682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd9775be4031937efdc97f503b8e8073012c6d3367d79761e42678fea5e5a9f`  
		Last Modified: Tue, 09 Jun 2026 22:14:23 GMT  
		Size: 1.4 KB (1371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc529054c6f05f098eb80d65256ecaabe1c8f8992cc8348daacca448426f5cc`  
		Last Modified: Tue, 09 Jun 2026 22:14:21 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0dd194f4ea7872fd832ecb11b6aee88ae0958d67c7439b3515e9437eb0c8c25`  
		Last Modified: Tue, 09 Jun 2026 22:14:21 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6eda80a14ced8c1a437f00fd128527688198c7d8e5dc194a11f88a35dc3d81`  
		Last Modified: Tue, 09 Jun 2026 22:14:21 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba511def2ddf9da58c87f0d2cb453a946d07f58b607146a1523d49a85b254fb1`  
		Last Modified: Tue, 09 Jun 2026 22:15:01 GMT  
		Size: 288.5 MB (288502848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29692cf3c5f0828d70b5ea6abadfd0b057b3d138ac1c8d0488b45240526c3d14`  
		Last Modified: Tue, 09 Jun 2026 22:14:21 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:latest` - windows version 10.0.20348.5256; amd64

```console
$ docker pull julia@sha256:aec668dd7e045344458db15edc5068ef85136a990c6e17a50d517d6bbcd71cd3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2420741292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2332ed0af48ee6eaf2a74a9f240e5e7082a096e3b5b6f1222bb4b968356df44e`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 07 Jun 2026 06:43:23 GMT
RUN Install update 10.0.20348.5256
# Tue, 09 Jun 2026 22:09:17 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 09 Jun 2026 22:09:19 GMT
ENV JULIA_VERSION=1.12.6
# Tue, 09 Jun 2026 22:09:21 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.12/julia-1.12.6-win64.exe
# Tue, 09 Jun 2026 22:09:22 GMT
ENV JULIA_SHA256=de2d50f23995d71c224423a4872673a4e9be2c9676fc975cd90b25fc3a5e6cb6
# Tue, 09 Jun 2026 22:13:04 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 09 Jun 2026 22:13:06 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6897a04901ec162be0eabd7eb636b5ac50d6e37c880f1db618610f2d777b1ce6`  
		Last Modified: Tue, 09 Jun 2026 18:12:58 GMT  
		Size: 643.1 MB (643106423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58bb4ff167c8070b9788f2d6d9cd77fafe5a57c62ff4b6c47a449148c900d33c`  
		Last Modified: Tue, 09 Jun 2026 22:13:18 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d627ea392c6285c908d581060b2aa8bd83cb3f56e47bcb488eef2b618067c9a`  
		Last Modified: Tue, 09 Jun 2026 22:13:16 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae9fe080002e69dea1f4db36b573b728295761c5bc9900cf7d39695acad53a2`  
		Last Modified: Tue, 09 Jun 2026 22:13:16 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98eeb519eab8e3d8ddd0027a58bde65137bc21fdc53bd54d8fb11a2ec5f0053`  
		Last Modified: Tue, 09 Jun 2026 22:13:16 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11aa2530170597bebe0e279282897642519a2876e4fb7f4e8f69cacd544f2b53`  
		Last Modified: Tue, 09 Jun 2026 22:13:59 GMT  
		Size: 288.6 MB (288609190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f2f9c2f2e3d12f2d4b0708805fe986ef6690824051a2bec1f7148098794ac2`  
		Last Modified: Tue, 09 Jun 2026 22:13:16 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
