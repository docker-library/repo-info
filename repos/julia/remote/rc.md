## `julia:rc`

```console
$ docker pull julia@sha256:9e3eecf187bc89ef5d77155d2c948cee6740f0c9425cd00147d0f22582cf3308
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `julia:rc` - linux; amd64

```console
$ docker pull julia@sha256:3335b37bec79bb1c39b430791a9c3350d4194c439c85cf2960d48e184b530893
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.8 MB (264793311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4b3b65fa73e3edbc14f08ad90c9fcea815cc3c2349ebed0a049ccada57667d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:17:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:17:35 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 05 Nov 2026 07:17:35 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:17:35 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Thu, 05 Nov 2026 07:17:35 GMT
ENV JULIA_VERSION=1.14.0-alpha2
# Thu, 05 Nov 2026 07:17:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.14/julia-1.14.0-alpha2-linux-x86_64.tar.gz'; 			sha256='ca26d7fd064aea4f0d28561e08159957895a56b7e3bb670cc23701c28dce2a61'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.14/julia-1.14.0-alpha2-linux-i686.tar.gz'; 			sha256='cc7100928f197e539cc4115dfdbd04c28441ef5dd78e2bef81fa677378ba408c'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.14/julia-1.14.0-alpha2-linux-aarch64.tar.gz'; 			sha256='9b30e32e56361b7a4ae507449ace6c996d45eed7500528944564e1770848fe28'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Thu, 05 Nov 2026 07:17:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:17:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:17:35 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7154f919a92a9641c6c94ed933a6a92ea657c4e67e43d932618806da548c471`  
		Last Modified: Thu, 05 Nov 2026 07:18:05 GMT  
		Size: 6.2 MB (6247527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06bb2bd4c6303097039e3f7b3436d50002b091681e6454dbcb63d2c04d6ee061`  
		Last Modified: Thu, 05 Nov 2026 07:18:09 GMT  
		Size: 228.7 MB (228689278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd41cde25b15a8e2d9462840d3f73683d83f04085af82bf2529a0aa4dbdf18d4`  
		Last Modified: Thu, 05 Nov 2026 07:18:04 GMT  
		Size: 374.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:rc` - unknown; unknown

```console
$ docker pull julia@sha256:39a7c24b861c1bb393da8690c949a3b8caa76a4e8bedaea9ad4c22bc899721e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2263049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8370b470df0368ed7df379dae09fae3d1d53b2802747a5f8d4104cc1f8df4a6`

```dockerfile
```

-	Layers:
	-	`sha256:c0eaedd6a3c9e2399fda221872701a937715cd6f2e828257269729b2abe4d6fd`  
		Last Modified: Thu, 05 Nov 2026 07:18:05 GMT  
		Size: 2.2 MB (2245836 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9854831f6f89a2c87e33d0abdf0e8f7670f703e1b1524a895e3e65c897d87633`  
		Last Modified: Thu, 05 Nov 2026 07:18:05 GMT  
		Size: 17.2 KB (17213 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:rc` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:48ac12637614116a13de6f34a9c0878d87aa72bd586a8137b50ba1744ed697ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.1 MB (278065946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01ad1ae732ff0d7904cac58cc4b5964a3a92e3e5e9e3ee773d963fcd787023c3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:15:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:16:45 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 05 Nov 2026 07:16:45 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:16:45 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Thu, 05 Nov 2026 07:16:45 GMT
ENV JULIA_VERSION=1.14.0-alpha2
# Thu, 05 Nov 2026 07:16:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.14/julia-1.14.0-alpha2-linux-x86_64.tar.gz'; 			sha256='ca26d7fd064aea4f0d28561e08159957895a56b7e3bb670cc23701c28dce2a61'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.14/julia-1.14.0-alpha2-linux-i686.tar.gz'; 			sha256='cc7100928f197e539cc4115dfdbd04c28441ef5dd78e2bef81fa677378ba408c'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.14/julia-1.14.0-alpha2-linux-aarch64.tar.gz'; 			sha256='9b30e32e56361b7a4ae507449ace6c996d45eed7500528944564e1770848fe28'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Thu, 05 Nov 2026 07:16:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:16:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:16:46 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95f186bafb1e6d5251bf0ece4bdb621b7a150fb8c019910af5b081589338a52f`  
		Last Modified: Thu, 05 Nov 2026 07:16:17 GMT  
		Size: 6.2 MB (6153953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8c0099433fc9487364b78c4d3164c8a785aa98e00c1e1e1aa3a1823e0d762d7`  
		Last Modified: Thu, 05 Nov 2026 07:17:22 GMT  
		Size: 241.7 MB (241697582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2e5586acb6323247d2d3862e6c54b2dcb2b711fff670c50f12eb7e2741f7545`  
		Last Modified: Thu, 05 Nov 2026 07:17:17 GMT  
		Size: 374.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:rc` - unknown; unknown

```console
$ docker pull julia@sha256:1c910c22afbd541164e0feef5e013422343313db085f13256e612b92708cf474
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2263492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2e2421b3e3c006645dec1bfd34c07bb0410b63ec479299a580799a6edabca24`

```dockerfile
```

-	Layers:
	-	`sha256:4bf07afcb3c586cfeddeb877f45cad52ebb2552b1c9789141583a6f65e050952`  
		Last Modified: Thu, 05 Nov 2026 07:17:17 GMT  
		Size: 2.2 MB (2246136 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ca0b6f63b7d6cba51550c3481266c884c506b49ec471c7bba981a0b4e102f52`  
		Last Modified: Thu, 05 Nov 2026 07:17:17 GMT  
		Size: 17.4 KB (17356 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:rc` - linux; 386

```console
$ docker pull julia@sha256:24aa506d80ba3c676357f1d37d4873a9ba3c1b2b02c2d2f159581759aaf4a2cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.0 MB (229003807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c152d78736c97b277e61013ba44035824568a22019d68a0ec8860dde57913b36`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:14:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:14:58 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 05 Nov 2026 07:14:58 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:14:58 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Thu, 05 Nov 2026 07:14:58 GMT
ENV JULIA_VERSION=1.14.0-alpha2
# Thu, 05 Nov 2026 07:14:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.14/julia-1.14.0-alpha2-linux-x86_64.tar.gz'; 			sha256='ca26d7fd064aea4f0d28561e08159957895a56b7e3bb670cc23701c28dce2a61'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.14/julia-1.14.0-alpha2-linux-i686.tar.gz'; 			sha256='cc7100928f197e539cc4115dfdbd04c28441ef5dd78e2bef81fa677378ba408c'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.14/julia-1.14.0-alpha2-linux-aarch64.tar.gz'; 			sha256='9b30e32e56361b7a4ae507449ace6c996d45eed7500528944564e1770848fe28'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Thu, 05 Nov 2026 07:14:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:14:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:14:58 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:503a4cb4679ebe30ca9c7ed6a680f9d2feb175671bb6cfb6edf6c1fb72ff8bde`  
		Last Modified: Thu, 05 Nov 2026 07:15:26 GMT  
		Size: 6.4 MB (6432542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ba8e516043c3296e22acd0fbd7bd2fda2f3cedc5de4d1a020896fe02a253728`  
		Last Modified: Thu, 05 Nov 2026 07:15:30 GMT  
		Size: 191.2 MB (191200133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f00e4d21c094b73e20dd3f2d4aa933b363251eb9cb148308e7e66c16220f597`  
		Last Modified: Thu, 05 Nov 2026 07:15:25 GMT  
		Size: 373.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:rc` - unknown; unknown

```console
$ docker pull julia@sha256:66cc77bbd3171500c507a284c581e580f8f66034ae98bdc0c347d995a88f5456
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2260140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e331a50df6ad0e00c3a2377bf410a0ffd7e86aa320310139e24b7a21257e0dde`

```dockerfile
```

-	Layers:
	-	`sha256:86cd13ed877a085159bfadaab887055e5319b51df8f6a1f6136227eb96ef8035`  
		Last Modified: Thu, 05 Nov 2026 07:15:25 GMT  
		Size: 2.2 MB (2242971 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86a59b6c89b5c647d7f8df1b6e34ff75bba6c4a513e0b71a29afe3b4d412aad4`  
		Last Modified: Thu, 05 Nov 2026 07:15:25 GMT  
		Size: 17.2 KB (17169 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:rc` - windows version 10.0.26100.33674; amd64

```console
$ docker pull julia@sha256:b0a50cc7ffcf049442b88ebd3650c17595a1d5d97f758265dd54469becd6e01c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2622151029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01a9a1e032349f044cf14758d83820f706dcba602fe8c8e793f5f0c7d9b594f8`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 27 Oct 2026 17:49:11 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 17:49:13 GMT
ENV JULIA_VERSION=1.14.0-alpha2
# Tue, 27 Oct 2026 17:49:14 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.14/julia-1.14.0-alpha2-win64.exe
# Tue, 27 Oct 2026 17:49:14 GMT
ENV JULIA_SHA256=68f49717241692c0c7022d4e3fa567af4659e723e0c5b04d24668a98f30aa46c
# Tue, 27 Oct 2026 17:50:17 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 27 Oct 2026 17:50:18 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93fc49c91a9b34eddf6e910887f61b03f27e96364c9e77c2c33c5bf8914f1b60`  
		Last Modified: Tue, 27 Oct 2026 17:50:26 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ddeeebffed43b1258ab311c8e5488f36f485a924cbf47d453b0ff0a203be87`  
		Last Modified: Tue, 27 Oct 2026 17:50:25 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25050bba8e13fe10343a4cf6829f4133220a0bb497fd024f7faca74d31748e37`  
		Last Modified: Tue, 27 Oct 2026 17:50:25 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1945146be3b0cd7e64980701f808833a388db29b24053ac259e011c0cec056c8`  
		Last Modified: Tue, 27 Oct 2026 17:50:25 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a7ca3b38b5a11dcefe2633e579489ef2624776472989d7e7de2c111412043cf`  
		Last Modified: Tue, 27 Oct 2026 17:50:53 GMT  
		Size: 230.1 MB (230095566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e8037efb998ccee0e636d12e1242f5b89a20b98b62b86d321873c5035573fc`  
		Last Modified: Tue, 27 Oct 2026 17:50:25 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:rc` - windows version 10.0.20348.5773; amd64

```console
$ docker pull julia@sha256:4a3969b1ecb63c9b10e6f6503ce0b1998a30b218066dab383705f091254d8643
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2457143164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de8211f59ee7d859a9ad21fee91c8cf6317379d1868172c28863a700b4d20ed2`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 27 Oct 2026 17:51:17 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 17:51:18 GMT
ENV JULIA_VERSION=1.14.0-alpha2
# Tue, 27 Oct 2026 17:51:19 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.14/julia-1.14.0-alpha2-win64.exe
# Tue, 27 Oct 2026 17:51:20 GMT
ENV JULIA_SHA256=68f49717241692c0c7022d4e3fa567af4659e723e0c5b04d24668a98f30aa46c
# Tue, 27 Oct 2026 17:52:35 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 27 Oct 2026 17:52:36 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c33846e131d5ffb4ab39bd168ff5ac88a294c9293938da526357a3bb3f2169a`  
		Last Modified: Tue, 27 Oct 2026 17:52:46 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6e1886a8b09991c6e44dc2c312003798fa4c525393cb0194d8469f63ba0b474`  
		Last Modified: Tue, 27 Oct 2026 17:52:44 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b988dc0ec151685e53b09f097fa920b2f997d953286ba8eb4063173f4ac51496`  
		Last Modified: Tue, 27 Oct 2026 17:52:44 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03ebf3ad14d8bf39b09f6accd16362fad9ebf05d2cfc1a720cf26bfd9aa4e249`  
		Last Modified: Tue, 27 Oct 2026 17:52:44 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df94535a5a3b2990d482751d09f245bcb8d20b327caf13a525db587ceb2d619`  
		Last Modified: Tue, 27 Oct 2026 17:53:12 GMT  
		Size: 230.1 MB (230080424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2afa08d1c201cd3f3fa50e0b582c96ff32786d9be907367486db3921cbd48061`  
		Last Modified: Tue, 27 Oct 2026 17:52:44 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
