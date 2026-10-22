## `julia:rc`

```console
$ docker pull julia@sha256:dfe37ea143ea13511d18d32418f722a4351d69d7e10b9ebfe0411d09de2a3d2f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `julia:rc` - linux; amd64

```console
$ docker pull julia@sha256:95545b2f584406e9c3681b74ee3b01e163a5a6c646d18683cf331f6dbbe837f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.0 MB (267956667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e2dde979ea95cb79bf192dc7f165edead747d6c03028b071510119877f4457d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 22:16:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:17:06 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 22:17:06 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:17:06 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 21 Oct 2026 22:17:06 GMT
ENV JULIA_VERSION=1.14.0-alpha1
# Wed, 21 Oct 2026 22:17:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.14/julia-1.14.0-alpha1-linux-x86_64.tar.gz'; 			sha256='8cc30c86414dacbe58963eaf3e23d1605334a670f40051ef5a0de0619c9c252c'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.14/julia-1.14.0-alpha1-linux-i686.tar.gz'; 			sha256='c505a56df24c443a90b2ffaced206e548a2e9e92d338a2323bb3552b083e4c10'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.14/julia-1.14.0-alpha1-linux-aarch64.tar.gz'; 			sha256='c408dd0fa1bbb1ff475226ef7c5c9f0b65e3991306085882b1e2f86c453101c7'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 22:17:06 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:17:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:17:06 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a8f960dcf07242182b513a793756f7236db9d3b277b0b300b9462e909dd8d24`  
		Last Modified: Wed, 21 Oct 2026 22:17:40 GMT  
		Size: 6.2 MB (6247447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d52276d6431ba570d643cae292c4c6cd21d15074dd8e428f83cb00026f2f9890`  
		Last Modified: Wed, 21 Oct 2026 22:17:44 GMT  
		Size: 231.9 MB (231865267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58d007e25db5ac58343667bc0c0c50249524b2519aa1b308e9084cdef5262dc3`  
		Last Modified: Wed, 21 Oct 2026 22:17:40 GMT  
		Size: 374.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:rc` - unknown; unknown

```console
$ docker pull julia@sha256:6a1c709834438c0341b192735a3106ae70b9f911d39d6a1c503dcca411f7b68c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2263020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56c63d9297704e9acc979aaf970c9c84b6ea4506a0f0fa90c7613122f52d4a2b`

```dockerfile
```

-	Layers:
	-	`sha256:54d6ef7de5e2714825565f17c4f9b952342be3822ed309c50820ae98f3de489a`  
		Last Modified: Wed, 21 Oct 2026 22:17:40 GMT  
		Size: 2.2 MB (2245808 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e369148c7a65478770d60f5a6c2aa472772cac9794c57a52d2c815e6a3c029c`  
		Last Modified: Wed, 21 Oct 2026 22:17:40 GMT  
		Size: 17.2 KB (17212 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:rc` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:6358a7d3278a9e55c2afd0accd1acdd3ac4a95886d57e56011f2b25112937f28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.5 MB (280477793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31fff461fc12def286cd6ad911606a6162be00536bbfd1e659a94d7aa8532bde`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 22:15:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:15:22 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 22:15:22 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:15:22 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 21 Oct 2026 22:15:22 GMT
ENV JULIA_VERSION=1.14.0-alpha1
# Wed, 21 Oct 2026 22:15:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.14/julia-1.14.0-alpha1-linux-x86_64.tar.gz'; 			sha256='8cc30c86414dacbe58963eaf3e23d1605334a670f40051ef5a0de0619c9c252c'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.14/julia-1.14.0-alpha1-linux-i686.tar.gz'; 			sha256='c505a56df24c443a90b2ffaced206e548a2e9e92d338a2323bb3552b083e4c10'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.14/julia-1.14.0-alpha1-linux-aarch64.tar.gz'; 			sha256='c408dd0fa1bbb1ff475226ef7c5c9f0b65e3991306085882b1e2f86c453101c7'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 22:15:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:15:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:15:23 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57c8f406a3c2f97218d2b0264fcffa23150080935825b2720d739b9442683865`  
		Last Modified: Wed, 21 Oct 2026 22:15:55 GMT  
		Size: 6.2 MB (6153201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff2296df657a458bf0527f60cecd6ea652b6faadcaffe36f54251805730065e6`  
		Last Modified: Wed, 21 Oct 2026 22:15:59 GMT  
		Size: 244.1 MB (244123742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96b0bb3cf95c29c4803a8bd3a4ae8feb4593b16cc71f38b2e1eb6b806bc79d35`  
		Last Modified: Wed, 21 Oct 2026 22:15:55 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:rc` - unknown; unknown

```console
$ docker pull julia@sha256:4491b2601310ad6b617a481aed94edb9fb1f0d07b77a4902d12906f7a0054471
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2263464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52d27ca99a2466f950a9b8f267927c3dfcf7088d3ace071d3d6c8f6893113881`

```dockerfile
```

-	Layers:
	-	`sha256:c738d609bb43e807a1367585c4915cab67b759d4b0302535c16c4220bee02a53`  
		Last Modified: Wed, 21 Oct 2026 22:15:55 GMT  
		Size: 2.2 MB (2246108 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ebb404e1b37bc707f8e6ba39ad34e37c72e786574bcc051235b8d9ab043a6ac`  
		Last Modified: Wed, 21 Oct 2026 22:15:55 GMT  
		Size: 17.4 KB (17356 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:rc` - linux; 386

```console
$ docker pull julia@sha256:bdd962e327114e48fe2909a0cca5da172e78cfdc231f9ea670d1a368b3495b09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.1 MB (229060706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67e822ff305218109dcd1d2e871df8c483f5dc876614dfe794dffaec194110de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 22:07:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:07:25 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 22:07:25 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:07:25 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 21 Oct 2026 22:07:25 GMT
ENV JULIA_VERSION=1.14.0-alpha1
# Wed, 21 Oct 2026 22:07:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.14/julia-1.14.0-alpha1-linux-x86_64.tar.gz'; 			sha256='8cc30c86414dacbe58963eaf3e23d1605334a670f40051ef5a0de0619c9c252c'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.14/julia-1.14.0-alpha1-linux-i686.tar.gz'; 			sha256='c505a56df24c443a90b2ffaced206e548a2e9e92d338a2323bb3552b083e4c10'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.14/julia-1.14.0-alpha1-linux-aarch64.tar.gz'; 			sha256='c408dd0fa1bbb1ff475226ef7c5c9f0b65e3991306085882b1e2f86c453101c7'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 22:07:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:07:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:07:25 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:ed7ef4d8bb8a16e6b1a4d6e74da037bb60ce864d336261b439c7da8595c0f49f`  
		Last Modified: Tue, 20 Oct 2026 23:30:51 GMT  
		Size: 31.4 MB (31353534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d83cff4b47b69a3f1c5d29067945361d320cfe224093a9c6ac6bb06876690eb`  
		Last Modified: Wed, 21 Oct 2026 22:07:51 GMT  
		Size: 6.4 MB (6433322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e8a6cd5a940f71095da10679072a5427da1ae7c94b3998acc0f58ed79937d7a`  
		Last Modified: Wed, 21 Oct 2026 22:07:54 GMT  
		Size: 191.3 MB (191273478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e8a34e39a7ea4b65e0199c6e7a81b81828c9d9865a2461553bedd18eb7dc6ed`  
		Last Modified: Wed, 21 Oct 2026 22:07:50 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:rc` - unknown; unknown

```console
$ docker pull julia@sha256:ab910ed06fbb659bebb9e5684dec55b845f5e2f5913a190e87f7e138946494b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2260112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99fb9b5c2c6183354ec621cb8d5d336af5336e5bdc334a6ceef5c0662e28f59d`

```dockerfile
```

-	Layers:
	-	`sha256:390cbdc576af4fa8f05baf5efdc32ae8450f3245b0ed7d07b54be9068aeaf59e`  
		Last Modified: Wed, 21 Oct 2026 22:07:51 GMT  
		Size: 2.2 MB (2242943 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d85bd9e4339d2baff88da333a567b509db9c714d0a6d5dbbc294d031c100252b`  
		Last Modified: Wed, 21 Oct 2026 22:07:50 GMT  
		Size: 17.2 KB (17169 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:rc` - windows version 10.0.26100.33650; amd64

```console
$ docker pull julia@sha256:29e6ef13f2126bf3298b0ae7216d86bf93f885a0a4a3cd0e7b4319fd4b8b8a96
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2621734212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:352e65f73f64910585f36c424bc94dd5d9229bca2ab2f6a25e13b39996d54c50`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Wed, 21 Oct 2026 22:12:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 21 Oct 2026 22:12:33 GMT
ENV JULIA_VERSION=1.14.0-alpha1
# Wed, 21 Oct 2026 22:12:34 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.14/julia-1.14.0-alpha1-win64.exe
# Wed, 21 Oct 2026 22:12:35 GMT
ENV JULIA_SHA256=fb7a76d32820623436da48cb74cc88ed92d1b967db5bc9e5d4253753fa9cb9cd
# Wed, 21 Oct 2026 22:14:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Wed, 21 Oct 2026 22:14:50 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313fd727a719542e5d0b85e1b735e644a35d82775b58aa9afb5e79e24f63ae2f`  
		Last Modified: Tue, 13 Oct 2026 21:56:04 GMT  
		Size: 868.9 MB (868934967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191e7b66cb854415c1a42281cdbe07fa32854ef0e4df6bcc374620de008517f2`  
		Last Modified: Wed, 21 Oct 2026 22:15:00 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f9cbfc9a4ad513ab584423f1b2bef20cb048b78f061501db33d259a6a28f982`  
		Last Modified: Wed, 21 Oct 2026 22:14:58 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26422a1c7b13a2e4687944d72cc4c346913050d35eaa6d4aae0e93b8538564eb`  
		Last Modified: Wed, 21 Oct 2026 22:14:58 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c4b2f1e7249f91cc386dd5cc00fc97d81758d0576ed28359a78f9718fdc8f8`  
		Last Modified: Wed, 21 Oct 2026 22:14:58 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e6d50c13b050fa153a203b3411da32e00ade4919a023c0a13604b42fea54ff`  
		Last Modified: Wed, 21 Oct 2026 22:15:26 GMT  
		Size: 229.7 MB (229733436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d677c80ad5e7a67883a007f095911c09546ffe7ae3de657de657d631650a8d`  
		Last Modified: Wed, 21 Oct 2026 22:14:58 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:rc` - windows version 10.0.20348.5761; amd64

```console
$ docker pull julia@sha256:5066fa1ad12c5953b68a5d2fd20c7da81eeebfbb3583d5ea51adeea01380c4ec
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2455999337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25cb5a33bdff6eea682dd6fd58b3ca6f2f2f58cf5eba60392d7dc99c2bc76b50`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Wed, 21 Oct 2026 22:11:41 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 21 Oct 2026 22:11:44 GMT
ENV JULIA_VERSION=1.14.0-alpha1
# Wed, 21 Oct 2026 22:11:46 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.14/julia-1.14.0-alpha1-win64.exe
# Wed, 21 Oct 2026 22:11:49 GMT
ENV JULIA_SHA256=fb7a76d32820623436da48cb74cc88ed92d1b967db5bc9e5d4253753fa9cb9cd
# Wed, 21 Oct 2026 22:17:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Wed, 21 Oct 2026 22:17:04 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50c6aba90dbb9bb75beba9b047d772d576ae55d3a87354de75f0b41ad837331`  
		Last Modified: Wed, 21 Oct 2026 22:17:19 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87c2073742e02ee9dd88db3bcf6fc0f71c96b86f4d7cdb2d66bffaf622da107`  
		Last Modified: Wed, 21 Oct 2026 22:17:17 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab296ee058a2febcf5415b55b545c70a3d4f83a84da5fe6cc821f5ebed8ff875`  
		Last Modified: Wed, 21 Oct 2026 22:17:17 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e5cfe88a85c9fbd0372696bf455435dd1eb5e82db0511d94a0e5958e94b3c0b`  
		Last Modified: Wed, 21 Oct 2026 22:17:17 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e1d0767d29258f975e3168596fe2c93d32e35e58fded7f9dd1b99453163e92`  
		Last Modified: Wed, 21 Oct 2026 22:17:46 GMT  
		Size: 229.7 MB (229707260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d669178f16a341c318a4e7c0cc09e8d00a5f1559951cb2b8d4251e04d1fea96`  
		Last Modified: Wed, 21 Oct 2026 22:17:17 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
