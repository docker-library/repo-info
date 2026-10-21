<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `julia`

-	[`julia:1`](#julia1)
-	[`julia:1-bookworm`](#julia1-bookworm)
-	[`julia:1-trixie`](#julia1-trixie)
-	[`julia:1-windowsservercore`](#julia1-windowsservercore)
-	[`julia:1-windowsservercore-ltsc2022`](#julia1-windowsservercore-ltsc2022)
-	[`julia:1-windowsservercore-ltsc2025`](#julia1-windowsservercore-ltsc2025)
-	[`julia:1.10`](#julia110)
-	[`julia:1.10-bookworm`](#julia110-bookworm)
-	[`julia:1.10-trixie`](#julia110-trixie)
-	[`julia:1.10-windowsservercore`](#julia110-windowsservercore)
-	[`julia:1.10-windowsservercore-ltsc2022`](#julia110-windowsservercore-ltsc2022)
-	[`julia:1.10-windowsservercore-ltsc2025`](#julia110-windowsservercore-ltsc2025)
-	[`julia:1.10.12`](#julia11012)
-	[`julia:1.10.12-bookworm`](#julia11012-bookworm)
-	[`julia:1.10.12-trixie`](#julia11012-trixie)
-	[`julia:1.10.12-windowsservercore`](#julia11012-windowsservercore)
-	[`julia:1.10.12-windowsservercore-ltsc2022`](#julia11012-windowsservercore-ltsc2022)
-	[`julia:1.10.12-windowsservercore-ltsc2025`](#julia11012-windowsservercore-ltsc2025)
-	[`julia:1.11`](#julia111)
-	[`julia:1.11-bookworm`](#julia111-bookworm)
-	[`julia:1.11-trixie`](#julia111-trixie)
-	[`julia:1.11-windowsservercore`](#julia111-windowsservercore)
-	[`julia:1.11-windowsservercore-ltsc2022`](#julia111-windowsservercore-ltsc2022)
-	[`julia:1.11-windowsservercore-ltsc2025`](#julia111-windowsservercore-ltsc2025)
-	[`julia:1.11.9`](#julia1119)
-	[`julia:1.11.9-bookworm`](#julia1119-bookworm)
-	[`julia:1.11.9-trixie`](#julia1119-trixie)
-	[`julia:1.11.9-windowsservercore`](#julia1119-windowsservercore)
-	[`julia:1.11.9-windowsservercore-ltsc2022`](#julia1119-windowsservercore-ltsc2022)
-	[`julia:1.11.9-windowsservercore-ltsc2025`](#julia1119-windowsservercore-ltsc2025)
-	[`julia:1.13`](#julia113)
-	[`julia:1.13-bookworm`](#julia113-bookworm)
-	[`julia:1.13-trixie`](#julia113-trixie)
-	[`julia:1.13-windowsservercore`](#julia113-windowsservercore)
-	[`julia:1.13-windowsservercore-ltsc2022`](#julia113-windowsservercore-ltsc2022)
-	[`julia:1.13-windowsservercore-ltsc2025`](#julia113-windowsservercore-ltsc2025)
-	[`julia:1.13.2`](#julia1132)
-	[`julia:1.13.2-bookworm`](#julia1132-bookworm)
-	[`julia:1.13.2-trixie`](#julia1132-trixie)
-	[`julia:1.13.2-windowsservercore`](#julia1132-windowsservercore)
-	[`julia:1.13.2-windowsservercore-ltsc2022`](#julia1132-windowsservercore-ltsc2022)
-	[`julia:1.13.2-windowsservercore-ltsc2025`](#julia1132-windowsservercore-ltsc2025)
-	[`julia:bookworm`](#juliabookworm)
-	[`julia:latest`](#julialatest)
-	[`julia:trixie`](#juliatrixie)
-	[`julia:windowsservercore`](#juliawindowsservercore)
-	[`julia:windowsservercore-ltsc2022`](#juliawindowsservercore-ltsc2022)
-	[`julia:windowsservercore-ltsc2025`](#juliawindowsservercore-ltsc2025)

## `julia:1`

```console
$ docker pull julia@sha256:c507080d70ec68dce782ad78b9998803d597115b9b7278c522aeb11333197506
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

### `julia:1` - linux; amd64

```console
$ docker pull julia@sha256:605f429b384309f3c1a70484ec63b5b8a481feafa261d5424bd1066f6a5b1da8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.1 MB (342134569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fe1d2c0ad8f2eba384660ef9db55b4252af43d600da3297592959434eff8f24`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:17:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:18:03 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:18:03 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:18:03 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 21 Oct 2026 00:18:03 GMT
ENV JULIA_VERSION=1.13.2
# Wed, 21 Oct 2026 00:18:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:18:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:18:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:18:03 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7251038b43fb4f309c084b32e12c0da0d8773e20998f24fead7a448a09bf27cd`  
		Last Modified: Wed, 21 Oct 2026 00:18:48 GMT  
		Size: 6.2 MB (6247392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebf0bfe0798587a30517f155962d507481607c83f3325d8ff79118e24077abb6`  
		Last Modified: Wed, 21 Oct 2026 00:18:54 GMT  
		Size: 306.0 MB (306043225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c00e7ff050edf5f852888343c83231563416e64983c139e581dbc40f0bb33bf8`  
		Last Modified: Wed, 21 Oct 2026 00:18:48 GMT  
		Size: 373.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1` - unknown; unknown

```console
$ docker pull julia@sha256:a783a0a053baf24401c6912fcc343c694cab4e2da9781ad09311393777dc6954
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2264057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f47e5575a3ccd88629fbe6ec112fb43579581faf47c674d9e0dcaf8da58ca80`

```dockerfile
```

-	Layers:
	-	`sha256:94d1ababde8139cf257549fad6b2ccdbfbe585cdfe7a0534d53bf32ae55ed148`  
		Last Modified: Wed, 21 Oct 2026 00:18:48 GMT  
		Size: 2.2 MB (2246356 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f1e4f9ae5f4ba8c8a51e601cf46b19ee4a5d51ce7d4629b9d208270f12e69e0`  
		Last Modified: Wed, 21 Oct 2026 00:18:48 GMT  
		Size: 17.7 KB (17701 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:345e062ae6688beaea961b6bd31780b0d8729774537c9f9764517733eb198701
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.1 MB (361100422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f90ea6d0e948d86ad47d3ca0a82a43da16acee9d43aeae300a58e8bf59e0e3ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:16:48 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:16:48 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:16:48 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 21 Oct 2026 00:16:48 GMT
ENV JULIA_VERSION=1.13.2
# Wed, 21 Oct 2026 00:16:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:16:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:16:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:16:48 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6036bd4cbedb72c264a3e38730e8628dbdd600292bd87195810530f6387981d4`  
		Last Modified: Wed, 21 Oct 2026 00:17:34 GMT  
		Size: 6.2 MB (6153234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3019b92747871c3ce2f117263323e29a50f1669a042111d1a35319031a9b8767`  
		Last Modified: Wed, 21 Oct 2026 00:17:40 GMT  
		Size: 324.7 MB (324746340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e88fb31a1b54f7112b6132545ae636d029e85dc9a4d0f9275e26b1c9f673621`  
		Last Modified: Wed, 21 Oct 2026 00:17:34 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1` - unknown; unknown

```console
$ docker pull julia@sha256:df62e34a70752a3204d2ee3b4cb1671a061505e405c4260c52270fad12a9a4cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2264548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7def002ffdd20b44ee6066eea975c692f9d767df1483f4f6a2333bd245d477b`

```dockerfile
```

-	Layers:
	-	`sha256:e9e0abce2cf1b9498c259dbc956fd4eef70539b40bacdb882d3812a79ef8b3a3`  
		Last Modified: Wed, 21 Oct 2026 00:17:34 GMT  
		Size: 2.2 MB (2246680 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f95fcbb65ebc3064436cc15265269a43411463d5d9e2fcd0da27d6309a70adab`  
		Last Modified: Wed, 21 Oct 2026 00:17:34 GMT  
		Size: 17.9 KB (17868 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1` - linux; 386

```console
$ docker pull julia@sha256:7e21d3c81767c3ab5681f224b40803902e909007fe5692c7d74096163fe7a805
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.6 MB (280570546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea43fac9d2291adccf5e353459154c6a256e46ffce44aff9f1b51f1f961e3338`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Fri, 16 Oct 2026 20:38:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:38:19 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 16 Oct 2026 20:38:19 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:38:19 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Fri, 16 Oct 2026 20:38:19 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:38:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Fri, 16 Oct 2026 20:38:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:38:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:38:19 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:554a03fe980520b30a093a5e2efbee0c1130fe1c50dec4fc5af611cbdc2929b3`  
		Last Modified: Fri, 16 Oct 2026 20:38:52 GMT  
		Size: 6.4 MB (6436301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10d99cf53b239f508d970c767af5bbfd96dab2783c804ac07000b98343ea7814`  
		Last Modified: Fri, 16 Oct 2026 20:38:57 GMT  
		Size: 242.8 MB (242780581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e81c48df08bf48d59caed031420eb17c8fc903cc213aeb573e0d95a0ae191dcd`  
		Last Modified: Fri, 16 Oct 2026 20:38:51 GMT  
		Size: 367.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1` - unknown; unknown

```console
$ docker pull julia@sha256:5e85f1cba43f67c29590e01b56be07f2a142c43017a2cb07cfdd60ed8ed99f4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2262405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1852933f316f0a93f797b944435141ac8c92e795cf8a98313b30b01f460ff923`

```dockerfile
```

-	Layers:
	-	`sha256:1ab50347472b3edc5b24784b26081062a628f64b1928df3b77683c4e6d8cef31`  
		Last Modified: Fri, 16 Oct 2026 20:38:51 GMT  
		Size: 2.2 MB (2244758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:50be2bb2a72bf473e903dbbd4c0e08912da03387f8f919b92071f1ad3456274d`  
		Last Modified: Fri, 16 Oct 2026 20:38:51 GMT  
		Size: 17.6 KB (17647 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1` - windows version 10.0.26100.33650; amd64

```console
$ docker pull julia@sha256:4ca23aba162ddc0f3748ad695d096151b6f7c61c011786fe1e8afc5678f0c1f4
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2700853039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:384471d80a6a72485150d71258d83127b7e8f81e340e88eb728df66d7f19f16c`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Fri, 16 Oct 2026 20:30:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 16 Oct 2026 20:46:55 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:46:56 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.2-win64.exe
# Fri, 16 Oct 2026 20:46:57 GMT
ENV JULIA_SHA256=9de7f1e34839e053cc1c8f44c89c1235506e5fbd4adcdcce88b88bf1647d8f50
# Fri, 16 Oct 2026 20:48:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Fri, 16 Oct 2026 20:48:11 GMT
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
	-	`sha256:30233c4168f9992d50584d2d698effa4424ebdd0126152fa60d94095085a992d`  
		Last Modified: Fri, 16 Oct 2026 20:32:25 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad518e260a77dffb99a4d5a3caf97ebc98e8041eda44a03846c95375a71fed0b`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23768f172a520477ec018d4abe48cdcb8fffc2f8bb17e1d2c3df781546a334e8`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ebc390116de35d8fe362f8349c81ce08c7ba60f4aef2e382c3a2466e529d73`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b97598c1d71a517ccf3650bfa5d8e1b0f13e4adb903f1e3f4f3d42d3c4c8e9`  
		Last Modified: Fri, 16 Oct 2026 20:48:59 GMT  
		Size: 308.9 MB (308852308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03797a51205c787c36ef206d6c1362717c6865435763ee69da40486bc6d198f`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1` - windows version 10.0.20348.5761; amd64

```console
$ docker pull julia@sha256:3182ed87a0f6d4a7445e471036deed13915a545665408567fb4a5a3d7fa48a47
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2535123625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:413009c92e57b811e9d22134f588a879400658fd41021d7ee24c22c365352a6e`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Fri, 16 Oct 2026 20:29:11 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 16 Oct 2026 20:47:02 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:47:02 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.2-win64.exe
# Fri, 16 Oct 2026 20:47:03 GMT
ENV JULIA_SHA256=9de7f1e34839e053cc1c8f44c89c1235506e5fbd4adcdcce88b88bf1647d8f50
# Fri, 16 Oct 2026 20:49:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Fri, 16 Oct 2026 20:49:45 GMT
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
	-	`sha256:5c8aa03da74b5d0234f4f699ca7462ab937696ca4ba6a968d2c542a67f99f054`  
		Last Modified: Fri, 16 Oct 2026 20:31:19 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:157e9ed2e9d7cdb997941c379ba741360fb077d98de0fa5a730b71584018c2a9`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ef9a95ea9b30b624a12f9c4c592d3533aa9a89c840cd9361fcc1ce42835ae3`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464625ecd46addeae25d21a47edad65cbdb9c3f1ccbd359d4b2ffe6727160d92`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c9801d74d4f3791626b71a7b91cbb897aca8eaa34bee68573f8582702f33e8`  
		Last Modified: Fri, 16 Oct 2026 20:50:32 GMT  
		Size: 308.8 MB (308831575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b74bc1ba10945cb1464b4160801225a45d3c7daac4b7cb9dcd52dd53172e01`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1-bookworm`

```console
$ docker pull julia@sha256:5f09570c9aeace067d79a1730915133eba0f72a31ef2918b5b59e152afa22665
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `julia:1-bookworm` - linux; amd64

```console
$ docker pull julia@sha256:fedd3ff07be4c711e66c40c4629f1fad3a3a3add9134ab226d4c44f0bb514e63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.8 MB (339798016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f290377369ebe8ed75ccc62ead1546151fa15029957f5688904c74edc73ad290`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:18:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:18:24 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:18:24 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:18:24 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 21 Oct 2026 00:18:24 GMT
ENV JULIA_VERSION=1.13.2
# Wed, 21 Oct 2026 00:18:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:18:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:18:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:18:24 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45827739c28e7d2faaa1e197ea2a194ec52ac2ceecee87ae45cbe2c21c455a3a`  
		Last Modified: Wed, 21 Oct 2026 00:19:07 GMT  
		Size: 5.5 MB (5542596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8fe5e1055b9ac5aeae6a7cd088dc9bb0aed68fc772b55c97cb9a17d8baf51f5`  
		Last Modified: Wed, 21 Oct 2026 00:19:13 GMT  
		Size: 306.0 MB (306007113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a57c4adc8aff085072a60b11eabf3059747e315dde0098e956af1110eff66c75`  
		Last Modified: Wed, 21 Oct 2026 00:19:06 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:8f711ec4c5f331d8c7e080ae27413038213cf67bbcf62392fe44b94e5fae26fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2589503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fa9f1e6411af841677734f97e3121ccf69de6b6d47f8573c389d0a5dea0c2a9`

```dockerfile
```

-	Layers:
	-	`sha256:b322441e4386bc8b257fcc7c7bd8ac31ae1bcb577a4e61cdf31ca2bd573a2efa`  
		Last Modified: Wed, 21 Oct 2026 00:19:06 GMT  
		Size: 2.6 MB (2572948 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e913ee55c9af9991b998e85c2f485c2c28133872f12fedc9bae84652428383b0`  
		Last Modified: Wed, 21 Oct 2026 00:19:06 GMT  
		Size: 16.6 KB (16555 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1-bookworm` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:5bdc915a4f2bb64d5be14e7124d8392b62fd97c3e29b9f2f1531ef1162df9a13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.2 MB (358241971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aef5b1126cb3110ff5dfe8c951d91acd177735f47b85b1fb3f2b0b4c1782985b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:17:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:17:45 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:17:45 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:17:45 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 21 Oct 2026 00:17:45 GMT
ENV JULIA_VERSION=1.13.2
# Wed, 21 Oct 2026 00:17:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:17:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:17:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:17:45 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dca3f363be28f103d76bfbf036b9ac170321de5d64effd732589d914d4444e57`  
		Last Modified: Wed, 21 Oct 2026 00:18:32 GMT  
		Size: 5.4 MB (5387935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8099c7aaafdc106ecb9258b452f37056a25b564f2efb6c5b6928fd6b6423bce7`  
		Last Modified: Wed, 21 Oct 2026 00:18:38 GMT  
		Size: 324.7 MB (324715239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38aed825ccba3b6d0244075619682c0daffdf6ee3dbf25713258a9ac3a23368e`  
		Last Modified: Wed, 21 Oct 2026 00:18:31 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:ed173b945c92460a73ae19a6c1a656f2f034adb999756b3bebfa01dac7d7d1bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2589896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e82e20cf734ca50c686c2911f1b2b07a33a5975d01146c83b69b052de55268c9`

```dockerfile
```

-	Layers:
	-	`sha256:a4dabaf2a434be4e7dec56899e7c5809345da5435daa79e31a3cf7da7863b108`  
		Last Modified: Wed, 21 Oct 2026 00:18:32 GMT  
		Size: 2.6 MB (2573223 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ab70b12c916fc1aeb13776a6a295c305a90348713200d9a33acd83e462cc468`  
		Last Modified: Wed, 21 Oct 2026 00:18:31 GMT  
		Size: 16.7 KB (16673 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1-bookworm` - linux; 386

```console
$ docker pull julia@sha256:a8bf7bddaae15f8a6498b47ba8a23c8dfd13badef9ef14633120dc93716b195f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.7 MB (277693522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cf2cff5b8fac117a593ce6f920d031abfcd38708fd0dd4d96047c4eff511eb4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1791158400'
# Fri, 16 Oct 2026 20:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:38:20 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 16 Oct 2026 20:38:20 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:38:20 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Fri, 16 Oct 2026 20:38:20 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:38:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Fri, 16 Oct 2026 20:38:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:38:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:38:20 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:4fde7ff71d38b44de13588c355f9acc395f4ecbec569968085401a6d6b40eff2`  
		Last Modified: Tue, 06 Oct 2026 00:13:26 GMT  
		Size: 29.2 MB (29239373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1ba0b5a5ce54e241440155d54462fc5aa89ba068bc7da22e2340203bbf94ffe`  
		Last Modified: Fri, 16 Oct 2026 20:38:52 GMT  
		Size: 5.7 MB (5705016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:438b668b820f2df12c42a0157087e1da2475a13f7ca7c842c03b279a6cd61fea`  
		Last Modified: Fri, 16 Oct 2026 20:38:58 GMT  
		Size: 242.7 MB (242748761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18789dbad7bcadcc5332855e6ad27089ccafc8f0670787536f8c508378d9ed80`  
		Last Modified: Fri, 16 Oct 2026 20:38:52 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:a2c50efe4635d540345c2256b49aa1d15eace481913c9c63b4a1560955c24b27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2587908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42608ae662cdb6a8994a433d3f346dcf684d07ec338776365c3ff3cc942ce9fc`

```dockerfile
```

-	Layers:
	-	`sha256:ae79d2d5740e507f83579caf4f0867322f32ba0ea40bff2eed582539aad517f2`  
		Last Modified: Fri, 16 Oct 2026 20:38:52 GMT  
		Size: 2.6 MB (2571390 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:372e5a7289d9df4b7f2152abb578c18fa455817e3cd1c46b3d1c9188b2404201`  
		Last Modified: Fri, 16 Oct 2026 20:38:51 GMT  
		Size: 16.5 KB (16518 bytes)  
		MIME: application/vnd.in-toto+json

## `julia:1-trixie`

```console
$ docker pull julia@sha256:b0ea3fcf1fe93e25e3a7eec4fe4ed23e51a3aee8ec08bbe7a14b247051b36faf
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
$ docker pull julia@sha256:605f429b384309f3c1a70484ec63b5b8a481feafa261d5424bd1066f6a5b1da8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.1 MB (342134569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fe1d2c0ad8f2eba384660ef9db55b4252af43d600da3297592959434eff8f24`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:17:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:18:03 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:18:03 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:18:03 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 21 Oct 2026 00:18:03 GMT
ENV JULIA_VERSION=1.13.2
# Wed, 21 Oct 2026 00:18:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:18:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:18:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:18:03 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7251038b43fb4f309c084b32e12c0da0d8773e20998f24fead7a448a09bf27cd`  
		Last Modified: Wed, 21 Oct 2026 00:18:48 GMT  
		Size: 6.2 MB (6247392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebf0bfe0798587a30517f155962d507481607c83f3325d8ff79118e24077abb6`  
		Last Modified: Wed, 21 Oct 2026 00:18:54 GMT  
		Size: 306.0 MB (306043225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c00e7ff050edf5f852888343c83231563416e64983c139e581dbc40f0bb33bf8`  
		Last Modified: Wed, 21 Oct 2026 00:18:48 GMT  
		Size: 373.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:a783a0a053baf24401c6912fcc343c694cab4e2da9781ad09311393777dc6954
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2264057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f47e5575a3ccd88629fbe6ec112fb43579581faf47c674d9e0dcaf8da58ca80`

```dockerfile
```

-	Layers:
	-	`sha256:94d1ababde8139cf257549fad6b2ccdbfbe585cdfe7a0534d53bf32ae55ed148`  
		Last Modified: Wed, 21 Oct 2026 00:18:48 GMT  
		Size: 2.2 MB (2246356 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f1e4f9ae5f4ba8c8a51e601cf46b19ee4a5d51ce7d4629b9d208270f12e69e0`  
		Last Modified: Wed, 21 Oct 2026 00:18:48 GMT  
		Size: 17.7 KB (17701 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1-trixie` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:345e062ae6688beaea961b6bd31780b0d8729774537c9f9764517733eb198701
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.1 MB (361100422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f90ea6d0e948d86ad47d3ca0a82a43da16acee9d43aeae300a58e8bf59e0e3ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:16:48 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:16:48 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:16:48 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 21 Oct 2026 00:16:48 GMT
ENV JULIA_VERSION=1.13.2
# Wed, 21 Oct 2026 00:16:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:16:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:16:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:16:48 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6036bd4cbedb72c264a3e38730e8628dbdd600292bd87195810530f6387981d4`  
		Last Modified: Wed, 21 Oct 2026 00:17:34 GMT  
		Size: 6.2 MB (6153234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3019b92747871c3ce2f117263323e29a50f1669a042111d1a35319031a9b8767`  
		Last Modified: Wed, 21 Oct 2026 00:17:40 GMT  
		Size: 324.7 MB (324746340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e88fb31a1b54f7112b6132545ae636d029e85dc9a4d0f9275e26b1c9f673621`  
		Last Modified: Wed, 21 Oct 2026 00:17:34 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:df62e34a70752a3204d2ee3b4cb1671a061505e405c4260c52270fad12a9a4cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2264548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7def002ffdd20b44ee6066eea975c692f9d767df1483f4f6a2333bd245d477b`

```dockerfile
```

-	Layers:
	-	`sha256:e9e0abce2cf1b9498c259dbc956fd4eef70539b40bacdb882d3812a79ef8b3a3`  
		Last Modified: Wed, 21 Oct 2026 00:17:34 GMT  
		Size: 2.2 MB (2246680 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f95fcbb65ebc3064436cc15265269a43411463d5d9e2fcd0da27d6309a70adab`  
		Last Modified: Wed, 21 Oct 2026 00:17:34 GMT  
		Size: 17.9 KB (17868 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1-trixie` - linux; 386

```console
$ docker pull julia@sha256:7e21d3c81767c3ab5681f224b40803902e909007fe5692c7d74096163fe7a805
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.6 MB (280570546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea43fac9d2291adccf5e353459154c6a256e46ffce44aff9f1b51f1f961e3338`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Fri, 16 Oct 2026 20:38:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:38:19 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 16 Oct 2026 20:38:19 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:38:19 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Fri, 16 Oct 2026 20:38:19 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:38:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Fri, 16 Oct 2026 20:38:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:38:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:38:19 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:554a03fe980520b30a093a5e2efbee0c1130fe1c50dec4fc5af611cbdc2929b3`  
		Last Modified: Fri, 16 Oct 2026 20:38:52 GMT  
		Size: 6.4 MB (6436301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10d99cf53b239f508d970c767af5bbfd96dab2783c804ac07000b98343ea7814`  
		Last Modified: Fri, 16 Oct 2026 20:38:57 GMT  
		Size: 242.8 MB (242780581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e81c48df08bf48d59caed031420eb17c8fc903cc213aeb573e0d95a0ae191dcd`  
		Last Modified: Fri, 16 Oct 2026 20:38:51 GMT  
		Size: 367.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:5e85f1cba43f67c29590e01b56be07f2a142c43017a2cb07cfdd60ed8ed99f4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2262405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1852933f316f0a93f797b944435141ac8c92e795cf8a98313b30b01f460ff923`

```dockerfile
```

-	Layers:
	-	`sha256:1ab50347472b3edc5b24784b26081062a628f64b1928df3b77683c4e6d8cef31`  
		Last Modified: Fri, 16 Oct 2026 20:38:51 GMT  
		Size: 2.2 MB (2244758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:50be2bb2a72bf473e903dbbd4c0e08912da03387f8f919b92071f1ad3456274d`  
		Last Modified: Fri, 16 Oct 2026 20:38:51 GMT  
		Size: 17.6 KB (17647 bytes)  
		MIME: application/vnd.in-toto+json

## `julia:1-windowsservercore`

```console
$ docker pull julia@sha256:4cd3345c7d3b4bbcb1fdb86ecc030894b9f92dc41392acc3b2315b96a4515ecd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `julia:1-windowsservercore` - windows version 10.0.26100.33650; amd64

```console
$ docker pull julia@sha256:4ca23aba162ddc0f3748ad695d096151b6f7c61c011786fe1e8afc5678f0c1f4
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2700853039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:384471d80a6a72485150d71258d83127b7e8f81e340e88eb728df66d7f19f16c`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Fri, 16 Oct 2026 20:30:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 16 Oct 2026 20:46:55 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:46:56 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.2-win64.exe
# Fri, 16 Oct 2026 20:46:57 GMT
ENV JULIA_SHA256=9de7f1e34839e053cc1c8f44c89c1235506e5fbd4adcdcce88b88bf1647d8f50
# Fri, 16 Oct 2026 20:48:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Fri, 16 Oct 2026 20:48:11 GMT
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
	-	`sha256:30233c4168f9992d50584d2d698effa4424ebdd0126152fa60d94095085a992d`  
		Last Modified: Fri, 16 Oct 2026 20:32:25 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad518e260a77dffb99a4d5a3caf97ebc98e8041eda44a03846c95375a71fed0b`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23768f172a520477ec018d4abe48cdcb8fffc2f8bb17e1d2c3df781546a334e8`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ebc390116de35d8fe362f8349c81ce08c7ba60f4aef2e382c3a2466e529d73`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b97598c1d71a517ccf3650bfa5d8e1b0f13e4adb903f1e3f4f3d42d3c4c8e9`  
		Last Modified: Fri, 16 Oct 2026 20:48:59 GMT  
		Size: 308.9 MB (308852308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03797a51205c787c36ef206d6c1362717c6865435763ee69da40486bc6d198f`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1-windowsservercore` - windows version 10.0.20348.5761; amd64

```console
$ docker pull julia@sha256:3182ed87a0f6d4a7445e471036deed13915a545665408567fb4a5a3d7fa48a47
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2535123625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:413009c92e57b811e9d22134f588a879400658fd41021d7ee24c22c365352a6e`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Fri, 16 Oct 2026 20:29:11 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 16 Oct 2026 20:47:02 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:47:02 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.2-win64.exe
# Fri, 16 Oct 2026 20:47:03 GMT
ENV JULIA_SHA256=9de7f1e34839e053cc1c8f44c89c1235506e5fbd4adcdcce88b88bf1647d8f50
# Fri, 16 Oct 2026 20:49:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Fri, 16 Oct 2026 20:49:45 GMT
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
	-	`sha256:5c8aa03da74b5d0234f4f699ca7462ab937696ca4ba6a968d2c542a67f99f054`  
		Last Modified: Fri, 16 Oct 2026 20:31:19 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:157e9ed2e9d7cdb997941c379ba741360fb077d98de0fa5a730b71584018c2a9`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ef9a95ea9b30b624a12f9c4c592d3533aa9a89c840cd9361fcc1ce42835ae3`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464625ecd46addeae25d21a47edad65cbdb9c3f1ccbd359d4b2ffe6727160d92`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c9801d74d4f3791626b71a7b91cbb897aca8eaa34bee68573f8582702f33e8`  
		Last Modified: Fri, 16 Oct 2026 20:50:32 GMT  
		Size: 308.8 MB (308831575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b74bc1ba10945cb1464b4160801225a45d3c7daac4b7cb9dcd52dd53172e01`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1-windowsservercore-ltsc2022`

```console
$ docker pull julia@sha256:b2cacc274c0c5433aa4dade58700d9738965ce943fc0762a6ec2aa9cb328cab8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `julia:1-windowsservercore-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull julia@sha256:3182ed87a0f6d4a7445e471036deed13915a545665408567fb4a5a3d7fa48a47
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2535123625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:413009c92e57b811e9d22134f588a879400658fd41021d7ee24c22c365352a6e`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Fri, 16 Oct 2026 20:29:11 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 16 Oct 2026 20:47:02 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:47:02 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.2-win64.exe
# Fri, 16 Oct 2026 20:47:03 GMT
ENV JULIA_SHA256=9de7f1e34839e053cc1c8f44c89c1235506e5fbd4adcdcce88b88bf1647d8f50
# Fri, 16 Oct 2026 20:49:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Fri, 16 Oct 2026 20:49:45 GMT
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
	-	`sha256:5c8aa03da74b5d0234f4f699ca7462ab937696ca4ba6a968d2c542a67f99f054`  
		Last Modified: Fri, 16 Oct 2026 20:31:19 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:157e9ed2e9d7cdb997941c379ba741360fb077d98de0fa5a730b71584018c2a9`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ef9a95ea9b30b624a12f9c4c592d3533aa9a89c840cd9361fcc1ce42835ae3`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464625ecd46addeae25d21a47edad65cbdb9c3f1ccbd359d4b2ffe6727160d92`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c9801d74d4f3791626b71a7b91cbb897aca8eaa34bee68573f8582702f33e8`  
		Last Modified: Fri, 16 Oct 2026 20:50:32 GMT  
		Size: 308.8 MB (308831575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b74bc1ba10945cb1464b4160801225a45d3c7daac4b7cb9dcd52dd53172e01`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1-windowsservercore-ltsc2025`

```console
$ docker pull julia@sha256:7500f239617339ed7516bf92a602c889ba92da00db2a7aed9e4f7874411fc5c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33650; amd64

### `julia:1-windowsservercore-ltsc2025` - windows version 10.0.26100.33650; amd64

```console
$ docker pull julia@sha256:4ca23aba162ddc0f3748ad695d096151b6f7c61c011786fe1e8afc5678f0c1f4
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2700853039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:384471d80a6a72485150d71258d83127b7e8f81e340e88eb728df66d7f19f16c`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Fri, 16 Oct 2026 20:30:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 16 Oct 2026 20:46:55 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:46:56 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.2-win64.exe
# Fri, 16 Oct 2026 20:46:57 GMT
ENV JULIA_SHA256=9de7f1e34839e053cc1c8f44c89c1235506e5fbd4adcdcce88b88bf1647d8f50
# Fri, 16 Oct 2026 20:48:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Fri, 16 Oct 2026 20:48:11 GMT
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
	-	`sha256:30233c4168f9992d50584d2d698effa4424ebdd0126152fa60d94095085a992d`  
		Last Modified: Fri, 16 Oct 2026 20:32:25 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad518e260a77dffb99a4d5a3caf97ebc98e8041eda44a03846c95375a71fed0b`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23768f172a520477ec018d4abe48cdcb8fffc2f8bb17e1d2c3df781546a334e8`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ebc390116de35d8fe362f8349c81ce08c7ba60f4aef2e382c3a2466e529d73`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b97598c1d71a517ccf3650bfa5d8e1b0f13e4adb903f1e3f4f3d42d3c4c8e9`  
		Last Modified: Fri, 16 Oct 2026 20:48:59 GMT  
		Size: 308.9 MB (308852308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03797a51205c787c36ef206d6c1362717c6865435763ee69da40486bc6d198f`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.10`

```console
$ docker pull julia@sha256:9d13090445f853f74e7bb4a9ca3041c8589bd43643d280f1ba18bd1733776127
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

### `julia:1.10` - linux; amd64

```console
$ docker pull julia@sha256:9599f869e2e6446aeb52cac19a459c4737c2b580b00ad0396b15dcc1f9e30d24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.0 MB (213981870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e1eb2f2ef5c51a0dce3df64484712855a78346cf76f15020b1d227a99fdc1eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:18:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:19:10 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:19:10 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:19:10 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 21 Oct 2026 00:19:10 GMT
ENV JULIA_VERSION=1.10.12
# Wed, 21 Oct 2026 00:19:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.10/julia-1.10.12-linux-x86_64.tar.gz'; 			sha256='b0c50dfe349d76ffc8580d24e0c0be623988a6d91ed57ad8b73c0137fd27bc0d'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.10/julia-1.10.12-linux-i686.tar.gz'; 			sha256='453d80cf0ce6f21041ff16d677e702c85557f28f078e8a91dd01582edb57708c'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.10/julia-1.10.12-linux-aarch64.tar.gz'; 			sha256='cc257b21967049642bfe17de1aff7dae17477eba4f423f98cb400c002080e5a2'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:19:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:19:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:19:10 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37cc55a4f2d1c18a9a9023b95de601e2371b61bef5120b9bc34b2e4791fe2845`  
		Last Modified: Wed, 21 Oct 2026 00:19:38 GMT  
		Size: 6.2 MB (6247419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd7717502d8b57eccdb1e5751d3107a08fd972073234a92cf97e2be18593277c`  
		Last Modified: Wed, 21 Oct 2026 00:19:43 GMT  
		Size: 177.9 MB (177890499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fe16af45cc0328d525f645ec08b58eea76e70849ac2f3b936e2420f6f8b6252`  
		Last Modified: Wed, 21 Oct 2026 00:19:38 GMT  
		Size: 373.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.10` - unknown; unknown

```console
$ docker pull julia@sha256:6c5d23e2af7f616393ac269ee1f1839f3845217044c61f568b29732a909e25ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2261737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdf025391b532650c963a187bf1ca7c3b8bdfbdabfd75afd75fccf8e867283e3`

```dockerfile
```

-	Layers:
	-	`sha256:42dea551876a106ff05f2ad67c2f1bc0f7c7b0c71db02d2cedcf5418825af0d2`  
		Last Modified: Wed, 21 Oct 2026 00:19:38 GMT  
		Size: 2.2 MB (2245208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef9e4b77f3cb7e0fe307bf49e317d50d92082edf1e11e2efdaa852b668fcc950`  
		Last Modified: Wed, 21 Oct 2026 00:19:38 GMT  
		Size: 16.5 KB (16529 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.10` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:1babf82608b07f194f433db5a31ec7684c8be857b4bce60b804ddc67274abbe9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.2 MB (215170748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba133561a8e03d520f823e854ba185edd6c15ba7ebec3b25dd63b735d5e52195`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:53:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:53:20 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 01:53:20 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:53:20 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 21 Oct 2026 01:53:20 GMT
ENV JULIA_VERSION=1.10.12
# Wed, 21 Oct 2026 01:53:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.10/julia-1.10.12-linux-x86_64.tar.gz'; 			sha256='b0c50dfe349d76ffc8580d24e0c0be623988a6d91ed57ad8b73c0137fd27bc0d'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.10/julia-1.10.12-linux-i686.tar.gz'; 			sha256='453d80cf0ce6f21041ff16d677e702c85557f28f078e8a91dd01582edb57708c'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.10/julia-1.10.12-linux-aarch64.tar.gz'; 			sha256='cc257b21967049642bfe17de1aff7dae17477eba4f423f98cb400c002080e5a2'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 01:53:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 01:53:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 01:53:21 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c3c6c74730b336b2dbc1280ac1c391e8c35786c01606d71bec8b24e515c652d`  
		Last Modified: Wed, 21 Oct 2026 01:53:49 GMT  
		Size: 6.2 MB (6153244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71b087871659ff664acc20eb8f9d66e538e6f880d31f8f875a72a565733592cc`  
		Last Modified: Wed, 21 Oct 2026 01:53:54 GMT  
		Size: 178.8 MB (178816652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51cd4d91bd808f7c1e711bb73aac9d4ae3d81055040333809ae9646c0a3a986f`  
		Last Modified: Wed, 21 Oct 2026 01:53:49 GMT  
		Size: 374.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.10` - unknown; unknown

```console
$ docker pull julia@sha256:7f15def37abd4751a94b6fa04b995c81cf229c164d77b8f45a4d3f0742f466ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2260898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06a200a2e5a915810bb266932caf66d7efa4ff067a88f88d9c61c6852ea34f32`

```dockerfile
```

-	Layers:
	-	`sha256:b540de5248e4934b3437cfb4b3389467fffbc84fd89982744d4c125b68ffb4c5`  
		Last Modified: Wed, 21 Oct 2026 01:53:49 GMT  
		Size: 2.2 MB (2244250 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc516daec09bac8c51d85929c8af46f4c4f1a15ae4e0153960e0eade0763218c`  
		Last Modified: Wed, 21 Oct 2026 01:53:49 GMT  
		Size: 16.6 KB (16648 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.10` - linux; 386

```console
$ docker pull julia@sha256:ec635436226574f41285c39b77994c23b8e888ebae690bfeb545777121d2094c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.0 MB (196010767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5336463d1d66370c64c00260862f03ca2a3636e3705e3ebc79a55ab09cf9068`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:16:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:16:41 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:16:41 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:16:41 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:16:41 GMT
ENV JULIA_VERSION=1.10.12
# Tue, 06 Oct 2026 01:16:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.10/julia-1.10.12-linux-x86_64.tar.gz'; 			sha256='b0c50dfe349d76ffc8580d24e0c0be623988a6d91ed57ad8b73c0137fd27bc0d'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.10/julia-1.10.12-linux-i686.tar.gz'; 			sha256='453d80cf0ce6f21041ff16d677e702c85557f28f078e8a91dd01582edb57708c'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.10/julia-1.10.12-linux-aarch64.tar.gz'; 			sha256='cc257b21967049642bfe17de1aff7dae17477eba4f423f98cb400c002080e5a2'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:16:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:16:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:16:41 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46e416e3288fab229c083bb2f1f29cbb0b965ecc5280e3a73b99097704249cc8`  
		Last Modified: Tue, 06 Oct 2026 01:17:06 GMT  
		Size: 6.4 MB (6436290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c57b7276f8ba722c148aa80f674c6c110628146c32f821295c035239093772a`  
		Last Modified: Tue, 06 Oct 2026 01:17:09 GMT  
		Size: 158.2 MB (158220810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e3489df25bcd405d8e129c0d2dc0e2fcc2a752608acf1ccc5763bcbaee0d531`  
		Last Modified: Tue, 06 Oct 2026 01:17:05 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.10` - unknown; unknown

```console
$ docker pull julia@sha256:771e4395fe96aa4b30675bc67210ca2921c4b56a7679fff73b84bb03604c8477
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2260125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f18708db5e081e467007f73febf6d61ea084e9c0c4079fd5e73b75dfe6e5e11`

```dockerfile
```

-	Layers:
	-	`sha256:3a9095b4f1eae216f03d1368e854880ef5fc7bc0513820d8a66677c579a619e9`  
		Last Modified: Tue, 06 Oct 2026 01:17:05 GMT  
		Size: 2.2 MB (2243630 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0799dfec42f81f88e7b656324453a7ff69f9c7ead4d5dc41fb802a52e2818bab`  
		Last Modified: Tue, 06 Oct 2026 01:17:05 GMT  
		Size: 16.5 KB (16495 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.10` - windows version 10.0.26100.33650; amd64

```console
$ docker pull julia@sha256:ad4a383311824500d1b68e3032c356aae0579917cc302418d4228957481717c5
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2586127194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:585d33662d7ca1fc48022c760e26380f8fd80d017f3445f30cac3d7df273f7e9`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Tue, 13 Oct 2026 23:02:33 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:02:34 GMT
ENV JULIA_VERSION=1.10.12
# Tue, 13 Oct 2026 23:02:36 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.10/julia-1.10.12-win64.exe
# Tue, 13 Oct 2026 23:02:37 GMT
ENV JULIA_SHA256=d971ea3cc03040e45893e3591b86809bb69b33693091b068270bf6f341f38f94
# Tue, 13 Oct 2026 23:03:24 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:03:25 GMT
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
	-	`sha256:94e773650491efe08e74429b95a81d4d00910a3691d8b274b73e05f43cd2736d`  
		Last Modified: Tue, 13 Oct 2026 23:03:31 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a41d28dfcb5868c53b306a44de6c4902df5d055b284f4a131f34dfa7711644d`  
		Last Modified: Tue, 13 Oct 2026 23:03:29 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ee4a3c59f656732f1cc8375fa598cf6745419f4b1c834599a920f4f33b0fa39`  
		Last Modified: Tue, 13 Oct 2026 23:03:29 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf1d8750342d35b3b4ed536822cadf5112cb28a0bbeebb8f084353535e40c61`  
		Last Modified: Tue, 13 Oct 2026 23:03:29 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04069efa33c2d098e4d4823fcd61db1a1055a546b954e248f16aa415716c2813`  
		Last Modified: Tue, 13 Oct 2026 23:03:55 GMT  
		Size: 194.1 MB (194126487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e52d8d3f7059f62285787310a8b559b5997446972a564ffaace91ce18748cfd`  
		Last Modified: Tue, 13 Oct 2026 23:03:29 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.10` - windows version 10.0.20348.5761; amd64

```console
$ docker pull julia@sha256:11e922c4610d1ae810c1eba520188093e6991f1c8ed3ac85b036f0046c09a280
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2420395231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63fb7fbfffd5bd7593058ac538724fb3a2042f425695be859533db6972541ba6`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 22:56:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 22:58:42 GMT
ENV JULIA_VERSION=1.10.12
# Tue, 13 Oct 2026 22:58:43 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.10/julia-1.10.12-win64.exe
# Tue, 13 Oct 2026 22:58:43 GMT
ENV JULIA_SHA256=d971ea3cc03040e45893e3591b86809bb69b33693091b068270bf6f341f38f94
# Tue, 13 Oct 2026 22:59:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 22:59:31 GMT
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
	-	`sha256:2199c4844b30e9c638a16f875cb259173696ccfa543d7babf8dca385c8a34de4`  
		Last Modified: Tue, 13 Oct 2026 22:57:23 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23df061659094d50ff2bd7263ba6644f2776d53d5c446c4d3fc6d1d66e42763d`  
		Last Modified: Tue, 13 Oct 2026 22:59:35 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b737938c645ef4098f5ab8c6514798a94d74765428fc1ce88b141f49365064bc`  
		Last Modified: Tue, 13 Oct 2026 22:59:35 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337fc6e099338ecb2ed64f674a1a315acfacb7802f43d9c2deefe0ae6f572f20`  
		Last Modified: Tue, 13 Oct 2026 22:59:35 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e5e2a8b8ba2772d7aed54a6bf242494747dd33ec621e8190acec37485a4917`  
		Last Modified: Tue, 13 Oct 2026 23:00:00 GMT  
		Size: 194.1 MB (194103203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa818cf47a55f8804bb6e49f972ba80407a5e648d6bae052906d9501068f6236`  
		Last Modified: Tue, 13 Oct 2026 22:59:35 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.10-bookworm`

```console
$ docker pull julia@sha256:582c4636b81e2a311aece815c7597b0aaa33d83993fadacfacee79b7834ffc62
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `julia:1.10-bookworm` - linux; amd64

```console
$ docker pull julia@sha256:269f19104b1339ffeaa5ec780c771aef9cf148c88ce6aafaa0d14ae550371c0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.6 MB (211641041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2b743794663acd5ce10fc88834609f3c4d725d8edc9d821f9e09fc792710f4f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:19:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:19:18 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:19:18 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:19:18 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 21 Oct 2026 00:19:18 GMT
ENV JULIA_VERSION=1.10.12
# Wed, 21 Oct 2026 00:19:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.10/julia-1.10.12-linux-x86_64.tar.gz'; 			sha256='b0c50dfe349d76ffc8580d24e0c0be623988a6d91ed57ad8b73c0137fd27bc0d'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.10/julia-1.10.12-linux-i686.tar.gz'; 			sha256='453d80cf0ce6f21041ff16d677e702c85557f28f078e8a91dd01582edb57708c'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.10/julia-1.10.12-linux-aarch64.tar.gz'; 			sha256='cc257b21967049642bfe17de1aff7dae17477eba4f423f98cb400c002080e5a2'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:19:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:19:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:19:18 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45ddfc4b225356b047dec9f89936cd32d784a8298d28c0e85f7250c12f6fa83c`  
		Last Modified: Wed, 21 Oct 2026 00:19:47 GMT  
		Size: 5.5 MB (5542617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e25af5fc9c5b015b4f4ca1af174f343a9d5385ccdad454f26254c96a71c2301`  
		Last Modified: Wed, 21 Oct 2026 00:19:51 GMT  
		Size: 177.9 MB (177850115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d536ea07759ecee2a174206165032a68279e3554caddcce98f783a97ac791caf`  
		Last Modified: Wed, 21 Oct 2026 00:19:47 GMT  
		Size: 374.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.10-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:0317a482864dea02e511b311e49cb6c95a1cc9079740c7fcd2db3a1f99a2e4fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2588331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13a3f0748663670fc6c7dde408ff7d76b7a33198de8099dd95acc30a9f74a975`

```dockerfile
```

-	Layers:
	-	`sha256:a9fd5f00611ca73705445901b473c2d51c73158c1dccc96ec86f4313e7a0c36b`  
		Last Modified: Wed, 21 Oct 2026 00:19:47 GMT  
		Size: 2.6 MB (2572372 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b47c9392cde74c0ec0317ad7c3d313dfc4509d052aa1b37a5bb4334749f7594a`  
		Last Modified: Wed, 21 Oct 2026 00:19:47 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.10-bookworm` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:d91844d18d357b057ef22ba82761510d5dfa786f4dba29831823f9fb170988d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.3 MB (212308583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da5dc780670631d22637b80f81394a8da34c006866843bae44bc84b3747b2268`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:17:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:18:10 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:18:10 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:18:10 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 21 Oct 2026 00:18:10 GMT
ENV JULIA_VERSION=1.10.12
# Wed, 21 Oct 2026 00:18:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.10/julia-1.10.12-linux-x86_64.tar.gz'; 			sha256='b0c50dfe349d76ffc8580d24e0c0be623988a6d91ed57ad8b73c0137fd27bc0d'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.10/julia-1.10.12-linux-i686.tar.gz'; 			sha256='453d80cf0ce6f21041ff16d677e702c85557f28f078e8a91dd01582edb57708c'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.10/julia-1.10.12-linux-aarch64.tar.gz'; 			sha256='cc257b21967049642bfe17de1aff7dae17477eba4f423f98cb400c002080e5a2'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:18:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:18:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:18:10 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4bb0364a2dff345ebe32faa3f796e73e964a5b2c60e9300af208e17c76b42c4`  
		Last Modified: Wed, 21 Oct 2026 00:18:39 GMT  
		Size: 5.4 MB (5387973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57e734b57048f66c4efac7fba5cdea1703edf7288f318e661f7a42d884ee86cf`  
		Last Modified: Wed, 21 Oct 2026 00:18:43 GMT  
		Size: 178.8 MB (178781811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ae2d500d7f03d44134f121b21e005fc667815086d7f3a86379365f4241a1cac`  
		Last Modified: Wed, 21 Oct 2026 00:18:39 GMT  
		Size: 374.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.10-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:f51e20abf97c5aa6b31d451518c8b20a2fe2e1e7469be2f257bdb59e5199bcb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2587443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f554a9fcde212bd29f4faf91aa70b0d685496db162b257ca9515e1545e574312`

```dockerfile
```

-	Layers:
	-	`sha256:ee6f8663f1b375a2830c39ce911d1b4e841de87b53344575bed9453920836931`  
		Last Modified: Wed, 21 Oct 2026 00:18:40 GMT  
		Size: 2.6 MB (2571389 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0200a8002fbbdebc041f1377d003582d3503fb63c6a92ae3b43f2e45a7cadaee`  
		Last Modified: Wed, 21 Oct 2026 00:18:39 GMT  
		Size: 16.1 KB (16054 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.10-bookworm` - linux; 386

```console
$ docker pull julia@sha256:9fdb618c1c0faf4d64bfb13058b31e7e329c4457768850729e462dff2cdb0127
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.1 MB (193126434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:060879d4621d8067336dae5659170cd49459834dbc43834e4c24a0c2fd44b2ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:17:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:17:31 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:17:31 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:17:31 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:17:31 GMT
ENV JULIA_VERSION=1.10.12
# Tue, 06 Oct 2026 01:17:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.10/julia-1.10.12-linux-x86_64.tar.gz'; 			sha256='b0c50dfe349d76ffc8580d24e0c0be623988a6d91ed57ad8b73c0137fd27bc0d'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.10/julia-1.10.12-linux-i686.tar.gz'; 			sha256='453d80cf0ce6f21041ff16d677e702c85557f28f078e8a91dd01582edb57708c'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.10/julia-1.10.12-linux-aarch64.tar.gz'; 			sha256='cc257b21967049642bfe17de1aff7dae17477eba4f423f98cb400c002080e5a2'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:17:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:17:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:17:31 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:4fde7ff71d38b44de13588c355f9acc395f4ecbec569968085401a6d6b40eff2`  
		Last Modified: Tue, 06 Oct 2026 00:13:26 GMT  
		Size: 29.2 MB (29239373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed538ce46cc641411b42b8ec5bd5d2fa24de1afbe391534a44dcd651accb3ab2`  
		Last Modified: Tue, 06 Oct 2026 01:17:55 GMT  
		Size: 5.7 MB (5705013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b52e7fd30c5332e31f9aa8d3ea46768443eac047355c0aa83fccce90ce405e1c`  
		Last Modified: Tue, 06 Oct 2026 01:17:58 GMT  
		Size: 158.2 MB (158181680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ae99c3a1d4a37cabbe7d96a75007b36a288eb04113f9718660a03a04813312f`  
		Last Modified: Tue, 06 Oct 2026 01:17:54 GMT  
		Size: 368.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.10-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:896d24cbd2235e3d7b7da80b2391b28e8cca772f75d3e2ca0ab1805320192f64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2586759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1324f7bfddf0866104618d1e6ef934926a0d1ad78dc7ab3d6393cd57365bd73e`

```dockerfile
```

-	Layers:
	-	`sha256:97ba201ad55beedb1a925130d4424abf8daca6e3e0331f80b7b77c83c4a0410a`  
		Last Modified: Tue, 06 Oct 2026 01:17:55 GMT  
		Size: 2.6 MB (2570824 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:016152e04c1f4dcc8fb0067086a6e1d5ed945e3747e35b0ec66b81d5724656df`  
		Last Modified: Tue, 06 Oct 2026 01:17:54 GMT  
		Size: 15.9 KB (15935 bytes)  
		MIME: application/vnd.in-toto+json

## `julia:1.10-trixie`

```console
$ docker pull julia@sha256:485e1eaa28a64239aece5b674612a9a06416eecca30b734bfbdf007e8ccf8a95
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `julia:1.10-trixie` - linux; amd64

```console
$ docker pull julia@sha256:9599f869e2e6446aeb52cac19a459c4737c2b580b00ad0396b15dcc1f9e30d24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.0 MB (213981870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e1eb2f2ef5c51a0dce3df64484712855a78346cf76f15020b1d227a99fdc1eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:18:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:19:10 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:19:10 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:19:10 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 21 Oct 2026 00:19:10 GMT
ENV JULIA_VERSION=1.10.12
# Wed, 21 Oct 2026 00:19:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.10/julia-1.10.12-linux-x86_64.tar.gz'; 			sha256='b0c50dfe349d76ffc8580d24e0c0be623988a6d91ed57ad8b73c0137fd27bc0d'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.10/julia-1.10.12-linux-i686.tar.gz'; 			sha256='453d80cf0ce6f21041ff16d677e702c85557f28f078e8a91dd01582edb57708c'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.10/julia-1.10.12-linux-aarch64.tar.gz'; 			sha256='cc257b21967049642bfe17de1aff7dae17477eba4f423f98cb400c002080e5a2'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:19:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:19:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:19:10 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37cc55a4f2d1c18a9a9023b95de601e2371b61bef5120b9bc34b2e4791fe2845`  
		Last Modified: Wed, 21 Oct 2026 00:19:38 GMT  
		Size: 6.2 MB (6247419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd7717502d8b57eccdb1e5751d3107a08fd972073234a92cf97e2be18593277c`  
		Last Modified: Wed, 21 Oct 2026 00:19:43 GMT  
		Size: 177.9 MB (177890499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fe16af45cc0328d525f645ec08b58eea76e70849ac2f3b936e2420f6f8b6252`  
		Last Modified: Wed, 21 Oct 2026 00:19:38 GMT  
		Size: 373.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.10-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:6c5d23e2af7f616393ac269ee1f1839f3845217044c61f568b29732a909e25ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2261737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdf025391b532650c963a187bf1ca7c3b8bdfbdabfd75afd75fccf8e867283e3`

```dockerfile
```

-	Layers:
	-	`sha256:42dea551876a106ff05f2ad67c2f1bc0f7c7b0c71db02d2cedcf5418825af0d2`  
		Last Modified: Wed, 21 Oct 2026 00:19:38 GMT  
		Size: 2.2 MB (2245208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef9e4b77f3cb7e0fe307bf49e317d50d92082edf1e11e2efdaa852b668fcc950`  
		Last Modified: Wed, 21 Oct 2026 00:19:38 GMT  
		Size: 16.5 KB (16529 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.10-trixie` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:1babf82608b07f194f433db5a31ec7684c8be857b4bce60b804ddc67274abbe9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.2 MB (215170748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba133561a8e03d520f823e854ba185edd6c15ba7ebec3b25dd63b735d5e52195`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:53:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:53:20 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 01:53:20 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:53:20 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 21 Oct 2026 01:53:20 GMT
ENV JULIA_VERSION=1.10.12
# Wed, 21 Oct 2026 01:53:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.10/julia-1.10.12-linux-x86_64.tar.gz'; 			sha256='b0c50dfe349d76ffc8580d24e0c0be623988a6d91ed57ad8b73c0137fd27bc0d'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.10/julia-1.10.12-linux-i686.tar.gz'; 			sha256='453d80cf0ce6f21041ff16d677e702c85557f28f078e8a91dd01582edb57708c'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.10/julia-1.10.12-linux-aarch64.tar.gz'; 			sha256='cc257b21967049642bfe17de1aff7dae17477eba4f423f98cb400c002080e5a2'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 01:53:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 01:53:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 01:53:21 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c3c6c74730b336b2dbc1280ac1c391e8c35786c01606d71bec8b24e515c652d`  
		Last Modified: Wed, 21 Oct 2026 01:53:49 GMT  
		Size: 6.2 MB (6153244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71b087871659ff664acc20eb8f9d66e538e6f880d31f8f875a72a565733592cc`  
		Last Modified: Wed, 21 Oct 2026 01:53:54 GMT  
		Size: 178.8 MB (178816652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51cd4d91bd808f7c1e711bb73aac9d4ae3d81055040333809ae9646c0a3a986f`  
		Last Modified: Wed, 21 Oct 2026 01:53:49 GMT  
		Size: 374.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.10-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:7f15def37abd4751a94b6fa04b995c81cf229c164d77b8f45a4d3f0742f466ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2260898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06a200a2e5a915810bb266932caf66d7efa4ff067a88f88d9c61c6852ea34f32`

```dockerfile
```

-	Layers:
	-	`sha256:b540de5248e4934b3437cfb4b3389467fffbc84fd89982744d4c125b68ffb4c5`  
		Last Modified: Wed, 21 Oct 2026 01:53:49 GMT  
		Size: 2.2 MB (2244250 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc516daec09bac8c51d85929c8af46f4c4f1a15ae4e0153960e0eade0763218c`  
		Last Modified: Wed, 21 Oct 2026 01:53:49 GMT  
		Size: 16.6 KB (16648 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.10-trixie` - linux; 386

```console
$ docker pull julia@sha256:ec635436226574f41285c39b77994c23b8e888ebae690bfeb545777121d2094c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.0 MB (196010767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5336463d1d66370c64c00260862f03ca2a3636e3705e3ebc79a55ab09cf9068`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:16:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:16:41 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:16:41 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:16:41 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:16:41 GMT
ENV JULIA_VERSION=1.10.12
# Tue, 06 Oct 2026 01:16:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.10/julia-1.10.12-linux-x86_64.tar.gz'; 			sha256='b0c50dfe349d76ffc8580d24e0c0be623988a6d91ed57ad8b73c0137fd27bc0d'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.10/julia-1.10.12-linux-i686.tar.gz'; 			sha256='453d80cf0ce6f21041ff16d677e702c85557f28f078e8a91dd01582edb57708c'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.10/julia-1.10.12-linux-aarch64.tar.gz'; 			sha256='cc257b21967049642bfe17de1aff7dae17477eba4f423f98cb400c002080e5a2'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:16:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:16:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:16:41 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46e416e3288fab229c083bb2f1f29cbb0b965ecc5280e3a73b99097704249cc8`  
		Last Modified: Tue, 06 Oct 2026 01:17:06 GMT  
		Size: 6.4 MB (6436290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c57b7276f8ba722c148aa80f674c6c110628146c32f821295c035239093772a`  
		Last Modified: Tue, 06 Oct 2026 01:17:09 GMT  
		Size: 158.2 MB (158220810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e3489df25bcd405d8e129c0d2dc0e2fcc2a752608acf1ccc5763bcbaee0d531`  
		Last Modified: Tue, 06 Oct 2026 01:17:05 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.10-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:771e4395fe96aa4b30675bc67210ca2921c4b56a7679fff73b84bb03604c8477
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2260125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f18708db5e081e467007f73febf6d61ea084e9c0c4079fd5e73b75dfe6e5e11`

```dockerfile
```

-	Layers:
	-	`sha256:3a9095b4f1eae216f03d1368e854880ef5fc7bc0513820d8a66677c579a619e9`  
		Last Modified: Tue, 06 Oct 2026 01:17:05 GMT  
		Size: 2.2 MB (2243630 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0799dfec42f81f88e7b656324453a7ff69f9c7ead4d5dc41fb802a52e2818bab`  
		Last Modified: Tue, 06 Oct 2026 01:17:05 GMT  
		Size: 16.5 KB (16495 bytes)  
		MIME: application/vnd.in-toto+json

## `julia:1.10-windowsservercore`

```console
$ docker pull julia@sha256:9b3b00107a50d580be3a4b77f13c5e9a8244ca65e0f0323705062717e36db3ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `julia:1.10-windowsservercore` - windows version 10.0.26100.33650; amd64

```console
$ docker pull julia@sha256:ad4a383311824500d1b68e3032c356aae0579917cc302418d4228957481717c5
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2586127194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:585d33662d7ca1fc48022c760e26380f8fd80d017f3445f30cac3d7df273f7e9`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Tue, 13 Oct 2026 23:02:33 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:02:34 GMT
ENV JULIA_VERSION=1.10.12
# Tue, 13 Oct 2026 23:02:36 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.10/julia-1.10.12-win64.exe
# Tue, 13 Oct 2026 23:02:37 GMT
ENV JULIA_SHA256=d971ea3cc03040e45893e3591b86809bb69b33693091b068270bf6f341f38f94
# Tue, 13 Oct 2026 23:03:24 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:03:25 GMT
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
	-	`sha256:94e773650491efe08e74429b95a81d4d00910a3691d8b274b73e05f43cd2736d`  
		Last Modified: Tue, 13 Oct 2026 23:03:31 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a41d28dfcb5868c53b306a44de6c4902df5d055b284f4a131f34dfa7711644d`  
		Last Modified: Tue, 13 Oct 2026 23:03:29 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ee4a3c59f656732f1cc8375fa598cf6745419f4b1c834599a920f4f33b0fa39`  
		Last Modified: Tue, 13 Oct 2026 23:03:29 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf1d8750342d35b3b4ed536822cadf5112cb28a0bbeebb8f084353535e40c61`  
		Last Modified: Tue, 13 Oct 2026 23:03:29 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04069efa33c2d098e4d4823fcd61db1a1055a546b954e248f16aa415716c2813`  
		Last Modified: Tue, 13 Oct 2026 23:03:55 GMT  
		Size: 194.1 MB (194126487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e52d8d3f7059f62285787310a8b559b5997446972a564ffaace91ce18748cfd`  
		Last Modified: Tue, 13 Oct 2026 23:03:29 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.10-windowsservercore` - windows version 10.0.20348.5761; amd64

```console
$ docker pull julia@sha256:11e922c4610d1ae810c1eba520188093e6991f1c8ed3ac85b036f0046c09a280
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2420395231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63fb7fbfffd5bd7593058ac538724fb3a2042f425695be859533db6972541ba6`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 22:56:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 22:58:42 GMT
ENV JULIA_VERSION=1.10.12
# Tue, 13 Oct 2026 22:58:43 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.10/julia-1.10.12-win64.exe
# Tue, 13 Oct 2026 22:58:43 GMT
ENV JULIA_SHA256=d971ea3cc03040e45893e3591b86809bb69b33693091b068270bf6f341f38f94
# Tue, 13 Oct 2026 22:59:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 22:59:31 GMT
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
	-	`sha256:2199c4844b30e9c638a16f875cb259173696ccfa543d7babf8dca385c8a34de4`  
		Last Modified: Tue, 13 Oct 2026 22:57:23 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23df061659094d50ff2bd7263ba6644f2776d53d5c446c4d3fc6d1d66e42763d`  
		Last Modified: Tue, 13 Oct 2026 22:59:35 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b737938c645ef4098f5ab8c6514798a94d74765428fc1ce88b141f49365064bc`  
		Last Modified: Tue, 13 Oct 2026 22:59:35 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337fc6e099338ecb2ed64f674a1a315acfacb7802f43d9c2deefe0ae6f572f20`  
		Last Modified: Tue, 13 Oct 2026 22:59:35 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e5e2a8b8ba2772d7aed54a6bf242494747dd33ec621e8190acec37485a4917`  
		Last Modified: Tue, 13 Oct 2026 23:00:00 GMT  
		Size: 194.1 MB (194103203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa818cf47a55f8804bb6e49f972ba80407a5e648d6bae052906d9501068f6236`  
		Last Modified: Tue, 13 Oct 2026 22:59:35 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.10-windowsservercore-ltsc2022`

```console
$ docker pull julia@sha256:ce4d039dd6bbcdc21cec14d22949412e9ecb5c966fe7d4c4d690c0e2fc1c65e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `julia:1.10-windowsservercore-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull julia@sha256:11e922c4610d1ae810c1eba520188093e6991f1c8ed3ac85b036f0046c09a280
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2420395231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63fb7fbfffd5bd7593058ac538724fb3a2042f425695be859533db6972541ba6`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 22:56:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 22:58:42 GMT
ENV JULIA_VERSION=1.10.12
# Tue, 13 Oct 2026 22:58:43 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.10/julia-1.10.12-win64.exe
# Tue, 13 Oct 2026 22:58:43 GMT
ENV JULIA_SHA256=d971ea3cc03040e45893e3591b86809bb69b33693091b068270bf6f341f38f94
# Tue, 13 Oct 2026 22:59:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 22:59:31 GMT
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
	-	`sha256:2199c4844b30e9c638a16f875cb259173696ccfa543d7babf8dca385c8a34de4`  
		Last Modified: Tue, 13 Oct 2026 22:57:23 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23df061659094d50ff2bd7263ba6644f2776d53d5c446c4d3fc6d1d66e42763d`  
		Last Modified: Tue, 13 Oct 2026 22:59:35 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b737938c645ef4098f5ab8c6514798a94d74765428fc1ce88b141f49365064bc`  
		Last Modified: Tue, 13 Oct 2026 22:59:35 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337fc6e099338ecb2ed64f674a1a315acfacb7802f43d9c2deefe0ae6f572f20`  
		Last Modified: Tue, 13 Oct 2026 22:59:35 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e5e2a8b8ba2772d7aed54a6bf242494747dd33ec621e8190acec37485a4917`  
		Last Modified: Tue, 13 Oct 2026 23:00:00 GMT  
		Size: 194.1 MB (194103203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa818cf47a55f8804bb6e49f972ba80407a5e648d6bae052906d9501068f6236`  
		Last Modified: Tue, 13 Oct 2026 22:59:35 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.10-windowsservercore-ltsc2025`

```console
$ docker pull julia@sha256:5ee0c75571aba842148414cb5d35b4abd47a35e819c67bde32d882d602b125a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33650; amd64

### `julia:1.10-windowsservercore-ltsc2025` - windows version 10.0.26100.33650; amd64

```console
$ docker pull julia@sha256:ad4a383311824500d1b68e3032c356aae0579917cc302418d4228957481717c5
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2586127194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:585d33662d7ca1fc48022c760e26380f8fd80d017f3445f30cac3d7df273f7e9`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Tue, 13 Oct 2026 23:02:33 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:02:34 GMT
ENV JULIA_VERSION=1.10.12
# Tue, 13 Oct 2026 23:02:36 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.10/julia-1.10.12-win64.exe
# Tue, 13 Oct 2026 23:02:37 GMT
ENV JULIA_SHA256=d971ea3cc03040e45893e3591b86809bb69b33693091b068270bf6f341f38f94
# Tue, 13 Oct 2026 23:03:24 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:03:25 GMT
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
	-	`sha256:94e773650491efe08e74429b95a81d4d00910a3691d8b274b73e05f43cd2736d`  
		Last Modified: Tue, 13 Oct 2026 23:03:31 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a41d28dfcb5868c53b306a44de6c4902df5d055b284f4a131f34dfa7711644d`  
		Last Modified: Tue, 13 Oct 2026 23:03:29 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ee4a3c59f656732f1cc8375fa598cf6745419f4b1c834599a920f4f33b0fa39`  
		Last Modified: Tue, 13 Oct 2026 23:03:29 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf1d8750342d35b3b4ed536822cadf5112cb28a0bbeebb8f084353535e40c61`  
		Last Modified: Tue, 13 Oct 2026 23:03:29 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04069efa33c2d098e4d4823fcd61db1a1055a546b954e248f16aa415716c2813`  
		Last Modified: Tue, 13 Oct 2026 23:03:55 GMT  
		Size: 194.1 MB (194126487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e52d8d3f7059f62285787310a8b559b5997446972a564ffaace91ce18748cfd`  
		Last Modified: Tue, 13 Oct 2026 23:03:29 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.10.12`

```console
$ docker pull julia@sha256:9d13090445f853f74e7bb4a9ca3041c8589bd43643d280f1ba18bd1733776127
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

### `julia:1.10.12` - linux; amd64

```console
$ docker pull julia@sha256:9599f869e2e6446aeb52cac19a459c4737c2b580b00ad0396b15dcc1f9e30d24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.0 MB (213981870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e1eb2f2ef5c51a0dce3df64484712855a78346cf76f15020b1d227a99fdc1eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:18:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:19:10 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:19:10 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:19:10 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 21 Oct 2026 00:19:10 GMT
ENV JULIA_VERSION=1.10.12
# Wed, 21 Oct 2026 00:19:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.10/julia-1.10.12-linux-x86_64.tar.gz'; 			sha256='b0c50dfe349d76ffc8580d24e0c0be623988a6d91ed57ad8b73c0137fd27bc0d'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.10/julia-1.10.12-linux-i686.tar.gz'; 			sha256='453d80cf0ce6f21041ff16d677e702c85557f28f078e8a91dd01582edb57708c'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.10/julia-1.10.12-linux-aarch64.tar.gz'; 			sha256='cc257b21967049642bfe17de1aff7dae17477eba4f423f98cb400c002080e5a2'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:19:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:19:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:19:10 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37cc55a4f2d1c18a9a9023b95de601e2371b61bef5120b9bc34b2e4791fe2845`  
		Last Modified: Wed, 21 Oct 2026 00:19:38 GMT  
		Size: 6.2 MB (6247419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd7717502d8b57eccdb1e5751d3107a08fd972073234a92cf97e2be18593277c`  
		Last Modified: Wed, 21 Oct 2026 00:19:43 GMT  
		Size: 177.9 MB (177890499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fe16af45cc0328d525f645ec08b58eea76e70849ac2f3b936e2420f6f8b6252`  
		Last Modified: Wed, 21 Oct 2026 00:19:38 GMT  
		Size: 373.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.10.12` - unknown; unknown

```console
$ docker pull julia@sha256:6c5d23e2af7f616393ac269ee1f1839f3845217044c61f568b29732a909e25ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2261737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdf025391b532650c963a187bf1ca7c3b8bdfbdabfd75afd75fccf8e867283e3`

```dockerfile
```

-	Layers:
	-	`sha256:42dea551876a106ff05f2ad67c2f1bc0f7c7b0c71db02d2cedcf5418825af0d2`  
		Last Modified: Wed, 21 Oct 2026 00:19:38 GMT  
		Size: 2.2 MB (2245208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef9e4b77f3cb7e0fe307bf49e317d50d92082edf1e11e2efdaa852b668fcc950`  
		Last Modified: Wed, 21 Oct 2026 00:19:38 GMT  
		Size: 16.5 KB (16529 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.10.12` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:1babf82608b07f194f433db5a31ec7684c8be857b4bce60b804ddc67274abbe9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.2 MB (215170748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba133561a8e03d520f823e854ba185edd6c15ba7ebec3b25dd63b735d5e52195`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:53:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:53:20 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 01:53:20 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:53:20 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 21 Oct 2026 01:53:20 GMT
ENV JULIA_VERSION=1.10.12
# Wed, 21 Oct 2026 01:53:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.10/julia-1.10.12-linux-x86_64.tar.gz'; 			sha256='b0c50dfe349d76ffc8580d24e0c0be623988a6d91ed57ad8b73c0137fd27bc0d'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.10/julia-1.10.12-linux-i686.tar.gz'; 			sha256='453d80cf0ce6f21041ff16d677e702c85557f28f078e8a91dd01582edb57708c'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.10/julia-1.10.12-linux-aarch64.tar.gz'; 			sha256='cc257b21967049642bfe17de1aff7dae17477eba4f423f98cb400c002080e5a2'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 01:53:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 01:53:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 01:53:21 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c3c6c74730b336b2dbc1280ac1c391e8c35786c01606d71bec8b24e515c652d`  
		Last Modified: Wed, 21 Oct 2026 01:53:49 GMT  
		Size: 6.2 MB (6153244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71b087871659ff664acc20eb8f9d66e538e6f880d31f8f875a72a565733592cc`  
		Last Modified: Wed, 21 Oct 2026 01:53:54 GMT  
		Size: 178.8 MB (178816652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51cd4d91bd808f7c1e711bb73aac9d4ae3d81055040333809ae9646c0a3a986f`  
		Last Modified: Wed, 21 Oct 2026 01:53:49 GMT  
		Size: 374.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.10.12` - unknown; unknown

```console
$ docker pull julia@sha256:7f15def37abd4751a94b6fa04b995c81cf229c164d77b8f45a4d3f0742f466ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2260898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06a200a2e5a915810bb266932caf66d7efa4ff067a88f88d9c61c6852ea34f32`

```dockerfile
```

-	Layers:
	-	`sha256:b540de5248e4934b3437cfb4b3389467fffbc84fd89982744d4c125b68ffb4c5`  
		Last Modified: Wed, 21 Oct 2026 01:53:49 GMT  
		Size: 2.2 MB (2244250 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc516daec09bac8c51d85929c8af46f4c4f1a15ae4e0153960e0eade0763218c`  
		Last Modified: Wed, 21 Oct 2026 01:53:49 GMT  
		Size: 16.6 KB (16648 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.10.12` - linux; 386

```console
$ docker pull julia@sha256:ec635436226574f41285c39b77994c23b8e888ebae690bfeb545777121d2094c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.0 MB (196010767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5336463d1d66370c64c00260862f03ca2a3636e3705e3ebc79a55ab09cf9068`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:16:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:16:41 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:16:41 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:16:41 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:16:41 GMT
ENV JULIA_VERSION=1.10.12
# Tue, 06 Oct 2026 01:16:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.10/julia-1.10.12-linux-x86_64.tar.gz'; 			sha256='b0c50dfe349d76ffc8580d24e0c0be623988a6d91ed57ad8b73c0137fd27bc0d'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.10/julia-1.10.12-linux-i686.tar.gz'; 			sha256='453d80cf0ce6f21041ff16d677e702c85557f28f078e8a91dd01582edb57708c'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.10/julia-1.10.12-linux-aarch64.tar.gz'; 			sha256='cc257b21967049642bfe17de1aff7dae17477eba4f423f98cb400c002080e5a2'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:16:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:16:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:16:41 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46e416e3288fab229c083bb2f1f29cbb0b965ecc5280e3a73b99097704249cc8`  
		Last Modified: Tue, 06 Oct 2026 01:17:06 GMT  
		Size: 6.4 MB (6436290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c57b7276f8ba722c148aa80f674c6c110628146c32f821295c035239093772a`  
		Last Modified: Tue, 06 Oct 2026 01:17:09 GMT  
		Size: 158.2 MB (158220810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e3489df25bcd405d8e129c0d2dc0e2fcc2a752608acf1ccc5763bcbaee0d531`  
		Last Modified: Tue, 06 Oct 2026 01:17:05 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.10.12` - unknown; unknown

```console
$ docker pull julia@sha256:771e4395fe96aa4b30675bc67210ca2921c4b56a7679fff73b84bb03604c8477
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2260125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f18708db5e081e467007f73febf6d61ea084e9c0c4079fd5e73b75dfe6e5e11`

```dockerfile
```

-	Layers:
	-	`sha256:3a9095b4f1eae216f03d1368e854880ef5fc7bc0513820d8a66677c579a619e9`  
		Last Modified: Tue, 06 Oct 2026 01:17:05 GMT  
		Size: 2.2 MB (2243630 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0799dfec42f81f88e7b656324453a7ff69f9c7ead4d5dc41fb802a52e2818bab`  
		Last Modified: Tue, 06 Oct 2026 01:17:05 GMT  
		Size: 16.5 KB (16495 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.10.12` - windows version 10.0.26100.33650; amd64

```console
$ docker pull julia@sha256:ad4a383311824500d1b68e3032c356aae0579917cc302418d4228957481717c5
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2586127194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:585d33662d7ca1fc48022c760e26380f8fd80d017f3445f30cac3d7df273f7e9`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Tue, 13 Oct 2026 23:02:33 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:02:34 GMT
ENV JULIA_VERSION=1.10.12
# Tue, 13 Oct 2026 23:02:36 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.10/julia-1.10.12-win64.exe
# Tue, 13 Oct 2026 23:02:37 GMT
ENV JULIA_SHA256=d971ea3cc03040e45893e3591b86809bb69b33693091b068270bf6f341f38f94
# Tue, 13 Oct 2026 23:03:24 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:03:25 GMT
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
	-	`sha256:94e773650491efe08e74429b95a81d4d00910a3691d8b274b73e05f43cd2736d`  
		Last Modified: Tue, 13 Oct 2026 23:03:31 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a41d28dfcb5868c53b306a44de6c4902df5d055b284f4a131f34dfa7711644d`  
		Last Modified: Tue, 13 Oct 2026 23:03:29 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ee4a3c59f656732f1cc8375fa598cf6745419f4b1c834599a920f4f33b0fa39`  
		Last Modified: Tue, 13 Oct 2026 23:03:29 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf1d8750342d35b3b4ed536822cadf5112cb28a0bbeebb8f084353535e40c61`  
		Last Modified: Tue, 13 Oct 2026 23:03:29 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04069efa33c2d098e4d4823fcd61db1a1055a546b954e248f16aa415716c2813`  
		Last Modified: Tue, 13 Oct 2026 23:03:55 GMT  
		Size: 194.1 MB (194126487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e52d8d3f7059f62285787310a8b559b5997446972a564ffaace91ce18748cfd`  
		Last Modified: Tue, 13 Oct 2026 23:03:29 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.10.12` - windows version 10.0.20348.5761; amd64

```console
$ docker pull julia@sha256:11e922c4610d1ae810c1eba520188093e6991f1c8ed3ac85b036f0046c09a280
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2420395231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63fb7fbfffd5bd7593058ac538724fb3a2042f425695be859533db6972541ba6`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 22:56:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 22:58:42 GMT
ENV JULIA_VERSION=1.10.12
# Tue, 13 Oct 2026 22:58:43 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.10/julia-1.10.12-win64.exe
# Tue, 13 Oct 2026 22:58:43 GMT
ENV JULIA_SHA256=d971ea3cc03040e45893e3591b86809bb69b33693091b068270bf6f341f38f94
# Tue, 13 Oct 2026 22:59:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 22:59:31 GMT
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
	-	`sha256:2199c4844b30e9c638a16f875cb259173696ccfa543d7babf8dca385c8a34de4`  
		Last Modified: Tue, 13 Oct 2026 22:57:23 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23df061659094d50ff2bd7263ba6644f2776d53d5c446c4d3fc6d1d66e42763d`  
		Last Modified: Tue, 13 Oct 2026 22:59:35 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b737938c645ef4098f5ab8c6514798a94d74765428fc1ce88b141f49365064bc`  
		Last Modified: Tue, 13 Oct 2026 22:59:35 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337fc6e099338ecb2ed64f674a1a315acfacb7802f43d9c2deefe0ae6f572f20`  
		Last Modified: Tue, 13 Oct 2026 22:59:35 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e5e2a8b8ba2772d7aed54a6bf242494747dd33ec621e8190acec37485a4917`  
		Last Modified: Tue, 13 Oct 2026 23:00:00 GMT  
		Size: 194.1 MB (194103203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa818cf47a55f8804bb6e49f972ba80407a5e648d6bae052906d9501068f6236`  
		Last Modified: Tue, 13 Oct 2026 22:59:35 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.10.12-bookworm`

```console
$ docker pull julia@sha256:582c4636b81e2a311aece815c7597b0aaa33d83993fadacfacee79b7834ffc62
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `julia:1.10.12-bookworm` - linux; amd64

```console
$ docker pull julia@sha256:269f19104b1339ffeaa5ec780c771aef9cf148c88ce6aafaa0d14ae550371c0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.6 MB (211641041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2b743794663acd5ce10fc88834609f3c4d725d8edc9d821f9e09fc792710f4f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:19:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:19:18 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:19:18 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:19:18 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 21 Oct 2026 00:19:18 GMT
ENV JULIA_VERSION=1.10.12
# Wed, 21 Oct 2026 00:19:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.10/julia-1.10.12-linux-x86_64.tar.gz'; 			sha256='b0c50dfe349d76ffc8580d24e0c0be623988a6d91ed57ad8b73c0137fd27bc0d'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.10/julia-1.10.12-linux-i686.tar.gz'; 			sha256='453d80cf0ce6f21041ff16d677e702c85557f28f078e8a91dd01582edb57708c'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.10/julia-1.10.12-linux-aarch64.tar.gz'; 			sha256='cc257b21967049642bfe17de1aff7dae17477eba4f423f98cb400c002080e5a2'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:19:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:19:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:19:18 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45ddfc4b225356b047dec9f89936cd32d784a8298d28c0e85f7250c12f6fa83c`  
		Last Modified: Wed, 21 Oct 2026 00:19:47 GMT  
		Size: 5.5 MB (5542617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e25af5fc9c5b015b4f4ca1af174f343a9d5385ccdad454f26254c96a71c2301`  
		Last Modified: Wed, 21 Oct 2026 00:19:51 GMT  
		Size: 177.9 MB (177850115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d536ea07759ecee2a174206165032a68279e3554caddcce98f783a97ac791caf`  
		Last Modified: Wed, 21 Oct 2026 00:19:47 GMT  
		Size: 374.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.10.12-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:0317a482864dea02e511b311e49cb6c95a1cc9079740c7fcd2db3a1f99a2e4fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2588331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13a3f0748663670fc6c7dde408ff7d76b7a33198de8099dd95acc30a9f74a975`

```dockerfile
```

-	Layers:
	-	`sha256:a9fd5f00611ca73705445901b473c2d51c73158c1dccc96ec86f4313e7a0c36b`  
		Last Modified: Wed, 21 Oct 2026 00:19:47 GMT  
		Size: 2.6 MB (2572372 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b47c9392cde74c0ec0317ad7c3d313dfc4509d052aa1b37a5bb4334749f7594a`  
		Last Modified: Wed, 21 Oct 2026 00:19:47 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.10.12-bookworm` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:d91844d18d357b057ef22ba82761510d5dfa786f4dba29831823f9fb170988d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.3 MB (212308583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da5dc780670631d22637b80f81394a8da34c006866843bae44bc84b3747b2268`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:17:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:18:10 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:18:10 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:18:10 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 21 Oct 2026 00:18:10 GMT
ENV JULIA_VERSION=1.10.12
# Wed, 21 Oct 2026 00:18:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.10/julia-1.10.12-linux-x86_64.tar.gz'; 			sha256='b0c50dfe349d76ffc8580d24e0c0be623988a6d91ed57ad8b73c0137fd27bc0d'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.10/julia-1.10.12-linux-i686.tar.gz'; 			sha256='453d80cf0ce6f21041ff16d677e702c85557f28f078e8a91dd01582edb57708c'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.10/julia-1.10.12-linux-aarch64.tar.gz'; 			sha256='cc257b21967049642bfe17de1aff7dae17477eba4f423f98cb400c002080e5a2'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:18:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:18:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:18:10 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4bb0364a2dff345ebe32faa3f796e73e964a5b2c60e9300af208e17c76b42c4`  
		Last Modified: Wed, 21 Oct 2026 00:18:39 GMT  
		Size: 5.4 MB (5387973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57e734b57048f66c4efac7fba5cdea1703edf7288f318e661f7a42d884ee86cf`  
		Last Modified: Wed, 21 Oct 2026 00:18:43 GMT  
		Size: 178.8 MB (178781811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ae2d500d7f03d44134f121b21e005fc667815086d7f3a86379365f4241a1cac`  
		Last Modified: Wed, 21 Oct 2026 00:18:39 GMT  
		Size: 374.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.10.12-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:f51e20abf97c5aa6b31d451518c8b20a2fe2e1e7469be2f257bdb59e5199bcb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2587443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f554a9fcde212bd29f4faf91aa70b0d685496db162b257ca9515e1545e574312`

```dockerfile
```

-	Layers:
	-	`sha256:ee6f8663f1b375a2830c39ce911d1b4e841de87b53344575bed9453920836931`  
		Last Modified: Wed, 21 Oct 2026 00:18:40 GMT  
		Size: 2.6 MB (2571389 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0200a8002fbbdebc041f1377d003582d3503fb63c6a92ae3b43f2e45a7cadaee`  
		Last Modified: Wed, 21 Oct 2026 00:18:39 GMT  
		Size: 16.1 KB (16054 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.10.12-bookworm` - linux; 386

```console
$ docker pull julia@sha256:9fdb618c1c0faf4d64bfb13058b31e7e329c4457768850729e462dff2cdb0127
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.1 MB (193126434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:060879d4621d8067336dae5659170cd49459834dbc43834e4c24a0c2fd44b2ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:17:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:17:31 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:17:31 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:17:31 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:17:31 GMT
ENV JULIA_VERSION=1.10.12
# Tue, 06 Oct 2026 01:17:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.10/julia-1.10.12-linux-x86_64.tar.gz'; 			sha256='b0c50dfe349d76ffc8580d24e0c0be623988a6d91ed57ad8b73c0137fd27bc0d'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.10/julia-1.10.12-linux-i686.tar.gz'; 			sha256='453d80cf0ce6f21041ff16d677e702c85557f28f078e8a91dd01582edb57708c'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.10/julia-1.10.12-linux-aarch64.tar.gz'; 			sha256='cc257b21967049642bfe17de1aff7dae17477eba4f423f98cb400c002080e5a2'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:17:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:17:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:17:31 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:4fde7ff71d38b44de13588c355f9acc395f4ecbec569968085401a6d6b40eff2`  
		Last Modified: Tue, 06 Oct 2026 00:13:26 GMT  
		Size: 29.2 MB (29239373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed538ce46cc641411b42b8ec5bd5d2fa24de1afbe391534a44dcd651accb3ab2`  
		Last Modified: Tue, 06 Oct 2026 01:17:55 GMT  
		Size: 5.7 MB (5705013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b52e7fd30c5332e31f9aa8d3ea46768443eac047355c0aa83fccce90ce405e1c`  
		Last Modified: Tue, 06 Oct 2026 01:17:58 GMT  
		Size: 158.2 MB (158181680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ae99c3a1d4a37cabbe7d96a75007b36a288eb04113f9718660a03a04813312f`  
		Last Modified: Tue, 06 Oct 2026 01:17:54 GMT  
		Size: 368.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.10.12-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:896d24cbd2235e3d7b7da80b2391b28e8cca772f75d3e2ca0ab1805320192f64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2586759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1324f7bfddf0866104618d1e6ef934926a0d1ad78dc7ab3d6393cd57365bd73e`

```dockerfile
```

-	Layers:
	-	`sha256:97ba201ad55beedb1a925130d4424abf8daca6e3e0331f80b7b77c83c4a0410a`  
		Last Modified: Tue, 06 Oct 2026 01:17:55 GMT  
		Size: 2.6 MB (2570824 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:016152e04c1f4dcc8fb0067086a6e1d5ed945e3747e35b0ec66b81d5724656df`  
		Last Modified: Tue, 06 Oct 2026 01:17:54 GMT  
		Size: 15.9 KB (15935 bytes)  
		MIME: application/vnd.in-toto+json

## `julia:1.10.12-trixie`

```console
$ docker pull julia@sha256:485e1eaa28a64239aece5b674612a9a06416eecca30b734bfbdf007e8ccf8a95
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `julia:1.10.12-trixie` - linux; amd64

```console
$ docker pull julia@sha256:9599f869e2e6446aeb52cac19a459c4737c2b580b00ad0396b15dcc1f9e30d24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.0 MB (213981870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e1eb2f2ef5c51a0dce3df64484712855a78346cf76f15020b1d227a99fdc1eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:18:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:19:10 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:19:10 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:19:10 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 21 Oct 2026 00:19:10 GMT
ENV JULIA_VERSION=1.10.12
# Wed, 21 Oct 2026 00:19:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.10/julia-1.10.12-linux-x86_64.tar.gz'; 			sha256='b0c50dfe349d76ffc8580d24e0c0be623988a6d91ed57ad8b73c0137fd27bc0d'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.10/julia-1.10.12-linux-i686.tar.gz'; 			sha256='453d80cf0ce6f21041ff16d677e702c85557f28f078e8a91dd01582edb57708c'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.10/julia-1.10.12-linux-aarch64.tar.gz'; 			sha256='cc257b21967049642bfe17de1aff7dae17477eba4f423f98cb400c002080e5a2'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:19:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:19:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:19:10 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37cc55a4f2d1c18a9a9023b95de601e2371b61bef5120b9bc34b2e4791fe2845`  
		Last Modified: Wed, 21 Oct 2026 00:19:38 GMT  
		Size: 6.2 MB (6247419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd7717502d8b57eccdb1e5751d3107a08fd972073234a92cf97e2be18593277c`  
		Last Modified: Wed, 21 Oct 2026 00:19:43 GMT  
		Size: 177.9 MB (177890499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fe16af45cc0328d525f645ec08b58eea76e70849ac2f3b936e2420f6f8b6252`  
		Last Modified: Wed, 21 Oct 2026 00:19:38 GMT  
		Size: 373.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.10.12-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:6c5d23e2af7f616393ac269ee1f1839f3845217044c61f568b29732a909e25ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2261737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdf025391b532650c963a187bf1ca7c3b8bdfbdabfd75afd75fccf8e867283e3`

```dockerfile
```

-	Layers:
	-	`sha256:42dea551876a106ff05f2ad67c2f1bc0f7c7b0c71db02d2cedcf5418825af0d2`  
		Last Modified: Wed, 21 Oct 2026 00:19:38 GMT  
		Size: 2.2 MB (2245208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef9e4b77f3cb7e0fe307bf49e317d50d92082edf1e11e2efdaa852b668fcc950`  
		Last Modified: Wed, 21 Oct 2026 00:19:38 GMT  
		Size: 16.5 KB (16529 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.10.12-trixie` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:1babf82608b07f194f433db5a31ec7684c8be857b4bce60b804ddc67274abbe9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.2 MB (215170748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba133561a8e03d520f823e854ba185edd6c15ba7ebec3b25dd63b735d5e52195`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:53:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:53:20 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 01:53:20 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:53:20 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 21 Oct 2026 01:53:20 GMT
ENV JULIA_VERSION=1.10.12
# Wed, 21 Oct 2026 01:53:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.10/julia-1.10.12-linux-x86_64.tar.gz'; 			sha256='b0c50dfe349d76ffc8580d24e0c0be623988a6d91ed57ad8b73c0137fd27bc0d'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.10/julia-1.10.12-linux-i686.tar.gz'; 			sha256='453d80cf0ce6f21041ff16d677e702c85557f28f078e8a91dd01582edb57708c'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.10/julia-1.10.12-linux-aarch64.tar.gz'; 			sha256='cc257b21967049642bfe17de1aff7dae17477eba4f423f98cb400c002080e5a2'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 01:53:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 01:53:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 01:53:21 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c3c6c74730b336b2dbc1280ac1c391e8c35786c01606d71bec8b24e515c652d`  
		Last Modified: Wed, 21 Oct 2026 01:53:49 GMT  
		Size: 6.2 MB (6153244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71b087871659ff664acc20eb8f9d66e538e6f880d31f8f875a72a565733592cc`  
		Last Modified: Wed, 21 Oct 2026 01:53:54 GMT  
		Size: 178.8 MB (178816652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51cd4d91bd808f7c1e711bb73aac9d4ae3d81055040333809ae9646c0a3a986f`  
		Last Modified: Wed, 21 Oct 2026 01:53:49 GMT  
		Size: 374.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.10.12-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:7f15def37abd4751a94b6fa04b995c81cf229c164d77b8f45a4d3f0742f466ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2260898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06a200a2e5a915810bb266932caf66d7efa4ff067a88f88d9c61c6852ea34f32`

```dockerfile
```

-	Layers:
	-	`sha256:b540de5248e4934b3437cfb4b3389467fffbc84fd89982744d4c125b68ffb4c5`  
		Last Modified: Wed, 21 Oct 2026 01:53:49 GMT  
		Size: 2.2 MB (2244250 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc516daec09bac8c51d85929c8af46f4c4f1a15ae4e0153960e0eade0763218c`  
		Last Modified: Wed, 21 Oct 2026 01:53:49 GMT  
		Size: 16.6 KB (16648 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.10.12-trixie` - linux; 386

```console
$ docker pull julia@sha256:ec635436226574f41285c39b77994c23b8e888ebae690bfeb545777121d2094c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.0 MB (196010767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5336463d1d66370c64c00260862f03ca2a3636e3705e3ebc79a55ab09cf9068`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:16:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:16:41 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:16:41 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:16:41 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:16:41 GMT
ENV JULIA_VERSION=1.10.12
# Tue, 06 Oct 2026 01:16:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.10/julia-1.10.12-linux-x86_64.tar.gz'; 			sha256='b0c50dfe349d76ffc8580d24e0c0be623988a6d91ed57ad8b73c0137fd27bc0d'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.10/julia-1.10.12-linux-i686.tar.gz'; 			sha256='453d80cf0ce6f21041ff16d677e702c85557f28f078e8a91dd01582edb57708c'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.10/julia-1.10.12-linux-aarch64.tar.gz'; 			sha256='cc257b21967049642bfe17de1aff7dae17477eba4f423f98cb400c002080e5a2'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:16:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:16:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:16:41 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46e416e3288fab229c083bb2f1f29cbb0b965ecc5280e3a73b99097704249cc8`  
		Last Modified: Tue, 06 Oct 2026 01:17:06 GMT  
		Size: 6.4 MB (6436290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c57b7276f8ba722c148aa80f674c6c110628146c32f821295c035239093772a`  
		Last Modified: Tue, 06 Oct 2026 01:17:09 GMT  
		Size: 158.2 MB (158220810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e3489df25bcd405d8e129c0d2dc0e2fcc2a752608acf1ccc5763bcbaee0d531`  
		Last Modified: Tue, 06 Oct 2026 01:17:05 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.10.12-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:771e4395fe96aa4b30675bc67210ca2921c4b56a7679fff73b84bb03604c8477
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2260125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f18708db5e081e467007f73febf6d61ea084e9c0c4079fd5e73b75dfe6e5e11`

```dockerfile
```

-	Layers:
	-	`sha256:3a9095b4f1eae216f03d1368e854880ef5fc7bc0513820d8a66677c579a619e9`  
		Last Modified: Tue, 06 Oct 2026 01:17:05 GMT  
		Size: 2.2 MB (2243630 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0799dfec42f81f88e7b656324453a7ff69f9c7ead4d5dc41fb802a52e2818bab`  
		Last Modified: Tue, 06 Oct 2026 01:17:05 GMT  
		Size: 16.5 KB (16495 bytes)  
		MIME: application/vnd.in-toto+json

## `julia:1.10.12-windowsservercore`

```console
$ docker pull julia@sha256:9b3b00107a50d580be3a4b77f13c5e9a8244ca65e0f0323705062717e36db3ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `julia:1.10.12-windowsservercore` - windows version 10.0.26100.33650; amd64

```console
$ docker pull julia@sha256:ad4a383311824500d1b68e3032c356aae0579917cc302418d4228957481717c5
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2586127194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:585d33662d7ca1fc48022c760e26380f8fd80d017f3445f30cac3d7df273f7e9`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Tue, 13 Oct 2026 23:02:33 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:02:34 GMT
ENV JULIA_VERSION=1.10.12
# Tue, 13 Oct 2026 23:02:36 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.10/julia-1.10.12-win64.exe
# Tue, 13 Oct 2026 23:02:37 GMT
ENV JULIA_SHA256=d971ea3cc03040e45893e3591b86809bb69b33693091b068270bf6f341f38f94
# Tue, 13 Oct 2026 23:03:24 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:03:25 GMT
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
	-	`sha256:94e773650491efe08e74429b95a81d4d00910a3691d8b274b73e05f43cd2736d`  
		Last Modified: Tue, 13 Oct 2026 23:03:31 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a41d28dfcb5868c53b306a44de6c4902df5d055b284f4a131f34dfa7711644d`  
		Last Modified: Tue, 13 Oct 2026 23:03:29 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ee4a3c59f656732f1cc8375fa598cf6745419f4b1c834599a920f4f33b0fa39`  
		Last Modified: Tue, 13 Oct 2026 23:03:29 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf1d8750342d35b3b4ed536822cadf5112cb28a0bbeebb8f084353535e40c61`  
		Last Modified: Tue, 13 Oct 2026 23:03:29 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04069efa33c2d098e4d4823fcd61db1a1055a546b954e248f16aa415716c2813`  
		Last Modified: Tue, 13 Oct 2026 23:03:55 GMT  
		Size: 194.1 MB (194126487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e52d8d3f7059f62285787310a8b559b5997446972a564ffaace91ce18748cfd`  
		Last Modified: Tue, 13 Oct 2026 23:03:29 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.10.12-windowsservercore` - windows version 10.0.20348.5761; amd64

```console
$ docker pull julia@sha256:11e922c4610d1ae810c1eba520188093e6991f1c8ed3ac85b036f0046c09a280
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2420395231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63fb7fbfffd5bd7593058ac538724fb3a2042f425695be859533db6972541ba6`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 22:56:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 22:58:42 GMT
ENV JULIA_VERSION=1.10.12
# Tue, 13 Oct 2026 22:58:43 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.10/julia-1.10.12-win64.exe
# Tue, 13 Oct 2026 22:58:43 GMT
ENV JULIA_SHA256=d971ea3cc03040e45893e3591b86809bb69b33693091b068270bf6f341f38f94
# Tue, 13 Oct 2026 22:59:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 22:59:31 GMT
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
	-	`sha256:2199c4844b30e9c638a16f875cb259173696ccfa543d7babf8dca385c8a34de4`  
		Last Modified: Tue, 13 Oct 2026 22:57:23 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23df061659094d50ff2bd7263ba6644f2776d53d5c446c4d3fc6d1d66e42763d`  
		Last Modified: Tue, 13 Oct 2026 22:59:35 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b737938c645ef4098f5ab8c6514798a94d74765428fc1ce88b141f49365064bc`  
		Last Modified: Tue, 13 Oct 2026 22:59:35 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337fc6e099338ecb2ed64f674a1a315acfacb7802f43d9c2deefe0ae6f572f20`  
		Last Modified: Tue, 13 Oct 2026 22:59:35 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e5e2a8b8ba2772d7aed54a6bf242494747dd33ec621e8190acec37485a4917`  
		Last Modified: Tue, 13 Oct 2026 23:00:00 GMT  
		Size: 194.1 MB (194103203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa818cf47a55f8804bb6e49f972ba80407a5e648d6bae052906d9501068f6236`  
		Last Modified: Tue, 13 Oct 2026 22:59:35 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.10.12-windowsservercore-ltsc2022`

```console
$ docker pull julia@sha256:ce4d039dd6bbcdc21cec14d22949412e9ecb5c966fe7d4c4d690c0e2fc1c65e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `julia:1.10.12-windowsservercore-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull julia@sha256:11e922c4610d1ae810c1eba520188093e6991f1c8ed3ac85b036f0046c09a280
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2420395231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63fb7fbfffd5bd7593058ac538724fb3a2042f425695be859533db6972541ba6`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 22:56:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 22:58:42 GMT
ENV JULIA_VERSION=1.10.12
# Tue, 13 Oct 2026 22:58:43 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.10/julia-1.10.12-win64.exe
# Tue, 13 Oct 2026 22:58:43 GMT
ENV JULIA_SHA256=d971ea3cc03040e45893e3591b86809bb69b33693091b068270bf6f341f38f94
# Tue, 13 Oct 2026 22:59:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 22:59:31 GMT
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
	-	`sha256:2199c4844b30e9c638a16f875cb259173696ccfa543d7babf8dca385c8a34de4`  
		Last Modified: Tue, 13 Oct 2026 22:57:23 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23df061659094d50ff2bd7263ba6644f2776d53d5c446c4d3fc6d1d66e42763d`  
		Last Modified: Tue, 13 Oct 2026 22:59:35 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b737938c645ef4098f5ab8c6514798a94d74765428fc1ce88b141f49365064bc`  
		Last Modified: Tue, 13 Oct 2026 22:59:35 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337fc6e099338ecb2ed64f674a1a315acfacb7802f43d9c2deefe0ae6f572f20`  
		Last Modified: Tue, 13 Oct 2026 22:59:35 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e5e2a8b8ba2772d7aed54a6bf242494747dd33ec621e8190acec37485a4917`  
		Last Modified: Tue, 13 Oct 2026 23:00:00 GMT  
		Size: 194.1 MB (194103203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa818cf47a55f8804bb6e49f972ba80407a5e648d6bae052906d9501068f6236`  
		Last Modified: Tue, 13 Oct 2026 22:59:35 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.10.12-windowsservercore-ltsc2025`

```console
$ docker pull julia@sha256:5ee0c75571aba842148414cb5d35b4abd47a35e819c67bde32d882d602b125a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33650; amd64

### `julia:1.10.12-windowsservercore-ltsc2025` - windows version 10.0.26100.33650; amd64

```console
$ docker pull julia@sha256:ad4a383311824500d1b68e3032c356aae0579917cc302418d4228957481717c5
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2586127194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:585d33662d7ca1fc48022c760e26380f8fd80d017f3445f30cac3d7df273f7e9`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Tue, 13 Oct 2026 23:02:33 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:02:34 GMT
ENV JULIA_VERSION=1.10.12
# Tue, 13 Oct 2026 23:02:36 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.10/julia-1.10.12-win64.exe
# Tue, 13 Oct 2026 23:02:37 GMT
ENV JULIA_SHA256=d971ea3cc03040e45893e3591b86809bb69b33693091b068270bf6f341f38f94
# Tue, 13 Oct 2026 23:03:24 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:03:25 GMT
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
	-	`sha256:94e773650491efe08e74429b95a81d4d00910a3691d8b274b73e05f43cd2736d`  
		Last Modified: Tue, 13 Oct 2026 23:03:31 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a41d28dfcb5868c53b306a44de6c4902df5d055b284f4a131f34dfa7711644d`  
		Last Modified: Tue, 13 Oct 2026 23:03:29 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ee4a3c59f656732f1cc8375fa598cf6745419f4b1c834599a920f4f33b0fa39`  
		Last Modified: Tue, 13 Oct 2026 23:03:29 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf1d8750342d35b3b4ed536822cadf5112cb28a0bbeebb8f084353535e40c61`  
		Last Modified: Tue, 13 Oct 2026 23:03:29 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04069efa33c2d098e4d4823fcd61db1a1055a546b954e248f16aa415716c2813`  
		Last Modified: Tue, 13 Oct 2026 23:03:55 GMT  
		Size: 194.1 MB (194126487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e52d8d3f7059f62285787310a8b559b5997446972a564ffaace91ce18748cfd`  
		Last Modified: Tue, 13 Oct 2026 23:03:29 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.11`

```console
$ docker pull julia@sha256:73c0769b0be31bbe99eb45baf25e01e44e1c7026bac71a17ecdd4f7d283934ab
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `julia:1.11` - linux; amd64

```console
$ docker pull julia@sha256:4834d6e700f0421aa16e3a5defdffdd1f914d84a4ea5b1be3c4484eefa983a42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.2 MB (325178836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3307789010ce10c099fde6dae061431487bbb6ebf84b95f96f07462bfbc1fc2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:17:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:19:23 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:19:23 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:19:23 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 21 Oct 2026 00:19:23 GMT
ENV JULIA_VERSION=1.11.9
# Wed, 21 Oct 2026 00:19:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.11/julia-1.11.9-linux-x86_64.tar.gz'; 			sha256='b36363356d7a05eaf8b7b9e7a91c710f6bd3d2940be4d4e6d14b9a9f2927de35'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.11/julia-1.11.9-linux-i686.tar.gz'; 			sha256='74df5031a93bce45e30582a71bf70f4ba983ff42f6eaf54eb9effb6e124604ca'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.11/julia-1.11.9-linux-aarch64.tar.gz'; 			sha256='a2071f0654d1d6af4381cba650b9f790f5f8bb7a570e51e378de8bcf67ff623e'; 			;; 		'ppc64el') 			url='https://julialang-s3.julialang.org/bin/linux/ppc64le/1.11/julia-1.11.9-linux-ppc64le.tar.gz'; 			sha256='3c25d5bf70d65da5859d65b34d17646dd1b3f1b50ea2090d13e63171d6dbf861'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:19:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:19:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:19:23 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7251038b43fb4f309c084b32e12c0da0d8773e20998f24fead7a448a09bf27cd`  
		Last Modified: Wed, 21 Oct 2026 00:18:48 GMT  
		Size: 6.2 MB (6247392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7344f793de8aa6f44ee00b6e08319441c31b619167bf687f6f2423959463b2`  
		Last Modified: Wed, 21 Oct 2026 00:20:11 GMT  
		Size: 289.1 MB (289087491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33a13ab41bed77e6f69de608e86ac2043267e4ac4cd5d3b459b8e85305af594a`  
		Last Modified: Wed, 21 Oct 2026 00:20:05 GMT  
		Size: 374.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.11` - unknown; unknown

```console
$ docker pull julia@sha256:63a1b3cc41d30bcb4ff131429e46a0da6ca791e878731eaddd5afea52ed6d9da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2261133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:854e57ce7d536f734295926075e3f025f38d72ef49edb67fa2d13c66c86f825f`

```dockerfile
```

-	Layers:
	-	`sha256:47813b1b1feca80e3e7045b3d8748713e7bcf2c988a20b324930d49b7496f546`  
		Last Modified: Wed, 21 Oct 2026 00:20:05 GMT  
		Size: 2.2 MB (2243970 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88fd2efad04ba1f7af59c876d95493539306b683946327670420503b86ba9fba`  
		Last Modified: Wed, 21 Oct 2026 00:20:05 GMT  
		Size: 17.2 KB (17163 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.11` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:985c0c8880ee8aff922e1a2a02ef3b110e9634ab52fe7436b4e36b35bd0d9296
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.9 MB (340931577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbcf5bb8863b9bfd94aa150036702ce14cf0bf6e072708e2665ac3d5c36a57bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:18:10 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:18:10 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:18:10 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 21 Oct 2026 00:18:10 GMT
ENV JULIA_VERSION=1.11.9
# Wed, 21 Oct 2026 00:18:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.11/julia-1.11.9-linux-x86_64.tar.gz'; 			sha256='b36363356d7a05eaf8b7b9e7a91c710f6bd3d2940be4d4e6d14b9a9f2927de35'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.11/julia-1.11.9-linux-i686.tar.gz'; 			sha256='74df5031a93bce45e30582a71bf70f4ba983ff42f6eaf54eb9effb6e124604ca'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.11/julia-1.11.9-linux-aarch64.tar.gz'; 			sha256='a2071f0654d1d6af4381cba650b9f790f5f8bb7a570e51e378de8bcf67ff623e'; 			;; 		'ppc64el') 			url='https://julialang-s3.julialang.org/bin/linux/ppc64le/1.11/julia-1.11.9-linux-ppc64le.tar.gz'; 			sha256='3c25d5bf70d65da5859d65b34d17646dd1b3f1b50ea2090d13e63171d6dbf861'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:18:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:18:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:18:11 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6036bd4cbedb72c264a3e38730e8628dbdd600292bd87195810530f6387981d4`  
		Last Modified: Wed, 21 Oct 2026 00:17:34 GMT  
		Size: 6.2 MB (6153234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5883f5e70146c2eab6cf6dbc59ce114f59c6863be69814f8d102403abc0c701d`  
		Last Modified: Wed, 21 Oct 2026 00:19:00 GMT  
		Size: 304.6 MB (304577491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859cef14597604eb017d9c76521cd1e5404e4ce9acdc47736c39bcca21a78460`  
		Last Modified: Wed, 21 Oct 2026 00:18:54 GMT  
		Size: 374.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.11` - unknown; unknown

```console
$ docker pull julia@sha256:e44c8850ea07e66f01ce8d9806023d3e1d73fa7d036955670e335ef875761b04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2261528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c733604f0eddec58c16f192dd50611b88b1cec1bea9938352a61474895c3e7c`

```dockerfile
```

-	Layers:
	-	`sha256:b8353c99077d0ec97adf3214fd0c5bce343146803df84738ef070e600fec83db`  
		Last Modified: Wed, 21 Oct 2026 00:18:55 GMT  
		Size: 2.2 MB (2244246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1b4cf249959b4d83f50ebd12b38d7ed8fa0fc9ea2abcf92aec559acdea67a49c`  
		Last Modified: Wed, 21 Oct 2026 00:18:54 GMT  
		Size: 17.3 KB (17282 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.11` - linux; 386

```console
$ docker pull julia@sha256:6a7576e4300bb757fb61ae059de2f356485511cb7a66091a9f94ac485d7dfc39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.5 MB (275461400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f269b002ef2f98fa4d69890ef36f4425fec5d6245ad4ae08440bfeb3dbf3655c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:16:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:17:37 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:17:37 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:17:37 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 06 Oct 2026 01:17:37 GMT
ENV JULIA_VERSION=1.11.9
# Tue, 06 Oct 2026 01:17:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.11/julia-1.11.9-linux-x86_64.tar.gz'; 			sha256='b36363356d7a05eaf8b7b9e7a91c710f6bd3d2940be4d4e6d14b9a9f2927de35'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.11/julia-1.11.9-linux-i686.tar.gz'; 			sha256='74df5031a93bce45e30582a71bf70f4ba983ff42f6eaf54eb9effb6e124604ca'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.11/julia-1.11.9-linux-aarch64.tar.gz'; 			sha256='a2071f0654d1d6af4381cba650b9f790f5f8bb7a570e51e378de8bcf67ff623e'; 			;; 		'ppc64el') 			url='https://julialang-s3.julialang.org/bin/linux/ppc64le/1.11/julia-1.11.9-linux-ppc64le.tar.gz'; 			sha256='3c25d5bf70d65da5859d65b34d17646dd1b3f1b50ea2090d13e63171d6dbf861'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:17:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:17:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:17:37 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46e416e3288fab229c083bb2f1f29cbb0b965ecc5280e3a73b99097704249cc8`  
		Last Modified: Tue, 06 Oct 2026 01:17:06 GMT  
		Size: 6.4 MB (6436290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:253d9f2d18c80e3a53409298a0c2953bcfb94cddbe2c880879326900f05fe2b7`  
		Last Modified: Tue, 06 Oct 2026 01:18:16 GMT  
		Size: 237.7 MB (237671443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be411fa6f7823e4d7e096046c7871a2d97c6dbee38cb49039667aedd5dd0f250`  
		Last Modified: Tue, 06 Oct 2026 01:18:12 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.11` - unknown; unknown

```console
$ docker pull julia@sha256:816e19f367c6882822a1e78737594673e98670d0b0fbd1e3f3b49a78e6a53e5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2259521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9596f5abb4ba3d5f0ef7341fd177a8681a912795137362d42b5104a2f2fc28e0`

```dockerfile
```

-	Layers:
	-	`sha256:5d55665013a966ffac6ad26838fd88d8edbe925d5183a9da09151163bec2bfad`  
		Last Modified: Tue, 06 Oct 2026 01:18:12 GMT  
		Size: 2.2 MB (2242392 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00dc301c162f50637a2a57aa323762fb540aae85aeeb52144607cc2681d8ed05`  
		Last Modified: Tue, 06 Oct 2026 01:18:12 GMT  
		Size: 17.1 KB (17129 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.11` - linux; ppc64le

```console
$ docker pull julia@sha256:50621b4a34594f3d3b27430b4755b5780bd4649ecadb8ea27af90ea962e6128f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.1 MB (289083765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9402441a595f4b94eefc65ca66638edf0c090a64b589b78c772987b94fc6542`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:35:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:35:54 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:35:54 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:35:54 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 21 Oct 2026 00:35:54 GMT
ENV JULIA_VERSION=1.11.9
# Wed, 21 Oct 2026 00:35:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.11/julia-1.11.9-linux-x86_64.tar.gz'; 			sha256='b36363356d7a05eaf8b7b9e7a91c710f6bd3d2940be4d4e6d14b9a9f2927de35'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.11/julia-1.11.9-linux-i686.tar.gz'; 			sha256='74df5031a93bce45e30582a71bf70f4ba983ff42f6eaf54eb9effb6e124604ca'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.11/julia-1.11.9-linux-aarch64.tar.gz'; 			sha256='a2071f0654d1d6af4381cba650b9f790f5f8bb7a570e51e378de8bcf67ff623e'; 			;; 		'ppc64el') 			url='https://julialang-s3.julialang.org/bin/linux/ppc64le/1.11/julia-1.11.9-linux-ppc64le.tar.gz'; 			sha256='3c25d5bf70d65da5859d65b34d17646dd1b3f1b50ea2090d13e63171d6dbf861'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:35:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:35:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:35:56 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0e84afdd3858812039fa7bedc74b17d0ab8ce541d9937d8470c1c9966cf4c22`  
		Last Modified: Wed, 21 Oct 2026 00:37:24 GMT  
		Size: 6.7 MB (6683605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:147c39721279e0a119189f81aea2752bc7cbae45101b468a7925fe6056045709`  
		Last Modified: Wed, 21 Oct 2026 00:37:29 GMT  
		Size: 248.7 MB (248747853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bd62651048d9ed056dce1d6e9022b505135dcfdd118c43e5a1b553eb121d344`  
		Last Modified: Wed, 21 Oct 2026 00:37:24 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.11` - unknown; unknown

```console
$ docker pull julia@sha256:304e66b51818802585bc754b38ac62b59d05e3274207c35103afdf4c5a90d74a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2264908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80890a13073d87b5d44d9f83938860fa326f8bd104e721e2e05ddcf65f8fbebc`

```dockerfile
```

-	Layers:
	-	`sha256:349e1d2c3f6028e20ccee8a226f9092eab1c2f327196a7be89f39e2ae936b5e3`  
		Last Modified: Wed, 21 Oct 2026 00:37:24 GMT  
		Size: 2.2 MB (2247699 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e2648c7aa9785082c4eba66d564083299baf15a4d63b33911d48c58d1dc62d6b`  
		Last Modified: Wed, 21 Oct 2026 00:37:24 GMT  
		Size: 17.2 KB (17209 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.11` - windows version 10.0.26100.33650; amd64

```console
$ docker pull julia@sha256:e521284afeb7351f86696a602a7a88608b79873b3fc778b9cd207cf9d96e50c9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2678314048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31378836d5b807bf33da6c69c87afac258df0df9bc724f00f14ee3c40cd0da57`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Tue, 13 Oct 2026 23:02:18 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:02:19 GMT
ENV JULIA_VERSION=1.11.9
# Tue, 13 Oct 2026 23:02:20 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.11/julia-1.11.9-win64.exe
# Tue, 13 Oct 2026 23:02:20 GMT
ENV JULIA_SHA256=747ff8983fa183e0e35e618c9212815cba0b3ad29a44eaac039acc755a0d91b6
# Tue, 13 Oct 2026 23:03:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:03:33 GMT
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
	-	`sha256:1fb7dfc46006339a6f16acc5304b94216980fef39bfe3cfe00a0e43b920c14dc`  
		Last Modified: Tue, 13 Oct 2026 23:03:43 GMT  
		Size: 1.4 KB (1372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b6b5431f606774571770aa1aafdddef235766bb60693b69158fba3f54217ee8`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6001de4c4ded80103bf05b262523972867cf5d86ef998e0be29fd8a34abde520`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c059aee9003819e4d2f9512246bc3339bce52392b8f9ea55816e0367636c970`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c485b16d874fe5a77e49a493f33ec4a061648c2b11e53fee60812f75d1c6b5`  
		Last Modified: Tue, 13 Oct 2026 23:04:18 GMT  
		Size: 286.3 MB (286313216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c102cca40ecdf6bfd1c8b36502277ffbfb6776028fb264013590a89884781d`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.11` - windows version 10.0.20348.5761; amd64

```console
$ docker pull julia@sha256:075e4d4228ac63fce0354feaccefa89b513d6a2978443d98dd528d18d81161f6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2512592112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ae50f013b2c544f5bac6d2627cb7564407eb1e4509212414324280053d11ca8`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 22:56:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:00:18 GMT
ENV JULIA_VERSION=1.11.9
# Tue, 13 Oct 2026 23:00:18 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.11/julia-1.11.9-win64.exe
# Tue, 13 Oct 2026 23:00:19 GMT
ENV JULIA_SHA256=747ff8983fa183e0e35e618c9212815cba0b3ad29a44eaac039acc755a0d91b6
# Tue, 13 Oct 2026 23:01:34 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:01:38 GMT
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
	-	`sha256:2199c4844b30e9c638a16f875cb259173696ccfa543d7babf8dca385c8a34de4`  
		Last Modified: Tue, 13 Oct 2026 22:57:23 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:235ea87240acde278082fd049bb1a5f18debf3363f37ec87be90fa0af527e1f5`  
		Last Modified: Tue, 13 Oct 2026 23:01:45 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a80b7018de318373750c3fb27799e2741d228704826f36952b5f8e425f0755`  
		Last Modified: Tue, 13 Oct 2026 23:01:45 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c301a65f137a836507a88181d3b259f08ae9eee58ed992daa03b329b558385f`  
		Last Modified: Tue, 13 Oct 2026 23:01:45 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:886ca3bf1bd553189e55fc3fb85cb9f40eaa88e6c2b178b45870a48eef1c8b94`  
		Last Modified: Tue, 13 Oct 2026 23:02:22 GMT  
		Size: 286.3 MB (286300111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96a42a6378a0e2c938e0b2cfb06136b869608ed37d16ee454b7a5a2dd10bb863`  
		Last Modified: Tue, 13 Oct 2026 23:01:45 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.11-bookworm`

```console
$ docker pull julia@sha256:2b67ddca6edaaea0b8a69f96d54e54d3e6deaf803f0d67281855b1a879332d83
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `julia:1.11-bookworm` - linux; amd64

```console
$ docker pull julia@sha256:6514c2492909723c4404b052f79f08a9bf3d6089a45aae6e36f5bc43a9624208
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.9 MB (322859831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5e4772264b78058d240cccfb659fd222826b472703fbcf6980481b9a0b58ff4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:18:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:19:41 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:19:41 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:19:41 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 21 Oct 2026 00:19:41 GMT
ENV JULIA_VERSION=1.11.9
# Wed, 21 Oct 2026 00:19:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.11/julia-1.11.9-linux-x86_64.tar.gz'; 			sha256='b36363356d7a05eaf8b7b9e7a91c710f6bd3d2940be4d4e6d14b9a9f2927de35'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.11/julia-1.11.9-linux-i686.tar.gz'; 			sha256='74df5031a93bce45e30582a71bf70f4ba983ff42f6eaf54eb9effb6e124604ca'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.11/julia-1.11.9-linux-aarch64.tar.gz'; 			sha256='a2071f0654d1d6af4381cba650b9f790f5f8bb7a570e51e378de8bcf67ff623e'; 			;; 		'ppc64el') 			url='https://julialang-s3.julialang.org/bin/linux/ppc64le/1.11/julia-1.11.9-linux-ppc64le.tar.gz'; 			sha256='3c25d5bf70d65da5859d65b34d17646dd1b3f1b50ea2090d13e63171d6dbf861'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:19:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:19:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:19:41 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45827739c28e7d2faaa1e197ea2a194ec52ac2ceecee87ae45cbe2c21c455a3a`  
		Last Modified: Wed, 21 Oct 2026 00:19:07 GMT  
		Size: 5.5 MB (5542596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca94e213c2f6c680b139428789e8eec1b1bbd7fa2f01f33accb2d77a7dc3a5b4`  
		Last Modified: Wed, 21 Oct 2026 00:20:26 GMT  
		Size: 289.1 MB (289068930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0828bf406bf9951650ec18aedc3ce01873dae65f26f72a7a14c4cd0b8301eda6`  
		Last Modified: Wed, 21 Oct 2026 00:20:20 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.11-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:06718812f42754c28840baed2a9c84c360977631ba0045ef50fd89426b188e60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2587727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94e3413bc430fb70184e4512003b9d3d1797d0bac1782842fe9c6684e2f38e75`

```dockerfile
```

-	Layers:
	-	`sha256:7891a7c5f16d491a3695a0c854689386236f31ebd236c75e9879a84719ae4859`  
		Last Modified: Wed, 21 Oct 2026 00:20:20 GMT  
		Size: 2.6 MB (2571136 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40a93570295f97457f86ec7a2415ed614d975433e7fe339ff451d4e3c3cb0fab`  
		Last Modified: Wed, 21 Oct 2026 00:20:20 GMT  
		Size: 16.6 KB (16591 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.11-bookworm` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:19ddd956844251a8734c35e5df66b3d0b13f0a0d853b5e435b1aa4f4567f4d19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.1 MB (338071067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f5bc382a621ec400fb8b5050a9b7d4d0620dbe8c99a9bc47b359032b50ad520`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:18:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:18:36 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:18:36 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:18:36 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 21 Oct 2026 00:18:36 GMT
ENV JULIA_VERSION=1.11.9
# Wed, 21 Oct 2026 00:18:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.11/julia-1.11.9-linux-x86_64.tar.gz'; 			sha256='b36363356d7a05eaf8b7b9e7a91c710f6bd3d2940be4d4e6d14b9a9f2927de35'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.11/julia-1.11.9-linux-i686.tar.gz'; 			sha256='74df5031a93bce45e30582a71bf70f4ba983ff42f6eaf54eb9effb6e124604ca'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.11/julia-1.11.9-linux-aarch64.tar.gz'; 			sha256='a2071f0654d1d6af4381cba650b9f790f5f8bb7a570e51e378de8bcf67ff623e'; 			;; 		'ppc64el') 			url='https://julialang-s3.julialang.org/bin/linux/ppc64le/1.11/julia-1.11.9-linux-ppc64le.tar.gz'; 			sha256='3c25d5bf70d65da5859d65b34d17646dd1b3f1b50ea2090d13e63171d6dbf861'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:18:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:18:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:18:36 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b481e89abeceadc469c075a9931a7e357a7f88eb0dc4aded08a70a34c4e30e0`  
		Last Modified: Wed, 21 Oct 2026 00:19:20 GMT  
		Size: 5.4 MB (5387932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27883b524d4acb55ecf2a18ba80a915edbe09d67c8bbaa7a46cf76d507ef9ffd`  
		Last Modified: Wed, 21 Oct 2026 00:19:26 GMT  
		Size: 304.5 MB (304544336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31c9cde9c75deb3faaded7c4b95453088fdb06e47892fa787f0689379e7bc0e1`  
		Last Modified: Wed, 21 Oct 2026 00:19:20 GMT  
		Size: 374.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.11-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:02bcb668bb38cf3e5e1b90257460f7afa0b2b59af4437a0472be7396c6b7d360
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2588072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3abdd5d70e7f1c7bda0ad19a6b8537f8399f154092a803a147b5e6c0de9578d2`

```dockerfile
```

-	Layers:
	-	`sha256:ed02a9a925b9df6e9aad06bb43479973750fd7059627d396ee67aaf03bbb7fc9`  
		Last Modified: Wed, 21 Oct 2026 00:19:20 GMT  
		Size: 2.6 MB (2571387 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b05ee10947276a2007532c698357526d98d958e003397e0d23fe580410544915`  
		Last Modified: Wed, 21 Oct 2026 00:19:20 GMT  
		Size: 16.7 KB (16685 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.11-bookworm` - linux; 386

```console
$ docker pull julia@sha256:baff28b84751e89b249d4cb9bd25bd0afce97b287afea88f56a52f24c8a0cefb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272587906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfad38e3c204f5b73b0edae70dc0383233761198f8e1114ff24b8ba98909d3bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:16:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:17:41 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:17:41 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:17:41 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 06 Oct 2026 01:17:41 GMT
ENV JULIA_VERSION=1.11.9
# Tue, 06 Oct 2026 01:17:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.11/julia-1.11.9-linux-x86_64.tar.gz'; 			sha256='b36363356d7a05eaf8b7b9e7a91c710f6bd3d2940be4d4e6d14b9a9f2927de35'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.11/julia-1.11.9-linux-i686.tar.gz'; 			sha256='74df5031a93bce45e30582a71bf70f4ba983ff42f6eaf54eb9effb6e124604ca'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.11/julia-1.11.9-linux-aarch64.tar.gz'; 			sha256='a2071f0654d1d6af4381cba650b9f790f5f8bb7a570e51e378de8bcf67ff623e'; 			;; 		'ppc64el') 			url='https://julialang-s3.julialang.org/bin/linux/ppc64le/1.11/julia-1.11.9-linux-ppc64le.tar.gz'; 			sha256='3c25d5bf70d65da5859d65b34d17646dd1b3f1b50ea2090d13e63171d6dbf861'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:17:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:17:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:17:41 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:4fde7ff71d38b44de13588c355f9acc395f4ecbec569968085401a6d6b40eff2`  
		Last Modified: Tue, 06 Oct 2026 00:13:26 GMT  
		Size: 29.2 MB (29239373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5132abd7e7add61338fc85cb39420d48cc35fd7c48b61d4aaaa2d3d9c4166b83`  
		Last Modified: Tue, 06 Oct 2026 01:17:10 GMT  
		Size: 5.7 MB (5704979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38e49b09cdccdde289745a8b5dcf5fb75048055d8785c165c26f7ff39e056712`  
		Last Modified: Tue, 06 Oct 2026 01:18:17 GMT  
		Size: 237.6 MB (237643186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4f6f8b7343b5e667886830ef4fd1d37a6520309d09556bce1df58ac84f99671`  
		Last Modified: Tue, 06 Oct 2026 01:18:12 GMT  
		Size: 368.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.11-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:ed7265c655ec60f799e383e534aa83d2dacb6fcc158a44fc203baf2a8215ec60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2586155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75f1615d768179fb22f72d4c0a6da0895edc32a3bf1136f5825a7d20ecdbce5f`

```dockerfile
```

-	Layers:
	-	`sha256:d0c9972b0e4a154040b04d828725f4d1af71a898339a1f92f4a1a351f0f655a2`  
		Last Modified: Tue, 06 Oct 2026 01:18:12 GMT  
		Size: 2.6 MB (2569588 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68930e22a287ecfd2e35484e5d3247df75500eb66ab348da547a5c51536ebc64`  
		Last Modified: Tue, 06 Oct 2026 01:18:12 GMT  
		Size: 16.6 KB (16567 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.11-bookworm` - linux; ppc64le

```console
$ docker pull julia@sha256:e398f75fe61ab3aeba56a0a873ab9b4297c37dbd882f4625adbec1e0ea740676
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.9 MB (286884293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b409a8913f8f50e4abc172f8c80ea0622b3c3184ef054c6803fc94ff3227fcfa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:36:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:37:00 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:37:00 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:37:00 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 21 Oct 2026 00:37:00 GMT
ENV JULIA_VERSION=1.11.9
# Wed, 21 Oct 2026 00:37:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.11/julia-1.11.9-linux-x86_64.tar.gz'; 			sha256='b36363356d7a05eaf8b7b9e7a91c710f6bd3d2940be4d4e6d14b9a9f2927de35'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.11/julia-1.11.9-linux-i686.tar.gz'; 			sha256='74df5031a93bce45e30582a71bf70f4ba983ff42f6eaf54eb9effb6e124604ca'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.11/julia-1.11.9-linux-aarch64.tar.gz'; 			sha256='a2071f0654d1d6af4381cba650b9f790f5f8bb7a570e51e378de8bcf67ff623e'; 			;; 		'ppc64el') 			url='https://julialang-s3.julialang.org/bin/linux/ppc64le/1.11/julia-1.11.9-linux-ppc64le.tar.gz'; 			sha256='3c25d5bf70d65da5859d65b34d17646dd1b3f1b50ea2090d13e63171d6dbf861'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:37:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:37:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:37:01 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:dbe4b1ae261d30189a9f71db084062762a30a0c977f281a1fb8f9b8506a24e42`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 32.1 MB (32093209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1b9de08f93662aaa2b943beae2090fa5f181547103c124a6af59616abd7f21c`  
		Last Modified: Wed, 21 Oct 2026 00:38:33 GMT  
		Size: 6.1 MB (6080070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e24972613bfdecfb4c1559b573ff387475909c9e52221bafc236e495a37a249c`  
		Last Modified: Wed, 21 Oct 2026 00:38:38 GMT  
		Size: 248.7 MB (248710640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:943d7b075ee0147e30d65d1c0b9861ae8fade176b513735b6a2ab0dfbe848540`  
		Last Modified: Wed, 21 Oct 2026 00:38:32 GMT  
		Size: 374.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.11-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:fe05862697a87eaeb1280e3fbb4af4e33cf8d8827d266d8809f6432969d8324e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2592277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f9267356f983ddaf261a6a2d7ff9c5ecd47cb6c3ea99c55fe5f5877de8f21db`

```dockerfile
```

-	Layers:
	-	`sha256:a5663d2cc1d18766a27f2f219d6b7389287008b0c6293fe556f86a08c0f7263a`  
		Last Modified: Wed, 21 Oct 2026 00:38:32 GMT  
		Size: 2.6 MB (2575652 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a67922a4684c5069fb9a0e247a53d766b5ed79f36ae0ec5f7ebbadfbe65f790`  
		Last Modified: Wed, 21 Oct 2026 00:38:32 GMT  
		Size: 16.6 KB (16625 bytes)  
		MIME: application/vnd.in-toto+json

## `julia:1.11-trixie`

```console
$ docker pull julia@sha256:8d6f5cc444c9420147002f5b372b38c0bb63dd01be082beb2b8bac7529c386ef
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `julia:1.11-trixie` - linux; amd64

```console
$ docker pull julia@sha256:4834d6e700f0421aa16e3a5defdffdd1f914d84a4ea5b1be3c4484eefa983a42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.2 MB (325178836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3307789010ce10c099fde6dae061431487bbb6ebf84b95f96f07462bfbc1fc2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:17:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:19:23 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:19:23 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:19:23 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 21 Oct 2026 00:19:23 GMT
ENV JULIA_VERSION=1.11.9
# Wed, 21 Oct 2026 00:19:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.11/julia-1.11.9-linux-x86_64.tar.gz'; 			sha256='b36363356d7a05eaf8b7b9e7a91c710f6bd3d2940be4d4e6d14b9a9f2927de35'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.11/julia-1.11.9-linux-i686.tar.gz'; 			sha256='74df5031a93bce45e30582a71bf70f4ba983ff42f6eaf54eb9effb6e124604ca'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.11/julia-1.11.9-linux-aarch64.tar.gz'; 			sha256='a2071f0654d1d6af4381cba650b9f790f5f8bb7a570e51e378de8bcf67ff623e'; 			;; 		'ppc64el') 			url='https://julialang-s3.julialang.org/bin/linux/ppc64le/1.11/julia-1.11.9-linux-ppc64le.tar.gz'; 			sha256='3c25d5bf70d65da5859d65b34d17646dd1b3f1b50ea2090d13e63171d6dbf861'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:19:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:19:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:19:23 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7251038b43fb4f309c084b32e12c0da0d8773e20998f24fead7a448a09bf27cd`  
		Last Modified: Wed, 21 Oct 2026 00:18:48 GMT  
		Size: 6.2 MB (6247392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7344f793de8aa6f44ee00b6e08319441c31b619167bf687f6f2423959463b2`  
		Last Modified: Wed, 21 Oct 2026 00:20:11 GMT  
		Size: 289.1 MB (289087491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33a13ab41bed77e6f69de608e86ac2043267e4ac4cd5d3b459b8e85305af594a`  
		Last Modified: Wed, 21 Oct 2026 00:20:05 GMT  
		Size: 374.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.11-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:63a1b3cc41d30bcb4ff131429e46a0da6ca791e878731eaddd5afea52ed6d9da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2261133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:854e57ce7d536f734295926075e3f025f38d72ef49edb67fa2d13c66c86f825f`

```dockerfile
```

-	Layers:
	-	`sha256:47813b1b1feca80e3e7045b3d8748713e7bcf2c988a20b324930d49b7496f546`  
		Last Modified: Wed, 21 Oct 2026 00:20:05 GMT  
		Size: 2.2 MB (2243970 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88fd2efad04ba1f7af59c876d95493539306b683946327670420503b86ba9fba`  
		Last Modified: Wed, 21 Oct 2026 00:20:05 GMT  
		Size: 17.2 KB (17163 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.11-trixie` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:985c0c8880ee8aff922e1a2a02ef3b110e9634ab52fe7436b4e36b35bd0d9296
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.9 MB (340931577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbcf5bb8863b9bfd94aa150036702ce14cf0bf6e072708e2665ac3d5c36a57bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:18:10 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:18:10 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:18:10 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 21 Oct 2026 00:18:10 GMT
ENV JULIA_VERSION=1.11.9
# Wed, 21 Oct 2026 00:18:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.11/julia-1.11.9-linux-x86_64.tar.gz'; 			sha256='b36363356d7a05eaf8b7b9e7a91c710f6bd3d2940be4d4e6d14b9a9f2927de35'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.11/julia-1.11.9-linux-i686.tar.gz'; 			sha256='74df5031a93bce45e30582a71bf70f4ba983ff42f6eaf54eb9effb6e124604ca'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.11/julia-1.11.9-linux-aarch64.tar.gz'; 			sha256='a2071f0654d1d6af4381cba650b9f790f5f8bb7a570e51e378de8bcf67ff623e'; 			;; 		'ppc64el') 			url='https://julialang-s3.julialang.org/bin/linux/ppc64le/1.11/julia-1.11.9-linux-ppc64le.tar.gz'; 			sha256='3c25d5bf70d65da5859d65b34d17646dd1b3f1b50ea2090d13e63171d6dbf861'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:18:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:18:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:18:11 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6036bd4cbedb72c264a3e38730e8628dbdd600292bd87195810530f6387981d4`  
		Last Modified: Wed, 21 Oct 2026 00:17:34 GMT  
		Size: 6.2 MB (6153234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5883f5e70146c2eab6cf6dbc59ce114f59c6863be69814f8d102403abc0c701d`  
		Last Modified: Wed, 21 Oct 2026 00:19:00 GMT  
		Size: 304.6 MB (304577491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859cef14597604eb017d9c76521cd1e5404e4ce9acdc47736c39bcca21a78460`  
		Last Modified: Wed, 21 Oct 2026 00:18:54 GMT  
		Size: 374.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.11-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:e44c8850ea07e66f01ce8d9806023d3e1d73fa7d036955670e335ef875761b04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2261528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c733604f0eddec58c16f192dd50611b88b1cec1bea9938352a61474895c3e7c`

```dockerfile
```

-	Layers:
	-	`sha256:b8353c99077d0ec97adf3214fd0c5bce343146803df84738ef070e600fec83db`  
		Last Modified: Wed, 21 Oct 2026 00:18:55 GMT  
		Size: 2.2 MB (2244246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1b4cf249959b4d83f50ebd12b38d7ed8fa0fc9ea2abcf92aec559acdea67a49c`  
		Last Modified: Wed, 21 Oct 2026 00:18:54 GMT  
		Size: 17.3 KB (17282 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.11-trixie` - linux; 386

```console
$ docker pull julia@sha256:6a7576e4300bb757fb61ae059de2f356485511cb7a66091a9f94ac485d7dfc39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.5 MB (275461400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f269b002ef2f98fa4d69890ef36f4425fec5d6245ad4ae08440bfeb3dbf3655c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:16:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:17:37 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:17:37 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:17:37 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 06 Oct 2026 01:17:37 GMT
ENV JULIA_VERSION=1.11.9
# Tue, 06 Oct 2026 01:17:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.11/julia-1.11.9-linux-x86_64.tar.gz'; 			sha256='b36363356d7a05eaf8b7b9e7a91c710f6bd3d2940be4d4e6d14b9a9f2927de35'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.11/julia-1.11.9-linux-i686.tar.gz'; 			sha256='74df5031a93bce45e30582a71bf70f4ba983ff42f6eaf54eb9effb6e124604ca'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.11/julia-1.11.9-linux-aarch64.tar.gz'; 			sha256='a2071f0654d1d6af4381cba650b9f790f5f8bb7a570e51e378de8bcf67ff623e'; 			;; 		'ppc64el') 			url='https://julialang-s3.julialang.org/bin/linux/ppc64le/1.11/julia-1.11.9-linux-ppc64le.tar.gz'; 			sha256='3c25d5bf70d65da5859d65b34d17646dd1b3f1b50ea2090d13e63171d6dbf861'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:17:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:17:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:17:37 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46e416e3288fab229c083bb2f1f29cbb0b965ecc5280e3a73b99097704249cc8`  
		Last Modified: Tue, 06 Oct 2026 01:17:06 GMT  
		Size: 6.4 MB (6436290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:253d9f2d18c80e3a53409298a0c2953bcfb94cddbe2c880879326900f05fe2b7`  
		Last Modified: Tue, 06 Oct 2026 01:18:16 GMT  
		Size: 237.7 MB (237671443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be411fa6f7823e4d7e096046c7871a2d97c6dbee38cb49039667aedd5dd0f250`  
		Last Modified: Tue, 06 Oct 2026 01:18:12 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.11-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:816e19f367c6882822a1e78737594673e98670d0b0fbd1e3f3b49a78e6a53e5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2259521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9596f5abb4ba3d5f0ef7341fd177a8681a912795137362d42b5104a2f2fc28e0`

```dockerfile
```

-	Layers:
	-	`sha256:5d55665013a966ffac6ad26838fd88d8edbe925d5183a9da09151163bec2bfad`  
		Last Modified: Tue, 06 Oct 2026 01:18:12 GMT  
		Size: 2.2 MB (2242392 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00dc301c162f50637a2a57aa323762fb540aae85aeeb52144607cc2681d8ed05`  
		Last Modified: Tue, 06 Oct 2026 01:18:12 GMT  
		Size: 17.1 KB (17129 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.11-trixie` - linux; ppc64le

```console
$ docker pull julia@sha256:50621b4a34594f3d3b27430b4755b5780bd4649ecadb8ea27af90ea962e6128f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.1 MB (289083765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9402441a595f4b94eefc65ca66638edf0c090a64b589b78c772987b94fc6542`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:35:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:35:54 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:35:54 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:35:54 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 21 Oct 2026 00:35:54 GMT
ENV JULIA_VERSION=1.11.9
# Wed, 21 Oct 2026 00:35:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.11/julia-1.11.9-linux-x86_64.tar.gz'; 			sha256='b36363356d7a05eaf8b7b9e7a91c710f6bd3d2940be4d4e6d14b9a9f2927de35'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.11/julia-1.11.9-linux-i686.tar.gz'; 			sha256='74df5031a93bce45e30582a71bf70f4ba983ff42f6eaf54eb9effb6e124604ca'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.11/julia-1.11.9-linux-aarch64.tar.gz'; 			sha256='a2071f0654d1d6af4381cba650b9f790f5f8bb7a570e51e378de8bcf67ff623e'; 			;; 		'ppc64el') 			url='https://julialang-s3.julialang.org/bin/linux/ppc64le/1.11/julia-1.11.9-linux-ppc64le.tar.gz'; 			sha256='3c25d5bf70d65da5859d65b34d17646dd1b3f1b50ea2090d13e63171d6dbf861'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:35:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:35:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:35:56 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0e84afdd3858812039fa7bedc74b17d0ab8ce541d9937d8470c1c9966cf4c22`  
		Last Modified: Wed, 21 Oct 2026 00:37:24 GMT  
		Size: 6.7 MB (6683605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:147c39721279e0a119189f81aea2752bc7cbae45101b468a7925fe6056045709`  
		Last Modified: Wed, 21 Oct 2026 00:37:29 GMT  
		Size: 248.7 MB (248747853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bd62651048d9ed056dce1d6e9022b505135dcfdd118c43e5a1b553eb121d344`  
		Last Modified: Wed, 21 Oct 2026 00:37:24 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.11-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:304e66b51818802585bc754b38ac62b59d05e3274207c35103afdf4c5a90d74a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2264908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80890a13073d87b5d44d9f83938860fa326f8bd104e721e2e05ddcf65f8fbebc`

```dockerfile
```

-	Layers:
	-	`sha256:349e1d2c3f6028e20ccee8a226f9092eab1c2f327196a7be89f39e2ae936b5e3`  
		Last Modified: Wed, 21 Oct 2026 00:37:24 GMT  
		Size: 2.2 MB (2247699 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e2648c7aa9785082c4eba66d564083299baf15a4d63b33911d48c58d1dc62d6b`  
		Last Modified: Wed, 21 Oct 2026 00:37:24 GMT  
		Size: 17.2 KB (17209 bytes)  
		MIME: application/vnd.in-toto+json

## `julia:1.11-windowsservercore`

```console
$ docker pull julia@sha256:c246872a31d43719d420fa0f12fcb374feb54b3e14ca71eaa3ccf5730033b25f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `julia:1.11-windowsservercore` - windows version 10.0.26100.33650; amd64

```console
$ docker pull julia@sha256:e521284afeb7351f86696a602a7a88608b79873b3fc778b9cd207cf9d96e50c9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2678314048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31378836d5b807bf33da6c69c87afac258df0df9bc724f00f14ee3c40cd0da57`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Tue, 13 Oct 2026 23:02:18 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:02:19 GMT
ENV JULIA_VERSION=1.11.9
# Tue, 13 Oct 2026 23:02:20 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.11/julia-1.11.9-win64.exe
# Tue, 13 Oct 2026 23:02:20 GMT
ENV JULIA_SHA256=747ff8983fa183e0e35e618c9212815cba0b3ad29a44eaac039acc755a0d91b6
# Tue, 13 Oct 2026 23:03:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:03:33 GMT
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
	-	`sha256:1fb7dfc46006339a6f16acc5304b94216980fef39bfe3cfe00a0e43b920c14dc`  
		Last Modified: Tue, 13 Oct 2026 23:03:43 GMT  
		Size: 1.4 KB (1372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b6b5431f606774571770aa1aafdddef235766bb60693b69158fba3f54217ee8`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6001de4c4ded80103bf05b262523972867cf5d86ef998e0be29fd8a34abde520`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c059aee9003819e4d2f9512246bc3339bce52392b8f9ea55816e0367636c970`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c485b16d874fe5a77e49a493f33ec4a061648c2b11e53fee60812f75d1c6b5`  
		Last Modified: Tue, 13 Oct 2026 23:04:18 GMT  
		Size: 286.3 MB (286313216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c102cca40ecdf6bfd1c8b36502277ffbfb6776028fb264013590a89884781d`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.11-windowsservercore` - windows version 10.0.20348.5761; amd64

```console
$ docker pull julia@sha256:075e4d4228ac63fce0354feaccefa89b513d6a2978443d98dd528d18d81161f6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2512592112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ae50f013b2c544f5bac6d2627cb7564407eb1e4509212414324280053d11ca8`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 22:56:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:00:18 GMT
ENV JULIA_VERSION=1.11.9
# Tue, 13 Oct 2026 23:00:18 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.11/julia-1.11.9-win64.exe
# Tue, 13 Oct 2026 23:00:19 GMT
ENV JULIA_SHA256=747ff8983fa183e0e35e618c9212815cba0b3ad29a44eaac039acc755a0d91b6
# Tue, 13 Oct 2026 23:01:34 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:01:38 GMT
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
	-	`sha256:2199c4844b30e9c638a16f875cb259173696ccfa543d7babf8dca385c8a34de4`  
		Last Modified: Tue, 13 Oct 2026 22:57:23 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:235ea87240acde278082fd049bb1a5f18debf3363f37ec87be90fa0af527e1f5`  
		Last Modified: Tue, 13 Oct 2026 23:01:45 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a80b7018de318373750c3fb27799e2741d228704826f36952b5f8e425f0755`  
		Last Modified: Tue, 13 Oct 2026 23:01:45 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c301a65f137a836507a88181d3b259f08ae9eee58ed992daa03b329b558385f`  
		Last Modified: Tue, 13 Oct 2026 23:01:45 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:886ca3bf1bd553189e55fc3fb85cb9f40eaa88e6c2b178b45870a48eef1c8b94`  
		Last Modified: Tue, 13 Oct 2026 23:02:22 GMT  
		Size: 286.3 MB (286300111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96a42a6378a0e2c938e0b2cfb06136b869608ed37d16ee454b7a5a2dd10bb863`  
		Last Modified: Tue, 13 Oct 2026 23:01:45 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.11-windowsservercore-ltsc2022`

```console
$ docker pull julia@sha256:53a85f6658bfe27fce103b69e4070520d38a272a91b7eae64d7ff0e4b479ca65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `julia:1.11-windowsservercore-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull julia@sha256:075e4d4228ac63fce0354feaccefa89b513d6a2978443d98dd528d18d81161f6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2512592112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ae50f013b2c544f5bac6d2627cb7564407eb1e4509212414324280053d11ca8`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 22:56:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:00:18 GMT
ENV JULIA_VERSION=1.11.9
# Tue, 13 Oct 2026 23:00:18 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.11/julia-1.11.9-win64.exe
# Tue, 13 Oct 2026 23:00:19 GMT
ENV JULIA_SHA256=747ff8983fa183e0e35e618c9212815cba0b3ad29a44eaac039acc755a0d91b6
# Tue, 13 Oct 2026 23:01:34 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:01:38 GMT
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
	-	`sha256:2199c4844b30e9c638a16f875cb259173696ccfa543d7babf8dca385c8a34de4`  
		Last Modified: Tue, 13 Oct 2026 22:57:23 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:235ea87240acde278082fd049bb1a5f18debf3363f37ec87be90fa0af527e1f5`  
		Last Modified: Tue, 13 Oct 2026 23:01:45 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a80b7018de318373750c3fb27799e2741d228704826f36952b5f8e425f0755`  
		Last Modified: Tue, 13 Oct 2026 23:01:45 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c301a65f137a836507a88181d3b259f08ae9eee58ed992daa03b329b558385f`  
		Last Modified: Tue, 13 Oct 2026 23:01:45 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:886ca3bf1bd553189e55fc3fb85cb9f40eaa88e6c2b178b45870a48eef1c8b94`  
		Last Modified: Tue, 13 Oct 2026 23:02:22 GMT  
		Size: 286.3 MB (286300111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96a42a6378a0e2c938e0b2cfb06136b869608ed37d16ee454b7a5a2dd10bb863`  
		Last Modified: Tue, 13 Oct 2026 23:01:45 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.11-windowsservercore-ltsc2025`

```console
$ docker pull julia@sha256:7e18a8773653db32664df09cb4ea8d5f3d2950b6be856ed9cc4e92d8150a438a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33650; amd64

### `julia:1.11-windowsservercore-ltsc2025` - windows version 10.0.26100.33650; amd64

```console
$ docker pull julia@sha256:e521284afeb7351f86696a602a7a88608b79873b3fc778b9cd207cf9d96e50c9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2678314048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31378836d5b807bf33da6c69c87afac258df0df9bc724f00f14ee3c40cd0da57`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Tue, 13 Oct 2026 23:02:18 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:02:19 GMT
ENV JULIA_VERSION=1.11.9
# Tue, 13 Oct 2026 23:02:20 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.11/julia-1.11.9-win64.exe
# Tue, 13 Oct 2026 23:02:20 GMT
ENV JULIA_SHA256=747ff8983fa183e0e35e618c9212815cba0b3ad29a44eaac039acc755a0d91b6
# Tue, 13 Oct 2026 23:03:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:03:33 GMT
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
	-	`sha256:1fb7dfc46006339a6f16acc5304b94216980fef39bfe3cfe00a0e43b920c14dc`  
		Last Modified: Tue, 13 Oct 2026 23:03:43 GMT  
		Size: 1.4 KB (1372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b6b5431f606774571770aa1aafdddef235766bb60693b69158fba3f54217ee8`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6001de4c4ded80103bf05b262523972867cf5d86ef998e0be29fd8a34abde520`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c059aee9003819e4d2f9512246bc3339bce52392b8f9ea55816e0367636c970`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c485b16d874fe5a77e49a493f33ec4a061648c2b11e53fee60812f75d1c6b5`  
		Last Modified: Tue, 13 Oct 2026 23:04:18 GMT  
		Size: 286.3 MB (286313216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c102cca40ecdf6bfd1c8b36502277ffbfb6776028fb264013590a89884781d`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.11.9`

```console
$ docker pull julia@sha256:73c0769b0be31bbe99eb45baf25e01e44e1c7026bac71a17ecdd4f7d283934ab
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `julia:1.11.9` - linux; amd64

```console
$ docker pull julia@sha256:4834d6e700f0421aa16e3a5defdffdd1f914d84a4ea5b1be3c4484eefa983a42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.2 MB (325178836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3307789010ce10c099fde6dae061431487bbb6ebf84b95f96f07462bfbc1fc2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:17:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:19:23 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:19:23 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:19:23 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 21 Oct 2026 00:19:23 GMT
ENV JULIA_VERSION=1.11.9
# Wed, 21 Oct 2026 00:19:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.11/julia-1.11.9-linux-x86_64.tar.gz'; 			sha256='b36363356d7a05eaf8b7b9e7a91c710f6bd3d2940be4d4e6d14b9a9f2927de35'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.11/julia-1.11.9-linux-i686.tar.gz'; 			sha256='74df5031a93bce45e30582a71bf70f4ba983ff42f6eaf54eb9effb6e124604ca'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.11/julia-1.11.9-linux-aarch64.tar.gz'; 			sha256='a2071f0654d1d6af4381cba650b9f790f5f8bb7a570e51e378de8bcf67ff623e'; 			;; 		'ppc64el') 			url='https://julialang-s3.julialang.org/bin/linux/ppc64le/1.11/julia-1.11.9-linux-ppc64le.tar.gz'; 			sha256='3c25d5bf70d65da5859d65b34d17646dd1b3f1b50ea2090d13e63171d6dbf861'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:19:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:19:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:19:23 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7251038b43fb4f309c084b32e12c0da0d8773e20998f24fead7a448a09bf27cd`  
		Last Modified: Wed, 21 Oct 2026 00:18:48 GMT  
		Size: 6.2 MB (6247392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7344f793de8aa6f44ee00b6e08319441c31b619167bf687f6f2423959463b2`  
		Last Modified: Wed, 21 Oct 2026 00:20:11 GMT  
		Size: 289.1 MB (289087491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33a13ab41bed77e6f69de608e86ac2043267e4ac4cd5d3b459b8e85305af594a`  
		Last Modified: Wed, 21 Oct 2026 00:20:05 GMT  
		Size: 374.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.11.9` - unknown; unknown

```console
$ docker pull julia@sha256:63a1b3cc41d30bcb4ff131429e46a0da6ca791e878731eaddd5afea52ed6d9da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2261133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:854e57ce7d536f734295926075e3f025f38d72ef49edb67fa2d13c66c86f825f`

```dockerfile
```

-	Layers:
	-	`sha256:47813b1b1feca80e3e7045b3d8748713e7bcf2c988a20b324930d49b7496f546`  
		Last Modified: Wed, 21 Oct 2026 00:20:05 GMT  
		Size: 2.2 MB (2243970 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88fd2efad04ba1f7af59c876d95493539306b683946327670420503b86ba9fba`  
		Last Modified: Wed, 21 Oct 2026 00:20:05 GMT  
		Size: 17.2 KB (17163 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.11.9` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:985c0c8880ee8aff922e1a2a02ef3b110e9634ab52fe7436b4e36b35bd0d9296
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.9 MB (340931577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbcf5bb8863b9bfd94aa150036702ce14cf0bf6e072708e2665ac3d5c36a57bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:18:10 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:18:10 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:18:10 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 21 Oct 2026 00:18:10 GMT
ENV JULIA_VERSION=1.11.9
# Wed, 21 Oct 2026 00:18:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.11/julia-1.11.9-linux-x86_64.tar.gz'; 			sha256='b36363356d7a05eaf8b7b9e7a91c710f6bd3d2940be4d4e6d14b9a9f2927de35'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.11/julia-1.11.9-linux-i686.tar.gz'; 			sha256='74df5031a93bce45e30582a71bf70f4ba983ff42f6eaf54eb9effb6e124604ca'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.11/julia-1.11.9-linux-aarch64.tar.gz'; 			sha256='a2071f0654d1d6af4381cba650b9f790f5f8bb7a570e51e378de8bcf67ff623e'; 			;; 		'ppc64el') 			url='https://julialang-s3.julialang.org/bin/linux/ppc64le/1.11/julia-1.11.9-linux-ppc64le.tar.gz'; 			sha256='3c25d5bf70d65da5859d65b34d17646dd1b3f1b50ea2090d13e63171d6dbf861'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:18:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:18:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:18:11 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6036bd4cbedb72c264a3e38730e8628dbdd600292bd87195810530f6387981d4`  
		Last Modified: Wed, 21 Oct 2026 00:17:34 GMT  
		Size: 6.2 MB (6153234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5883f5e70146c2eab6cf6dbc59ce114f59c6863be69814f8d102403abc0c701d`  
		Last Modified: Wed, 21 Oct 2026 00:19:00 GMT  
		Size: 304.6 MB (304577491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859cef14597604eb017d9c76521cd1e5404e4ce9acdc47736c39bcca21a78460`  
		Last Modified: Wed, 21 Oct 2026 00:18:54 GMT  
		Size: 374.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.11.9` - unknown; unknown

```console
$ docker pull julia@sha256:e44c8850ea07e66f01ce8d9806023d3e1d73fa7d036955670e335ef875761b04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2261528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c733604f0eddec58c16f192dd50611b88b1cec1bea9938352a61474895c3e7c`

```dockerfile
```

-	Layers:
	-	`sha256:b8353c99077d0ec97adf3214fd0c5bce343146803df84738ef070e600fec83db`  
		Last Modified: Wed, 21 Oct 2026 00:18:55 GMT  
		Size: 2.2 MB (2244246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1b4cf249959b4d83f50ebd12b38d7ed8fa0fc9ea2abcf92aec559acdea67a49c`  
		Last Modified: Wed, 21 Oct 2026 00:18:54 GMT  
		Size: 17.3 KB (17282 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.11.9` - linux; 386

```console
$ docker pull julia@sha256:6a7576e4300bb757fb61ae059de2f356485511cb7a66091a9f94ac485d7dfc39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.5 MB (275461400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f269b002ef2f98fa4d69890ef36f4425fec5d6245ad4ae08440bfeb3dbf3655c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:16:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:17:37 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:17:37 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:17:37 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 06 Oct 2026 01:17:37 GMT
ENV JULIA_VERSION=1.11.9
# Tue, 06 Oct 2026 01:17:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.11/julia-1.11.9-linux-x86_64.tar.gz'; 			sha256='b36363356d7a05eaf8b7b9e7a91c710f6bd3d2940be4d4e6d14b9a9f2927de35'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.11/julia-1.11.9-linux-i686.tar.gz'; 			sha256='74df5031a93bce45e30582a71bf70f4ba983ff42f6eaf54eb9effb6e124604ca'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.11/julia-1.11.9-linux-aarch64.tar.gz'; 			sha256='a2071f0654d1d6af4381cba650b9f790f5f8bb7a570e51e378de8bcf67ff623e'; 			;; 		'ppc64el') 			url='https://julialang-s3.julialang.org/bin/linux/ppc64le/1.11/julia-1.11.9-linux-ppc64le.tar.gz'; 			sha256='3c25d5bf70d65da5859d65b34d17646dd1b3f1b50ea2090d13e63171d6dbf861'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:17:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:17:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:17:37 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46e416e3288fab229c083bb2f1f29cbb0b965ecc5280e3a73b99097704249cc8`  
		Last Modified: Tue, 06 Oct 2026 01:17:06 GMT  
		Size: 6.4 MB (6436290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:253d9f2d18c80e3a53409298a0c2953bcfb94cddbe2c880879326900f05fe2b7`  
		Last Modified: Tue, 06 Oct 2026 01:18:16 GMT  
		Size: 237.7 MB (237671443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be411fa6f7823e4d7e096046c7871a2d97c6dbee38cb49039667aedd5dd0f250`  
		Last Modified: Tue, 06 Oct 2026 01:18:12 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.11.9` - unknown; unknown

```console
$ docker pull julia@sha256:816e19f367c6882822a1e78737594673e98670d0b0fbd1e3f3b49a78e6a53e5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2259521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9596f5abb4ba3d5f0ef7341fd177a8681a912795137362d42b5104a2f2fc28e0`

```dockerfile
```

-	Layers:
	-	`sha256:5d55665013a966ffac6ad26838fd88d8edbe925d5183a9da09151163bec2bfad`  
		Last Modified: Tue, 06 Oct 2026 01:18:12 GMT  
		Size: 2.2 MB (2242392 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00dc301c162f50637a2a57aa323762fb540aae85aeeb52144607cc2681d8ed05`  
		Last Modified: Tue, 06 Oct 2026 01:18:12 GMT  
		Size: 17.1 KB (17129 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.11.9` - linux; ppc64le

```console
$ docker pull julia@sha256:50621b4a34594f3d3b27430b4755b5780bd4649ecadb8ea27af90ea962e6128f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.1 MB (289083765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9402441a595f4b94eefc65ca66638edf0c090a64b589b78c772987b94fc6542`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:35:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:35:54 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:35:54 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:35:54 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 21 Oct 2026 00:35:54 GMT
ENV JULIA_VERSION=1.11.9
# Wed, 21 Oct 2026 00:35:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.11/julia-1.11.9-linux-x86_64.tar.gz'; 			sha256='b36363356d7a05eaf8b7b9e7a91c710f6bd3d2940be4d4e6d14b9a9f2927de35'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.11/julia-1.11.9-linux-i686.tar.gz'; 			sha256='74df5031a93bce45e30582a71bf70f4ba983ff42f6eaf54eb9effb6e124604ca'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.11/julia-1.11.9-linux-aarch64.tar.gz'; 			sha256='a2071f0654d1d6af4381cba650b9f790f5f8bb7a570e51e378de8bcf67ff623e'; 			;; 		'ppc64el') 			url='https://julialang-s3.julialang.org/bin/linux/ppc64le/1.11/julia-1.11.9-linux-ppc64le.tar.gz'; 			sha256='3c25d5bf70d65da5859d65b34d17646dd1b3f1b50ea2090d13e63171d6dbf861'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:35:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:35:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:35:56 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0e84afdd3858812039fa7bedc74b17d0ab8ce541d9937d8470c1c9966cf4c22`  
		Last Modified: Wed, 21 Oct 2026 00:37:24 GMT  
		Size: 6.7 MB (6683605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:147c39721279e0a119189f81aea2752bc7cbae45101b468a7925fe6056045709`  
		Last Modified: Wed, 21 Oct 2026 00:37:29 GMT  
		Size: 248.7 MB (248747853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bd62651048d9ed056dce1d6e9022b505135dcfdd118c43e5a1b553eb121d344`  
		Last Modified: Wed, 21 Oct 2026 00:37:24 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.11.9` - unknown; unknown

```console
$ docker pull julia@sha256:304e66b51818802585bc754b38ac62b59d05e3274207c35103afdf4c5a90d74a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2264908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80890a13073d87b5d44d9f83938860fa326f8bd104e721e2e05ddcf65f8fbebc`

```dockerfile
```

-	Layers:
	-	`sha256:349e1d2c3f6028e20ccee8a226f9092eab1c2f327196a7be89f39e2ae936b5e3`  
		Last Modified: Wed, 21 Oct 2026 00:37:24 GMT  
		Size: 2.2 MB (2247699 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e2648c7aa9785082c4eba66d564083299baf15a4d63b33911d48c58d1dc62d6b`  
		Last Modified: Wed, 21 Oct 2026 00:37:24 GMT  
		Size: 17.2 KB (17209 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.11.9` - windows version 10.0.26100.33650; amd64

```console
$ docker pull julia@sha256:e521284afeb7351f86696a602a7a88608b79873b3fc778b9cd207cf9d96e50c9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2678314048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31378836d5b807bf33da6c69c87afac258df0df9bc724f00f14ee3c40cd0da57`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Tue, 13 Oct 2026 23:02:18 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:02:19 GMT
ENV JULIA_VERSION=1.11.9
# Tue, 13 Oct 2026 23:02:20 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.11/julia-1.11.9-win64.exe
# Tue, 13 Oct 2026 23:02:20 GMT
ENV JULIA_SHA256=747ff8983fa183e0e35e618c9212815cba0b3ad29a44eaac039acc755a0d91b6
# Tue, 13 Oct 2026 23:03:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:03:33 GMT
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
	-	`sha256:1fb7dfc46006339a6f16acc5304b94216980fef39bfe3cfe00a0e43b920c14dc`  
		Last Modified: Tue, 13 Oct 2026 23:03:43 GMT  
		Size: 1.4 KB (1372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b6b5431f606774571770aa1aafdddef235766bb60693b69158fba3f54217ee8`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6001de4c4ded80103bf05b262523972867cf5d86ef998e0be29fd8a34abde520`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c059aee9003819e4d2f9512246bc3339bce52392b8f9ea55816e0367636c970`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c485b16d874fe5a77e49a493f33ec4a061648c2b11e53fee60812f75d1c6b5`  
		Last Modified: Tue, 13 Oct 2026 23:04:18 GMT  
		Size: 286.3 MB (286313216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c102cca40ecdf6bfd1c8b36502277ffbfb6776028fb264013590a89884781d`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.11.9` - windows version 10.0.20348.5761; amd64

```console
$ docker pull julia@sha256:075e4d4228ac63fce0354feaccefa89b513d6a2978443d98dd528d18d81161f6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2512592112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ae50f013b2c544f5bac6d2627cb7564407eb1e4509212414324280053d11ca8`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 22:56:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:00:18 GMT
ENV JULIA_VERSION=1.11.9
# Tue, 13 Oct 2026 23:00:18 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.11/julia-1.11.9-win64.exe
# Tue, 13 Oct 2026 23:00:19 GMT
ENV JULIA_SHA256=747ff8983fa183e0e35e618c9212815cba0b3ad29a44eaac039acc755a0d91b6
# Tue, 13 Oct 2026 23:01:34 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:01:38 GMT
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
	-	`sha256:2199c4844b30e9c638a16f875cb259173696ccfa543d7babf8dca385c8a34de4`  
		Last Modified: Tue, 13 Oct 2026 22:57:23 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:235ea87240acde278082fd049bb1a5f18debf3363f37ec87be90fa0af527e1f5`  
		Last Modified: Tue, 13 Oct 2026 23:01:45 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a80b7018de318373750c3fb27799e2741d228704826f36952b5f8e425f0755`  
		Last Modified: Tue, 13 Oct 2026 23:01:45 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c301a65f137a836507a88181d3b259f08ae9eee58ed992daa03b329b558385f`  
		Last Modified: Tue, 13 Oct 2026 23:01:45 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:886ca3bf1bd553189e55fc3fb85cb9f40eaa88e6c2b178b45870a48eef1c8b94`  
		Last Modified: Tue, 13 Oct 2026 23:02:22 GMT  
		Size: 286.3 MB (286300111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96a42a6378a0e2c938e0b2cfb06136b869608ed37d16ee454b7a5a2dd10bb863`  
		Last Modified: Tue, 13 Oct 2026 23:01:45 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.11.9-bookworm`

```console
$ docker pull julia@sha256:2b67ddca6edaaea0b8a69f96d54e54d3e6deaf803f0d67281855b1a879332d83
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `julia:1.11.9-bookworm` - linux; amd64

```console
$ docker pull julia@sha256:6514c2492909723c4404b052f79f08a9bf3d6089a45aae6e36f5bc43a9624208
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.9 MB (322859831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5e4772264b78058d240cccfb659fd222826b472703fbcf6980481b9a0b58ff4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:18:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:19:41 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:19:41 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:19:41 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 21 Oct 2026 00:19:41 GMT
ENV JULIA_VERSION=1.11.9
# Wed, 21 Oct 2026 00:19:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.11/julia-1.11.9-linux-x86_64.tar.gz'; 			sha256='b36363356d7a05eaf8b7b9e7a91c710f6bd3d2940be4d4e6d14b9a9f2927de35'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.11/julia-1.11.9-linux-i686.tar.gz'; 			sha256='74df5031a93bce45e30582a71bf70f4ba983ff42f6eaf54eb9effb6e124604ca'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.11/julia-1.11.9-linux-aarch64.tar.gz'; 			sha256='a2071f0654d1d6af4381cba650b9f790f5f8bb7a570e51e378de8bcf67ff623e'; 			;; 		'ppc64el') 			url='https://julialang-s3.julialang.org/bin/linux/ppc64le/1.11/julia-1.11.9-linux-ppc64le.tar.gz'; 			sha256='3c25d5bf70d65da5859d65b34d17646dd1b3f1b50ea2090d13e63171d6dbf861'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:19:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:19:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:19:41 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45827739c28e7d2faaa1e197ea2a194ec52ac2ceecee87ae45cbe2c21c455a3a`  
		Last Modified: Wed, 21 Oct 2026 00:19:07 GMT  
		Size: 5.5 MB (5542596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca94e213c2f6c680b139428789e8eec1b1bbd7fa2f01f33accb2d77a7dc3a5b4`  
		Last Modified: Wed, 21 Oct 2026 00:20:26 GMT  
		Size: 289.1 MB (289068930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0828bf406bf9951650ec18aedc3ce01873dae65f26f72a7a14c4cd0b8301eda6`  
		Last Modified: Wed, 21 Oct 2026 00:20:20 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.11.9-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:06718812f42754c28840baed2a9c84c360977631ba0045ef50fd89426b188e60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2587727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94e3413bc430fb70184e4512003b9d3d1797d0bac1782842fe9c6684e2f38e75`

```dockerfile
```

-	Layers:
	-	`sha256:7891a7c5f16d491a3695a0c854689386236f31ebd236c75e9879a84719ae4859`  
		Last Modified: Wed, 21 Oct 2026 00:20:20 GMT  
		Size: 2.6 MB (2571136 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40a93570295f97457f86ec7a2415ed614d975433e7fe339ff451d4e3c3cb0fab`  
		Last Modified: Wed, 21 Oct 2026 00:20:20 GMT  
		Size: 16.6 KB (16591 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.11.9-bookworm` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:19ddd956844251a8734c35e5df66b3d0b13f0a0d853b5e435b1aa4f4567f4d19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.1 MB (338071067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f5bc382a621ec400fb8b5050a9b7d4d0620dbe8c99a9bc47b359032b50ad520`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:18:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:18:36 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:18:36 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:18:36 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 21 Oct 2026 00:18:36 GMT
ENV JULIA_VERSION=1.11.9
# Wed, 21 Oct 2026 00:18:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.11/julia-1.11.9-linux-x86_64.tar.gz'; 			sha256='b36363356d7a05eaf8b7b9e7a91c710f6bd3d2940be4d4e6d14b9a9f2927de35'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.11/julia-1.11.9-linux-i686.tar.gz'; 			sha256='74df5031a93bce45e30582a71bf70f4ba983ff42f6eaf54eb9effb6e124604ca'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.11/julia-1.11.9-linux-aarch64.tar.gz'; 			sha256='a2071f0654d1d6af4381cba650b9f790f5f8bb7a570e51e378de8bcf67ff623e'; 			;; 		'ppc64el') 			url='https://julialang-s3.julialang.org/bin/linux/ppc64le/1.11/julia-1.11.9-linux-ppc64le.tar.gz'; 			sha256='3c25d5bf70d65da5859d65b34d17646dd1b3f1b50ea2090d13e63171d6dbf861'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:18:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:18:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:18:36 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b481e89abeceadc469c075a9931a7e357a7f88eb0dc4aded08a70a34c4e30e0`  
		Last Modified: Wed, 21 Oct 2026 00:19:20 GMT  
		Size: 5.4 MB (5387932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27883b524d4acb55ecf2a18ba80a915edbe09d67c8bbaa7a46cf76d507ef9ffd`  
		Last Modified: Wed, 21 Oct 2026 00:19:26 GMT  
		Size: 304.5 MB (304544336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31c9cde9c75deb3faaded7c4b95453088fdb06e47892fa787f0689379e7bc0e1`  
		Last Modified: Wed, 21 Oct 2026 00:19:20 GMT  
		Size: 374.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.11.9-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:02bcb668bb38cf3e5e1b90257460f7afa0b2b59af4437a0472be7396c6b7d360
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2588072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3abdd5d70e7f1c7bda0ad19a6b8537f8399f154092a803a147b5e6c0de9578d2`

```dockerfile
```

-	Layers:
	-	`sha256:ed02a9a925b9df6e9aad06bb43479973750fd7059627d396ee67aaf03bbb7fc9`  
		Last Modified: Wed, 21 Oct 2026 00:19:20 GMT  
		Size: 2.6 MB (2571387 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b05ee10947276a2007532c698357526d98d958e003397e0d23fe580410544915`  
		Last Modified: Wed, 21 Oct 2026 00:19:20 GMT  
		Size: 16.7 KB (16685 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.11.9-bookworm` - linux; 386

```console
$ docker pull julia@sha256:baff28b84751e89b249d4cb9bd25bd0afce97b287afea88f56a52f24c8a0cefb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272587906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfad38e3c204f5b73b0edae70dc0383233761198f8e1114ff24b8ba98909d3bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:16:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:17:41 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:17:41 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:17:41 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 06 Oct 2026 01:17:41 GMT
ENV JULIA_VERSION=1.11.9
# Tue, 06 Oct 2026 01:17:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.11/julia-1.11.9-linux-x86_64.tar.gz'; 			sha256='b36363356d7a05eaf8b7b9e7a91c710f6bd3d2940be4d4e6d14b9a9f2927de35'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.11/julia-1.11.9-linux-i686.tar.gz'; 			sha256='74df5031a93bce45e30582a71bf70f4ba983ff42f6eaf54eb9effb6e124604ca'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.11/julia-1.11.9-linux-aarch64.tar.gz'; 			sha256='a2071f0654d1d6af4381cba650b9f790f5f8bb7a570e51e378de8bcf67ff623e'; 			;; 		'ppc64el') 			url='https://julialang-s3.julialang.org/bin/linux/ppc64le/1.11/julia-1.11.9-linux-ppc64le.tar.gz'; 			sha256='3c25d5bf70d65da5859d65b34d17646dd1b3f1b50ea2090d13e63171d6dbf861'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:17:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:17:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:17:41 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:4fde7ff71d38b44de13588c355f9acc395f4ecbec569968085401a6d6b40eff2`  
		Last Modified: Tue, 06 Oct 2026 00:13:26 GMT  
		Size: 29.2 MB (29239373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5132abd7e7add61338fc85cb39420d48cc35fd7c48b61d4aaaa2d3d9c4166b83`  
		Last Modified: Tue, 06 Oct 2026 01:17:10 GMT  
		Size: 5.7 MB (5704979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38e49b09cdccdde289745a8b5dcf5fb75048055d8785c165c26f7ff39e056712`  
		Last Modified: Tue, 06 Oct 2026 01:18:17 GMT  
		Size: 237.6 MB (237643186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4f6f8b7343b5e667886830ef4fd1d37a6520309d09556bce1df58ac84f99671`  
		Last Modified: Tue, 06 Oct 2026 01:18:12 GMT  
		Size: 368.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.11.9-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:ed7265c655ec60f799e383e534aa83d2dacb6fcc158a44fc203baf2a8215ec60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2586155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75f1615d768179fb22f72d4c0a6da0895edc32a3bf1136f5825a7d20ecdbce5f`

```dockerfile
```

-	Layers:
	-	`sha256:d0c9972b0e4a154040b04d828725f4d1af71a898339a1f92f4a1a351f0f655a2`  
		Last Modified: Tue, 06 Oct 2026 01:18:12 GMT  
		Size: 2.6 MB (2569588 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68930e22a287ecfd2e35484e5d3247df75500eb66ab348da547a5c51536ebc64`  
		Last Modified: Tue, 06 Oct 2026 01:18:12 GMT  
		Size: 16.6 KB (16567 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.11.9-bookworm` - linux; ppc64le

```console
$ docker pull julia@sha256:e398f75fe61ab3aeba56a0a873ab9b4297c37dbd882f4625adbec1e0ea740676
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.9 MB (286884293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b409a8913f8f50e4abc172f8c80ea0622b3c3184ef054c6803fc94ff3227fcfa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:36:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:37:00 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:37:00 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:37:00 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 21 Oct 2026 00:37:00 GMT
ENV JULIA_VERSION=1.11.9
# Wed, 21 Oct 2026 00:37:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.11/julia-1.11.9-linux-x86_64.tar.gz'; 			sha256='b36363356d7a05eaf8b7b9e7a91c710f6bd3d2940be4d4e6d14b9a9f2927de35'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.11/julia-1.11.9-linux-i686.tar.gz'; 			sha256='74df5031a93bce45e30582a71bf70f4ba983ff42f6eaf54eb9effb6e124604ca'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.11/julia-1.11.9-linux-aarch64.tar.gz'; 			sha256='a2071f0654d1d6af4381cba650b9f790f5f8bb7a570e51e378de8bcf67ff623e'; 			;; 		'ppc64el') 			url='https://julialang-s3.julialang.org/bin/linux/ppc64le/1.11/julia-1.11.9-linux-ppc64le.tar.gz'; 			sha256='3c25d5bf70d65da5859d65b34d17646dd1b3f1b50ea2090d13e63171d6dbf861'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:37:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:37:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:37:01 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:dbe4b1ae261d30189a9f71db084062762a30a0c977f281a1fb8f9b8506a24e42`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 32.1 MB (32093209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1b9de08f93662aaa2b943beae2090fa5f181547103c124a6af59616abd7f21c`  
		Last Modified: Wed, 21 Oct 2026 00:38:33 GMT  
		Size: 6.1 MB (6080070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e24972613bfdecfb4c1559b573ff387475909c9e52221bafc236e495a37a249c`  
		Last Modified: Wed, 21 Oct 2026 00:38:38 GMT  
		Size: 248.7 MB (248710640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:943d7b075ee0147e30d65d1c0b9861ae8fade176b513735b6a2ab0dfbe848540`  
		Last Modified: Wed, 21 Oct 2026 00:38:32 GMT  
		Size: 374.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.11.9-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:fe05862697a87eaeb1280e3fbb4af4e33cf8d8827d266d8809f6432969d8324e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2592277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f9267356f983ddaf261a6a2d7ff9c5ecd47cb6c3ea99c55fe5f5877de8f21db`

```dockerfile
```

-	Layers:
	-	`sha256:a5663d2cc1d18766a27f2f219d6b7389287008b0c6293fe556f86a08c0f7263a`  
		Last Modified: Wed, 21 Oct 2026 00:38:32 GMT  
		Size: 2.6 MB (2575652 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a67922a4684c5069fb9a0e247a53d766b5ed79f36ae0ec5f7ebbadfbe65f790`  
		Last Modified: Wed, 21 Oct 2026 00:38:32 GMT  
		Size: 16.6 KB (16625 bytes)  
		MIME: application/vnd.in-toto+json

## `julia:1.11.9-trixie`

```console
$ docker pull julia@sha256:8d6f5cc444c9420147002f5b372b38c0bb63dd01be082beb2b8bac7529c386ef
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `julia:1.11.9-trixie` - linux; amd64

```console
$ docker pull julia@sha256:4834d6e700f0421aa16e3a5defdffdd1f914d84a4ea5b1be3c4484eefa983a42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.2 MB (325178836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3307789010ce10c099fde6dae061431487bbb6ebf84b95f96f07462bfbc1fc2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:17:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:19:23 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:19:23 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:19:23 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 21 Oct 2026 00:19:23 GMT
ENV JULIA_VERSION=1.11.9
# Wed, 21 Oct 2026 00:19:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.11/julia-1.11.9-linux-x86_64.tar.gz'; 			sha256='b36363356d7a05eaf8b7b9e7a91c710f6bd3d2940be4d4e6d14b9a9f2927de35'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.11/julia-1.11.9-linux-i686.tar.gz'; 			sha256='74df5031a93bce45e30582a71bf70f4ba983ff42f6eaf54eb9effb6e124604ca'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.11/julia-1.11.9-linux-aarch64.tar.gz'; 			sha256='a2071f0654d1d6af4381cba650b9f790f5f8bb7a570e51e378de8bcf67ff623e'; 			;; 		'ppc64el') 			url='https://julialang-s3.julialang.org/bin/linux/ppc64le/1.11/julia-1.11.9-linux-ppc64le.tar.gz'; 			sha256='3c25d5bf70d65da5859d65b34d17646dd1b3f1b50ea2090d13e63171d6dbf861'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:19:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:19:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:19:23 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7251038b43fb4f309c084b32e12c0da0d8773e20998f24fead7a448a09bf27cd`  
		Last Modified: Wed, 21 Oct 2026 00:18:48 GMT  
		Size: 6.2 MB (6247392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7344f793de8aa6f44ee00b6e08319441c31b619167bf687f6f2423959463b2`  
		Last Modified: Wed, 21 Oct 2026 00:20:11 GMT  
		Size: 289.1 MB (289087491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33a13ab41bed77e6f69de608e86ac2043267e4ac4cd5d3b459b8e85305af594a`  
		Last Modified: Wed, 21 Oct 2026 00:20:05 GMT  
		Size: 374.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.11.9-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:63a1b3cc41d30bcb4ff131429e46a0da6ca791e878731eaddd5afea52ed6d9da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2261133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:854e57ce7d536f734295926075e3f025f38d72ef49edb67fa2d13c66c86f825f`

```dockerfile
```

-	Layers:
	-	`sha256:47813b1b1feca80e3e7045b3d8748713e7bcf2c988a20b324930d49b7496f546`  
		Last Modified: Wed, 21 Oct 2026 00:20:05 GMT  
		Size: 2.2 MB (2243970 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88fd2efad04ba1f7af59c876d95493539306b683946327670420503b86ba9fba`  
		Last Modified: Wed, 21 Oct 2026 00:20:05 GMT  
		Size: 17.2 KB (17163 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.11.9-trixie` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:985c0c8880ee8aff922e1a2a02ef3b110e9634ab52fe7436b4e36b35bd0d9296
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.9 MB (340931577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbcf5bb8863b9bfd94aa150036702ce14cf0bf6e072708e2665ac3d5c36a57bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:18:10 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:18:10 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:18:10 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 21 Oct 2026 00:18:10 GMT
ENV JULIA_VERSION=1.11.9
# Wed, 21 Oct 2026 00:18:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.11/julia-1.11.9-linux-x86_64.tar.gz'; 			sha256='b36363356d7a05eaf8b7b9e7a91c710f6bd3d2940be4d4e6d14b9a9f2927de35'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.11/julia-1.11.9-linux-i686.tar.gz'; 			sha256='74df5031a93bce45e30582a71bf70f4ba983ff42f6eaf54eb9effb6e124604ca'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.11/julia-1.11.9-linux-aarch64.tar.gz'; 			sha256='a2071f0654d1d6af4381cba650b9f790f5f8bb7a570e51e378de8bcf67ff623e'; 			;; 		'ppc64el') 			url='https://julialang-s3.julialang.org/bin/linux/ppc64le/1.11/julia-1.11.9-linux-ppc64le.tar.gz'; 			sha256='3c25d5bf70d65da5859d65b34d17646dd1b3f1b50ea2090d13e63171d6dbf861'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:18:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:18:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:18:11 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6036bd4cbedb72c264a3e38730e8628dbdd600292bd87195810530f6387981d4`  
		Last Modified: Wed, 21 Oct 2026 00:17:34 GMT  
		Size: 6.2 MB (6153234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5883f5e70146c2eab6cf6dbc59ce114f59c6863be69814f8d102403abc0c701d`  
		Last Modified: Wed, 21 Oct 2026 00:19:00 GMT  
		Size: 304.6 MB (304577491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859cef14597604eb017d9c76521cd1e5404e4ce9acdc47736c39bcca21a78460`  
		Last Modified: Wed, 21 Oct 2026 00:18:54 GMT  
		Size: 374.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.11.9-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:e44c8850ea07e66f01ce8d9806023d3e1d73fa7d036955670e335ef875761b04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2261528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c733604f0eddec58c16f192dd50611b88b1cec1bea9938352a61474895c3e7c`

```dockerfile
```

-	Layers:
	-	`sha256:b8353c99077d0ec97adf3214fd0c5bce343146803df84738ef070e600fec83db`  
		Last Modified: Wed, 21 Oct 2026 00:18:55 GMT  
		Size: 2.2 MB (2244246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1b4cf249959b4d83f50ebd12b38d7ed8fa0fc9ea2abcf92aec559acdea67a49c`  
		Last Modified: Wed, 21 Oct 2026 00:18:54 GMT  
		Size: 17.3 KB (17282 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.11.9-trixie` - linux; 386

```console
$ docker pull julia@sha256:6a7576e4300bb757fb61ae059de2f356485511cb7a66091a9f94ac485d7dfc39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.5 MB (275461400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f269b002ef2f98fa4d69890ef36f4425fec5d6245ad4ae08440bfeb3dbf3655c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:16:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:17:37 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:17:37 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:17:37 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 06 Oct 2026 01:17:37 GMT
ENV JULIA_VERSION=1.11.9
# Tue, 06 Oct 2026 01:17:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.11/julia-1.11.9-linux-x86_64.tar.gz'; 			sha256='b36363356d7a05eaf8b7b9e7a91c710f6bd3d2940be4d4e6d14b9a9f2927de35'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.11/julia-1.11.9-linux-i686.tar.gz'; 			sha256='74df5031a93bce45e30582a71bf70f4ba983ff42f6eaf54eb9effb6e124604ca'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.11/julia-1.11.9-linux-aarch64.tar.gz'; 			sha256='a2071f0654d1d6af4381cba650b9f790f5f8bb7a570e51e378de8bcf67ff623e'; 			;; 		'ppc64el') 			url='https://julialang-s3.julialang.org/bin/linux/ppc64le/1.11/julia-1.11.9-linux-ppc64le.tar.gz'; 			sha256='3c25d5bf70d65da5859d65b34d17646dd1b3f1b50ea2090d13e63171d6dbf861'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:17:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:17:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:17:37 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46e416e3288fab229c083bb2f1f29cbb0b965ecc5280e3a73b99097704249cc8`  
		Last Modified: Tue, 06 Oct 2026 01:17:06 GMT  
		Size: 6.4 MB (6436290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:253d9f2d18c80e3a53409298a0c2953bcfb94cddbe2c880879326900f05fe2b7`  
		Last Modified: Tue, 06 Oct 2026 01:18:16 GMT  
		Size: 237.7 MB (237671443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be411fa6f7823e4d7e096046c7871a2d97c6dbee38cb49039667aedd5dd0f250`  
		Last Modified: Tue, 06 Oct 2026 01:18:12 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.11.9-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:816e19f367c6882822a1e78737594673e98670d0b0fbd1e3f3b49a78e6a53e5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2259521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9596f5abb4ba3d5f0ef7341fd177a8681a912795137362d42b5104a2f2fc28e0`

```dockerfile
```

-	Layers:
	-	`sha256:5d55665013a966ffac6ad26838fd88d8edbe925d5183a9da09151163bec2bfad`  
		Last Modified: Tue, 06 Oct 2026 01:18:12 GMT  
		Size: 2.2 MB (2242392 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00dc301c162f50637a2a57aa323762fb540aae85aeeb52144607cc2681d8ed05`  
		Last Modified: Tue, 06 Oct 2026 01:18:12 GMT  
		Size: 17.1 KB (17129 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.11.9-trixie` - linux; ppc64le

```console
$ docker pull julia@sha256:50621b4a34594f3d3b27430b4755b5780bd4649ecadb8ea27af90ea962e6128f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.1 MB (289083765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9402441a595f4b94eefc65ca66638edf0c090a64b589b78c772987b94fc6542`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:35:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:35:54 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:35:54 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:35:54 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 21 Oct 2026 00:35:54 GMT
ENV JULIA_VERSION=1.11.9
# Wed, 21 Oct 2026 00:35:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.11/julia-1.11.9-linux-x86_64.tar.gz'; 			sha256='b36363356d7a05eaf8b7b9e7a91c710f6bd3d2940be4d4e6d14b9a9f2927de35'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.11/julia-1.11.9-linux-i686.tar.gz'; 			sha256='74df5031a93bce45e30582a71bf70f4ba983ff42f6eaf54eb9effb6e124604ca'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.11/julia-1.11.9-linux-aarch64.tar.gz'; 			sha256='a2071f0654d1d6af4381cba650b9f790f5f8bb7a570e51e378de8bcf67ff623e'; 			;; 		'ppc64el') 			url='https://julialang-s3.julialang.org/bin/linux/ppc64le/1.11/julia-1.11.9-linux-ppc64le.tar.gz'; 			sha256='3c25d5bf70d65da5859d65b34d17646dd1b3f1b50ea2090d13e63171d6dbf861'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:35:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:35:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:35:56 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0e84afdd3858812039fa7bedc74b17d0ab8ce541d9937d8470c1c9966cf4c22`  
		Last Modified: Wed, 21 Oct 2026 00:37:24 GMT  
		Size: 6.7 MB (6683605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:147c39721279e0a119189f81aea2752bc7cbae45101b468a7925fe6056045709`  
		Last Modified: Wed, 21 Oct 2026 00:37:29 GMT  
		Size: 248.7 MB (248747853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bd62651048d9ed056dce1d6e9022b505135dcfdd118c43e5a1b553eb121d344`  
		Last Modified: Wed, 21 Oct 2026 00:37:24 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.11.9-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:304e66b51818802585bc754b38ac62b59d05e3274207c35103afdf4c5a90d74a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2264908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80890a13073d87b5d44d9f83938860fa326f8bd104e721e2e05ddcf65f8fbebc`

```dockerfile
```

-	Layers:
	-	`sha256:349e1d2c3f6028e20ccee8a226f9092eab1c2f327196a7be89f39e2ae936b5e3`  
		Last Modified: Wed, 21 Oct 2026 00:37:24 GMT  
		Size: 2.2 MB (2247699 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e2648c7aa9785082c4eba66d564083299baf15a4d63b33911d48c58d1dc62d6b`  
		Last Modified: Wed, 21 Oct 2026 00:37:24 GMT  
		Size: 17.2 KB (17209 bytes)  
		MIME: application/vnd.in-toto+json

## `julia:1.11.9-windowsservercore`

```console
$ docker pull julia@sha256:c246872a31d43719d420fa0f12fcb374feb54b3e14ca71eaa3ccf5730033b25f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `julia:1.11.9-windowsservercore` - windows version 10.0.26100.33650; amd64

```console
$ docker pull julia@sha256:e521284afeb7351f86696a602a7a88608b79873b3fc778b9cd207cf9d96e50c9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2678314048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31378836d5b807bf33da6c69c87afac258df0df9bc724f00f14ee3c40cd0da57`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Tue, 13 Oct 2026 23:02:18 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:02:19 GMT
ENV JULIA_VERSION=1.11.9
# Tue, 13 Oct 2026 23:02:20 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.11/julia-1.11.9-win64.exe
# Tue, 13 Oct 2026 23:02:20 GMT
ENV JULIA_SHA256=747ff8983fa183e0e35e618c9212815cba0b3ad29a44eaac039acc755a0d91b6
# Tue, 13 Oct 2026 23:03:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:03:33 GMT
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
	-	`sha256:1fb7dfc46006339a6f16acc5304b94216980fef39bfe3cfe00a0e43b920c14dc`  
		Last Modified: Tue, 13 Oct 2026 23:03:43 GMT  
		Size: 1.4 KB (1372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b6b5431f606774571770aa1aafdddef235766bb60693b69158fba3f54217ee8`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6001de4c4ded80103bf05b262523972867cf5d86ef998e0be29fd8a34abde520`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c059aee9003819e4d2f9512246bc3339bce52392b8f9ea55816e0367636c970`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c485b16d874fe5a77e49a493f33ec4a061648c2b11e53fee60812f75d1c6b5`  
		Last Modified: Tue, 13 Oct 2026 23:04:18 GMT  
		Size: 286.3 MB (286313216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c102cca40ecdf6bfd1c8b36502277ffbfb6776028fb264013590a89884781d`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.11.9-windowsservercore` - windows version 10.0.20348.5761; amd64

```console
$ docker pull julia@sha256:075e4d4228ac63fce0354feaccefa89b513d6a2978443d98dd528d18d81161f6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2512592112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ae50f013b2c544f5bac6d2627cb7564407eb1e4509212414324280053d11ca8`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 22:56:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:00:18 GMT
ENV JULIA_VERSION=1.11.9
# Tue, 13 Oct 2026 23:00:18 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.11/julia-1.11.9-win64.exe
# Tue, 13 Oct 2026 23:00:19 GMT
ENV JULIA_SHA256=747ff8983fa183e0e35e618c9212815cba0b3ad29a44eaac039acc755a0d91b6
# Tue, 13 Oct 2026 23:01:34 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:01:38 GMT
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
	-	`sha256:2199c4844b30e9c638a16f875cb259173696ccfa543d7babf8dca385c8a34de4`  
		Last Modified: Tue, 13 Oct 2026 22:57:23 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:235ea87240acde278082fd049bb1a5f18debf3363f37ec87be90fa0af527e1f5`  
		Last Modified: Tue, 13 Oct 2026 23:01:45 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a80b7018de318373750c3fb27799e2741d228704826f36952b5f8e425f0755`  
		Last Modified: Tue, 13 Oct 2026 23:01:45 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c301a65f137a836507a88181d3b259f08ae9eee58ed992daa03b329b558385f`  
		Last Modified: Tue, 13 Oct 2026 23:01:45 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:886ca3bf1bd553189e55fc3fb85cb9f40eaa88e6c2b178b45870a48eef1c8b94`  
		Last Modified: Tue, 13 Oct 2026 23:02:22 GMT  
		Size: 286.3 MB (286300111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96a42a6378a0e2c938e0b2cfb06136b869608ed37d16ee454b7a5a2dd10bb863`  
		Last Modified: Tue, 13 Oct 2026 23:01:45 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.11.9-windowsservercore-ltsc2022`

```console
$ docker pull julia@sha256:53a85f6658bfe27fce103b69e4070520d38a272a91b7eae64d7ff0e4b479ca65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `julia:1.11.9-windowsservercore-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull julia@sha256:075e4d4228ac63fce0354feaccefa89b513d6a2978443d98dd528d18d81161f6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2512592112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ae50f013b2c544f5bac6d2627cb7564407eb1e4509212414324280053d11ca8`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 22:56:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:00:18 GMT
ENV JULIA_VERSION=1.11.9
# Tue, 13 Oct 2026 23:00:18 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.11/julia-1.11.9-win64.exe
# Tue, 13 Oct 2026 23:00:19 GMT
ENV JULIA_SHA256=747ff8983fa183e0e35e618c9212815cba0b3ad29a44eaac039acc755a0d91b6
# Tue, 13 Oct 2026 23:01:34 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:01:38 GMT
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
	-	`sha256:2199c4844b30e9c638a16f875cb259173696ccfa543d7babf8dca385c8a34de4`  
		Last Modified: Tue, 13 Oct 2026 22:57:23 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:235ea87240acde278082fd049bb1a5f18debf3363f37ec87be90fa0af527e1f5`  
		Last Modified: Tue, 13 Oct 2026 23:01:45 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a80b7018de318373750c3fb27799e2741d228704826f36952b5f8e425f0755`  
		Last Modified: Tue, 13 Oct 2026 23:01:45 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c301a65f137a836507a88181d3b259f08ae9eee58ed992daa03b329b558385f`  
		Last Modified: Tue, 13 Oct 2026 23:01:45 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:886ca3bf1bd553189e55fc3fb85cb9f40eaa88e6c2b178b45870a48eef1c8b94`  
		Last Modified: Tue, 13 Oct 2026 23:02:22 GMT  
		Size: 286.3 MB (286300111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96a42a6378a0e2c938e0b2cfb06136b869608ed37d16ee454b7a5a2dd10bb863`  
		Last Modified: Tue, 13 Oct 2026 23:01:45 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.11.9-windowsservercore-ltsc2025`

```console
$ docker pull julia@sha256:7e18a8773653db32664df09cb4ea8d5f3d2950b6be856ed9cc4e92d8150a438a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33650; amd64

### `julia:1.11.9-windowsservercore-ltsc2025` - windows version 10.0.26100.33650; amd64

```console
$ docker pull julia@sha256:e521284afeb7351f86696a602a7a88608b79873b3fc778b9cd207cf9d96e50c9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2678314048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31378836d5b807bf33da6c69c87afac258df0df9bc724f00f14ee3c40cd0da57`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Tue, 13 Oct 2026 23:02:18 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:02:19 GMT
ENV JULIA_VERSION=1.11.9
# Tue, 13 Oct 2026 23:02:20 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.11/julia-1.11.9-win64.exe
# Tue, 13 Oct 2026 23:02:20 GMT
ENV JULIA_SHA256=747ff8983fa183e0e35e618c9212815cba0b3ad29a44eaac039acc755a0d91b6
# Tue, 13 Oct 2026 23:03:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:03:33 GMT
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
	-	`sha256:1fb7dfc46006339a6f16acc5304b94216980fef39bfe3cfe00a0e43b920c14dc`  
		Last Modified: Tue, 13 Oct 2026 23:03:43 GMT  
		Size: 1.4 KB (1372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b6b5431f606774571770aa1aafdddef235766bb60693b69158fba3f54217ee8`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6001de4c4ded80103bf05b262523972867cf5d86ef998e0be29fd8a34abde520`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c059aee9003819e4d2f9512246bc3339bce52392b8f9ea55816e0367636c970`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c485b16d874fe5a77e49a493f33ec4a061648c2b11e53fee60812f75d1c6b5`  
		Last Modified: Tue, 13 Oct 2026 23:04:18 GMT  
		Size: 286.3 MB (286313216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c102cca40ecdf6bfd1c8b36502277ffbfb6776028fb264013590a89884781d`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.13`

```console
$ docker pull julia@sha256:c507080d70ec68dce782ad78b9998803d597115b9b7278c522aeb11333197506
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

### `julia:1.13` - linux; amd64

```console
$ docker pull julia@sha256:605f429b384309f3c1a70484ec63b5b8a481feafa261d5424bd1066f6a5b1da8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.1 MB (342134569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fe1d2c0ad8f2eba384660ef9db55b4252af43d600da3297592959434eff8f24`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:17:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:18:03 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:18:03 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:18:03 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 21 Oct 2026 00:18:03 GMT
ENV JULIA_VERSION=1.13.2
# Wed, 21 Oct 2026 00:18:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:18:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:18:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:18:03 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7251038b43fb4f309c084b32e12c0da0d8773e20998f24fead7a448a09bf27cd`  
		Last Modified: Wed, 21 Oct 2026 00:18:48 GMT  
		Size: 6.2 MB (6247392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebf0bfe0798587a30517f155962d507481607c83f3325d8ff79118e24077abb6`  
		Last Modified: Wed, 21 Oct 2026 00:18:54 GMT  
		Size: 306.0 MB (306043225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c00e7ff050edf5f852888343c83231563416e64983c139e581dbc40f0bb33bf8`  
		Last Modified: Wed, 21 Oct 2026 00:18:48 GMT  
		Size: 373.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13` - unknown; unknown

```console
$ docker pull julia@sha256:a783a0a053baf24401c6912fcc343c694cab4e2da9781ad09311393777dc6954
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2264057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f47e5575a3ccd88629fbe6ec112fb43579581faf47c674d9e0dcaf8da58ca80`

```dockerfile
```

-	Layers:
	-	`sha256:94d1ababde8139cf257549fad6b2ccdbfbe585cdfe7a0534d53bf32ae55ed148`  
		Last Modified: Wed, 21 Oct 2026 00:18:48 GMT  
		Size: 2.2 MB (2246356 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f1e4f9ae5f4ba8c8a51e601cf46b19ee4a5d51ce7d4629b9d208270f12e69e0`  
		Last Modified: Wed, 21 Oct 2026 00:18:48 GMT  
		Size: 17.7 KB (17701 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.13` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:345e062ae6688beaea961b6bd31780b0d8729774537c9f9764517733eb198701
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.1 MB (361100422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f90ea6d0e948d86ad47d3ca0a82a43da16acee9d43aeae300a58e8bf59e0e3ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:16:48 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:16:48 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:16:48 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 21 Oct 2026 00:16:48 GMT
ENV JULIA_VERSION=1.13.2
# Wed, 21 Oct 2026 00:16:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:16:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:16:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:16:48 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6036bd4cbedb72c264a3e38730e8628dbdd600292bd87195810530f6387981d4`  
		Last Modified: Wed, 21 Oct 2026 00:17:34 GMT  
		Size: 6.2 MB (6153234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3019b92747871c3ce2f117263323e29a50f1669a042111d1a35319031a9b8767`  
		Last Modified: Wed, 21 Oct 2026 00:17:40 GMT  
		Size: 324.7 MB (324746340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e88fb31a1b54f7112b6132545ae636d029e85dc9a4d0f9275e26b1c9f673621`  
		Last Modified: Wed, 21 Oct 2026 00:17:34 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13` - unknown; unknown

```console
$ docker pull julia@sha256:df62e34a70752a3204d2ee3b4cb1671a061505e405c4260c52270fad12a9a4cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2264548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7def002ffdd20b44ee6066eea975c692f9d767df1483f4f6a2333bd245d477b`

```dockerfile
```

-	Layers:
	-	`sha256:e9e0abce2cf1b9498c259dbc956fd4eef70539b40bacdb882d3812a79ef8b3a3`  
		Last Modified: Wed, 21 Oct 2026 00:17:34 GMT  
		Size: 2.2 MB (2246680 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f95fcbb65ebc3064436cc15265269a43411463d5d9e2fcd0da27d6309a70adab`  
		Last Modified: Wed, 21 Oct 2026 00:17:34 GMT  
		Size: 17.9 KB (17868 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.13` - linux; 386

```console
$ docker pull julia@sha256:7e21d3c81767c3ab5681f224b40803902e909007fe5692c7d74096163fe7a805
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.6 MB (280570546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea43fac9d2291adccf5e353459154c6a256e46ffce44aff9f1b51f1f961e3338`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Fri, 16 Oct 2026 20:38:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:38:19 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 16 Oct 2026 20:38:19 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:38:19 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Fri, 16 Oct 2026 20:38:19 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:38:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Fri, 16 Oct 2026 20:38:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:38:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:38:19 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:554a03fe980520b30a093a5e2efbee0c1130fe1c50dec4fc5af611cbdc2929b3`  
		Last Modified: Fri, 16 Oct 2026 20:38:52 GMT  
		Size: 6.4 MB (6436301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10d99cf53b239f508d970c767af5bbfd96dab2783c804ac07000b98343ea7814`  
		Last Modified: Fri, 16 Oct 2026 20:38:57 GMT  
		Size: 242.8 MB (242780581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e81c48df08bf48d59caed031420eb17c8fc903cc213aeb573e0d95a0ae191dcd`  
		Last Modified: Fri, 16 Oct 2026 20:38:51 GMT  
		Size: 367.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13` - unknown; unknown

```console
$ docker pull julia@sha256:5e85f1cba43f67c29590e01b56be07f2a142c43017a2cb07cfdd60ed8ed99f4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2262405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1852933f316f0a93f797b944435141ac8c92e795cf8a98313b30b01f460ff923`

```dockerfile
```

-	Layers:
	-	`sha256:1ab50347472b3edc5b24784b26081062a628f64b1928df3b77683c4e6d8cef31`  
		Last Modified: Fri, 16 Oct 2026 20:38:51 GMT  
		Size: 2.2 MB (2244758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:50be2bb2a72bf473e903dbbd4c0e08912da03387f8f919b92071f1ad3456274d`  
		Last Modified: Fri, 16 Oct 2026 20:38:51 GMT  
		Size: 17.6 KB (17647 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.13` - windows version 10.0.26100.33650; amd64

```console
$ docker pull julia@sha256:4ca23aba162ddc0f3748ad695d096151b6f7c61c011786fe1e8afc5678f0c1f4
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2700853039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:384471d80a6a72485150d71258d83127b7e8f81e340e88eb728df66d7f19f16c`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Fri, 16 Oct 2026 20:30:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 16 Oct 2026 20:46:55 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:46:56 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.2-win64.exe
# Fri, 16 Oct 2026 20:46:57 GMT
ENV JULIA_SHA256=9de7f1e34839e053cc1c8f44c89c1235506e5fbd4adcdcce88b88bf1647d8f50
# Fri, 16 Oct 2026 20:48:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Fri, 16 Oct 2026 20:48:11 GMT
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
	-	`sha256:30233c4168f9992d50584d2d698effa4424ebdd0126152fa60d94095085a992d`  
		Last Modified: Fri, 16 Oct 2026 20:32:25 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad518e260a77dffb99a4d5a3caf97ebc98e8041eda44a03846c95375a71fed0b`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23768f172a520477ec018d4abe48cdcb8fffc2f8bb17e1d2c3df781546a334e8`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ebc390116de35d8fe362f8349c81ce08c7ba60f4aef2e382c3a2466e529d73`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b97598c1d71a517ccf3650bfa5d8e1b0f13e4adb903f1e3f4f3d42d3c4c8e9`  
		Last Modified: Fri, 16 Oct 2026 20:48:59 GMT  
		Size: 308.9 MB (308852308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03797a51205c787c36ef206d6c1362717c6865435763ee69da40486bc6d198f`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.13` - windows version 10.0.20348.5761; amd64

```console
$ docker pull julia@sha256:3182ed87a0f6d4a7445e471036deed13915a545665408567fb4a5a3d7fa48a47
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2535123625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:413009c92e57b811e9d22134f588a879400658fd41021d7ee24c22c365352a6e`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Fri, 16 Oct 2026 20:29:11 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 16 Oct 2026 20:47:02 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:47:02 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.2-win64.exe
# Fri, 16 Oct 2026 20:47:03 GMT
ENV JULIA_SHA256=9de7f1e34839e053cc1c8f44c89c1235506e5fbd4adcdcce88b88bf1647d8f50
# Fri, 16 Oct 2026 20:49:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Fri, 16 Oct 2026 20:49:45 GMT
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
	-	`sha256:5c8aa03da74b5d0234f4f699ca7462ab937696ca4ba6a968d2c542a67f99f054`  
		Last Modified: Fri, 16 Oct 2026 20:31:19 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:157e9ed2e9d7cdb997941c379ba741360fb077d98de0fa5a730b71584018c2a9`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ef9a95ea9b30b624a12f9c4c592d3533aa9a89c840cd9361fcc1ce42835ae3`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464625ecd46addeae25d21a47edad65cbdb9c3f1ccbd359d4b2ffe6727160d92`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c9801d74d4f3791626b71a7b91cbb897aca8eaa34bee68573f8582702f33e8`  
		Last Modified: Fri, 16 Oct 2026 20:50:32 GMT  
		Size: 308.8 MB (308831575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b74bc1ba10945cb1464b4160801225a45d3c7daac4b7cb9dcd52dd53172e01`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.13-bookworm`

```console
$ docker pull julia@sha256:5f09570c9aeace067d79a1730915133eba0f72a31ef2918b5b59e152afa22665
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `julia:1.13-bookworm` - linux; amd64

```console
$ docker pull julia@sha256:fedd3ff07be4c711e66c40c4629f1fad3a3a3add9134ab226d4c44f0bb514e63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.8 MB (339798016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f290377369ebe8ed75ccc62ead1546151fa15029957f5688904c74edc73ad290`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:18:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:18:24 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:18:24 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:18:24 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 21 Oct 2026 00:18:24 GMT
ENV JULIA_VERSION=1.13.2
# Wed, 21 Oct 2026 00:18:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:18:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:18:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:18:24 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45827739c28e7d2faaa1e197ea2a194ec52ac2ceecee87ae45cbe2c21c455a3a`  
		Last Modified: Wed, 21 Oct 2026 00:19:07 GMT  
		Size: 5.5 MB (5542596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8fe5e1055b9ac5aeae6a7cd088dc9bb0aed68fc772b55c97cb9a17d8baf51f5`  
		Last Modified: Wed, 21 Oct 2026 00:19:13 GMT  
		Size: 306.0 MB (306007113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a57c4adc8aff085072a60b11eabf3059747e315dde0098e956af1110eff66c75`  
		Last Modified: Wed, 21 Oct 2026 00:19:06 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:8f711ec4c5f331d8c7e080ae27413038213cf67bbcf62392fe44b94e5fae26fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2589503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fa9f1e6411af841677734f97e3121ccf69de6b6d47f8573c389d0a5dea0c2a9`

```dockerfile
```

-	Layers:
	-	`sha256:b322441e4386bc8b257fcc7c7bd8ac31ae1bcb577a4e61cdf31ca2bd573a2efa`  
		Last Modified: Wed, 21 Oct 2026 00:19:06 GMT  
		Size: 2.6 MB (2572948 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e913ee55c9af9991b998e85c2f485c2c28133872f12fedc9bae84652428383b0`  
		Last Modified: Wed, 21 Oct 2026 00:19:06 GMT  
		Size: 16.6 KB (16555 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.13-bookworm` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:5bdc915a4f2bb64d5be14e7124d8392b62fd97c3e29b9f2f1531ef1162df9a13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.2 MB (358241971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aef5b1126cb3110ff5dfe8c951d91acd177735f47b85b1fb3f2b0b4c1782985b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:17:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:17:45 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:17:45 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:17:45 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 21 Oct 2026 00:17:45 GMT
ENV JULIA_VERSION=1.13.2
# Wed, 21 Oct 2026 00:17:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:17:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:17:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:17:45 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dca3f363be28f103d76bfbf036b9ac170321de5d64effd732589d914d4444e57`  
		Last Modified: Wed, 21 Oct 2026 00:18:32 GMT  
		Size: 5.4 MB (5387935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8099c7aaafdc106ecb9258b452f37056a25b564f2efb6c5b6928fd6b6423bce7`  
		Last Modified: Wed, 21 Oct 2026 00:18:38 GMT  
		Size: 324.7 MB (324715239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38aed825ccba3b6d0244075619682c0daffdf6ee3dbf25713258a9ac3a23368e`  
		Last Modified: Wed, 21 Oct 2026 00:18:31 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:ed173b945c92460a73ae19a6c1a656f2f034adb999756b3bebfa01dac7d7d1bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2589896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e82e20cf734ca50c686c2911f1b2b07a33a5975d01146c83b69b052de55268c9`

```dockerfile
```

-	Layers:
	-	`sha256:a4dabaf2a434be4e7dec56899e7c5809345da5435daa79e31a3cf7da7863b108`  
		Last Modified: Wed, 21 Oct 2026 00:18:32 GMT  
		Size: 2.6 MB (2573223 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ab70b12c916fc1aeb13776a6a295c305a90348713200d9a33acd83e462cc468`  
		Last Modified: Wed, 21 Oct 2026 00:18:31 GMT  
		Size: 16.7 KB (16673 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.13-bookworm` - linux; 386

```console
$ docker pull julia@sha256:a8bf7bddaae15f8a6498b47ba8a23c8dfd13badef9ef14633120dc93716b195f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.7 MB (277693522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cf2cff5b8fac117a593ce6f920d031abfcd38708fd0dd4d96047c4eff511eb4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1791158400'
# Fri, 16 Oct 2026 20:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:38:20 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 16 Oct 2026 20:38:20 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:38:20 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Fri, 16 Oct 2026 20:38:20 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:38:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Fri, 16 Oct 2026 20:38:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:38:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:38:20 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:4fde7ff71d38b44de13588c355f9acc395f4ecbec569968085401a6d6b40eff2`  
		Last Modified: Tue, 06 Oct 2026 00:13:26 GMT  
		Size: 29.2 MB (29239373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1ba0b5a5ce54e241440155d54462fc5aa89ba068bc7da22e2340203bbf94ffe`  
		Last Modified: Fri, 16 Oct 2026 20:38:52 GMT  
		Size: 5.7 MB (5705016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:438b668b820f2df12c42a0157087e1da2475a13f7ca7c842c03b279a6cd61fea`  
		Last Modified: Fri, 16 Oct 2026 20:38:58 GMT  
		Size: 242.7 MB (242748761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18789dbad7bcadcc5332855e6ad27089ccafc8f0670787536f8c508378d9ed80`  
		Last Modified: Fri, 16 Oct 2026 20:38:52 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:a2c50efe4635d540345c2256b49aa1d15eace481913c9c63b4a1560955c24b27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2587908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42608ae662cdb6a8994a433d3f346dcf684d07ec338776365c3ff3cc942ce9fc`

```dockerfile
```

-	Layers:
	-	`sha256:ae79d2d5740e507f83579caf4f0867322f32ba0ea40bff2eed582539aad517f2`  
		Last Modified: Fri, 16 Oct 2026 20:38:52 GMT  
		Size: 2.6 MB (2571390 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:372e5a7289d9df4b7f2152abb578c18fa455817e3cd1c46b3d1c9188b2404201`  
		Last Modified: Fri, 16 Oct 2026 20:38:51 GMT  
		Size: 16.5 KB (16518 bytes)  
		MIME: application/vnd.in-toto+json

## `julia:1.13-trixie`

```console
$ docker pull julia@sha256:b0ea3fcf1fe93e25e3a7eec4fe4ed23e51a3aee8ec08bbe7a14b247051b36faf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `julia:1.13-trixie` - linux; amd64

```console
$ docker pull julia@sha256:605f429b384309f3c1a70484ec63b5b8a481feafa261d5424bd1066f6a5b1da8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.1 MB (342134569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fe1d2c0ad8f2eba384660ef9db55b4252af43d600da3297592959434eff8f24`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:17:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:18:03 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:18:03 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:18:03 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 21 Oct 2026 00:18:03 GMT
ENV JULIA_VERSION=1.13.2
# Wed, 21 Oct 2026 00:18:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:18:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:18:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:18:03 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7251038b43fb4f309c084b32e12c0da0d8773e20998f24fead7a448a09bf27cd`  
		Last Modified: Wed, 21 Oct 2026 00:18:48 GMT  
		Size: 6.2 MB (6247392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebf0bfe0798587a30517f155962d507481607c83f3325d8ff79118e24077abb6`  
		Last Modified: Wed, 21 Oct 2026 00:18:54 GMT  
		Size: 306.0 MB (306043225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c00e7ff050edf5f852888343c83231563416e64983c139e581dbc40f0bb33bf8`  
		Last Modified: Wed, 21 Oct 2026 00:18:48 GMT  
		Size: 373.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:a783a0a053baf24401c6912fcc343c694cab4e2da9781ad09311393777dc6954
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2264057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f47e5575a3ccd88629fbe6ec112fb43579581faf47c674d9e0dcaf8da58ca80`

```dockerfile
```

-	Layers:
	-	`sha256:94d1ababde8139cf257549fad6b2ccdbfbe585cdfe7a0534d53bf32ae55ed148`  
		Last Modified: Wed, 21 Oct 2026 00:18:48 GMT  
		Size: 2.2 MB (2246356 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f1e4f9ae5f4ba8c8a51e601cf46b19ee4a5d51ce7d4629b9d208270f12e69e0`  
		Last Modified: Wed, 21 Oct 2026 00:18:48 GMT  
		Size: 17.7 KB (17701 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.13-trixie` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:345e062ae6688beaea961b6bd31780b0d8729774537c9f9764517733eb198701
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.1 MB (361100422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f90ea6d0e948d86ad47d3ca0a82a43da16acee9d43aeae300a58e8bf59e0e3ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:16:48 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:16:48 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:16:48 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 21 Oct 2026 00:16:48 GMT
ENV JULIA_VERSION=1.13.2
# Wed, 21 Oct 2026 00:16:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:16:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:16:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:16:48 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6036bd4cbedb72c264a3e38730e8628dbdd600292bd87195810530f6387981d4`  
		Last Modified: Wed, 21 Oct 2026 00:17:34 GMT  
		Size: 6.2 MB (6153234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3019b92747871c3ce2f117263323e29a50f1669a042111d1a35319031a9b8767`  
		Last Modified: Wed, 21 Oct 2026 00:17:40 GMT  
		Size: 324.7 MB (324746340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e88fb31a1b54f7112b6132545ae636d029e85dc9a4d0f9275e26b1c9f673621`  
		Last Modified: Wed, 21 Oct 2026 00:17:34 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:df62e34a70752a3204d2ee3b4cb1671a061505e405c4260c52270fad12a9a4cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2264548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7def002ffdd20b44ee6066eea975c692f9d767df1483f4f6a2333bd245d477b`

```dockerfile
```

-	Layers:
	-	`sha256:e9e0abce2cf1b9498c259dbc956fd4eef70539b40bacdb882d3812a79ef8b3a3`  
		Last Modified: Wed, 21 Oct 2026 00:17:34 GMT  
		Size: 2.2 MB (2246680 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f95fcbb65ebc3064436cc15265269a43411463d5d9e2fcd0da27d6309a70adab`  
		Last Modified: Wed, 21 Oct 2026 00:17:34 GMT  
		Size: 17.9 KB (17868 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.13-trixie` - linux; 386

```console
$ docker pull julia@sha256:7e21d3c81767c3ab5681f224b40803902e909007fe5692c7d74096163fe7a805
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.6 MB (280570546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea43fac9d2291adccf5e353459154c6a256e46ffce44aff9f1b51f1f961e3338`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Fri, 16 Oct 2026 20:38:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:38:19 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 16 Oct 2026 20:38:19 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:38:19 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Fri, 16 Oct 2026 20:38:19 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:38:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Fri, 16 Oct 2026 20:38:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:38:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:38:19 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:554a03fe980520b30a093a5e2efbee0c1130fe1c50dec4fc5af611cbdc2929b3`  
		Last Modified: Fri, 16 Oct 2026 20:38:52 GMT  
		Size: 6.4 MB (6436301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10d99cf53b239f508d970c767af5bbfd96dab2783c804ac07000b98343ea7814`  
		Last Modified: Fri, 16 Oct 2026 20:38:57 GMT  
		Size: 242.8 MB (242780581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e81c48df08bf48d59caed031420eb17c8fc903cc213aeb573e0d95a0ae191dcd`  
		Last Modified: Fri, 16 Oct 2026 20:38:51 GMT  
		Size: 367.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:5e85f1cba43f67c29590e01b56be07f2a142c43017a2cb07cfdd60ed8ed99f4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2262405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1852933f316f0a93f797b944435141ac8c92e795cf8a98313b30b01f460ff923`

```dockerfile
```

-	Layers:
	-	`sha256:1ab50347472b3edc5b24784b26081062a628f64b1928df3b77683c4e6d8cef31`  
		Last Modified: Fri, 16 Oct 2026 20:38:51 GMT  
		Size: 2.2 MB (2244758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:50be2bb2a72bf473e903dbbd4c0e08912da03387f8f919b92071f1ad3456274d`  
		Last Modified: Fri, 16 Oct 2026 20:38:51 GMT  
		Size: 17.6 KB (17647 bytes)  
		MIME: application/vnd.in-toto+json

## `julia:1.13-windowsservercore`

```console
$ docker pull julia@sha256:4cd3345c7d3b4bbcb1fdb86ecc030894b9f92dc41392acc3b2315b96a4515ecd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `julia:1.13-windowsservercore` - windows version 10.0.26100.33650; amd64

```console
$ docker pull julia@sha256:4ca23aba162ddc0f3748ad695d096151b6f7c61c011786fe1e8afc5678f0c1f4
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2700853039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:384471d80a6a72485150d71258d83127b7e8f81e340e88eb728df66d7f19f16c`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Fri, 16 Oct 2026 20:30:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 16 Oct 2026 20:46:55 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:46:56 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.2-win64.exe
# Fri, 16 Oct 2026 20:46:57 GMT
ENV JULIA_SHA256=9de7f1e34839e053cc1c8f44c89c1235506e5fbd4adcdcce88b88bf1647d8f50
# Fri, 16 Oct 2026 20:48:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Fri, 16 Oct 2026 20:48:11 GMT
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
	-	`sha256:30233c4168f9992d50584d2d698effa4424ebdd0126152fa60d94095085a992d`  
		Last Modified: Fri, 16 Oct 2026 20:32:25 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad518e260a77dffb99a4d5a3caf97ebc98e8041eda44a03846c95375a71fed0b`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23768f172a520477ec018d4abe48cdcb8fffc2f8bb17e1d2c3df781546a334e8`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ebc390116de35d8fe362f8349c81ce08c7ba60f4aef2e382c3a2466e529d73`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b97598c1d71a517ccf3650bfa5d8e1b0f13e4adb903f1e3f4f3d42d3c4c8e9`  
		Last Modified: Fri, 16 Oct 2026 20:48:59 GMT  
		Size: 308.9 MB (308852308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03797a51205c787c36ef206d6c1362717c6865435763ee69da40486bc6d198f`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.13-windowsservercore` - windows version 10.0.20348.5761; amd64

```console
$ docker pull julia@sha256:3182ed87a0f6d4a7445e471036deed13915a545665408567fb4a5a3d7fa48a47
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2535123625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:413009c92e57b811e9d22134f588a879400658fd41021d7ee24c22c365352a6e`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Fri, 16 Oct 2026 20:29:11 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 16 Oct 2026 20:47:02 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:47:02 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.2-win64.exe
# Fri, 16 Oct 2026 20:47:03 GMT
ENV JULIA_SHA256=9de7f1e34839e053cc1c8f44c89c1235506e5fbd4adcdcce88b88bf1647d8f50
# Fri, 16 Oct 2026 20:49:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Fri, 16 Oct 2026 20:49:45 GMT
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
	-	`sha256:5c8aa03da74b5d0234f4f699ca7462ab937696ca4ba6a968d2c542a67f99f054`  
		Last Modified: Fri, 16 Oct 2026 20:31:19 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:157e9ed2e9d7cdb997941c379ba741360fb077d98de0fa5a730b71584018c2a9`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ef9a95ea9b30b624a12f9c4c592d3533aa9a89c840cd9361fcc1ce42835ae3`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464625ecd46addeae25d21a47edad65cbdb9c3f1ccbd359d4b2ffe6727160d92`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c9801d74d4f3791626b71a7b91cbb897aca8eaa34bee68573f8582702f33e8`  
		Last Modified: Fri, 16 Oct 2026 20:50:32 GMT  
		Size: 308.8 MB (308831575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b74bc1ba10945cb1464b4160801225a45d3c7daac4b7cb9dcd52dd53172e01`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.13-windowsservercore-ltsc2022`

```console
$ docker pull julia@sha256:b2cacc274c0c5433aa4dade58700d9738965ce943fc0762a6ec2aa9cb328cab8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `julia:1.13-windowsservercore-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull julia@sha256:3182ed87a0f6d4a7445e471036deed13915a545665408567fb4a5a3d7fa48a47
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2535123625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:413009c92e57b811e9d22134f588a879400658fd41021d7ee24c22c365352a6e`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Fri, 16 Oct 2026 20:29:11 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 16 Oct 2026 20:47:02 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:47:02 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.2-win64.exe
# Fri, 16 Oct 2026 20:47:03 GMT
ENV JULIA_SHA256=9de7f1e34839e053cc1c8f44c89c1235506e5fbd4adcdcce88b88bf1647d8f50
# Fri, 16 Oct 2026 20:49:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Fri, 16 Oct 2026 20:49:45 GMT
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
	-	`sha256:5c8aa03da74b5d0234f4f699ca7462ab937696ca4ba6a968d2c542a67f99f054`  
		Last Modified: Fri, 16 Oct 2026 20:31:19 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:157e9ed2e9d7cdb997941c379ba741360fb077d98de0fa5a730b71584018c2a9`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ef9a95ea9b30b624a12f9c4c592d3533aa9a89c840cd9361fcc1ce42835ae3`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464625ecd46addeae25d21a47edad65cbdb9c3f1ccbd359d4b2ffe6727160d92`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c9801d74d4f3791626b71a7b91cbb897aca8eaa34bee68573f8582702f33e8`  
		Last Modified: Fri, 16 Oct 2026 20:50:32 GMT  
		Size: 308.8 MB (308831575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b74bc1ba10945cb1464b4160801225a45d3c7daac4b7cb9dcd52dd53172e01`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.13-windowsservercore-ltsc2025`

```console
$ docker pull julia@sha256:7500f239617339ed7516bf92a602c889ba92da00db2a7aed9e4f7874411fc5c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33650; amd64

### `julia:1.13-windowsservercore-ltsc2025` - windows version 10.0.26100.33650; amd64

```console
$ docker pull julia@sha256:4ca23aba162ddc0f3748ad695d096151b6f7c61c011786fe1e8afc5678f0c1f4
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2700853039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:384471d80a6a72485150d71258d83127b7e8f81e340e88eb728df66d7f19f16c`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Fri, 16 Oct 2026 20:30:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 16 Oct 2026 20:46:55 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:46:56 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.2-win64.exe
# Fri, 16 Oct 2026 20:46:57 GMT
ENV JULIA_SHA256=9de7f1e34839e053cc1c8f44c89c1235506e5fbd4adcdcce88b88bf1647d8f50
# Fri, 16 Oct 2026 20:48:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Fri, 16 Oct 2026 20:48:11 GMT
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
	-	`sha256:30233c4168f9992d50584d2d698effa4424ebdd0126152fa60d94095085a992d`  
		Last Modified: Fri, 16 Oct 2026 20:32:25 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad518e260a77dffb99a4d5a3caf97ebc98e8041eda44a03846c95375a71fed0b`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23768f172a520477ec018d4abe48cdcb8fffc2f8bb17e1d2c3df781546a334e8`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ebc390116de35d8fe362f8349c81ce08c7ba60f4aef2e382c3a2466e529d73`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b97598c1d71a517ccf3650bfa5d8e1b0f13e4adb903f1e3f4f3d42d3c4c8e9`  
		Last Modified: Fri, 16 Oct 2026 20:48:59 GMT  
		Size: 308.9 MB (308852308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03797a51205c787c36ef206d6c1362717c6865435763ee69da40486bc6d198f`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.13.2`

```console
$ docker pull julia@sha256:c507080d70ec68dce782ad78b9998803d597115b9b7278c522aeb11333197506
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

### `julia:1.13.2` - linux; amd64

```console
$ docker pull julia@sha256:605f429b384309f3c1a70484ec63b5b8a481feafa261d5424bd1066f6a5b1da8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.1 MB (342134569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fe1d2c0ad8f2eba384660ef9db55b4252af43d600da3297592959434eff8f24`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:17:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:18:03 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:18:03 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:18:03 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 21 Oct 2026 00:18:03 GMT
ENV JULIA_VERSION=1.13.2
# Wed, 21 Oct 2026 00:18:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:18:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:18:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:18:03 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7251038b43fb4f309c084b32e12c0da0d8773e20998f24fead7a448a09bf27cd`  
		Last Modified: Wed, 21 Oct 2026 00:18:48 GMT  
		Size: 6.2 MB (6247392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebf0bfe0798587a30517f155962d507481607c83f3325d8ff79118e24077abb6`  
		Last Modified: Wed, 21 Oct 2026 00:18:54 GMT  
		Size: 306.0 MB (306043225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c00e7ff050edf5f852888343c83231563416e64983c139e581dbc40f0bb33bf8`  
		Last Modified: Wed, 21 Oct 2026 00:18:48 GMT  
		Size: 373.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13.2` - unknown; unknown

```console
$ docker pull julia@sha256:a783a0a053baf24401c6912fcc343c694cab4e2da9781ad09311393777dc6954
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2264057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f47e5575a3ccd88629fbe6ec112fb43579581faf47c674d9e0dcaf8da58ca80`

```dockerfile
```

-	Layers:
	-	`sha256:94d1ababde8139cf257549fad6b2ccdbfbe585cdfe7a0534d53bf32ae55ed148`  
		Last Modified: Wed, 21 Oct 2026 00:18:48 GMT  
		Size: 2.2 MB (2246356 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f1e4f9ae5f4ba8c8a51e601cf46b19ee4a5d51ce7d4629b9d208270f12e69e0`  
		Last Modified: Wed, 21 Oct 2026 00:18:48 GMT  
		Size: 17.7 KB (17701 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.13.2` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:345e062ae6688beaea961b6bd31780b0d8729774537c9f9764517733eb198701
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.1 MB (361100422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f90ea6d0e948d86ad47d3ca0a82a43da16acee9d43aeae300a58e8bf59e0e3ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:16:48 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:16:48 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:16:48 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 21 Oct 2026 00:16:48 GMT
ENV JULIA_VERSION=1.13.2
# Wed, 21 Oct 2026 00:16:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:16:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:16:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:16:48 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6036bd4cbedb72c264a3e38730e8628dbdd600292bd87195810530f6387981d4`  
		Last Modified: Wed, 21 Oct 2026 00:17:34 GMT  
		Size: 6.2 MB (6153234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3019b92747871c3ce2f117263323e29a50f1669a042111d1a35319031a9b8767`  
		Last Modified: Wed, 21 Oct 2026 00:17:40 GMT  
		Size: 324.7 MB (324746340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e88fb31a1b54f7112b6132545ae636d029e85dc9a4d0f9275e26b1c9f673621`  
		Last Modified: Wed, 21 Oct 2026 00:17:34 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13.2` - unknown; unknown

```console
$ docker pull julia@sha256:df62e34a70752a3204d2ee3b4cb1671a061505e405c4260c52270fad12a9a4cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2264548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7def002ffdd20b44ee6066eea975c692f9d767df1483f4f6a2333bd245d477b`

```dockerfile
```

-	Layers:
	-	`sha256:e9e0abce2cf1b9498c259dbc956fd4eef70539b40bacdb882d3812a79ef8b3a3`  
		Last Modified: Wed, 21 Oct 2026 00:17:34 GMT  
		Size: 2.2 MB (2246680 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f95fcbb65ebc3064436cc15265269a43411463d5d9e2fcd0da27d6309a70adab`  
		Last Modified: Wed, 21 Oct 2026 00:17:34 GMT  
		Size: 17.9 KB (17868 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.13.2` - linux; 386

```console
$ docker pull julia@sha256:7e21d3c81767c3ab5681f224b40803902e909007fe5692c7d74096163fe7a805
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.6 MB (280570546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea43fac9d2291adccf5e353459154c6a256e46ffce44aff9f1b51f1f961e3338`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Fri, 16 Oct 2026 20:38:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:38:19 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 16 Oct 2026 20:38:19 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:38:19 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Fri, 16 Oct 2026 20:38:19 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:38:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Fri, 16 Oct 2026 20:38:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:38:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:38:19 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:554a03fe980520b30a093a5e2efbee0c1130fe1c50dec4fc5af611cbdc2929b3`  
		Last Modified: Fri, 16 Oct 2026 20:38:52 GMT  
		Size: 6.4 MB (6436301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10d99cf53b239f508d970c767af5bbfd96dab2783c804ac07000b98343ea7814`  
		Last Modified: Fri, 16 Oct 2026 20:38:57 GMT  
		Size: 242.8 MB (242780581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e81c48df08bf48d59caed031420eb17c8fc903cc213aeb573e0d95a0ae191dcd`  
		Last Modified: Fri, 16 Oct 2026 20:38:51 GMT  
		Size: 367.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13.2` - unknown; unknown

```console
$ docker pull julia@sha256:5e85f1cba43f67c29590e01b56be07f2a142c43017a2cb07cfdd60ed8ed99f4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2262405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1852933f316f0a93f797b944435141ac8c92e795cf8a98313b30b01f460ff923`

```dockerfile
```

-	Layers:
	-	`sha256:1ab50347472b3edc5b24784b26081062a628f64b1928df3b77683c4e6d8cef31`  
		Last Modified: Fri, 16 Oct 2026 20:38:51 GMT  
		Size: 2.2 MB (2244758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:50be2bb2a72bf473e903dbbd4c0e08912da03387f8f919b92071f1ad3456274d`  
		Last Modified: Fri, 16 Oct 2026 20:38:51 GMT  
		Size: 17.6 KB (17647 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.13.2` - windows version 10.0.26100.33650; amd64

```console
$ docker pull julia@sha256:4ca23aba162ddc0f3748ad695d096151b6f7c61c011786fe1e8afc5678f0c1f4
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2700853039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:384471d80a6a72485150d71258d83127b7e8f81e340e88eb728df66d7f19f16c`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Fri, 16 Oct 2026 20:30:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 16 Oct 2026 20:46:55 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:46:56 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.2-win64.exe
# Fri, 16 Oct 2026 20:46:57 GMT
ENV JULIA_SHA256=9de7f1e34839e053cc1c8f44c89c1235506e5fbd4adcdcce88b88bf1647d8f50
# Fri, 16 Oct 2026 20:48:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Fri, 16 Oct 2026 20:48:11 GMT
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
	-	`sha256:30233c4168f9992d50584d2d698effa4424ebdd0126152fa60d94095085a992d`  
		Last Modified: Fri, 16 Oct 2026 20:32:25 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad518e260a77dffb99a4d5a3caf97ebc98e8041eda44a03846c95375a71fed0b`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23768f172a520477ec018d4abe48cdcb8fffc2f8bb17e1d2c3df781546a334e8`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ebc390116de35d8fe362f8349c81ce08c7ba60f4aef2e382c3a2466e529d73`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b97598c1d71a517ccf3650bfa5d8e1b0f13e4adb903f1e3f4f3d42d3c4c8e9`  
		Last Modified: Fri, 16 Oct 2026 20:48:59 GMT  
		Size: 308.9 MB (308852308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03797a51205c787c36ef206d6c1362717c6865435763ee69da40486bc6d198f`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.13.2` - windows version 10.0.20348.5761; amd64

```console
$ docker pull julia@sha256:3182ed87a0f6d4a7445e471036deed13915a545665408567fb4a5a3d7fa48a47
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2535123625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:413009c92e57b811e9d22134f588a879400658fd41021d7ee24c22c365352a6e`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Fri, 16 Oct 2026 20:29:11 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 16 Oct 2026 20:47:02 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:47:02 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.2-win64.exe
# Fri, 16 Oct 2026 20:47:03 GMT
ENV JULIA_SHA256=9de7f1e34839e053cc1c8f44c89c1235506e5fbd4adcdcce88b88bf1647d8f50
# Fri, 16 Oct 2026 20:49:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Fri, 16 Oct 2026 20:49:45 GMT
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
	-	`sha256:5c8aa03da74b5d0234f4f699ca7462ab937696ca4ba6a968d2c542a67f99f054`  
		Last Modified: Fri, 16 Oct 2026 20:31:19 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:157e9ed2e9d7cdb997941c379ba741360fb077d98de0fa5a730b71584018c2a9`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ef9a95ea9b30b624a12f9c4c592d3533aa9a89c840cd9361fcc1ce42835ae3`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464625ecd46addeae25d21a47edad65cbdb9c3f1ccbd359d4b2ffe6727160d92`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c9801d74d4f3791626b71a7b91cbb897aca8eaa34bee68573f8582702f33e8`  
		Last Modified: Fri, 16 Oct 2026 20:50:32 GMT  
		Size: 308.8 MB (308831575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b74bc1ba10945cb1464b4160801225a45d3c7daac4b7cb9dcd52dd53172e01`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.13.2-bookworm`

```console
$ docker pull julia@sha256:5f09570c9aeace067d79a1730915133eba0f72a31ef2918b5b59e152afa22665
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `julia:1.13.2-bookworm` - linux; amd64

```console
$ docker pull julia@sha256:fedd3ff07be4c711e66c40c4629f1fad3a3a3add9134ab226d4c44f0bb514e63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.8 MB (339798016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f290377369ebe8ed75ccc62ead1546151fa15029957f5688904c74edc73ad290`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:18:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:18:24 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:18:24 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:18:24 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 21 Oct 2026 00:18:24 GMT
ENV JULIA_VERSION=1.13.2
# Wed, 21 Oct 2026 00:18:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:18:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:18:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:18:24 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45827739c28e7d2faaa1e197ea2a194ec52ac2ceecee87ae45cbe2c21c455a3a`  
		Last Modified: Wed, 21 Oct 2026 00:19:07 GMT  
		Size: 5.5 MB (5542596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8fe5e1055b9ac5aeae6a7cd088dc9bb0aed68fc772b55c97cb9a17d8baf51f5`  
		Last Modified: Wed, 21 Oct 2026 00:19:13 GMT  
		Size: 306.0 MB (306007113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a57c4adc8aff085072a60b11eabf3059747e315dde0098e956af1110eff66c75`  
		Last Modified: Wed, 21 Oct 2026 00:19:06 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13.2-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:8f711ec4c5f331d8c7e080ae27413038213cf67bbcf62392fe44b94e5fae26fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2589503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fa9f1e6411af841677734f97e3121ccf69de6b6d47f8573c389d0a5dea0c2a9`

```dockerfile
```

-	Layers:
	-	`sha256:b322441e4386bc8b257fcc7c7bd8ac31ae1bcb577a4e61cdf31ca2bd573a2efa`  
		Last Modified: Wed, 21 Oct 2026 00:19:06 GMT  
		Size: 2.6 MB (2572948 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e913ee55c9af9991b998e85c2f485c2c28133872f12fedc9bae84652428383b0`  
		Last Modified: Wed, 21 Oct 2026 00:19:06 GMT  
		Size: 16.6 KB (16555 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.13.2-bookworm` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:5bdc915a4f2bb64d5be14e7124d8392b62fd97c3e29b9f2f1531ef1162df9a13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.2 MB (358241971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aef5b1126cb3110ff5dfe8c951d91acd177735f47b85b1fb3f2b0b4c1782985b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:17:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:17:45 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:17:45 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:17:45 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 21 Oct 2026 00:17:45 GMT
ENV JULIA_VERSION=1.13.2
# Wed, 21 Oct 2026 00:17:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:17:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:17:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:17:45 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dca3f363be28f103d76bfbf036b9ac170321de5d64effd732589d914d4444e57`  
		Last Modified: Wed, 21 Oct 2026 00:18:32 GMT  
		Size: 5.4 MB (5387935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8099c7aaafdc106ecb9258b452f37056a25b564f2efb6c5b6928fd6b6423bce7`  
		Last Modified: Wed, 21 Oct 2026 00:18:38 GMT  
		Size: 324.7 MB (324715239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38aed825ccba3b6d0244075619682c0daffdf6ee3dbf25713258a9ac3a23368e`  
		Last Modified: Wed, 21 Oct 2026 00:18:31 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13.2-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:ed173b945c92460a73ae19a6c1a656f2f034adb999756b3bebfa01dac7d7d1bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2589896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e82e20cf734ca50c686c2911f1b2b07a33a5975d01146c83b69b052de55268c9`

```dockerfile
```

-	Layers:
	-	`sha256:a4dabaf2a434be4e7dec56899e7c5809345da5435daa79e31a3cf7da7863b108`  
		Last Modified: Wed, 21 Oct 2026 00:18:32 GMT  
		Size: 2.6 MB (2573223 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ab70b12c916fc1aeb13776a6a295c305a90348713200d9a33acd83e462cc468`  
		Last Modified: Wed, 21 Oct 2026 00:18:31 GMT  
		Size: 16.7 KB (16673 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.13.2-bookworm` - linux; 386

```console
$ docker pull julia@sha256:a8bf7bddaae15f8a6498b47ba8a23c8dfd13badef9ef14633120dc93716b195f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.7 MB (277693522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cf2cff5b8fac117a593ce6f920d031abfcd38708fd0dd4d96047c4eff511eb4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1791158400'
# Fri, 16 Oct 2026 20:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:38:20 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 16 Oct 2026 20:38:20 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:38:20 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Fri, 16 Oct 2026 20:38:20 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:38:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Fri, 16 Oct 2026 20:38:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:38:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:38:20 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:4fde7ff71d38b44de13588c355f9acc395f4ecbec569968085401a6d6b40eff2`  
		Last Modified: Tue, 06 Oct 2026 00:13:26 GMT  
		Size: 29.2 MB (29239373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1ba0b5a5ce54e241440155d54462fc5aa89ba068bc7da22e2340203bbf94ffe`  
		Last Modified: Fri, 16 Oct 2026 20:38:52 GMT  
		Size: 5.7 MB (5705016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:438b668b820f2df12c42a0157087e1da2475a13f7ca7c842c03b279a6cd61fea`  
		Last Modified: Fri, 16 Oct 2026 20:38:58 GMT  
		Size: 242.7 MB (242748761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18789dbad7bcadcc5332855e6ad27089ccafc8f0670787536f8c508378d9ed80`  
		Last Modified: Fri, 16 Oct 2026 20:38:52 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13.2-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:a2c50efe4635d540345c2256b49aa1d15eace481913c9c63b4a1560955c24b27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2587908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42608ae662cdb6a8994a433d3f346dcf684d07ec338776365c3ff3cc942ce9fc`

```dockerfile
```

-	Layers:
	-	`sha256:ae79d2d5740e507f83579caf4f0867322f32ba0ea40bff2eed582539aad517f2`  
		Last Modified: Fri, 16 Oct 2026 20:38:52 GMT  
		Size: 2.6 MB (2571390 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:372e5a7289d9df4b7f2152abb578c18fa455817e3cd1c46b3d1c9188b2404201`  
		Last Modified: Fri, 16 Oct 2026 20:38:51 GMT  
		Size: 16.5 KB (16518 bytes)  
		MIME: application/vnd.in-toto+json

## `julia:1.13.2-trixie`

```console
$ docker pull julia@sha256:b0ea3fcf1fe93e25e3a7eec4fe4ed23e51a3aee8ec08bbe7a14b247051b36faf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `julia:1.13.2-trixie` - linux; amd64

```console
$ docker pull julia@sha256:605f429b384309f3c1a70484ec63b5b8a481feafa261d5424bd1066f6a5b1da8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.1 MB (342134569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fe1d2c0ad8f2eba384660ef9db55b4252af43d600da3297592959434eff8f24`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:17:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:18:03 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:18:03 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:18:03 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 21 Oct 2026 00:18:03 GMT
ENV JULIA_VERSION=1.13.2
# Wed, 21 Oct 2026 00:18:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:18:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:18:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:18:03 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7251038b43fb4f309c084b32e12c0da0d8773e20998f24fead7a448a09bf27cd`  
		Last Modified: Wed, 21 Oct 2026 00:18:48 GMT  
		Size: 6.2 MB (6247392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebf0bfe0798587a30517f155962d507481607c83f3325d8ff79118e24077abb6`  
		Last Modified: Wed, 21 Oct 2026 00:18:54 GMT  
		Size: 306.0 MB (306043225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c00e7ff050edf5f852888343c83231563416e64983c139e581dbc40f0bb33bf8`  
		Last Modified: Wed, 21 Oct 2026 00:18:48 GMT  
		Size: 373.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13.2-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:a783a0a053baf24401c6912fcc343c694cab4e2da9781ad09311393777dc6954
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2264057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f47e5575a3ccd88629fbe6ec112fb43579581faf47c674d9e0dcaf8da58ca80`

```dockerfile
```

-	Layers:
	-	`sha256:94d1ababde8139cf257549fad6b2ccdbfbe585cdfe7a0534d53bf32ae55ed148`  
		Last Modified: Wed, 21 Oct 2026 00:18:48 GMT  
		Size: 2.2 MB (2246356 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f1e4f9ae5f4ba8c8a51e601cf46b19ee4a5d51ce7d4629b9d208270f12e69e0`  
		Last Modified: Wed, 21 Oct 2026 00:18:48 GMT  
		Size: 17.7 KB (17701 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.13.2-trixie` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:345e062ae6688beaea961b6bd31780b0d8729774537c9f9764517733eb198701
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.1 MB (361100422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f90ea6d0e948d86ad47d3ca0a82a43da16acee9d43aeae300a58e8bf59e0e3ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:16:48 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:16:48 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:16:48 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 21 Oct 2026 00:16:48 GMT
ENV JULIA_VERSION=1.13.2
# Wed, 21 Oct 2026 00:16:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:16:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:16:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:16:48 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6036bd4cbedb72c264a3e38730e8628dbdd600292bd87195810530f6387981d4`  
		Last Modified: Wed, 21 Oct 2026 00:17:34 GMT  
		Size: 6.2 MB (6153234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3019b92747871c3ce2f117263323e29a50f1669a042111d1a35319031a9b8767`  
		Last Modified: Wed, 21 Oct 2026 00:17:40 GMT  
		Size: 324.7 MB (324746340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e88fb31a1b54f7112b6132545ae636d029e85dc9a4d0f9275e26b1c9f673621`  
		Last Modified: Wed, 21 Oct 2026 00:17:34 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13.2-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:df62e34a70752a3204d2ee3b4cb1671a061505e405c4260c52270fad12a9a4cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2264548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7def002ffdd20b44ee6066eea975c692f9d767df1483f4f6a2333bd245d477b`

```dockerfile
```

-	Layers:
	-	`sha256:e9e0abce2cf1b9498c259dbc956fd4eef70539b40bacdb882d3812a79ef8b3a3`  
		Last Modified: Wed, 21 Oct 2026 00:17:34 GMT  
		Size: 2.2 MB (2246680 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f95fcbb65ebc3064436cc15265269a43411463d5d9e2fcd0da27d6309a70adab`  
		Last Modified: Wed, 21 Oct 2026 00:17:34 GMT  
		Size: 17.9 KB (17868 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.13.2-trixie` - linux; 386

```console
$ docker pull julia@sha256:7e21d3c81767c3ab5681f224b40803902e909007fe5692c7d74096163fe7a805
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.6 MB (280570546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea43fac9d2291adccf5e353459154c6a256e46ffce44aff9f1b51f1f961e3338`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Fri, 16 Oct 2026 20:38:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:38:19 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 16 Oct 2026 20:38:19 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:38:19 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Fri, 16 Oct 2026 20:38:19 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:38:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Fri, 16 Oct 2026 20:38:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:38:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:38:19 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:554a03fe980520b30a093a5e2efbee0c1130fe1c50dec4fc5af611cbdc2929b3`  
		Last Modified: Fri, 16 Oct 2026 20:38:52 GMT  
		Size: 6.4 MB (6436301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10d99cf53b239f508d970c767af5bbfd96dab2783c804ac07000b98343ea7814`  
		Last Modified: Fri, 16 Oct 2026 20:38:57 GMT  
		Size: 242.8 MB (242780581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e81c48df08bf48d59caed031420eb17c8fc903cc213aeb573e0d95a0ae191dcd`  
		Last Modified: Fri, 16 Oct 2026 20:38:51 GMT  
		Size: 367.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13.2-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:5e85f1cba43f67c29590e01b56be07f2a142c43017a2cb07cfdd60ed8ed99f4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2262405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1852933f316f0a93f797b944435141ac8c92e795cf8a98313b30b01f460ff923`

```dockerfile
```

-	Layers:
	-	`sha256:1ab50347472b3edc5b24784b26081062a628f64b1928df3b77683c4e6d8cef31`  
		Last Modified: Fri, 16 Oct 2026 20:38:51 GMT  
		Size: 2.2 MB (2244758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:50be2bb2a72bf473e903dbbd4c0e08912da03387f8f919b92071f1ad3456274d`  
		Last Modified: Fri, 16 Oct 2026 20:38:51 GMT  
		Size: 17.6 KB (17647 bytes)  
		MIME: application/vnd.in-toto+json

## `julia:1.13.2-windowsservercore`

```console
$ docker pull julia@sha256:4cd3345c7d3b4bbcb1fdb86ecc030894b9f92dc41392acc3b2315b96a4515ecd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `julia:1.13.2-windowsservercore` - windows version 10.0.26100.33650; amd64

```console
$ docker pull julia@sha256:4ca23aba162ddc0f3748ad695d096151b6f7c61c011786fe1e8afc5678f0c1f4
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2700853039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:384471d80a6a72485150d71258d83127b7e8f81e340e88eb728df66d7f19f16c`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Fri, 16 Oct 2026 20:30:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 16 Oct 2026 20:46:55 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:46:56 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.2-win64.exe
# Fri, 16 Oct 2026 20:46:57 GMT
ENV JULIA_SHA256=9de7f1e34839e053cc1c8f44c89c1235506e5fbd4adcdcce88b88bf1647d8f50
# Fri, 16 Oct 2026 20:48:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Fri, 16 Oct 2026 20:48:11 GMT
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
	-	`sha256:30233c4168f9992d50584d2d698effa4424ebdd0126152fa60d94095085a992d`  
		Last Modified: Fri, 16 Oct 2026 20:32:25 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad518e260a77dffb99a4d5a3caf97ebc98e8041eda44a03846c95375a71fed0b`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23768f172a520477ec018d4abe48cdcb8fffc2f8bb17e1d2c3df781546a334e8`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ebc390116de35d8fe362f8349c81ce08c7ba60f4aef2e382c3a2466e529d73`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b97598c1d71a517ccf3650bfa5d8e1b0f13e4adb903f1e3f4f3d42d3c4c8e9`  
		Last Modified: Fri, 16 Oct 2026 20:48:59 GMT  
		Size: 308.9 MB (308852308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03797a51205c787c36ef206d6c1362717c6865435763ee69da40486bc6d198f`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.13.2-windowsservercore` - windows version 10.0.20348.5761; amd64

```console
$ docker pull julia@sha256:3182ed87a0f6d4a7445e471036deed13915a545665408567fb4a5a3d7fa48a47
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2535123625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:413009c92e57b811e9d22134f588a879400658fd41021d7ee24c22c365352a6e`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Fri, 16 Oct 2026 20:29:11 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 16 Oct 2026 20:47:02 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:47:02 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.2-win64.exe
# Fri, 16 Oct 2026 20:47:03 GMT
ENV JULIA_SHA256=9de7f1e34839e053cc1c8f44c89c1235506e5fbd4adcdcce88b88bf1647d8f50
# Fri, 16 Oct 2026 20:49:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Fri, 16 Oct 2026 20:49:45 GMT
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
	-	`sha256:5c8aa03da74b5d0234f4f699ca7462ab937696ca4ba6a968d2c542a67f99f054`  
		Last Modified: Fri, 16 Oct 2026 20:31:19 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:157e9ed2e9d7cdb997941c379ba741360fb077d98de0fa5a730b71584018c2a9`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ef9a95ea9b30b624a12f9c4c592d3533aa9a89c840cd9361fcc1ce42835ae3`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464625ecd46addeae25d21a47edad65cbdb9c3f1ccbd359d4b2ffe6727160d92`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c9801d74d4f3791626b71a7b91cbb897aca8eaa34bee68573f8582702f33e8`  
		Last Modified: Fri, 16 Oct 2026 20:50:32 GMT  
		Size: 308.8 MB (308831575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b74bc1ba10945cb1464b4160801225a45d3c7daac4b7cb9dcd52dd53172e01`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.13.2-windowsservercore-ltsc2022`

```console
$ docker pull julia@sha256:b2cacc274c0c5433aa4dade58700d9738965ce943fc0762a6ec2aa9cb328cab8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `julia:1.13.2-windowsservercore-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull julia@sha256:3182ed87a0f6d4a7445e471036deed13915a545665408567fb4a5a3d7fa48a47
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2535123625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:413009c92e57b811e9d22134f588a879400658fd41021d7ee24c22c365352a6e`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Fri, 16 Oct 2026 20:29:11 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 16 Oct 2026 20:47:02 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:47:02 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.2-win64.exe
# Fri, 16 Oct 2026 20:47:03 GMT
ENV JULIA_SHA256=9de7f1e34839e053cc1c8f44c89c1235506e5fbd4adcdcce88b88bf1647d8f50
# Fri, 16 Oct 2026 20:49:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Fri, 16 Oct 2026 20:49:45 GMT
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
	-	`sha256:5c8aa03da74b5d0234f4f699ca7462ab937696ca4ba6a968d2c542a67f99f054`  
		Last Modified: Fri, 16 Oct 2026 20:31:19 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:157e9ed2e9d7cdb997941c379ba741360fb077d98de0fa5a730b71584018c2a9`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ef9a95ea9b30b624a12f9c4c592d3533aa9a89c840cd9361fcc1ce42835ae3`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464625ecd46addeae25d21a47edad65cbdb9c3f1ccbd359d4b2ffe6727160d92`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c9801d74d4f3791626b71a7b91cbb897aca8eaa34bee68573f8582702f33e8`  
		Last Modified: Fri, 16 Oct 2026 20:50:32 GMT  
		Size: 308.8 MB (308831575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b74bc1ba10945cb1464b4160801225a45d3c7daac4b7cb9dcd52dd53172e01`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.13.2-windowsservercore-ltsc2025`

```console
$ docker pull julia@sha256:7500f239617339ed7516bf92a602c889ba92da00db2a7aed9e4f7874411fc5c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33650; amd64

### `julia:1.13.2-windowsservercore-ltsc2025` - windows version 10.0.26100.33650; amd64

```console
$ docker pull julia@sha256:4ca23aba162ddc0f3748ad695d096151b6f7c61c011786fe1e8afc5678f0c1f4
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2700853039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:384471d80a6a72485150d71258d83127b7e8f81e340e88eb728df66d7f19f16c`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Fri, 16 Oct 2026 20:30:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 16 Oct 2026 20:46:55 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:46:56 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.2-win64.exe
# Fri, 16 Oct 2026 20:46:57 GMT
ENV JULIA_SHA256=9de7f1e34839e053cc1c8f44c89c1235506e5fbd4adcdcce88b88bf1647d8f50
# Fri, 16 Oct 2026 20:48:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Fri, 16 Oct 2026 20:48:11 GMT
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
	-	`sha256:30233c4168f9992d50584d2d698effa4424ebdd0126152fa60d94095085a992d`  
		Last Modified: Fri, 16 Oct 2026 20:32:25 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad518e260a77dffb99a4d5a3caf97ebc98e8041eda44a03846c95375a71fed0b`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23768f172a520477ec018d4abe48cdcb8fffc2f8bb17e1d2c3df781546a334e8`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ebc390116de35d8fe362f8349c81ce08c7ba60f4aef2e382c3a2466e529d73`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b97598c1d71a517ccf3650bfa5d8e1b0f13e4adb903f1e3f4f3d42d3c4c8e9`  
		Last Modified: Fri, 16 Oct 2026 20:48:59 GMT  
		Size: 308.9 MB (308852308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03797a51205c787c36ef206d6c1362717c6865435763ee69da40486bc6d198f`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:bookworm`

```console
$ docker pull julia@sha256:5f09570c9aeace067d79a1730915133eba0f72a31ef2918b5b59e152afa22665
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `julia:bookworm` - linux; amd64

```console
$ docker pull julia@sha256:fedd3ff07be4c711e66c40c4629f1fad3a3a3add9134ab226d4c44f0bb514e63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.8 MB (339798016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f290377369ebe8ed75ccc62ead1546151fa15029957f5688904c74edc73ad290`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:18:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:18:24 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:18:24 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:18:24 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 21 Oct 2026 00:18:24 GMT
ENV JULIA_VERSION=1.13.2
# Wed, 21 Oct 2026 00:18:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:18:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:18:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:18:24 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45827739c28e7d2faaa1e197ea2a194ec52ac2ceecee87ae45cbe2c21c455a3a`  
		Last Modified: Wed, 21 Oct 2026 00:19:07 GMT  
		Size: 5.5 MB (5542596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8fe5e1055b9ac5aeae6a7cd088dc9bb0aed68fc772b55c97cb9a17d8baf51f5`  
		Last Modified: Wed, 21 Oct 2026 00:19:13 GMT  
		Size: 306.0 MB (306007113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a57c4adc8aff085072a60b11eabf3059747e315dde0098e956af1110eff66c75`  
		Last Modified: Wed, 21 Oct 2026 00:19:06 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:8f711ec4c5f331d8c7e080ae27413038213cf67bbcf62392fe44b94e5fae26fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2589503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fa9f1e6411af841677734f97e3121ccf69de6b6d47f8573c389d0a5dea0c2a9`

```dockerfile
```

-	Layers:
	-	`sha256:b322441e4386bc8b257fcc7c7bd8ac31ae1bcb577a4e61cdf31ca2bd573a2efa`  
		Last Modified: Wed, 21 Oct 2026 00:19:06 GMT  
		Size: 2.6 MB (2572948 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e913ee55c9af9991b998e85c2f485c2c28133872f12fedc9bae84652428383b0`  
		Last Modified: Wed, 21 Oct 2026 00:19:06 GMT  
		Size: 16.6 KB (16555 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:bookworm` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:5bdc915a4f2bb64d5be14e7124d8392b62fd97c3e29b9f2f1531ef1162df9a13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.2 MB (358241971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aef5b1126cb3110ff5dfe8c951d91acd177735f47b85b1fb3f2b0b4c1782985b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:17:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:17:45 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:17:45 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:17:45 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 21 Oct 2026 00:17:45 GMT
ENV JULIA_VERSION=1.13.2
# Wed, 21 Oct 2026 00:17:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:17:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:17:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:17:45 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dca3f363be28f103d76bfbf036b9ac170321de5d64effd732589d914d4444e57`  
		Last Modified: Wed, 21 Oct 2026 00:18:32 GMT  
		Size: 5.4 MB (5387935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8099c7aaafdc106ecb9258b452f37056a25b564f2efb6c5b6928fd6b6423bce7`  
		Last Modified: Wed, 21 Oct 2026 00:18:38 GMT  
		Size: 324.7 MB (324715239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38aed825ccba3b6d0244075619682c0daffdf6ee3dbf25713258a9ac3a23368e`  
		Last Modified: Wed, 21 Oct 2026 00:18:31 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:ed173b945c92460a73ae19a6c1a656f2f034adb999756b3bebfa01dac7d7d1bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2589896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e82e20cf734ca50c686c2911f1b2b07a33a5975d01146c83b69b052de55268c9`

```dockerfile
```

-	Layers:
	-	`sha256:a4dabaf2a434be4e7dec56899e7c5809345da5435daa79e31a3cf7da7863b108`  
		Last Modified: Wed, 21 Oct 2026 00:18:32 GMT  
		Size: 2.6 MB (2573223 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ab70b12c916fc1aeb13776a6a295c305a90348713200d9a33acd83e462cc468`  
		Last Modified: Wed, 21 Oct 2026 00:18:31 GMT  
		Size: 16.7 KB (16673 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:bookworm` - linux; 386

```console
$ docker pull julia@sha256:a8bf7bddaae15f8a6498b47ba8a23c8dfd13badef9ef14633120dc93716b195f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.7 MB (277693522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cf2cff5b8fac117a593ce6f920d031abfcd38708fd0dd4d96047c4eff511eb4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1791158400'
# Fri, 16 Oct 2026 20:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:38:20 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 16 Oct 2026 20:38:20 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:38:20 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Fri, 16 Oct 2026 20:38:20 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:38:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Fri, 16 Oct 2026 20:38:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:38:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:38:20 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:4fde7ff71d38b44de13588c355f9acc395f4ecbec569968085401a6d6b40eff2`  
		Last Modified: Tue, 06 Oct 2026 00:13:26 GMT  
		Size: 29.2 MB (29239373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1ba0b5a5ce54e241440155d54462fc5aa89ba068bc7da22e2340203bbf94ffe`  
		Last Modified: Fri, 16 Oct 2026 20:38:52 GMT  
		Size: 5.7 MB (5705016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:438b668b820f2df12c42a0157087e1da2475a13f7ca7c842c03b279a6cd61fea`  
		Last Modified: Fri, 16 Oct 2026 20:38:58 GMT  
		Size: 242.7 MB (242748761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18789dbad7bcadcc5332855e6ad27089ccafc8f0670787536f8c508378d9ed80`  
		Last Modified: Fri, 16 Oct 2026 20:38:52 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:a2c50efe4635d540345c2256b49aa1d15eace481913c9c63b4a1560955c24b27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2587908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42608ae662cdb6a8994a433d3f346dcf684d07ec338776365c3ff3cc942ce9fc`

```dockerfile
```

-	Layers:
	-	`sha256:ae79d2d5740e507f83579caf4f0867322f32ba0ea40bff2eed582539aad517f2`  
		Last Modified: Fri, 16 Oct 2026 20:38:52 GMT  
		Size: 2.6 MB (2571390 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:372e5a7289d9df4b7f2152abb578c18fa455817e3cd1c46b3d1c9188b2404201`  
		Last Modified: Fri, 16 Oct 2026 20:38:51 GMT  
		Size: 16.5 KB (16518 bytes)  
		MIME: application/vnd.in-toto+json

## `julia:latest`

```console
$ docker pull julia@sha256:c507080d70ec68dce782ad78b9998803d597115b9b7278c522aeb11333197506
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

### `julia:latest` - linux; amd64

```console
$ docker pull julia@sha256:605f429b384309f3c1a70484ec63b5b8a481feafa261d5424bd1066f6a5b1da8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.1 MB (342134569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fe1d2c0ad8f2eba384660ef9db55b4252af43d600da3297592959434eff8f24`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:17:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:18:03 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:18:03 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:18:03 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 21 Oct 2026 00:18:03 GMT
ENV JULIA_VERSION=1.13.2
# Wed, 21 Oct 2026 00:18:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:18:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:18:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:18:03 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7251038b43fb4f309c084b32e12c0da0d8773e20998f24fead7a448a09bf27cd`  
		Last Modified: Wed, 21 Oct 2026 00:18:48 GMT  
		Size: 6.2 MB (6247392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebf0bfe0798587a30517f155962d507481607c83f3325d8ff79118e24077abb6`  
		Last Modified: Wed, 21 Oct 2026 00:18:54 GMT  
		Size: 306.0 MB (306043225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c00e7ff050edf5f852888343c83231563416e64983c139e581dbc40f0bb33bf8`  
		Last Modified: Wed, 21 Oct 2026 00:18:48 GMT  
		Size: 373.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:latest` - unknown; unknown

```console
$ docker pull julia@sha256:a783a0a053baf24401c6912fcc343c694cab4e2da9781ad09311393777dc6954
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2264057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f47e5575a3ccd88629fbe6ec112fb43579581faf47c674d9e0dcaf8da58ca80`

```dockerfile
```

-	Layers:
	-	`sha256:94d1ababde8139cf257549fad6b2ccdbfbe585cdfe7a0534d53bf32ae55ed148`  
		Last Modified: Wed, 21 Oct 2026 00:18:48 GMT  
		Size: 2.2 MB (2246356 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f1e4f9ae5f4ba8c8a51e601cf46b19ee4a5d51ce7d4629b9d208270f12e69e0`  
		Last Modified: Wed, 21 Oct 2026 00:18:48 GMT  
		Size: 17.7 KB (17701 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:latest` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:345e062ae6688beaea961b6bd31780b0d8729774537c9f9764517733eb198701
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.1 MB (361100422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f90ea6d0e948d86ad47d3ca0a82a43da16acee9d43aeae300a58e8bf59e0e3ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:16:48 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:16:48 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:16:48 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 21 Oct 2026 00:16:48 GMT
ENV JULIA_VERSION=1.13.2
# Wed, 21 Oct 2026 00:16:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:16:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:16:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:16:48 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6036bd4cbedb72c264a3e38730e8628dbdd600292bd87195810530f6387981d4`  
		Last Modified: Wed, 21 Oct 2026 00:17:34 GMT  
		Size: 6.2 MB (6153234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3019b92747871c3ce2f117263323e29a50f1669a042111d1a35319031a9b8767`  
		Last Modified: Wed, 21 Oct 2026 00:17:40 GMT  
		Size: 324.7 MB (324746340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e88fb31a1b54f7112b6132545ae636d029e85dc9a4d0f9275e26b1c9f673621`  
		Last Modified: Wed, 21 Oct 2026 00:17:34 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:latest` - unknown; unknown

```console
$ docker pull julia@sha256:df62e34a70752a3204d2ee3b4cb1671a061505e405c4260c52270fad12a9a4cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2264548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7def002ffdd20b44ee6066eea975c692f9d767df1483f4f6a2333bd245d477b`

```dockerfile
```

-	Layers:
	-	`sha256:e9e0abce2cf1b9498c259dbc956fd4eef70539b40bacdb882d3812a79ef8b3a3`  
		Last Modified: Wed, 21 Oct 2026 00:17:34 GMT  
		Size: 2.2 MB (2246680 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f95fcbb65ebc3064436cc15265269a43411463d5d9e2fcd0da27d6309a70adab`  
		Last Modified: Wed, 21 Oct 2026 00:17:34 GMT  
		Size: 17.9 KB (17868 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:latest` - linux; 386

```console
$ docker pull julia@sha256:7e21d3c81767c3ab5681f224b40803902e909007fe5692c7d74096163fe7a805
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.6 MB (280570546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea43fac9d2291adccf5e353459154c6a256e46ffce44aff9f1b51f1f961e3338`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Fri, 16 Oct 2026 20:38:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:38:19 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 16 Oct 2026 20:38:19 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:38:19 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Fri, 16 Oct 2026 20:38:19 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:38:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Fri, 16 Oct 2026 20:38:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:38:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:38:19 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:554a03fe980520b30a093a5e2efbee0c1130fe1c50dec4fc5af611cbdc2929b3`  
		Last Modified: Fri, 16 Oct 2026 20:38:52 GMT  
		Size: 6.4 MB (6436301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10d99cf53b239f508d970c767af5bbfd96dab2783c804ac07000b98343ea7814`  
		Last Modified: Fri, 16 Oct 2026 20:38:57 GMT  
		Size: 242.8 MB (242780581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e81c48df08bf48d59caed031420eb17c8fc903cc213aeb573e0d95a0ae191dcd`  
		Last Modified: Fri, 16 Oct 2026 20:38:51 GMT  
		Size: 367.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:latest` - unknown; unknown

```console
$ docker pull julia@sha256:5e85f1cba43f67c29590e01b56be07f2a142c43017a2cb07cfdd60ed8ed99f4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2262405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1852933f316f0a93f797b944435141ac8c92e795cf8a98313b30b01f460ff923`

```dockerfile
```

-	Layers:
	-	`sha256:1ab50347472b3edc5b24784b26081062a628f64b1928df3b77683c4e6d8cef31`  
		Last Modified: Fri, 16 Oct 2026 20:38:51 GMT  
		Size: 2.2 MB (2244758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:50be2bb2a72bf473e903dbbd4c0e08912da03387f8f919b92071f1ad3456274d`  
		Last Modified: Fri, 16 Oct 2026 20:38:51 GMT  
		Size: 17.6 KB (17647 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:latest` - windows version 10.0.26100.33650; amd64

```console
$ docker pull julia@sha256:4ca23aba162ddc0f3748ad695d096151b6f7c61c011786fe1e8afc5678f0c1f4
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2700853039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:384471d80a6a72485150d71258d83127b7e8f81e340e88eb728df66d7f19f16c`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Fri, 16 Oct 2026 20:30:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 16 Oct 2026 20:46:55 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:46:56 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.2-win64.exe
# Fri, 16 Oct 2026 20:46:57 GMT
ENV JULIA_SHA256=9de7f1e34839e053cc1c8f44c89c1235506e5fbd4adcdcce88b88bf1647d8f50
# Fri, 16 Oct 2026 20:48:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Fri, 16 Oct 2026 20:48:11 GMT
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
	-	`sha256:30233c4168f9992d50584d2d698effa4424ebdd0126152fa60d94095085a992d`  
		Last Modified: Fri, 16 Oct 2026 20:32:25 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad518e260a77dffb99a4d5a3caf97ebc98e8041eda44a03846c95375a71fed0b`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23768f172a520477ec018d4abe48cdcb8fffc2f8bb17e1d2c3df781546a334e8`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ebc390116de35d8fe362f8349c81ce08c7ba60f4aef2e382c3a2466e529d73`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b97598c1d71a517ccf3650bfa5d8e1b0f13e4adb903f1e3f4f3d42d3c4c8e9`  
		Last Modified: Fri, 16 Oct 2026 20:48:59 GMT  
		Size: 308.9 MB (308852308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03797a51205c787c36ef206d6c1362717c6865435763ee69da40486bc6d198f`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:latest` - windows version 10.0.20348.5761; amd64

```console
$ docker pull julia@sha256:3182ed87a0f6d4a7445e471036deed13915a545665408567fb4a5a3d7fa48a47
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2535123625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:413009c92e57b811e9d22134f588a879400658fd41021d7ee24c22c365352a6e`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Fri, 16 Oct 2026 20:29:11 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 16 Oct 2026 20:47:02 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:47:02 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.2-win64.exe
# Fri, 16 Oct 2026 20:47:03 GMT
ENV JULIA_SHA256=9de7f1e34839e053cc1c8f44c89c1235506e5fbd4adcdcce88b88bf1647d8f50
# Fri, 16 Oct 2026 20:49:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Fri, 16 Oct 2026 20:49:45 GMT
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
	-	`sha256:5c8aa03da74b5d0234f4f699ca7462ab937696ca4ba6a968d2c542a67f99f054`  
		Last Modified: Fri, 16 Oct 2026 20:31:19 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:157e9ed2e9d7cdb997941c379ba741360fb077d98de0fa5a730b71584018c2a9`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ef9a95ea9b30b624a12f9c4c592d3533aa9a89c840cd9361fcc1ce42835ae3`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464625ecd46addeae25d21a47edad65cbdb9c3f1ccbd359d4b2ffe6727160d92`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c9801d74d4f3791626b71a7b91cbb897aca8eaa34bee68573f8582702f33e8`  
		Last Modified: Fri, 16 Oct 2026 20:50:32 GMT  
		Size: 308.8 MB (308831575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b74bc1ba10945cb1464b4160801225a45d3c7daac4b7cb9dcd52dd53172e01`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:trixie`

```console
$ docker pull julia@sha256:b0ea3fcf1fe93e25e3a7eec4fe4ed23e51a3aee8ec08bbe7a14b247051b36faf
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
$ docker pull julia@sha256:605f429b384309f3c1a70484ec63b5b8a481feafa261d5424bd1066f6a5b1da8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.1 MB (342134569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fe1d2c0ad8f2eba384660ef9db55b4252af43d600da3297592959434eff8f24`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:17:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:18:03 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:18:03 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:18:03 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 21 Oct 2026 00:18:03 GMT
ENV JULIA_VERSION=1.13.2
# Wed, 21 Oct 2026 00:18:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:18:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:18:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:18:03 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7251038b43fb4f309c084b32e12c0da0d8773e20998f24fead7a448a09bf27cd`  
		Last Modified: Wed, 21 Oct 2026 00:18:48 GMT  
		Size: 6.2 MB (6247392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebf0bfe0798587a30517f155962d507481607c83f3325d8ff79118e24077abb6`  
		Last Modified: Wed, 21 Oct 2026 00:18:54 GMT  
		Size: 306.0 MB (306043225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c00e7ff050edf5f852888343c83231563416e64983c139e581dbc40f0bb33bf8`  
		Last Modified: Wed, 21 Oct 2026 00:18:48 GMT  
		Size: 373.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:trixie` - unknown; unknown

```console
$ docker pull julia@sha256:a783a0a053baf24401c6912fcc343c694cab4e2da9781ad09311393777dc6954
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2264057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f47e5575a3ccd88629fbe6ec112fb43579581faf47c674d9e0dcaf8da58ca80`

```dockerfile
```

-	Layers:
	-	`sha256:94d1ababde8139cf257549fad6b2ccdbfbe585cdfe7a0534d53bf32ae55ed148`  
		Last Modified: Wed, 21 Oct 2026 00:18:48 GMT  
		Size: 2.2 MB (2246356 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f1e4f9ae5f4ba8c8a51e601cf46b19ee4a5d51ce7d4629b9d208270f12e69e0`  
		Last Modified: Wed, 21 Oct 2026 00:18:48 GMT  
		Size: 17.7 KB (17701 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:trixie` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:345e062ae6688beaea961b6bd31780b0d8729774537c9f9764517733eb198701
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.1 MB (361100422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f90ea6d0e948d86ad47d3ca0a82a43da16acee9d43aeae300a58e8bf59e0e3ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:16:48 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 21 Oct 2026 00:16:48 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:16:48 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Wed, 21 Oct 2026 00:16:48 GMT
ENV JULIA_VERSION=1.13.2
# Wed, 21 Oct 2026 00:16:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Wed, 21 Oct 2026 00:16:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:16:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:16:48 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6036bd4cbedb72c264a3e38730e8628dbdd600292bd87195810530f6387981d4`  
		Last Modified: Wed, 21 Oct 2026 00:17:34 GMT  
		Size: 6.2 MB (6153234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3019b92747871c3ce2f117263323e29a50f1669a042111d1a35319031a9b8767`  
		Last Modified: Wed, 21 Oct 2026 00:17:40 GMT  
		Size: 324.7 MB (324746340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e88fb31a1b54f7112b6132545ae636d029e85dc9a4d0f9275e26b1c9f673621`  
		Last Modified: Wed, 21 Oct 2026 00:17:34 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:trixie` - unknown; unknown

```console
$ docker pull julia@sha256:df62e34a70752a3204d2ee3b4cb1671a061505e405c4260c52270fad12a9a4cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2264548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7def002ffdd20b44ee6066eea975c692f9d767df1483f4f6a2333bd245d477b`

```dockerfile
```

-	Layers:
	-	`sha256:e9e0abce2cf1b9498c259dbc956fd4eef70539b40bacdb882d3812a79ef8b3a3`  
		Last Modified: Wed, 21 Oct 2026 00:17:34 GMT  
		Size: 2.2 MB (2246680 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f95fcbb65ebc3064436cc15265269a43411463d5d9e2fcd0da27d6309a70adab`  
		Last Modified: Wed, 21 Oct 2026 00:17:34 GMT  
		Size: 17.9 KB (17868 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:trixie` - linux; 386

```console
$ docker pull julia@sha256:7e21d3c81767c3ab5681f224b40803902e909007fe5692c7d74096163fe7a805
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.6 MB (280570546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea43fac9d2291adccf5e353459154c6a256e46ffce44aff9f1b51f1f961e3338`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Fri, 16 Oct 2026 20:38:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:38:19 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 16 Oct 2026 20:38:19 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:38:19 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Fri, 16 Oct 2026 20:38:19 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:38:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Fri, 16 Oct 2026 20:38:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:38:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:38:19 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:554a03fe980520b30a093a5e2efbee0c1130fe1c50dec4fc5af611cbdc2929b3`  
		Last Modified: Fri, 16 Oct 2026 20:38:52 GMT  
		Size: 6.4 MB (6436301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10d99cf53b239f508d970c767af5bbfd96dab2783c804ac07000b98343ea7814`  
		Last Modified: Fri, 16 Oct 2026 20:38:57 GMT  
		Size: 242.8 MB (242780581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e81c48df08bf48d59caed031420eb17c8fc903cc213aeb573e0d95a0ae191dcd`  
		Last Modified: Fri, 16 Oct 2026 20:38:51 GMT  
		Size: 367.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:trixie` - unknown; unknown

```console
$ docker pull julia@sha256:5e85f1cba43f67c29590e01b56be07f2a142c43017a2cb07cfdd60ed8ed99f4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2262405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1852933f316f0a93f797b944435141ac8c92e795cf8a98313b30b01f460ff923`

```dockerfile
```

-	Layers:
	-	`sha256:1ab50347472b3edc5b24784b26081062a628f64b1928df3b77683c4e6d8cef31`  
		Last Modified: Fri, 16 Oct 2026 20:38:51 GMT  
		Size: 2.2 MB (2244758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:50be2bb2a72bf473e903dbbd4c0e08912da03387f8f919b92071f1ad3456274d`  
		Last Modified: Fri, 16 Oct 2026 20:38:51 GMT  
		Size: 17.6 KB (17647 bytes)  
		MIME: application/vnd.in-toto+json

## `julia:windowsservercore`

```console
$ docker pull julia@sha256:4cd3345c7d3b4bbcb1fdb86ecc030894b9f92dc41392acc3b2315b96a4515ecd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `julia:windowsservercore` - windows version 10.0.26100.33650; amd64

```console
$ docker pull julia@sha256:4ca23aba162ddc0f3748ad695d096151b6f7c61c011786fe1e8afc5678f0c1f4
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2700853039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:384471d80a6a72485150d71258d83127b7e8f81e340e88eb728df66d7f19f16c`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Fri, 16 Oct 2026 20:30:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 16 Oct 2026 20:46:55 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:46:56 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.2-win64.exe
# Fri, 16 Oct 2026 20:46:57 GMT
ENV JULIA_SHA256=9de7f1e34839e053cc1c8f44c89c1235506e5fbd4adcdcce88b88bf1647d8f50
# Fri, 16 Oct 2026 20:48:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Fri, 16 Oct 2026 20:48:11 GMT
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
	-	`sha256:30233c4168f9992d50584d2d698effa4424ebdd0126152fa60d94095085a992d`  
		Last Modified: Fri, 16 Oct 2026 20:32:25 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad518e260a77dffb99a4d5a3caf97ebc98e8041eda44a03846c95375a71fed0b`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23768f172a520477ec018d4abe48cdcb8fffc2f8bb17e1d2c3df781546a334e8`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ebc390116de35d8fe362f8349c81ce08c7ba60f4aef2e382c3a2466e529d73`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b97598c1d71a517ccf3650bfa5d8e1b0f13e4adb903f1e3f4f3d42d3c4c8e9`  
		Last Modified: Fri, 16 Oct 2026 20:48:59 GMT  
		Size: 308.9 MB (308852308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03797a51205c787c36ef206d6c1362717c6865435763ee69da40486bc6d198f`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:windowsservercore` - windows version 10.0.20348.5761; amd64

```console
$ docker pull julia@sha256:3182ed87a0f6d4a7445e471036deed13915a545665408567fb4a5a3d7fa48a47
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2535123625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:413009c92e57b811e9d22134f588a879400658fd41021d7ee24c22c365352a6e`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Fri, 16 Oct 2026 20:29:11 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 16 Oct 2026 20:47:02 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:47:02 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.2-win64.exe
# Fri, 16 Oct 2026 20:47:03 GMT
ENV JULIA_SHA256=9de7f1e34839e053cc1c8f44c89c1235506e5fbd4adcdcce88b88bf1647d8f50
# Fri, 16 Oct 2026 20:49:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Fri, 16 Oct 2026 20:49:45 GMT
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
	-	`sha256:5c8aa03da74b5d0234f4f699ca7462ab937696ca4ba6a968d2c542a67f99f054`  
		Last Modified: Fri, 16 Oct 2026 20:31:19 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:157e9ed2e9d7cdb997941c379ba741360fb077d98de0fa5a730b71584018c2a9`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ef9a95ea9b30b624a12f9c4c592d3533aa9a89c840cd9361fcc1ce42835ae3`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464625ecd46addeae25d21a47edad65cbdb9c3f1ccbd359d4b2ffe6727160d92`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c9801d74d4f3791626b71a7b91cbb897aca8eaa34bee68573f8582702f33e8`  
		Last Modified: Fri, 16 Oct 2026 20:50:32 GMT  
		Size: 308.8 MB (308831575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b74bc1ba10945cb1464b4160801225a45d3c7daac4b7cb9dcd52dd53172e01`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:windowsservercore-ltsc2022`

```console
$ docker pull julia@sha256:b2cacc274c0c5433aa4dade58700d9738965ce943fc0762a6ec2aa9cb328cab8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `julia:windowsservercore-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull julia@sha256:3182ed87a0f6d4a7445e471036deed13915a545665408567fb4a5a3d7fa48a47
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2535123625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:413009c92e57b811e9d22134f588a879400658fd41021d7ee24c22c365352a6e`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Fri, 16 Oct 2026 20:29:11 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 16 Oct 2026 20:47:02 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:47:02 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.2-win64.exe
# Fri, 16 Oct 2026 20:47:03 GMT
ENV JULIA_SHA256=9de7f1e34839e053cc1c8f44c89c1235506e5fbd4adcdcce88b88bf1647d8f50
# Fri, 16 Oct 2026 20:49:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Fri, 16 Oct 2026 20:49:45 GMT
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
	-	`sha256:5c8aa03da74b5d0234f4f699ca7462ab937696ca4ba6a968d2c542a67f99f054`  
		Last Modified: Fri, 16 Oct 2026 20:31:19 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:157e9ed2e9d7cdb997941c379ba741360fb077d98de0fa5a730b71584018c2a9`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ef9a95ea9b30b624a12f9c4c592d3533aa9a89c840cd9361fcc1ce42835ae3`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464625ecd46addeae25d21a47edad65cbdb9c3f1ccbd359d4b2ffe6727160d92`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c9801d74d4f3791626b71a7b91cbb897aca8eaa34bee68573f8582702f33e8`  
		Last Modified: Fri, 16 Oct 2026 20:50:32 GMT  
		Size: 308.8 MB (308831575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b74bc1ba10945cb1464b4160801225a45d3c7daac4b7cb9dcd52dd53172e01`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:windowsservercore-ltsc2025`

```console
$ docker pull julia@sha256:7500f239617339ed7516bf92a602c889ba92da00db2a7aed9e4f7874411fc5c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33650; amd64

### `julia:windowsservercore-ltsc2025` - windows version 10.0.26100.33650; amd64

```console
$ docker pull julia@sha256:4ca23aba162ddc0f3748ad695d096151b6f7c61c011786fe1e8afc5678f0c1f4
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2700853039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:384471d80a6a72485150d71258d83127b7e8f81e340e88eb728df66d7f19f16c`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Fri, 16 Oct 2026 20:30:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 16 Oct 2026 20:46:55 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:46:56 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.2-win64.exe
# Fri, 16 Oct 2026 20:46:57 GMT
ENV JULIA_SHA256=9de7f1e34839e053cc1c8f44c89c1235506e5fbd4adcdcce88b88bf1647d8f50
# Fri, 16 Oct 2026 20:48:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Fri, 16 Oct 2026 20:48:11 GMT
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
	-	`sha256:30233c4168f9992d50584d2d698effa4424ebdd0126152fa60d94095085a992d`  
		Last Modified: Fri, 16 Oct 2026 20:32:25 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad518e260a77dffb99a4d5a3caf97ebc98e8041eda44a03846c95375a71fed0b`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23768f172a520477ec018d4abe48cdcb8fffc2f8bb17e1d2c3df781546a334e8`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ebc390116de35d8fe362f8349c81ce08c7ba60f4aef2e382c3a2466e529d73`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b97598c1d71a517ccf3650bfa5d8e1b0f13e4adb903f1e3f4f3d42d3c4c8e9`  
		Last Modified: Fri, 16 Oct 2026 20:48:59 GMT  
		Size: 308.9 MB (308852308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03797a51205c787c36ef206d6c1362717c6865435763ee69da40486bc6d198f`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
