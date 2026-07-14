## `julia:trixie`

```console
$ docker pull julia@sha256:c417b6dd9b4511328b0261d79e2aa91f3cf7bc6adb6b16417002a30043061c77
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

### `julia:trixie` - unknown; unknown

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

### `julia:trixie` - linux; arm64 variant v8

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

### `julia:trixie` - unknown; unknown

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

### `julia:trixie` - linux; 386

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

### `julia:trixie` - unknown; unknown

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
