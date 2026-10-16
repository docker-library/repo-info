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
$ docker pull julia@sha256:ad45422a91f69999a06bdf693eb814017e5c8dea4f712b362285882bf3babdcc
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
$ docker pull julia@sha256:455bea3ac701af6b1d9326a4b160e6122ed639c7f74dea967942c53dea5490f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.1 MB (342136372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeb8ec35ceb8aa0fda39620117b7d056aff8cfb8b1fdaad670ff533aa147208c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Fri, 16 Oct 2026 20:32:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:32:28 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 16 Oct 2026 20:32:28 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:32:28 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Fri, 16 Oct 2026 20:32:28 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:32:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Fri, 16 Oct 2026 20:32:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:32:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:32:28 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:484ae85fb47dce867e075a5ef7e894b4750187cb5711af4b3a58f24082a033bc`  
		Last Modified: Fri, 16 Oct 2026 20:33:12 GMT  
		Size: 6.2 MB (6249478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c32b4f3395a09e59e7fa17aafc615addbab9110a0f2e4a17519a45a8fcd8740`  
		Last Modified: Fri, 16 Oct 2026 20:33:18 GMT  
		Size: 306.0 MB (306043173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da6817beded8e0c327191e71618c83cbabb02fb17e107704e50d5ba3eeab72c`  
		Last Modified: Fri, 16 Oct 2026 20:33:12 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1` - unknown; unknown

```console
$ docker pull julia@sha256:ccd4b0885ad43e5c8339b85f36ff7885d3ab6f68e2ed1eff7c4d6482f46b277e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2265334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:689af110a9a95368829343bd45b189583c623d8e62d504373a45ecb314157636`

```dockerfile
```

-	Layers:
	-	`sha256:ef578de15aa322efbfe4f91f32028b759d642db4400547b4c0b21fc0e1c8f01b`  
		Last Modified: Fri, 16 Oct 2026 20:33:12 GMT  
		Size: 2.2 MB (2247633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2346092f22d9263f64a51a7048bcf8a64c71d3fbe6e45af0436510f016fcef7`  
		Last Modified: Fri, 16 Oct 2026 20:33:12 GMT  
		Size: 17.7 KB (17701 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:114d4ddfbc8d1deed197d7721a64a163680ff7123db9f4af147f91bec2a0c6ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.1 MB (361103239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bb2b4932d2b5aba69cd94b0b02359306fd04d201d39761d7ddf38ff3cf8a648`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Fri, 16 Oct 2026 20:31:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:32:22 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 16 Oct 2026 20:32:22 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:32:22 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Fri, 16 Oct 2026 20:32:22 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:32:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Fri, 16 Oct 2026 20:32:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:32:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:32:22 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b4e73afd73100a151be90e0f23ce02ed59a2b3d70d1665f0e71ac561feb9113`  
		Last Modified: Fri, 16 Oct 2026 20:33:08 GMT  
		Size: 6.2 MB (6156258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bee40d3f1ca3fbb24a60f8688166c61f3ab9455f5ec360565d2c85dcfb5b90e7`  
		Last Modified: Fri, 16 Oct 2026 20:33:14 GMT  
		Size: 324.7 MB (324746329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bf5a59c5919957e7dd6b6caae038459ef12af739c7b17bf7ac08c25f5e400bf`  
		Last Modified: Fri, 16 Oct 2026 20:33:08 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1` - unknown; unknown

```console
$ docker pull julia@sha256:661545cb22ae503cc4493cbcc4d89ed572488ba26456fa87431938f81f93ac55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2265825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37eee4e8960982f38ea0d662a25b627e1400347c7dc76bff7414f08102ac9260`

```dockerfile
```

-	Layers:
	-	`sha256:1c9917cef5b43abaebcb6be32116c0afdeac54b40d2423f415076b5389a6adca`  
		Last Modified: Fri, 16 Oct 2026 20:33:08 GMT  
		Size: 2.2 MB (2247957 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3cdcb7829c710958d760b65316fff6d360565c2600267bb3516b470d1d4e1e5`  
		Last Modified: Fri, 16 Oct 2026 20:33:08 GMT  
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
$ docker pull julia@sha256:c2212b3109a9e236a44cfc157ff7eb3eadf43cb3f3ef8db26f1c936c4780cf2e
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
$ docker pull julia@sha256:a49178b3a7bfc31e08550af074f223548b3170b4ae761e89b580618df731c034
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.8 MB (339802800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3928454ba4e537858ca13b9acfbf90c4fe7610f99d0dad3c3f056141f66b139c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Fri, 16 Oct 2026 20:32:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:32:32 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 16 Oct 2026 20:32:32 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:32:32 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Fri, 16 Oct 2026 20:32:32 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:32:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Fri, 16 Oct 2026 20:32:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:32:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:32:32 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdd6a977240db0ee001768ba9a56f545f62204c63ef955159a4e14b365c56656`  
		Last Modified: Fri, 16 Oct 2026 20:33:18 GMT  
		Size: 5.5 MB (5545956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7908402a6bf9d0691d0bf16c6c6c1c2e4b1d83f887127c05500c8cee1e92bf8`  
		Last Modified: Fri, 16 Oct 2026 20:33:24 GMT  
		Size: 306.0 MB (306007152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9467a7b74108b934f1375be08551f7cadfe9be0270be18bef1db59f2cdce4c2`  
		Last Modified: Fri, 16 Oct 2026 20:33:18 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:d74c75affb972b32090772f7cee8d69d1ba5056f3717ee07c1ba6b5af65fc676
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2590798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e02a3c1eb49ddc914e0d2a8b5376611501f9cef9433e2016e446f42b83783985`

```dockerfile
```

-	Layers:
	-	`sha256:9c7e30f59b0fa214764467fb620b0fe0628d657cd7c7e421149b796a142149be`  
		Last Modified: Fri, 16 Oct 2026 20:33:18 GMT  
		Size: 2.6 MB (2574243 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:509e9bbb9ca646357909e111b2d585280dbc3e5f3f66635e31177f202420342a`  
		Last Modified: Fri, 16 Oct 2026 20:33:18 GMT  
		Size: 16.6 KB (16555 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1-bookworm` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:c938e5772d41a1a50616108278a165674da65935f45b45d8b2830b04295d1d91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.2 MB (358241593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:730b57c96e8618df561dad96bef94cbbd6023a1b158a5fbeadac3666e62f00ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Fri, 16 Oct 2026 20:31:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:32:24 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 16 Oct 2026 20:32:24 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:32:24 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Fri, 16 Oct 2026 20:32:24 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:32:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Fri, 16 Oct 2026 20:32:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:32:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:32:24 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7f4694ee6b9ab328b659c137309ca045e0b036df9e92c4e49999e9531206f8f`  
		Last Modified: Fri, 16 Oct 2026 20:33:10 GMT  
		Size: 5.4 MB (5388814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0600c0dc956906938e4c59d7393a37096e1b0c08e8db70e91cd09772fb05a4f1`  
		Last Modified: Fri, 16 Oct 2026 20:33:16 GMT  
		Size: 324.7 MB (324715229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83509abe388d540b8af4e3400fb41d199601a3ed871b2a9b3d8e28a3edf09775`  
		Last Modified: Fri, 16 Oct 2026 20:33:10 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:455ba3015076ed2ca1675f4db0db81d496f0e9b799242b074eeb592b60e74b4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2591191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f3a0e6468702ee2836a683e516f4cf5ba9e9f6ec53a1723cd48e153f390178b`

```dockerfile
```

-	Layers:
	-	`sha256:8b8d57e12cea86191c475ca4f0f087aac485f695b6fef6d3515a819086f2713b`  
		Last Modified: Fri, 16 Oct 2026 20:33:10 GMT  
		Size: 2.6 MB (2574518 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24fad7c51dd594eff541c289e8b36b1972fd8d47a251c7f59a9f02efc2abc010`  
		Last Modified: Fri, 16 Oct 2026 20:33:10 GMT  
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
$ docker pull julia@sha256:4df06df7f083d6070d0ddede540cb6a72e933378636e601f4da3bf11c66c1a22
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
$ docker pull julia@sha256:455bea3ac701af6b1d9326a4b160e6122ed639c7f74dea967942c53dea5490f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.1 MB (342136372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeb8ec35ceb8aa0fda39620117b7d056aff8cfb8b1fdaad670ff533aa147208c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Fri, 16 Oct 2026 20:32:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:32:28 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 16 Oct 2026 20:32:28 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:32:28 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Fri, 16 Oct 2026 20:32:28 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:32:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Fri, 16 Oct 2026 20:32:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:32:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:32:28 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:484ae85fb47dce867e075a5ef7e894b4750187cb5711af4b3a58f24082a033bc`  
		Last Modified: Fri, 16 Oct 2026 20:33:12 GMT  
		Size: 6.2 MB (6249478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c32b4f3395a09e59e7fa17aafc615addbab9110a0f2e4a17519a45a8fcd8740`  
		Last Modified: Fri, 16 Oct 2026 20:33:18 GMT  
		Size: 306.0 MB (306043173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da6817beded8e0c327191e71618c83cbabb02fb17e107704e50d5ba3eeab72c`  
		Last Modified: Fri, 16 Oct 2026 20:33:12 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:ccd4b0885ad43e5c8339b85f36ff7885d3ab6f68e2ed1eff7c4d6482f46b277e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2265334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:689af110a9a95368829343bd45b189583c623d8e62d504373a45ecb314157636`

```dockerfile
```

-	Layers:
	-	`sha256:ef578de15aa322efbfe4f91f32028b759d642db4400547b4c0b21fc0e1c8f01b`  
		Last Modified: Fri, 16 Oct 2026 20:33:12 GMT  
		Size: 2.2 MB (2247633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2346092f22d9263f64a51a7048bcf8a64c71d3fbe6e45af0436510f016fcef7`  
		Last Modified: Fri, 16 Oct 2026 20:33:12 GMT  
		Size: 17.7 KB (17701 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1-trixie` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:114d4ddfbc8d1deed197d7721a64a163680ff7123db9f4af147f91bec2a0c6ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.1 MB (361103239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bb2b4932d2b5aba69cd94b0b02359306fd04d201d39761d7ddf38ff3cf8a648`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Fri, 16 Oct 2026 20:31:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:32:22 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 16 Oct 2026 20:32:22 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:32:22 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Fri, 16 Oct 2026 20:32:22 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:32:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Fri, 16 Oct 2026 20:32:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:32:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:32:22 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b4e73afd73100a151be90e0f23ce02ed59a2b3d70d1665f0e71ac561feb9113`  
		Last Modified: Fri, 16 Oct 2026 20:33:08 GMT  
		Size: 6.2 MB (6156258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bee40d3f1ca3fbb24a60f8688166c61f3ab9455f5ec360565d2c85dcfb5b90e7`  
		Last Modified: Fri, 16 Oct 2026 20:33:14 GMT  
		Size: 324.7 MB (324746329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bf5a59c5919957e7dd6b6caae038459ef12af739c7b17bf7ac08c25f5e400bf`  
		Last Modified: Fri, 16 Oct 2026 20:33:08 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:661545cb22ae503cc4493cbcc4d89ed572488ba26456fa87431938f81f93ac55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2265825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37eee4e8960982f38ea0d662a25b627e1400347c7dc76bff7414f08102ac9260`

```dockerfile
```

-	Layers:
	-	`sha256:1c9917cef5b43abaebcb6be32116c0afdeac54b40d2423f415076b5389a6adca`  
		Last Modified: Fri, 16 Oct 2026 20:33:08 GMT  
		Size: 2.2 MB (2247957 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3cdcb7829c710958d760b65316fff6d360565c2600267bb3516b470d1d4e1e5`  
		Last Modified: Fri, 16 Oct 2026 20:33:08 GMT  
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
$ docker pull julia@sha256:555f38ab9243e0f913a91a82b69e54f219c17e5bebab9eb928a855fec43c267a
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
$ docker pull julia@sha256:dca2e2044e10d3eb4e0a7e65be41291e6d727dc6beaf93c284f6a662d756c1f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.0 MB (213983416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd7ff376c78bd5e5b6c9bdbe30da50ad376152376ca6a84d33f3ca5c982dee69`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:17:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:18:56 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:18:56 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:18:56 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:18:56 GMT
ENV JULIA_VERSION=1.10.12
# Tue, 06 Oct 2026 01:18:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.10/julia-1.10.12-linux-x86_64.tar.gz'; 			sha256='b0c50dfe349d76ffc8580d24e0c0be623988a6d91ed57ad8b73c0137fd27bc0d'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.10/julia-1.10.12-linux-i686.tar.gz'; 			sha256='453d80cf0ce6f21041ff16d677e702c85557f28f078e8a91dd01582edb57708c'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.10/julia-1.10.12-linux-aarch64.tar.gz'; 			sha256='cc257b21967049642bfe17de1aff7dae17477eba4f423f98cb400c002080e5a2'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:18:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:18:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:18:56 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd297608a41213fe3555f95fbdfc099148be6da3d2aec9b0aa7b909d13e6f4c5`  
		Last Modified: Tue, 06 Oct 2026 01:18:29 GMT  
		Size: 6.2 MB (6249339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:141c17b6f52b720c7303de9f357ecea6a11be71df6932122a0cb768bfb0601c5`  
		Last Modified: Tue, 06 Oct 2026 01:19:26 GMT  
		Size: 177.9 MB (177890358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be00727b362a51bcd8c80488acb527a869b140af86e7737dafb2b3e85437ad1a`  
		Last Modified: Tue, 06 Oct 2026 01:19:22 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.10` - unknown; unknown

```console
$ docker pull julia@sha256:0db7feb68f1dab74aedad9ac67db68134b7edd70023c478dcc6d368f62171a18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2263014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45bf41b2db64b0dab03f54938811d9ef82bc653440defe4df9afeed20465e1f7`

```dockerfile
```

-	Layers:
	-	`sha256:963f8d31bdee4495b3066d09674e1e9122ecbc13f6347269f8f88f1e0c58668b`  
		Last Modified: Tue, 06 Oct 2026 01:19:22 GMT  
		Size: 2.2 MB (2246485 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8fd93ab9ff7c411ebbe94121e6c398104802bf62048c010190590a54bf649fdc`  
		Last Modified: Tue, 06 Oct 2026 01:19:21 GMT  
		Size: 16.5 KB (16529 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.10` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:615a9f13449c27c78140633e6fd0c2a2fb323d463a779ceb45431b992b865b1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.2 MB (215173559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fe3bd905e6616652c8b0624b66b3cc306cd941135c0e87d8539d1ef821ad692`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:19:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:19:45 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:19:45 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:19:45 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:19:45 GMT
ENV JULIA_VERSION=1.10.12
# Tue, 06 Oct 2026 01:19:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.10/julia-1.10.12-linux-x86_64.tar.gz'; 			sha256='b0c50dfe349d76ffc8580d24e0c0be623988a6d91ed57ad8b73c0137fd27bc0d'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.10/julia-1.10.12-linux-i686.tar.gz'; 			sha256='453d80cf0ce6f21041ff16d677e702c85557f28f078e8a91dd01582edb57708c'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.10/julia-1.10.12-linux-aarch64.tar.gz'; 			sha256='cc257b21967049642bfe17de1aff7dae17477eba4f423f98cb400c002080e5a2'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:19:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:19:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:19:45 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a90f82ec8f31f68c6852fb1920bbc8ae7aac60e800e85290297af4a42415e57`  
		Last Modified: Tue, 06 Oct 2026 01:20:14 GMT  
		Size: 6.2 MB (6156290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37e8bb0e98d812d9c745eca142a11d6d8e73ce044314b9332637ab91cfc79851`  
		Last Modified: Tue, 06 Oct 2026 01:20:17 GMT  
		Size: 178.8 MB (178816618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31922e9a6a188fce4e79fd69d8f591162d4e7f9f7d222cc11ae87ed2154d2190`  
		Last Modified: Tue, 06 Oct 2026 01:20:13 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.10` - unknown; unknown

```console
$ docker pull julia@sha256:5ee1b3a2bb9425994d7128d9c597243f75510f9cf7069143cc087c643ad6081d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2262175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11046cd4f467acf25233251b100b52c4a4ba708d3695bf270438791ab81f9aa8`

```dockerfile
```

-	Layers:
	-	`sha256:218a82a6146092bb42e1b9eae70d6ff90e34dbe1dce90d9631c01b6d5f6de398`  
		Last Modified: Tue, 06 Oct 2026 01:20:14 GMT  
		Size: 2.2 MB (2245527 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d68dbd2ce35a451bbc7c5a76b909af1725e3e631da907d2a51bdf69d76f3b673`  
		Last Modified: Tue, 06 Oct 2026 01:20:14 GMT  
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
$ docker pull julia@sha256:2b7928eb932b0cf1846483e853c22237df44e98dfb113d9f22fd5e6dde21e984
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
$ docker pull julia@sha256:bc33121a878e08f42671dbc453e67504a1d0d1cc27204b191d0cc825d7019e86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.6 MB (211645645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dda13de4d35e05d06e25ef49a3f212efb75a292520e700f71e73df729db68225`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:19:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:19:29 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:19:29 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:19:29 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:19:29 GMT
ENV JULIA_VERSION=1.10.12
# Tue, 06 Oct 2026 01:19:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.10/julia-1.10.12-linux-x86_64.tar.gz'; 			sha256='b0c50dfe349d76ffc8580d24e0c0be623988a6d91ed57ad8b73c0137fd27bc0d'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.10/julia-1.10.12-linux-i686.tar.gz'; 			sha256='453d80cf0ce6f21041ff16d677e702c85557f28f078e8a91dd01582edb57708c'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.10/julia-1.10.12-linux-aarch64.tar.gz'; 			sha256='cc257b21967049642bfe17de1aff7dae17477eba4f423f98cb400c002080e5a2'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:19:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:19:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:19:29 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce36f58a29dbd69a051afa506a612ac070d3f7185a8fcfc78012f1cb9aede3b7`  
		Last Modified: Tue, 06 Oct 2026 01:19:55 GMT  
		Size: 5.5 MB (5545975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01b09094eafe8a032fb9cbc3686d408711e8d5c0485dfcc5bd35f45e7fa81a80`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 177.8 MB (177849978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:496544e01c0640f4fea5f81866ec4f03cfa89d145ca73906357145eeab58e480`  
		Last Modified: Tue, 06 Oct 2026 01:19:55 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.10-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:0047ff67e0c7c7117d15782c3cdcedf203de91c9ad15c009bfcc90db0df94ee6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2589626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e5b6018955cf1970ac20a621e9598c754ef01a284fc5d2c2bc8b20968983f5`

```dockerfile
```

-	Layers:
	-	`sha256:a05b66ee5dafffe82977f3cc98565a492d939e3f7d9860099664796129b51d53`  
		Last Modified: Tue, 06 Oct 2026 01:19:55 GMT  
		Size: 2.6 MB (2573667 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4c705760490edef38138f68abc10876ada0ba66fc82f4631af05eee463413c03`  
		Last Modified: Tue, 06 Oct 2026 01:19:55 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.10-bookworm` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:f76f47ff4464c584c8af85cd732514493fb783b82bf8eb27815c712907098a1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.3 MB (212308243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46664b830d544f435a81f510ca3e2cc450acf2d06dbd77e31b0ff89d636791af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:19:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:19:48 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:19:48 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:19:48 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:19:48 GMT
ENV JULIA_VERSION=1.10.12
# Tue, 06 Oct 2026 01:19:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.10/julia-1.10.12-linux-x86_64.tar.gz'; 			sha256='b0c50dfe349d76ffc8580d24e0c0be623988a6d91ed57ad8b73c0137fd27bc0d'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.10/julia-1.10.12-linux-i686.tar.gz'; 			sha256='453d80cf0ce6f21041ff16d677e702c85557f28f078e8a91dd01582edb57708c'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.10/julia-1.10.12-linux-aarch64.tar.gz'; 			sha256='cc257b21967049642bfe17de1aff7dae17477eba4f423f98cb400c002080e5a2'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:19:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:19:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:19:48 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30b6374879a5ecf589f9147c19feaf87d30daa47a272d8023e8c161f453ae4c0`  
		Last Modified: Tue, 06 Oct 2026 01:20:17 GMT  
		Size: 5.4 MB (5388854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ba33fd85eca4224936acd42b8b32d6c5e3eb93af79b64741e08d8139ec3c547`  
		Last Modified: Tue, 06 Oct 2026 01:20:21 GMT  
		Size: 178.8 MB (178781838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fedccc668e661721885e2ae8f80728c31a6e473e4a28c0ca688006ce2737563`  
		Last Modified: Tue, 06 Oct 2026 01:20:17 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.10-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:d42991aac6b09b0a36eeb62f9f3ad9d9688dbe3ade4a52ad3816ab5e92b39d14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2588738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34cbe6a662c25fbe19b4bcfe0983916748fa491e3e8b99cab9d39e9cdd63730d`

```dockerfile
```

-	Layers:
	-	`sha256:28265ee55c6f86024dcec958329871d5cd4b36a543538f788b49904b24a6918c`  
		Last Modified: Tue, 06 Oct 2026 01:20:17 GMT  
		Size: 2.6 MB (2572684 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9eee017cd65ee26ed3ebdf75ec5f40a608317e6b29cf8a228a20bd21b4eb4366`  
		Last Modified: Tue, 06 Oct 2026 01:20:17 GMT  
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
$ docker pull julia@sha256:2219c55bbeb76a01ff9a0fbfb87bc30b88e5b4e1d0479508b44908af3d33000d
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
$ docker pull julia@sha256:dca2e2044e10d3eb4e0a7e65be41291e6d727dc6beaf93c284f6a662d756c1f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.0 MB (213983416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd7ff376c78bd5e5b6c9bdbe30da50ad376152376ca6a84d33f3ca5c982dee69`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:17:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:18:56 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:18:56 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:18:56 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:18:56 GMT
ENV JULIA_VERSION=1.10.12
# Tue, 06 Oct 2026 01:18:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.10/julia-1.10.12-linux-x86_64.tar.gz'; 			sha256='b0c50dfe349d76ffc8580d24e0c0be623988a6d91ed57ad8b73c0137fd27bc0d'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.10/julia-1.10.12-linux-i686.tar.gz'; 			sha256='453d80cf0ce6f21041ff16d677e702c85557f28f078e8a91dd01582edb57708c'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.10/julia-1.10.12-linux-aarch64.tar.gz'; 			sha256='cc257b21967049642bfe17de1aff7dae17477eba4f423f98cb400c002080e5a2'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:18:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:18:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:18:56 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd297608a41213fe3555f95fbdfc099148be6da3d2aec9b0aa7b909d13e6f4c5`  
		Last Modified: Tue, 06 Oct 2026 01:18:29 GMT  
		Size: 6.2 MB (6249339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:141c17b6f52b720c7303de9f357ecea6a11be71df6932122a0cb768bfb0601c5`  
		Last Modified: Tue, 06 Oct 2026 01:19:26 GMT  
		Size: 177.9 MB (177890358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be00727b362a51bcd8c80488acb527a869b140af86e7737dafb2b3e85437ad1a`  
		Last Modified: Tue, 06 Oct 2026 01:19:22 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.10-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:0db7feb68f1dab74aedad9ac67db68134b7edd70023c478dcc6d368f62171a18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2263014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45bf41b2db64b0dab03f54938811d9ef82bc653440defe4df9afeed20465e1f7`

```dockerfile
```

-	Layers:
	-	`sha256:963f8d31bdee4495b3066d09674e1e9122ecbc13f6347269f8f88f1e0c58668b`  
		Last Modified: Tue, 06 Oct 2026 01:19:22 GMT  
		Size: 2.2 MB (2246485 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8fd93ab9ff7c411ebbe94121e6c398104802bf62048c010190590a54bf649fdc`  
		Last Modified: Tue, 06 Oct 2026 01:19:21 GMT  
		Size: 16.5 KB (16529 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.10-trixie` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:615a9f13449c27c78140633e6fd0c2a2fb323d463a779ceb45431b992b865b1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.2 MB (215173559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fe3bd905e6616652c8b0624b66b3cc306cd941135c0e87d8539d1ef821ad692`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:19:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:19:45 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:19:45 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:19:45 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:19:45 GMT
ENV JULIA_VERSION=1.10.12
# Tue, 06 Oct 2026 01:19:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.10/julia-1.10.12-linux-x86_64.tar.gz'; 			sha256='b0c50dfe349d76ffc8580d24e0c0be623988a6d91ed57ad8b73c0137fd27bc0d'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.10/julia-1.10.12-linux-i686.tar.gz'; 			sha256='453d80cf0ce6f21041ff16d677e702c85557f28f078e8a91dd01582edb57708c'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.10/julia-1.10.12-linux-aarch64.tar.gz'; 			sha256='cc257b21967049642bfe17de1aff7dae17477eba4f423f98cb400c002080e5a2'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:19:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:19:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:19:45 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a90f82ec8f31f68c6852fb1920bbc8ae7aac60e800e85290297af4a42415e57`  
		Last Modified: Tue, 06 Oct 2026 01:20:14 GMT  
		Size: 6.2 MB (6156290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37e8bb0e98d812d9c745eca142a11d6d8e73ce044314b9332637ab91cfc79851`  
		Last Modified: Tue, 06 Oct 2026 01:20:17 GMT  
		Size: 178.8 MB (178816618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31922e9a6a188fce4e79fd69d8f591162d4e7f9f7d222cc11ae87ed2154d2190`  
		Last Modified: Tue, 06 Oct 2026 01:20:13 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.10-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:5ee1b3a2bb9425994d7128d9c597243f75510f9cf7069143cc087c643ad6081d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2262175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11046cd4f467acf25233251b100b52c4a4ba708d3695bf270438791ab81f9aa8`

```dockerfile
```

-	Layers:
	-	`sha256:218a82a6146092bb42e1b9eae70d6ff90e34dbe1dce90d9631c01b6d5f6de398`  
		Last Modified: Tue, 06 Oct 2026 01:20:14 GMT  
		Size: 2.2 MB (2245527 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d68dbd2ce35a451bbc7c5a76b909af1725e3e631da907d2a51bdf69d76f3b673`  
		Last Modified: Tue, 06 Oct 2026 01:20:14 GMT  
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
$ docker pull julia@sha256:555f38ab9243e0f913a91a82b69e54f219c17e5bebab9eb928a855fec43c267a
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
$ docker pull julia@sha256:dca2e2044e10d3eb4e0a7e65be41291e6d727dc6beaf93c284f6a662d756c1f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.0 MB (213983416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd7ff376c78bd5e5b6c9bdbe30da50ad376152376ca6a84d33f3ca5c982dee69`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:17:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:18:56 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:18:56 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:18:56 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:18:56 GMT
ENV JULIA_VERSION=1.10.12
# Tue, 06 Oct 2026 01:18:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.10/julia-1.10.12-linux-x86_64.tar.gz'; 			sha256='b0c50dfe349d76ffc8580d24e0c0be623988a6d91ed57ad8b73c0137fd27bc0d'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.10/julia-1.10.12-linux-i686.tar.gz'; 			sha256='453d80cf0ce6f21041ff16d677e702c85557f28f078e8a91dd01582edb57708c'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.10/julia-1.10.12-linux-aarch64.tar.gz'; 			sha256='cc257b21967049642bfe17de1aff7dae17477eba4f423f98cb400c002080e5a2'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:18:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:18:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:18:56 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd297608a41213fe3555f95fbdfc099148be6da3d2aec9b0aa7b909d13e6f4c5`  
		Last Modified: Tue, 06 Oct 2026 01:18:29 GMT  
		Size: 6.2 MB (6249339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:141c17b6f52b720c7303de9f357ecea6a11be71df6932122a0cb768bfb0601c5`  
		Last Modified: Tue, 06 Oct 2026 01:19:26 GMT  
		Size: 177.9 MB (177890358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be00727b362a51bcd8c80488acb527a869b140af86e7737dafb2b3e85437ad1a`  
		Last Modified: Tue, 06 Oct 2026 01:19:22 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.10.12` - unknown; unknown

```console
$ docker pull julia@sha256:0db7feb68f1dab74aedad9ac67db68134b7edd70023c478dcc6d368f62171a18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2263014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45bf41b2db64b0dab03f54938811d9ef82bc653440defe4df9afeed20465e1f7`

```dockerfile
```

-	Layers:
	-	`sha256:963f8d31bdee4495b3066d09674e1e9122ecbc13f6347269f8f88f1e0c58668b`  
		Last Modified: Tue, 06 Oct 2026 01:19:22 GMT  
		Size: 2.2 MB (2246485 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8fd93ab9ff7c411ebbe94121e6c398104802bf62048c010190590a54bf649fdc`  
		Last Modified: Tue, 06 Oct 2026 01:19:21 GMT  
		Size: 16.5 KB (16529 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.10.12` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:615a9f13449c27c78140633e6fd0c2a2fb323d463a779ceb45431b992b865b1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.2 MB (215173559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fe3bd905e6616652c8b0624b66b3cc306cd941135c0e87d8539d1ef821ad692`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:19:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:19:45 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:19:45 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:19:45 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:19:45 GMT
ENV JULIA_VERSION=1.10.12
# Tue, 06 Oct 2026 01:19:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.10/julia-1.10.12-linux-x86_64.tar.gz'; 			sha256='b0c50dfe349d76ffc8580d24e0c0be623988a6d91ed57ad8b73c0137fd27bc0d'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.10/julia-1.10.12-linux-i686.tar.gz'; 			sha256='453d80cf0ce6f21041ff16d677e702c85557f28f078e8a91dd01582edb57708c'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.10/julia-1.10.12-linux-aarch64.tar.gz'; 			sha256='cc257b21967049642bfe17de1aff7dae17477eba4f423f98cb400c002080e5a2'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:19:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:19:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:19:45 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a90f82ec8f31f68c6852fb1920bbc8ae7aac60e800e85290297af4a42415e57`  
		Last Modified: Tue, 06 Oct 2026 01:20:14 GMT  
		Size: 6.2 MB (6156290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37e8bb0e98d812d9c745eca142a11d6d8e73ce044314b9332637ab91cfc79851`  
		Last Modified: Tue, 06 Oct 2026 01:20:17 GMT  
		Size: 178.8 MB (178816618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31922e9a6a188fce4e79fd69d8f591162d4e7f9f7d222cc11ae87ed2154d2190`  
		Last Modified: Tue, 06 Oct 2026 01:20:13 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.10.12` - unknown; unknown

```console
$ docker pull julia@sha256:5ee1b3a2bb9425994d7128d9c597243f75510f9cf7069143cc087c643ad6081d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2262175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11046cd4f467acf25233251b100b52c4a4ba708d3695bf270438791ab81f9aa8`

```dockerfile
```

-	Layers:
	-	`sha256:218a82a6146092bb42e1b9eae70d6ff90e34dbe1dce90d9631c01b6d5f6de398`  
		Last Modified: Tue, 06 Oct 2026 01:20:14 GMT  
		Size: 2.2 MB (2245527 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d68dbd2ce35a451bbc7c5a76b909af1725e3e631da907d2a51bdf69d76f3b673`  
		Last Modified: Tue, 06 Oct 2026 01:20:14 GMT  
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
$ docker pull julia@sha256:2b7928eb932b0cf1846483e853c22237df44e98dfb113d9f22fd5e6dde21e984
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
$ docker pull julia@sha256:bc33121a878e08f42671dbc453e67504a1d0d1cc27204b191d0cc825d7019e86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.6 MB (211645645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dda13de4d35e05d06e25ef49a3f212efb75a292520e700f71e73df729db68225`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:19:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:19:29 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:19:29 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:19:29 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:19:29 GMT
ENV JULIA_VERSION=1.10.12
# Tue, 06 Oct 2026 01:19:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.10/julia-1.10.12-linux-x86_64.tar.gz'; 			sha256='b0c50dfe349d76ffc8580d24e0c0be623988a6d91ed57ad8b73c0137fd27bc0d'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.10/julia-1.10.12-linux-i686.tar.gz'; 			sha256='453d80cf0ce6f21041ff16d677e702c85557f28f078e8a91dd01582edb57708c'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.10/julia-1.10.12-linux-aarch64.tar.gz'; 			sha256='cc257b21967049642bfe17de1aff7dae17477eba4f423f98cb400c002080e5a2'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:19:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:19:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:19:29 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce36f58a29dbd69a051afa506a612ac070d3f7185a8fcfc78012f1cb9aede3b7`  
		Last Modified: Tue, 06 Oct 2026 01:19:55 GMT  
		Size: 5.5 MB (5545975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01b09094eafe8a032fb9cbc3686d408711e8d5c0485dfcc5bd35f45e7fa81a80`  
		Last Modified: Tue, 06 Oct 2026 01:19:59 GMT  
		Size: 177.8 MB (177849978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:496544e01c0640f4fea5f81866ec4f03cfa89d145ca73906357145eeab58e480`  
		Last Modified: Tue, 06 Oct 2026 01:19:55 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.10.12-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:0047ff67e0c7c7117d15782c3cdcedf203de91c9ad15c009bfcc90db0df94ee6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2589626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e5b6018955cf1970ac20a621e9598c754ef01a284fc5d2c2bc8b20968983f5`

```dockerfile
```

-	Layers:
	-	`sha256:a05b66ee5dafffe82977f3cc98565a492d939e3f7d9860099664796129b51d53`  
		Last Modified: Tue, 06 Oct 2026 01:19:55 GMT  
		Size: 2.6 MB (2573667 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4c705760490edef38138f68abc10876ada0ba66fc82f4631af05eee463413c03`  
		Last Modified: Tue, 06 Oct 2026 01:19:55 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.10.12-bookworm` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:f76f47ff4464c584c8af85cd732514493fb783b82bf8eb27815c712907098a1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.3 MB (212308243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46664b830d544f435a81f510ca3e2cc450acf2d06dbd77e31b0ff89d636791af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:19:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:19:48 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:19:48 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:19:48 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:19:48 GMT
ENV JULIA_VERSION=1.10.12
# Tue, 06 Oct 2026 01:19:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.10/julia-1.10.12-linux-x86_64.tar.gz'; 			sha256='b0c50dfe349d76ffc8580d24e0c0be623988a6d91ed57ad8b73c0137fd27bc0d'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.10/julia-1.10.12-linux-i686.tar.gz'; 			sha256='453d80cf0ce6f21041ff16d677e702c85557f28f078e8a91dd01582edb57708c'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.10/julia-1.10.12-linux-aarch64.tar.gz'; 			sha256='cc257b21967049642bfe17de1aff7dae17477eba4f423f98cb400c002080e5a2'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:19:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:19:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:19:48 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30b6374879a5ecf589f9147c19feaf87d30daa47a272d8023e8c161f453ae4c0`  
		Last Modified: Tue, 06 Oct 2026 01:20:17 GMT  
		Size: 5.4 MB (5388854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ba33fd85eca4224936acd42b8b32d6c5e3eb93af79b64741e08d8139ec3c547`  
		Last Modified: Tue, 06 Oct 2026 01:20:21 GMT  
		Size: 178.8 MB (178781838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fedccc668e661721885e2ae8f80728c31a6e473e4a28c0ca688006ce2737563`  
		Last Modified: Tue, 06 Oct 2026 01:20:17 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.10.12-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:d42991aac6b09b0a36eeb62f9f3ad9d9688dbe3ade4a52ad3816ab5e92b39d14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2588738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34cbe6a662c25fbe19b4bcfe0983916748fa491e3e8b99cab9d39e9cdd63730d`

```dockerfile
```

-	Layers:
	-	`sha256:28265ee55c6f86024dcec958329871d5cd4b36a543538f788b49904b24a6918c`  
		Last Modified: Tue, 06 Oct 2026 01:20:17 GMT  
		Size: 2.6 MB (2572684 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9eee017cd65ee26ed3ebdf75ec5f40a608317e6b29cf8a228a20bd21b4eb4366`  
		Last Modified: Tue, 06 Oct 2026 01:20:17 GMT  
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
$ docker pull julia@sha256:2219c55bbeb76a01ff9a0fbfb87bc30b88e5b4e1d0479508b44908af3d33000d
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
$ docker pull julia@sha256:dca2e2044e10d3eb4e0a7e65be41291e6d727dc6beaf93c284f6a662d756c1f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.0 MB (213983416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd7ff376c78bd5e5b6c9bdbe30da50ad376152376ca6a84d33f3ca5c982dee69`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:17:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:18:56 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:18:56 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:18:56 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:18:56 GMT
ENV JULIA_VERSION=1.10.12
# Tue, 06 Oct 2026 01:18:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.10/julia-1.10.12-linux-x86_64.tar.gz'; 			sha256='b0c50dfe349d76ffc8580d24e0c0be623988a6d91ed57ad8b73c0137fd27bc0d'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.10/julia-1.10.12-linux-i686.tar.gz'; 			sha256='453d80cf0ce6f21041ff16d677e702c85557f28f078e8a91dd01582edb57708c'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.10/julia-1.10.12-linux-aarch64.tar.gz'; 			sha256='cc257b21967049642bfe17de1aff7dae17477eba4f423f98cb400c002080e5a2'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:18:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:18:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:18:56 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd297608a41213fe3555f95fbdfc099148be6da3d2aec9b0aa7b909d13e6f4c5`  
		Last Modified: Tue, 06 Oct 2026 01:18:29 GMT  
		Size: 6.2 MB (6249339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:141c17b6f52b720c7303de9f357ecea6a11be71df6932122a0cb768bfb0601c5`  
		Last Modified: Tue, 06 Oct 2026 01:19:26 GMT  
		Size: 177.9 MB (177890358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be00727b362a51bcd8c80488acb527a869b140af86e7737dafb2b3e85437ad1a`  
		Last Modified: Tue, 06 Oct 2026 01:19:22 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.10.12-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:0db7feb68f1dab74aedad9ac67db68134b7edd70023c478dcc6d368f62171a18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2263014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45bf41b2db64b0dab03f54938811d9ef82bc653440defe4df9afeed20465e1f7`

```dockerfile
```

-	Layers:
	-	`sha256:963f8d31bdee4495b3066d09674e1e9122ecbc13f6347269f8f88f1e0c58668b`  
		Last Modified: Tue, 06 Oct 2026 01:19:22 GMT  
		Size: 2.2 MB (2246485 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8fd93ab9ff7c411ebbe94121e6c398104802bf62048c010190590a54bf649fdc`  
		Last Modified: Tue, 06 Oct 2026 01:19:21 GMT  
		Size: 16.5 KB (16529 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.10.12-trixie` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:615a9f13449c27c78140633e6fd0c2a2fb323d463a779ceb45431b992b865b1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.2 MB (215173559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fe3bd905e6616652c8b0624b66b3cc306cd941135c0e87d8539d1ef821ad692`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:19:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:19:45 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:19:45 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:19:45 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:19:45 GMT
ENV JULIA_VERSION=1.10.12
# Tue, 06 Oct 2026 01:19:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.10/julia-1.10.12-linux-x86_64.tar.gz'; 			sha256='b0c50dfe349d76ffc8580d24e0c0be623988a6d91ed57ad8b73c0137fd27bc0d'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.10/julia-1.10.12-linux-i686.tar.gz'; 			sha256='453d80cf0ce6f21041ff16d677e702c85557f28f078e8a91dd01582edb57708c'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.10/julia-1.10.12-linux-aarch64.tar.gz'; 			sha256='cc257b21967049642bfe17de1aff7dae17477eba4f423f98cb400c002080e5a2'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:19:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:19:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:19:45 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a90f82ec8f31f68c6852fb1920bbc8ae7aac60e800e85290297af4a42415e57`  
		Last Modified: Tue, 06 Oct 2026 01:20:14 GMT  
		Size: 6.2 MB (6156290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37e8bb0e98d812d9c745eca142a11d6d8e73ce044314b9332637ab91cfc79851`  
		Last Modified: Tue, 06 Oct 2026 01:20:17 GMT  
		Size: 178.8 MB (178816618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31922e9a6a188fce4e79fd69d8f591162d4e7f9f7d222cc11ae87ed2154d2190`  
		Last Modified: Tue, 06 Oct 2026 01:20:13 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.10.12-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:5ee1b3a2bb9425994d7128d9c597243f75510f9cf7069143cc087c643ad6081d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2262175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11046cd4f467acf25233251b100b52c4a4ba708d3695bf270438791ab81f9aa8`

```dockerfile
```

-	Layers:
	-	`sha256:218a82a6146092bb42e1b9eae70d6ff90e34dbe1dce90d9631c01b6d5f6de398`  
		Last Modified: Tue, 06 Oct 2026 01:20:14 GMT  
		Size: 2.2 MB (2245527 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d68dbd2ce35a451bbc7c5a76b909af1725e3e631da907d2a51bdf69d76f3b673`  
		Last Modified: Tue, 06 Oct 2026 01:20:14 GMT  
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
$ docker pull julia@sha256:e95eff0cc8771f6009719d12138723b2cf688c031618ef3db87792aa4452e75a
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
$ docker pull julia@sha256:c28ea7ff06e78ebfebd59874986c9385c6afa31f0f906dd67516220111982ac3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.2 MB (325180491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4d6209cf4f0581c9f59959bc5bc95c1a3518a883a5dcfb9133575ccb5c73ed6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:19:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:19:49 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:19:49 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 06 Oct 2026 01:19:49 GMT
ENV JULIA_VERSION=1.11.9
# Tue, 06 Oct 2026 01:19:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.11/julia-1.11.9-linux-x86_64.tar.gz'; 			sha256='b36363356d7a05eaf8b7b9e7a91c710f6bd3d2940be4d4e6d14b9a9f2927de35'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.11/julia-1.11.9-linux-i686.tar.gz'; 			sha256='74df5031a93bce45e30582a71bf70f4ba983ff42f6eaf54eb9effb6e124604ca'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.11/julia-1.11.9-linux-aarch64.tar.gz'; 			sha256='a2071f0654d1d6af4381cba650b9f790f5f8bb7a570e51e378de8bcf67ff623e'; 			;; 		'ppc64el') 			url='https://julialang-s3.julialang.org/bin/linux/ppc64le/1.11/julia-1.11.9-linux-ppc64le.tar.gz'; 			sha256='3c25d5bf70d65da5859d65b34d17646dd1b3f1b50ea2090d13e63171d6dbf861'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:19:49 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7901a3909479021f73b726435e6274a5029304a2fac2ab0a509dde8505616c75`  
		Last Modified: Tue, 06 Oct 2026 01:20:28 GMT  
		Size: 6.2 MB (6249359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7af8dff4580fcac9211931847af00f5ff586c8cf8e10b8949e0b26ac17cc33d`  
		Last Modified: Tue, 06 Oct 2026 01:20:33 GMT  
		Size: 289.1 MB (289087411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b61ef3fc218148d668407d9f338ea208cef614a9d12427c09e73ec32f4d014a1`  
		Last Modified: Tue, 06 Oct 2026 01:20:27 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.11` - unknown; unknown

```console
$ docker pull julia@sha256:99e1546e79234e3b44169ed43fa398b778e719219c235c40954a0748a671b63e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2262410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cdc5e20065bf02bd4978caeedec60bfc6e1f0b64fe6952e86beb5778804671a`

```dockerfile
```

-	Layers:
	-	`sha256:f4081ab2bb2470e7c0ab59048e7c7a1e6f87b3220681bd62e5169c93056a0ce4`  
		Last Modified: Tue, 06 Oct 2026 01:20:27 GMT  
		Size: 2.2 MB (2245247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:639728833f5fbadbe07dca0c9bb322df581acc3d2f46d9ee2a50693edb026b40`  
		Last Modified: Tue, 06 Oct 2026 01:20:27 GMT  
		Size: 17.2 KB (17163 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.11` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:c6ad1f823a0f14ccc1f43ed22de2b7dc8497e188aae743b2464da02ca947d94d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.9 MB (340934271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9fd89f1c8f5a6f2a8d5fd1598468f85df386e9921edaaa96ea6d7cc8f982d9d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:19:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:20:03 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:20:03 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:20:03 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 06 Oct 2026 01:20:03 GMT
ENV JULIA_VERSION=1.11.9
# Tue, 06 Oct 2026 01:20:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.11/julia-1.11.9-linux-x86_64.tar.gz'; 			sha256='b36363356d7a05eaf8b7b9e7a91c710f6bd3d2940be4d4e6d14b9a9f2927de35'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.11/julia-1.11.9-linux-i686.tar.gz'; 			sha256='74df5031a93bce45e30582a71bf70f4ba983ff42f6eaf54eb9effb6e124604ca'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.11/julia-1.11.9-linux-aarch64.tar.gz'; 			sha256='a2071f0654d1d6af4381cba650b9f790f5f8bb7a570e51e378de8bcf67ff623e'; 			;; 		'ppc64el') 			url='https://julialang-s3.julialang.org/bin/linux/ppc64le/1.11/julia-1.11.9-linux-ppc64le.tar.gz'; 			sha256='3c25d5bf70d65da5859d65b34d17646dd1b3f1b50ea2090d13e63171d6dbf861'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:20:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:20:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:20:03 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed2b3d14839c913f1d1711932a384064bb70eaef8859b8aa52b5ccb4c059e362`  
		Last Modified: Tue, 06 Oct 2026 01:20:47 GMT  
		Size: 6.2 MB (6156231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08084ebc96f13ecc5405da6fde8a0ed40686aeda47e56228055641878772c143`  
		Last Modified: Tue, 06 Oct 2026 01:20:52 GMT  
		Size: 304.6 MB (304577386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c6c6fb54e11115b653030a8169830ebeb4e18511b71917176c09f3399f9785`  
		Last Modified: Tue, 06 Oct 2026 01:20:46 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.11` - unknown; unknown

```console
$ docker pull julia@sha256:97d569dc7751edafa6b9277c54ae8840766ef45964c3048ce76c1e7fdf2f830f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2262805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93518ca001b5e5cb98847a93448b96882085717a36425b707cdf0f3f750d0aff`

```dockerfile
```

-	Layers:
	-	`sha256:9676332c9cc5565fdffc0ef30b3164a4870365000ab34800c47954d20f3bc87b`  
		Last Modified: Tue, 06 Oct 2026 01:20:46 GMT  
		Size: 2.2 MB (2245523 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2cbb4d5b857151ef251e415b64835ead2dd78fe5f0f05ac89ac576d84d4a908`  
		Last Modified: Tue, 06 Oct 2026 01:20:46 GMT  
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
$ docker pull julia@sha256:c6966e40ffa6c0ca5d357662f85d029819ef2c637e0510620845ed82304ef676
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.1 MB (289088231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:726d1d4656a3949c4a731456f85d03204a0f2073c3dc673637ce5dd0bdfa6070`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:36:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:37:18 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:37:18 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:37:18 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 06 Oct 2026 01:37:18 GMT
ENV JULIA_VERSION=1.11.9
# Tue, 06 Oct 2026 01:37:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.11/julia-1.11.9-linux-x86_64.tar.gz'; 			sha256='b36363356d7a05eaf8b7b9e7a91c710f6bd3d2940be4d4e6d14b9a9f2927de35'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.11/julia-1.11.9-linux-i686.tar.gz'; 			sha256='74df5031a93bce45e30582a71bf70f4ba983ff42f6eaf54eb9effb6e124604ca'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.11/julia-1.11.9-linux-aarch64.tar.gz'; 			sha256='a2071f0654d1d6af4381cba650b9f790f5f8bb7a570e51e378de8bcf67ff623e'; 			;; 		'ppc64el') 			url='https://julialang-s3.julialang.org/bin/linux/ppc64le/1.11/julia-1.11.9-linux-ppc64le.tar.gz'; 			sha256='3c25d5bf70d65da5859d65b34d17646dd1b3f1b50ea2090d13e63171d6dbf861'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:37:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:37:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:37:19 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfe719df6284d25088307e2d61d2d07a0e184e3ef4a0e82517fbbc7eda6ec99b`  
		Last Modified: Tue, 06 Oct 2026 01:38:59 GMT  
		Size: 6.7 MB (6688400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dab5306b309a69960481cebcab98f21374a61322efcef1365f5d0c956f48210`  
		Last Modified: Tue, 06 Oct 2026 01:39:04 GMT  
		Size: 248.7 MB (248747866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84ba119932711b8c72c8ba223adbadd374892c904387db94290c37179f9b8335`  
		Last Modified: Tue, 06 Oct 2026 01:38:59 GMT  
		Size: 366.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.11` - unknown; unknown

```console
$ docker pull julia@sha256:47ffd53b25be448aeb005fd6ca1c5c1919e626365ab61240d490171ab70a7a6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2266185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a450298fbc9991dd4eb70ef9279a47665d98748eeacb7740695c38b73802e70d`

```dockerfile
```

-	Layers:
	-	`sha256:3d29bfc26b10c6f746a1cbb60e8d69d8b9078040dbb10ccf3807efd14e7cae61`  
		Last Modified: Tue, 06 Oct 2026 01:38:59 GMT  
		Size: 2.2 MB (2248976 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:331665be5ed14a6ffe0d44bfc881e6f90380b72a04d1a2badfbcad207fdbd1ec`  
		Last Modified: Tue, 06 Oct 2026 01:38:59 GMT  
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
$ docker pull julia@sha256:b98fe12bb98f15d04f6a6dc14d6d1719fd65bba208f7b6ef195eb76ae4362c0c
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
$ docker pull julia@sha256:2db5626f9ee7de1ef9cd747139ed4c3738ec2e029ee84c23f356564696e86f2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.9 MB (322864649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b5dcf9e768118886205176e77999ba969d23a663a078dd4af54fe57e418f7af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:18:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:19:52 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:19:52 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:19:52 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 06 Oct 2026 01:19:52 GMT
ENV JULIA_VERSION=1.11.9
# Tue, 06 Oct 2026 01:19:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.11/julia-1.11.9-linux-x86_64.tar.gz'; 			sha256='b36363356d7a05eaf8b7b9e7a91c710f6bd3d2940be4d4e6d14b9a9f2927de35'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.11/julia-1.11.9-linux-i686.tar.gz'; 			sha256='74df5031a93bce45e30582a71bf70f4ba983ff42f6eaf54eb9effb6e124604ca'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.11/julia-1.11.9-linux-aarch64.tar.gz'; 			sha256='a2071f0654d1d6af4381cba650b9f790f5f8bb7a570e51e378de8bcf67ff623e'; 			;; 		'ppc64el') 			url='https://julialang-s3.julialang.org/bin/linux/ppc64le/1.11/julia-1.11.9-linux-ppc64le.tar.gz'; 			sha256='3c25d5bf70d65da5859d65b34d17646dd1b3f1b50ea2090d13e63171d6dbf861'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:19:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:19:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:19:52 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5092deb5ebe781f6acb498a76ff4e2b696460f9ac410452e2f429b47db2905c`  
		Last Modified: Tue, 06 Oct 2026 01:19:18 GMT  
		Size: 5.5 MB (5545928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:129c6c64566c68f337dd8c0b3259a4797feeccfd61c289002a94617517f7ad7a`  
		Last Modified: Tue, 06 Oct 2026 01:20:42 GMT  
		Size: 289.1 MB (289069028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d689a02eddf6d5e40687c9ed10a5e65abae24aa6080d2c01c85b9fc77e1c01`  
		Last Modified: Tue, 06 Oct 2026 01:20:36 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.11-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:3ca089a48ecef23e8e75a3663b6dcd4f7c4a424b14dac5486fbcb2c0f744cdbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2589022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:307777d2b799a85c3b5a4e814f955c7ba53046528c3860e9bd93848581e9de94`

```dockerfile
```

-	Layers:
	-	`sha256:df5f81c19a777d6ac827553bdc13e4b6501db74a811181bee9b6ba33cfef76ff`  
		Last Modified: Tue, 06 Oct 2026 01:20:36 GMT  
		Size: 2.6 MB (2572431 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9bd5fa887410a6aa05e1ac0854d738957cccd45c123f5c6be620feb8fa8c43c8`  
		Last Modified: Tue, 06 Oct 2026 01:20:36 GMT  
		Size: 16.6 KB (16591 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.11-bookworm` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:de66552a9ab159b339298abc4036ab1c816b8e400947ebcae534b401051a5c6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.1 MB (338070791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a3187c6c5ce252194f4cfa3df72a65e279b46bee57c207a2ff5109a0070fb4e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:19:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:20:04 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:20:04 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:20:04 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 06 Oct 2026 01:20:04 GMT
ENV JULIA_VERSION=1.11.9
# Tue, 06 Oct 2026 01:20:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.11/julia-1.11.9-linux-x86_64.tar.gz'; 			sha256='b36363356d7a05eaf8b7b9e7a91c710f6bd3d2940be4d4e6d14b9a9f2927de35'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.11/julia-1.11.9-linux-i686.tar.gz'; 			sha256='74df5031a93bce45e30582a71bf70f4ba983ff42f6eaf54eb9effb6e124604ca'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.11/julia-1.11.9-linux-aarch64.tar.gz'; 			sha256='a2071f0654d1d6af4381cba650b9f790f5f8bb7a570e51e378de8bcf67ff623e'; 			;; 		'ppc64el') 			url='https://julialang-s3.julialang.org/bin/linux/ppc64le/1.11/julia-1.11.9-linux-ppc64le.tar.gz'; 			sha256='3c25d5bf70d65da5859d65b34d17646dd1b3f1b50ea2090d13e63171d6dbf861'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:20:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:20:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:20:04 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c55ffb0bf0de97426b35e79b540f5ac785652afc88f85d2c9ba1f04b3fa60d0e`  
		Last Modified: Tue, 06 Oct 2026 01:20:47 GMT  
		Size: 5.4 MB (5388866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc1848c9eb7c8ef4bf74edd721e158904ecebcb7d0f1286b2c85d62a6a70540c`  
		Last Modified: Tue, 06 Oct 2026 01:20:54 GMT  
		Size: 304.5 MB (304544376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa8d496d46e2b7e47b97b56c7635e73666201edefb0dc6784a5b89f387316edf`  
		Last Modified: Tue, 06 Oct 2026 01:20:47 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.11-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:512cf78adc7436bf95537d261fc3e92ff937230b13f26d47f2c646b50d9c0eb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2589368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88e39591e6a1e9e57f5c1efe3f339ae71c8dea978e41719a4118115693499a50`

```dockerfile
```

-	Layers:
	-	`sha256:f265483e9659584a08a043127f5607f49a5acb04ab4b7bbea1daf60dd1b50deb`  
		Last Modified: Tue, 06 Oct 2026 01:20:47 GMT  
		Size: 2.6 MB (2572682 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0aaaf07e1b96ef9c74dff79bad3b0883da355b92c3f257d0d88f86ad35e038f2`  
		Last Modified: Tue, 06 Oct 2026 01:20:47 GMT  
		Size: 16.7 KB (16686 bytes)  
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
$ docker pull julia@sha256:e23aa5c2ba2f0a4a971f17e3d1e4f068f9146501a0c6ed0b409ac303dfcbb3e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.9 MB (286885451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:592314870a18490081c3d074086935ea3426f92c3777aa4fb94f67625769e26c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:38:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:39:03 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:39:03 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:39:03 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 06 Oct 2026 01:39:03 GMT
ENV JULIA_VERSION=1.11.9
# Tue, 06 Oct 2026 01:39:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.11/julia-1.11.9-linux-x86_64.tar.gz'; 			sha256='b36363356d7a05eaf8b7b9e7a91c710f6bd3d2940be4d4e6d14b9a9f2927de35'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.11/julia-1.11.9-linux-i686.tar.gz'; 			sha256='74df5031a93bce45e30582a71bf70f4ba983ff42f6eaf54eb9effb6e124604ca'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.11/julia-1.11.9-linux-aarch64.tar.gz'; 			sha256='a2071f0654d1d6af4381cba650b9f790f5f8bb7a570e51e378de8bcf67ff623e'; 			;; 		'ppc64el') 			url='https://julialang-s3.julialang.org/bin/linux/ppc64le/1.11/julia-1.11.9-linux-ppc64le.tar.gz'; 			sha256='3c25d5bf70d65da5859d65b34d17646dd1b3f1b50ea2090d13e63171d6dbf861'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:39:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:39:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:39:12 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09ff9da9aacfe18e646a8da7dc483ee7ac1a8537dc3a621d2e0f96e1a824c80e`  
		Last Modified: Tue, 06 Oct 2026 01:40:54 GMT  
		Size: 6.1 MB (6082059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9da972d4024624b7b8969b5609572ae5a846e2cbe993e37652e26b00feadd65d`  
		Last Modified: Tue, 06 Oct 2026 01:40:59 GMT  
		Size: 248.7 MB (248710587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baa5ec4d8fd7a35f878e99d04832febd80c73f9f26ff8dbaacc29fd0d49a1c3e`  
		Last Modified: Tue, 06 Oct 2026 01:40:54 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.11-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:aa596ce6a5796433e08c8532a5ce32b71ba77fb557460468dbc86970f8c7da87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2593572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe1c3de4c8273079307ccc1b3f379bb18be39950609aa1030ca5078239e8c5f3`

```dockerfile
```

-	Layers:
	-	`sha256:1896f4fe8f1d83c0685a79e9615773b1badb28cd4697402bae12c6947dbb03d9`  
		Last Modified: Tue, 06 Oct 2026 01:40:54 GMT  
		Size: 2.6 MB (2576947 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b58ca1f4a0ec599a517898cb3ef1d73f90c443cd52c3730c988f47f7b3af0ae`  
		Last Modified: Tue, 06 Oct 2026 01:40:53 GMT  
		Size: 16.6 KB (16625 bytes)  
		MIME: application/vnd.in-toto+json

## `julia:1.11-trixie`

```console
$ docker pull julia@sha256:e836697bc1562012805171c291c1624a4ad27602955f5c84a0d97a22f675656d
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
$ docker pull julia@sha256:c28ea7ff06e78ebfebd59874986c9385c6afa31f0f906dd67516220111982ac3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.2 MB (325180491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4d6209cf4f0581c9f59959bc5bc95c1a3518a883a5dcfb9133575ccb5c73ed6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:19:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:19:49 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:19:49 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 06 Oct 2026 01:19:49 GMT
ENV JULIA_VERSION=1.11.9
# Tue, 06 Oct 2026 01:19:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.11/julia-1.11.9-linux-x86_64.tar.gz'; 			sha256='b36363356d7a05eaf8b7b9e7a91c710f6bd3d2940be4d4e6d14b9a9f2927de35'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.11/julia-1.11.9-linux-i686.tar.gz'; 			sha256='74df5031a93bce45e30582a71bf70f4ba983ff42f6eaf54eb9effb6e124604ca'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.11/julia-1.11.9-linux-aarch64.tar.gz'; 			sha256='a2071f0654d1d6af4381cba650b9f790f5f8bb7a570e51e378de8bcf67ff623e'; 			;; 		'ppc64el') 			url='https://julialang-s3.julialang.org/bin/linux/ppc64le/1.11/julia-1.11.9-linux-ppc64le.tar.gz'; 			sha256='3c25d5bf70d65da5859d65b34d17646dd1b3f1b50ea2090d13e63171d6dbf861'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:19:49 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7901a3909479021f73b726435e6274a5029304a2fac2ab0a509dde8505616c75`  
		Last Modified: Tue, 06 Oct 2026 01:20:28 GMT  
		Size: 6.2 MB (6249359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7af8dff4580fcac9211931847af00f5ff586c8cf8e10b8949e0b26ac17cc33d`  
		Last Modified: Tue, 06 Oct 2026 01:20:33 GMT  
		Size: 289.1 MB (289087411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b61ef3fc218148d668407d9f338ea208cef614a9d12427c09e73ec32f4d014a1`  
		Last Modified: Tue, 06 Oct 2026 01:20:27 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.11-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:99e1546e79234e3b44169ed43fa398b778e719219c235c40954a0748a671b63e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2262410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cdc5e20065bf02bd4978caeedec60bfc6e1f0b64fe6952e86beb5778804671a`

```dockerfile
```

-	Layers:
	-	`sha256:f4081ab2bb2470e7c0ab59048e7c7a1e6f87b3220681bd62e5169c93056a0ce4`  
		Last Modified: Tue, 06 Oct 2026 01:20:27 GMT  
		Size: 2.2 MB (2245247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:639728833f5fbadbe07dca0c9bb322df581acc3d2f46d9ee2a50693edb026b40`  
		Last Modified: Tue, 06 Oct 2026 01:20:27 GMT  
		Size: 17.2 KB (17163 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.11-trixie` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:c6ad1f823a0f14ccc1f43ed22de2b7dc8497e188aae743b2464da02ca947d94d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.9 MB (340934271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9fd89f1c8f5a6f2a8d5fd1598468f85df386e9921edaaa96ea6d7cc8f982d9d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:19:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:20:03 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:20:03 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:20:03 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 06 Oct 2026 01:20:03 GMT
ENV JULIA_VERSION=1.11.9
# Tue, 06 Oct 2026 01:20:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.11/julia-1.11.9-linux-x86_64.tar.gz'; 			sha256='b36363356d7a05eaf8b7b9e7a91c710f6bd3d2940be4d4e6d14b9a9f2927de35'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.11/julia-1.11.9-linux-i686.tar.gz'; 			sha256='74df5031a93bce45e30582a71bf70f4ba983ff42f6eaf54eb9effb6e124604ca'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.11/julia-1.11.9-linux-aarch64.tar.gz'; 			sha256='a2071f0654d1d6af4381cba650b9f790f5f8bb7a570e51e378de8bcf67ff623e'; 			;; 		'ppc64el') 			url='https://julialang-s3.julialang.org/bin/linux/ppc64le/1.11/julia-1.11.9-linux-ppc64le.tar.gz'; 			sha256='3c25d5bf70d65da5859d65b34d17646dd1b3f1b50ea2090d13e63171d6dbf861'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:20:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:20:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:20:03 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed2b3d14839c913f1d1711932a384064bb70eaef8859b8aa52b5ccb4c059e362`  
		Last Modified: Tue, 06 Oct 2026 01:20:47 GMT  
		Size: 6.2 MB (6156231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08084ebc96f13ecc5405da6fde8a0ed40686aeda47e56228055641878772c143`  
		Last Modified: Tue, 06 Oct 2026 01:20:52 GMT  
		Size: 304.6 MB (304577386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c6c6fb54e11115b653030a8169830ebeb4e18511b71917176c09f3399f9785`  
		Last Modified: Tue, 06 Oct 2026 01:20:46 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.11-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:97d569dc7751edafa6b9277c54ae8840766ef45964c3048ce76c1e7fdf2f830f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2262805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93518ca001b5e5cb98847a93448b96882085717a36425b707cdf0f3f750d0aff`

```dockerfile
```

-	Layers:
	-	`sha256:9676332c9cc5565fdffc0ef30b3164a4870365000ab34800c47954d20f3bc87b`  
		Last Modified: Tue, 06 Oct 2026 01:20:46 GMT  
		Size: 2.2 MB (2245523 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2cbb4d5b857151ef251e415b64835ead2dd78fe5f0f05ac89ac576d84d4a908`  
		Last Modified: Tue, 06 Oct 2026 01:20:46 GMT  
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
$ docker pull julia@sha256:c6966e40ffa6c0ca5d357662f85d029819ef2c637e0510620845ed82304ef676
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.1 MB (289088231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:726d1d4656a3949c4a731456f85d03204a0f2073c3dc673637ce5dd0bdfa6070`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:36:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:37:18 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:37:18 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:37:18 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 06 Oct 2026 01:37:18 GMT
ENV JULIA_VERSION=1.11.9
# Tue, 06 Oct 2026 01:37:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.11/julia-1.11.9-linux-x86_64.tar.gz'; 			sha256='b36363356d7a05eaf8b7b9e7a91c710f6bd3d2940be4d4e6d14b9a9f2927de35'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.11/julia-1.11.9-linux-i686.tar.gz'; 			sha256='74df5031a93bce45e30582a71bf70f4ba983ff42f6eaf54eb9effb6e124604ca'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.11/julia-1.11.9-linux-aarch64.tar.gz'; 			sha256='a2071f0654d1d6af4381cba650b9f790f5f8bb7a570e51e378de8bcf67ff623e'; 			;; 		'ppc64el') 			url='https://julialang-s3.julialang.org/bin/linux/ppc64le/1.11/julia-1.11.9-linux-ppc64le.tar.gz'; 			sha256='3c25d5bf70d65da5859d65b34d17646dd1b3f1b50ea2090d13e63171d6dbf861'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:37:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:37:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:37:19 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfe719df6284d25088307e2d61d2d07a0e184e3ef4a0e82517fbbc7eda6ec99b`  
		Last Modified: Tue, 06 Oct 2026 01:38:59 GMT  
		Size: 6.7 MB (6688400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dab5306b309a69960481cebcab98f21374a61322efcef1365f5d0c956f48210`  
		Last Modified: Tue, 06 Oct 2026 01:39:04 GMT  
		Size: 248.7 MB (248747866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84ba119932711b8c72c8ba223adbadd374892c904387db94290c37179f9b8335`  
		Last Modified: Tue, 06 Oct 2026 01:38:59 GMT  
		Size: 366.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.11-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:47ffd53b25be448aeb005fd6ca1c5c1919e626365ab61240d490171ab70a7a6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2266185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a450298fbc9991dd4eb70ef9279a47665d98748eeacb7740695c38b73802e70d`

```dockerfile
```

-	Layers:
	-	`sha256:3d29bfc26b10c6f746a1cbb60e8d69d8b9078040dbb10ccf3807efd14e7cae61`  
		Last Modified: Tue, 06 Oct 2026 01:38:59 GMT  
		Size: 2.2 MB (2248976 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:331665be5ed14a6ffe0d44bfc881e6f90380b72a04d1a2badfbcad207fdbd1ec`  
		Last Modified: Tue, 06 Oct 2026 01:38:59 GMT  
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
$ docker pull julia@sha256:e95eff0cc8771f6009719d12138723b2cf688c031618ef3db87792aa4452e75a
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
$ docker pull julia@sha256:c28ea7ff06e78ebfebd59874986c9385c6afa31f0f906dd67516220111982ac3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.2 MB (325180491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4d6209cf4f0581c9f59959bc5bc95c1a3518a883a5dcfb9133575ccb5c73ed6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:19:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:19:49 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:19:49 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 06 Oct 2026 01:19:49 GMT
ENV JULIA_VERSION=1.11.9
# Tue, 06 Oct 2026 01:19:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.11/julia-1.11.9-linux-x86_64.tar.gz'; 			sha256='b36363356d7a05eaf8b7b9e7a91c710f6bd3d2940be4d4e6d14b9a9f2927de35'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.11/julia-1.11.9-linux-i686.tar.gz'; 			sha256='74df5031a93bce45e30582a71bf70f4ba983ff42f6eaf54eb9effb6e124604ca'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.11/julia-1.11.9-linux-aarch64.tar.gz'; 			sha256='a2071f0654d1d6af4381cba650b9f790f5f8bb7a570e51e378de8bcf67ff623e'; 			;; 		'ppc64el') 			url='https://julialang-s3.julialang.org/bin/linux/ppc64le/1.11/julia-1.11.9-linux-ppc64le.tar.gz'; 			sha256='3c25d5bf70d65da5859d65b34d17646dd1b3f1b50ea2090d13e63171d6dbf861'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:19:49 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7901a3909479021f73b726435e6274a5029304a2fac2ab0a509dde8505616c75`  
		Last Modified: Tue, 06 Oct 2026 01:20:28 GMT  
		Size: 6.2 MB (6249359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7af8dff4580fcac9211931847af00f5ff586c8cf8e10b8949e0b26ac17cc33d`  
		Last Modified: Tue, 06 Oct 2026 01:20:33 GMT  
		Size: 289.1 MB (289087411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b61ef3fc218148d668407d9f338ea208cef614a9d12427c09e73ec32f4d014a1`  
		Last Modified: Tue, 06 Oct 2026 01:20:27 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.11.9` - unknown; unknown

```console
$ docker pull julia@sha256:99e1546e79234e3b44169ed43fa398b778e719219c235c40954a0748a671b63e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2262410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cdc5e20065bf02bd4978caeedec60bfc6e1f0b64fe6952e86beb5778804671a`

```dockerfile
```

-	Layers:
	-	`sha256:f4081ab2bb2470e7c0ab59048e7c7a1e6f87b3220681bd62e5169c93056a0ce4`  
		Last Modified: Tue, 06 Oct 2026 01:20:27 GMT  
		Size: 2.2 MB (2245247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:639728833f5fbadbe07dca0c9bb322df581acc3d2f46d9ee2a50693edb026b40`  
		Last Modified: Tue, 06 Oct 2026 01:20:27 GMT  
		Size: 17.2 KB (17163 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.11.9` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:c6ad1f823a0f14ccc1f43ed22de2b7dc8497e188aae743b2464da02ca947d94d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.9 MB (340934271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9fd89f1c8f5a6f2a8d5fd1598468f85df386e9921edaaa96ea6d7cc8f982d9d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:19:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:20:03 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:20:03 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:20:03 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 06 Oct 2026 01:20:03 GMT
ENV JULIA_VERSION=1.11.9
# Tue, 06 Oct 2026 01:20:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.11/julia-1.11.9-linux-x86_64.tar.gz'; 			sha256='b36363356d7a05eaf8b7b9e7a91c710f6bd3d2940be4d4e6d14b9a9f2927de35'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.11/julia-1.11.9-linux-i686.tar.gz'; 			sha256='74df5031a93bce45e30582a71bf70f4ba983ff42f6eaf54eb9effb6e124604ca'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.11/julia-1.11.9-linux-aarch64.tar.gz'; 			sha256='a2071f0654d1d6af4381cba650b9f790f5f8bb7a570e51e378de8bcf67ff623e'; 			;; 		'ppc64el') 			url='https://julialang-s3.julialang.org/bin/linux/ppc64le/1.11/julia-1.11.9-linux-ppc64le.tar.gz'; 			sha256='3c25d5bf70d65da5859d65b34d17646dd1b3f1b50ea2090d13e63171d6dbf861'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:20:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:20:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:20:03 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed2b3d14839c913f1d1711932a384064bb70eaef8859b8aa52b5ccb4c059e362`  
		Last Modified: Tue, 06 Oct 2026 01:20:47 GMT  
		Size: 6.2 MB (6156231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08084ebc96f13ecc5405da6fde8a0ed40686aeda47e56228055641878772c143`  
		Last Modified: Tue, 06 Oct 2026 01:20:52 GMT  
		Size: 304.6 MB (304577386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c6c6fb54e11115b653030a8169830ebeb4e18511b71917176c09f3399f9785`  
		Last Modified: Tue, 06 Oct 2026 01:20:46 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.11.9` - unknown; unknown

```console
$ docker pull julia@sha256:97d569dc7751edafa6b9277c54ae8840766ef45964c3048ce76c1e7fdf2f830f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2262805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93518ca001b5e5cb98847a93448b96882085717a36425b707cdf0f3f750d0aff`

```dockerfile
```

-	Layers:
	-	`sha256:9676332c9cc5565fdffc0ef30b3164a4870365000ab34800c47954d20f3bc87b`  
		Last Modified: Tue, 06 Oct 2026 01:20:46 GMT  
		Size: 2.2 MB (2245523 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2cbb4d5b857151ef251e415b64835ead2dd78fe5f0f05ac89ac576d84d4a908`  
		Last Modified: Tue, 06 Oct 2026 01:20:46 GMT  
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
$ docker pull julia@sha256:c6966e40ffa6c0ca5d357662f85d029819ef2c637e0510620845ed82304ef676
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.1 MB (289088231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:726d1d4656a3949c4a731456f85d03204a0f2073c3dc673637ce5dd0bdfa6070`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:36:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:37:18 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:37:18 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:37:18 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 06 Oct 2026 01:37:18 GMT
ENV JULIA_VERSION=1.11.9
# Tue, 06 Oct 2026 01:37:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.11/julia-1.11.9-linux-x86_64.tar.gz'; 			sha256='b36363356d7a05eaf8b7b9e7a91c710f6bd3d2940be4d4e6d14b9a9f2927de35'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.11/julia-1.11.9-linux-i686.tar.gz'; 			sha256='74df5031a93bce45e30582a71bf70f4ba983ff42f6eaf54eb9effb6e124604ca'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.11/julia-1.11.9-linux-aarch64.tar.gz'; 			sha256='a2071f0654d1d6af4381cba650b9f790f5f8bb7a570e51e378de8bcf67ff623e'; 			;; 		'ppc64el') 			url='https://julialang-s3.julialang.org/bin/linux/ppc64le/1.11/julia-1.11.9-linux-ppc64le.tar.gz'; 			sha256='3c25d5bf70d65da5859d65b34d17646dd1b3f1b50ea2090d13e63171d6dbf861'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:37:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:37:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:37:19 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfe719df6284d25088307e2d61d2d07a0e184e3ef4a0e82517fbbc7eda6ec99b`  
		Last Modified: Tue, 06 Oct 2026 01:38:59 GMT  
		Size: 6.7 MB (6688400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dab5306b309a69960481cebcab98f21374a61322efcef1365f5d0c956f48210`  
		Last Modified: Tue, 06 Oct 2026 01:39:04 GMT  
		Size: 248.7 MB (248747866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84ba119932711b8c72c8ba223adbadd374892c904387db94290c37179f9b8335`  
		Last Modified: Tue, 06 Oct 2026 01:38:59 GMT  
		Size: 366.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.11.9` - unknown; unknown

```console
$ docker pull julia@sha256:47ffd53b25be448aeb005fd6ca1c5c1919e626365ab61240d490171ab70a7a6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2266185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a450298fbc9991dd4eb70ef9279a47665d98748eeacb7740695c38b73802e70d`

```dockerfile
```

-	Layers:
	-	`sha256:3d29bfc26b10c6f746a1cbb60e8d69d8b9078040dbb10ccf3807efd14e7cae61`  
		Last Modified: Tue, 06 Oct 2026 01:38:59 GMT  
		Size: 2.2 MB (2248976 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:331665be5ed14a6ffe0d44bfc881e6f90380b72a04d1a2badfbcad207fdbd1ec`  
		Last Modified: Tue, 06 Oct 2026 01:38:59 GMT  
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
$ docker pull julia@sha256:b98fe12bb98f15d04f6a6dc14d6d1719fd65bba208f7b6ef195eb76ae4362c0c
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
$ docker pull julia@sha256:2db5626f9ee7de1ef9cd747139ed4c3738ec2e029ee84c23f356564696e86f2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.9 MB (322864649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b5dcf9e768118886205176e77999ba969d23a663a078dd4af54fe57e418f7af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:18:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:19:52 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:19:52 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:19:52 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 06 Oct 2026 01:19:52 GMT
ENV JULIA_VERSION=1.11.9
# Tue, 06 Oct 2026 01:19:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.11/julia-1.11.9-linux-x86_64.tar.gz'; 			sha256='b36363356d7a05eaf8b7b9e7a91c710f6bd3d2940be4d4e6d14b9a9f2927de35'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.11/julia-1.11.9-linux-i686.tar.gz'; 			sha256='74df5031a93bce45e30582a71bf70f4ba983ff42f6eaf54eb9effb6e124604ca'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.11/julia-1.11.9-linux-aarch64.tar.gz'; 			sha256='a2071f0654d1d6af4381cba650b9f790f5f8bb7a570e51e378de8bcf67ff623e'; 			;; 		'ppc64el') 			url='https://julialang-s3.julialang.org/bin/linux/ppc64le/1.11/julia-1.11.9-linux-ppc64le.tar.gz'; 			sha256='3c25d5bf70d65da5859d65b34d17646dd1b3f1b50ea2090d13e63171d6dbf861'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:19:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:19:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:19:52 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5092deb5ebe781f6acb498a76ff4e2b696460f9ac410452e2f429b47db2905c`  
		Last Modified: Tue, 06 Oct 2026 01:19:18 GMT  
		Size: 5.5 MB (5545928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:129c6c64566c68f337dd8c0b3259a4797feeccfd61c289002a94617517f7ad7a`  
		Last Modified: Tue, 06 Oct 2026 01:20:42 GMT  
		Size: 289.1 MB (289069028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d689a02eddf6d5e40687c9ed10a5e65abae24aa6080d2c01c85b9fc77e1c01`  
		Last Modified: Tue, 06 Oct 2026 01:20:36 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.11.9-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:3ca089a48ecef23e8e75a3663b6dcd4f7c4a424b14dac5486fbcb2c0f744cdbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2589022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:307777d2b799a85c3b5a4e814f955c7ba53046528c3860e9bd93848581e9de94`

```dockerfile
```

-	Layers:
	-	`sha256:df5f81c19a777d6ac827553bdc13e4b6501db74a811181bee9b6ba33cfef76ff`  
		Last Modified: Tue, 06 Oct 2026 01:20:36 GMT  
		Size: 2.6 MB (2572431 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9bd5fa887410a6aa05e1ac0854d738957cccd45c123f5c6be620feb8fa8c43c8`  
		Last Modified: Tue, 06 Oct 2026 01:20:36 GMT  
		Size: 16.6 KB (16591 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.11.9-bookworm` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:de66552a9ab159b339298abc4036ab1c816b8e400947ebcae534b401051a5c6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.1 MB (338070791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a3187c6c5ce252194f4cfa3df72a65e279b46bee57c207a2ff5109a0070fb4e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:19:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:20:04 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:20:04 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:20:04 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 06 Oct 2026 01:20:04 GMT
ENV JULIA_VERSION=1.11.9
# Tue, 06 Oct 2026 01:20:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.11/julia-1.11.9-linux-x86_64.tar.gz'; 			sha256='b36363356d7a05eaf8b7b9e7a91c710f6bd3d2940be4d4e6d14b9a9f2927de35'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.11/julia-1.11.9-linux-i686.tar.gz'; 			sha256='74df5031a93bce45e30582a71bf70f4ba983ff42f6eaf54eb9effb6e124604ca'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.11/julia-1.11.9-linux-aarch64.tar.gz'; 			sha256='a2071f0654d1d6af4381cba650b9f790f5f8bb7a570e51e378de8bcf67ff623e'; 			;; 		'ppc64el') 			url='https://julialang-s3.julialang.org/bin/linux/ppc64le/1.11/julia-1.11.9-linux-ppc64le.tar.gz'; 			sha256='3c25d5bf70d65da5859d65b34d17646dd1b3f1b50ea2090d13e63171d6dbf861'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:20:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:20:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:20:04 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c55ffb0bf0de97426b35e79b540f5ac785652afc88f85d2c9ba1f04b3fa60d0e`  
		Last Modified: Tue, 06 Oct 2026 01:20:47 GMT  
		Size: 5.4 MB (5388866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc1848c9eb7c8ef4bf74edd721e158904ecebcb7d0f1286b2c85d62a6a70540c`  
		Last Modified: Tue, 06 Oct 2026 01:20:54 GMT  
		Size: 304.5 MB (304544376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa8d496d46e2b7e47b97b56c7635e73666201edefb0dc6784a5b89f387316edf`  
		Last Modified: Tue, 06 Oct 2026 01:20:47 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.11.9-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:512cf78adc7436bf95537d261fc3e92ff937230b13f26d47f2c646b50d9c0eb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2589368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88e39591e6a1e9e57f5c1efe3f339ae71c8dea978e41719a4118115693499a50`

```dockerfile
```

-	Layers:
	-	`sha256:f265483e9659584a08a043127f5607f49a5acb04ab4b7bbea1daf60dd1b50deb`  
		Last Modified: Tue, 06 Oct 2026 01:20:47 GMT  
		Size: 2.6 MB (2572682 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0aaaf07e1b96ef9c74dff79bad3b0883da355b92c3f257d0d88f86ad35e038f2`  
		Last Modified: Tue, 06 Oct 2026 01:20:47 GMT  
		Size: 16.7 KB (16686 bytes)  
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
$ docker pull julia@sha256:e23aa5c2ba2f0a4a971f17e3d1e4f068f9146501a0c6ed0b409ac303dfcbb3e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.9 MB (286885451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:592314870a18490081c3d074086935ea3426f92c3777aa4fb94f67625769e26c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:38:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:39:03 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:39:03 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:39:03 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 06 Oct 2026 01:39:03 GMT
ENV JULIA_VERSION=1.11.9
# Tue, 06 Oct 2026 01:39:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.11/julia-1.11.9-linux-x86_64.tar.gz'; 			sha256='b36363356d7a05eaf8b7b9e7a91c710f6bd3d2940be4d4e6d14b9a9f2927de35'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.11/julia-1.11.9-linux-i686.tar.gz'; 			sha256='74df5031a93bce45e30582a71bf70f4ba983ff42f6eaf54eb9effb6e124604ca'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.11/julia-1.11.9-linux-aarch64.tar.gz'; 			sha256='a2071f0654d1d6af4381cba650b9f790f5f8bb7a570e51e378de8bcf67ff623e'; 			;; 		'ppc64el') 			url='https://julialang-s3.julialang.org/bin/linux/ppc64le/1.11/julia-1.11.9-linux-ppc64le.tar.gz'; 			sha256='3c25d5bf70d65da5859d65b34d17646dd1b3f1b50ea2090d13e63171d6dbf861'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:39:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:39:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:39:12 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09ff9da9aacfe18e646a8da7dc483ee7ac1a8537dc3a621d2e0f96e1a824c80e`  
		Last Modified: Tue, 06 Oct 2026 01:40:54 GMT  
		Size: 6.1 MB (6082059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9da972d4024624b7b8969b5609572ae5a846e2cbe993e37652e26b00feadd65d`  
		Last Modified: Tue, 06 Oct 2026 01:40:59 GMT  
		Size: 248.7 MB (248710587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baa5ec4d8fd7a35f878e99d04832febd80c73f9f26ff8dbaacc29fd0d49a1c3e`  
		Last Modified: Tue, 06 Oct 2026 01:40:54 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.11.9-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:aa596ce6a5796433e08c8532a5ce32b71ba77fb557460468dbc86970f8c7da87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2593572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe1c3de4c8273079307ccc1b3f379bb18be39950609aa1030ca5078239e8c5f3`

```dockerfile
```

-	Layers:
	-	`sha256:1896f4fe8f1d83c0685a79e9615773b1badb28cd4697402bae12c6947dbb03d9`  
		Last Modified: Tue, 06 Oct 2026 01:40:54 GMT  
		Size: 2.6 MB (2576947 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b58ca1f4a0ec599a517898cb3ef1d73f90c443cd52c3730c988f47f7b3af0ae`  
		Last Modified: Tue, 06 Oct 2026 01:40:53 GMT  
		Size: 16.6 KB (16625 bytes)  
		MIME: application/vnd.in-toto+json

## `julia:1.11.9-trixie`

```console
$ docker pull julia@sha256:e836697bc1562012805171c291c1624a4ad27602955f5c84a0d97a22f675656d
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
$ docker pull julia@sha256:c28ea7ff06e78ebfebd59874986c9385c6afa31f0f906dd67516220111982ac3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.2 MB (325180491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4d6209cf4f0581c9f59959bc5bc95c1a3518a883a5dcfb9133575ccb5c73ed6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:19:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:19:49 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:19:49 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 06 Oct 2026 01:19:49 GMT
ENV JULIA_VERSION=1.11.9
# Tue, 06 Oct 2026 01:19:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.11/julia-1.11.9-linux-x86_64.tar.gz'; 			sha256='b36363356d7a05eaf8b7b9e7a91c710f6bd3d2940be4d4e6d14b9a9f2927de35'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.11/julia-1.11.9-linux-i686.tar.gz'; 			sha256='74df5031a93bce45e30582a71bf70f4ba983ff42f6eaf54eb9effb6e124604ca'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.11/julia-1.11.9-linux-aarch64.tar.gz'; 			sha256='a2071f0654d1d6af4381cba650b9f790f5f8bb7a570e51e378de8bcf67ff623e'; 			;; 		'ppc64el') 			url='https://julialang-s3.julialang.org/bin/linux/ppc64le/1.11/julia-1.11.9-linux-ppc64le.tar.gz'; 			sha256='3c25d5bf70d65da5859d65b34d17646dd1b3f1b50ea2090d13e63171d6dbf861'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:19:49 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7901a3909479021f73b726435e6274a5029304a2fac2ab0a509dde8505616c75`  
		Last Modified: Tue, 06 Oct 2026 01:20:28 GMT  
		Size: 6.2 MB (6249359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7af8dff4580fcac9211931847af00f5ff586c8cf8e10b8949e0b26ac17cc33d`  
		Last Modified: Tue, 06 Oct 2026 01:20:33 GMT  
		Size: 289.1 MB (289087411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b61ef3fc218148d668407d9f338ea208cef614a9d12427c09e73ec32f4d014a1`  
		Last Modified: Tue, 06 Oct 2026 01:20:27 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.11.9-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:99e1546e79234e3b44169ed43fa398b778e719219c235c40954a0748a671b63e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2262410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cdc5e20065bf02bd4978caeedec60bfc6e1f0b64fe6952e86beb5778804671a`

```dockerfile
```

-	Layers:
	-	`sha256:f4081ab2bb2470e7c0ab59048e7c7a1e6f87b3220681bd62e5169c93056a0ce4`  
		Last Modified: Tue, 06 Oct 2026 01:20:27 GMT  
		Size: 2.2 MB (2245247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:639728833f5fbadbe07dca0c9bb322df581acc3d2f46d9ee2a50693edb026b40`  
		Last Modified: Tue, 06 Oct 2026 01:20:27 GMT  
		Size: 17.2 KB (17163 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.11.9-trixie` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:c6ad1f823a0f14ccc1f43ed22de2b7dc8497e188aae743b2464da02ca947d94d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.9 MB (340934271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9fd89f1c8f5a6f2a8d5fd1598468f85df386e9921edaaa96ea6d7cc8f982d9d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:19:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:20:03 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:20:03 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:20:03 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 06 Oct 2026 01:20:03 GMT
ENV JULIA_VERSION=1.11.9
# Tue, 06 Oct 2026 01:20:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.11/julia-1.11.9-linux-x86_64.tar.gz'; 			sha256='b36363356d7a05eaf8b7b9e7a91c710f6bd3d2940be4d4e6d14b9a9f2927de35'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.11/julia-1.11.9-linux-i686.tar.gz'; 			sha256='74df5031a93bce45e30582a71bf70f4ba983ff42f6eaf54eb9effb6e124604ca'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.11/julia-1.11.9-linux-aarch64.tar.gz'; 			sha256='a2071f0654d1d6af4381cba650b9f790f5f8bb7a570e51e378de8bcf67ff623e'; 			;; 		'ppc64el') 			url='https://julialang-s3.julialang.org/bin/linux/ppc64le/1.11/julia-1.11.9-linux-ppc64le.tar.gz'; 			sha256='3c25d5bf70d65da5859d65b34d17646dd1b3f1b50ea2090d13e63171d6dbf861'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:20:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:20:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:20:03 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed2b3d14839c913f1d1711932a384064bb70eaef8859b8aa52b5ccb4c059e362`  
		Last Modified: Tue, 06 Oct 2026 01:20:47 GMT  
		Size: 6.2 MB (6156231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08084ebc96f13ecc5405da6fde8a0ed40686aeda47e56228055641878772c143`  
		Last Modified: Tue, 06 Oct 2026 01:20:52 GMT  
		Size: 304.6 MB (304577386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c6c6fb54e11115b653030a8169830ebeb4e18511b71917176c09f3399f9785`  
		Last Modified: Tue, 06 Oct 2026 01:20:46 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.11.9-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:97d569dc7751edafa6b9277c54ae8840766ef45964c3048ce76c1e7fdf2f830f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2262805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93518ca001b5e5cb98847a93448b96882085717a36425b707cdf0f3f750d0aff`

```dockerfile
```

-	Layers:
	-	`sha256:9676332c9cc5565fdffc0ef30b3164a4870365000ab34800c47954d20f3bc87b`  
		Last Modified: Tue, 06 Oct 2026 01:20:46 GMT  
		Size: 2.2 MB (2245523 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2cbb4d5b857151ef251e415b64835ead2dd78fe5f0f05ac89ac576d84d4a908`  
		Last Modified: Tue, 06 Oct 2026 01:20:46 GMT  
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
$ docker pull julia@sha256:c6966e40ffa6c0ca5d357662f85d029819ef2c637e0510620845ed82304ef676
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.1 MB (289088231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:726d1d4656a3949c4a731456f85d03204a0f2073c3dc673637ce5dd0bdfa6070`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:36:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:37:18 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:37:18 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:37:18 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 06 Oct 2026 01:37:18 GMT
ENV JULIA_VERSION=1.11.9
# Tue, 06 Oct 2026 01:37:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.11/julia-1.11.9-linux-x86_64.tar.gz'; 			sha256='b36363356d7a05eaf8b7b9e7a91c710f6bd3d2940be4d4e6d14b9a9f2927de35'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.11/julia-1.11.9-linux-i686.tar.gz'; 			sha256='74df5031a93bce45e30582a71bf70f4ba983ff42f6eaf54eb9effb6e124604ca'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.11/julia-1.11.9-linux-aarch64.tar.gz'; 			sha256='a2071f0654d1d6af4381cba650b9f790f5f8bb7a570e51e378de8bcf67ff623e'; 			;; 		'ppc64el') 			url='https://julialang-s3.julialang.org/bin/linux/ppc64le/1.11/julia-1.11.9-linux-ppc64le.tar.gz'; 			sha256='3c25d5bf70d65da5859d65b34d17646dd1b3f1b50ea2090d13e63171d6dbf861'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:37:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:37:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:37:19 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfe719df6284d25088307e2d61d2d07a0e184e3ef4a0e82517fbbc7eda6ec99b`  
		Last Modified: Tue, 06 Oct 2026 01:38:59 GMT  
		Size: 6.7 MB (6688400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dab5306b309a69960481cebcab98f21374a61322efcef1365f5d0c956f48210`  
		Last Modified: Tue, 06 Oct 2026 01:39:04 GMT  
		Size: 248.7 MB (248747866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84ba119932711b8c72c8ba223adbadd374892c904387db94290c37179f9b8335`  
		Last Modified: Tue, 06 Oct 2026 01:38:59 GMT  
		Size: 366.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.11.9-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:47ffd53b25be448aeb005fd6ca1c5c1919e626365ab61240d490171ab70a7a6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2266185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a450298fbc9991dd4eb70ef9279a47665d98748eeacb7740695c38b73802e70d`

```dockerfile
```

-	Layers:
	-	`sha256:3d29bfc26b10c6f746a1cbb60e8d69d8b9078040dbb10ccf3807efd14e7cae61`  
		Last Modified: Tue, 06 Oct 2026 01:38:59 GMT  
		Size: 2.2 MB (2248976 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:331665be5ed14a6ffe0d44bfc881e6f90380b72a04d1a2badfbcad207fdbd1ec`  
		Last Modified: Tue, 06 Oct 2026 01:38:59 GMT  
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
$ docker pull julia@sha256:ad45422a91f69999a06bdf693eb814017e5c8dea4f712b362285882bf3babdcc
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
$ docker pull julia@sha256:455bea3ac701af6b1d9326a4b160e6122ed639c7f74dea967942c53dea5490f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.1 MB (342136372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeb8ec35ceb8aa0fda39620117b7d056aff8cfb8b1fdaad670ff533aa147208c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Fri, 16 Oct 2026 20:32:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:32:28 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 16 Oct 2026 20:32:28 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:32:28 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Fri, 16 Oct 2026 20:32:28 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:32:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Fri, 16 Oct 2026 20:32:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:32:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:32:28 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:484ae85fb47dce867e075a5ef7e894b4750187cb5711af4b3a58f24082a033bc`  
		Last Modified: Fri, 16 Oct 2026 20:33:12 GMT  
		Size: 6.2 MB (6249478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c32b4f3395a09e59e7fa17aafc615addbab9110a0f2e4a17519a45a8fcd8740`  
		Last Modified: Fri, 16 Oct 2026 20:33:18 GMT  
		Size: 306.0 MB (306043173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da6817beded8e0c327191e71618c83cbabb02fb17e107704e50d5ba3eeab72c`  
		Last Modified: Fri, 16 Oct 2026 20:33:12 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13` - unknown; unknown

```console
$ docker pull julia@sha256:ccd4b0885ad43e5c8339b85f36ff7885d3ab6f68e2ed1eff7c4d6482f46b277e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2265334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:689af110a9a95368829343bd45b189583c623d8e62d504373a45ecb314157636`

```dockerfile
```

-	Layers:
	-	`sha256:ef578de15aa322efbfe4f91f32028b759d642db4400547b4c0b21fc0e1c8f01b`  
		Last Modified: Fri, 16 Oct 2026 20:33:12 GMT  
		Size: 2.2 MB (2247633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2346092f22d9263f64a51a7048bcf8a64c71d3fbe6e45af0436510f016fcef7`  
		Last Modified: Fri, 16 Oct 2026 20:33:12 GMT  
		Size: 17.7 KB (17701 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.13` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:114d4ddfbc8d1deed197d7721a64a163680ff7123db9f4af147f91bec2a0c6ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.1 MB (361103239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bb2b4932d2b5aba69cd94b0b02359306fd04d201d39761d7ddf38ff3cf8a648`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Fri, 16 Oct 2026 20:31:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:32:22 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 16 Oct 2026 20:32:22 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:32:22 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Fri, 16 Oct 2026 20:32:22 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:32:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Fri, 16 Oct 2026 20:32:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:32:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:32:22 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b4e73afd73100a151be90e0f23ce02ed59a2b3d70d1665f0e71ac561feb9113`  
		Last Modified: Fri, 16 Oct 2026 20:33:08 GMT  
		Size: 6.2 MB (6156258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bee40d3f1ca3fbb24a60f8688166c61f3ab9455f5ec360565d2c85dcfb5b90e7`  
		Last Modified: Fri, 16 Oct 2026 20:33:14 GMT  
		Size: 324.7 MB (324746329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bf5a59c5919957e7dd6b6caae038459ef12af739c7b17bf7ac08c25f5e400bf`  
		Last Modified: Fri, 16 Oct 2026 20:33:08 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13` - unknown; unknown

```console
$ docker pull julia@sha256:661545cb22ae503cc4493cbcc4d89ed572488ba26456fa87431938f81f93ac55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2265825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37eee4e8960982f38ea0d662a25b627e1400347c7dc76bff7414f08102ac9260`

```dockerfile
```

-	Layers:
	-	`sha256:1c9917cef5b43abaebcb6be32116c0afdeac54b40d2423f415076b5389a6adca`  
		Last Modified: Fri, 16 Oct 2026 20:33:08 GMT  
		Size: 2.2 MB (2247957 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3cdcb7829c710958d760b65316fff6d360565c2600267bb3516b470d1d4e1e5`  
		Last Modified: Fri, 16 Oct 2026 20:33:08 GMT  
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
$ docker pull julia@sha256:c2212b3109a9e236a44cfc157ff7eb3eadf43cb3f3ef8db26f1c936c4780cf2e
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
$ docker pull julia@sha256:a49178b3a7bfc31e08550af074f223548b3170b4ae761e89b580618df731c034
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.8 MB (339802800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3928454ba4e537858ca13b9acfbf90c4fe7610f99d0dad3c3f056141f66b139c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Fri, 16 Oct 2026 20:32:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:32:32 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 16 Oct 2026 20:32:32 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:32:32 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Fri, 16 Oct 2026 20:32:32 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:32:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Fri, 16 Oct 2026 20:32:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:32:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:32:32 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdd6a977240db0ee001768ba9a56f545f62204c63ef955159a4e14b365c56656`  
		Last Modified: Fri, 16 Oct 2026 20:33:18 GMT  
		Size: 5.5 MB (5545956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7908402a6bf9d0691d0bf16c6c6c1c2e4b1d83f887127c05500c8cee1e92bf8`  
		Last Modified: Fri, 16 Oct 2026 20:33:24 GMT  
		Size: 306.0 MB (306007152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9467a7b74108b934f1375be08551f7cadfe9be0270be18bef1db59f2cdce4c2`  
		Last Modified: Fri, 16 Oct 2026 20:33:18 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:d74c75affb972b32090772f7cee8d69d1ba5056f3717ee07c1ba6b5af65fc676
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2590798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e02a3c1eb49ddc914e0d2a8b5376611501f9cef9433e2016e446f42b83783985`

```dockerfile
```

-	Layers:
	-	`sha256:9c7e30f59b0fa214764467fb620b0fe0628d657cd7c7e421149b796a142149be`  
		Last Modified: Fri, 16 Oct 2026 20:33:18 GMT  
		Size: 2.6 MB (2574243 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:509e9bbb9ca646357909e111b2d585280dbc3e5f3f66635e31177f202420342a`  
		Last Modified: Fri, 16 Oct 2026 20:33:18 GMT  
		Size: 16.6 KB (16555 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.13-bookworm` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:c938e5772d41a1a50616108278a165674da65935f45b45d8b2830b04295d1d91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.2 MB (358241593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:730b57c96e8618df561dad96bef94cbbd6023a1b158a5fbeadac3666e62f00ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Fri, 16 Oct 2026 20:31:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:32:24 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 16 Oct 2026 20:32:24 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:32:24 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Fri, 16 Oct 2026 20:32:24 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:32:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Fri, 16 Oct 2026 20:32:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:32:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:32:24 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7f4694ee6b9ab328b659c137309ca045e0b036df9e92c4e49999e9531206f8f`  
		Last Modified: Fri, 16 Oct 2026 20:33:10 GMT  
		Size: 5.4 MB (5388814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0600c0dc956906938e4c59d7393a37096e1b0c08e8db70e91cd09772fb05a4f1`  
		Last Modified: Fri, 16 Oct 2026 20:33:16 GMT  
		Size: 324.7 MB (324715229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83509abe388d540b8af4e3400fb41d199601a3ed871b2a9b3d8e28a3edf09775`  
		Last Modified: Fri, 16 Oct 2026 20:33:10 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:455ba3015076ed2ca1675f4db0db81d496f0e9b799242b074eeb592b60e74b4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2591191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f3a0e6468702ee2836a683e516f4cf5ba9e9f6ec53a1723cd48e153f390178b`

```dockerfile
```

-	Layers:
	-	`sha256:8b8d57e12cea86191c475ca4f0f087aac485f695b6fef6d3515a819086f2713b`  
		Last Modified: Fri, 16 Oct 2026 20:33:10 GMT  
		Size: 2.6 MB (2574518 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24fad7c51dd594eff541c289e8b36b1972fd8d47a251c7f59a9f02efc2abc010`  
		Last Modified: Fri, 16 Oct 2026 20:33:10 GMT  
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
$ docker pull julia@sha256:4df06df7f083d6070d0ddede540cb6a72e933378636e601f4da3bf11c66c1a22
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
$ docker pull julia@sha256:455bea3ac701af6b1d9326a4b160e6122ed639c7f74dea967942c53dea5490f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.1 MB (342136372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeb8ec35ceb8aa0fda39620117b7d056aff8cfb8b1fdaad670ff533aa147208c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Fri, 16 Oct 2026 20:32:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:32:28 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 16 Oct 2026 20:32:28 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:32:28 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Fri, 16 Oct 2026 20:32:28 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:32:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Fri, 16 Oct 2026 20:32:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:32:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:32:28 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:484ae85fb47dce867e075a5ef7e894b4750187cb5711af4b3a58f24082a033bc`  
		Last Modified: Fri, 16 Oct 2026 20:33:12 GMT  
		Size: 6.2 MB (6249478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c32b4f3395a09e59e7fa17aafc615addbab9110a0f2e4a17519a45a8fcd8740`  
		Last Modified: Fri, 16 Oct 2026 20:33:18 GMT  
		Size: 306.0 MB (306043173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da6817beded8e0c327191e71618c83cbabb02fb17e107704e50d5ba3eeab72c`  
		Last Modified: Fri, 16 Oct 2026 20:33:12 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:ccd4b0885ad43e5c8339b85f36ff7885d3ab6f68e2ed1eff7c4d6482f46b277e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2265334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:689af110a9a95368829343bd45b189583c623d8e62d504373a45ecb314157636`

```dockerfile
```

-	Layers:
	-	`sha256:ef578de15aa322efbfe4f91f32028b759d642db4400547b4c0b21fc0e1c8f01b`  
		Last Modified: Fri, 16 Oct 2026 20:33:12 GMT  
		Size: 2.2 MB (2247633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2346092f22d9263f64a51a7048bcf8a64c71d3fbe6e45af0436510f016fcef7`  
		Last Modified: Fri, 16 Oct 2026 20:33:12 GMT  
		Size: 17.7 KB (17701 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.13-trixie` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:114d4ddfbc8d1deed197d7721a64a163680ff7123db9f4af147f91bec2a0c6ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.1 MB (361103239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bb2b4932d2b5aba69cd94b0b02359306fd04d201d39761d7ddf38ff3cf8a648`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Fri, 16 Oct 2026 20:31:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:32:22 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 16 Oct 2026 20:32:22 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:32:22 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Fri, 16 Oct 2026 20:32:22 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:32:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Fri, 16 Oct 2026 20:32:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:32:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:32:22 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b4e73afd73100a151be90e0f23ce02ed59a2b3d70d1665f0e71ac561feb9113`  
		Last Modified: Fri, 16 Oct 2026 20:33:08 GMT  
		Size: 6.2 MB (6156258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bee40d3f1ca3fbb24a60f8688166c61f3ab9455f5ec360565d2c85dcfb5b90e7`  
		Last Modified: Fri, 16 Oct 2026 20:33:14 GMT  
		Size: 324.7 MB (324746329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bf5a59c5919957e7dd6b6caae038459ef12af739c7b17bf7ac08c25f5e400bf`  
		Last Modified: Fri, 16 Oct 2026 20:33:08 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:661545cb22ae503cc4493cbcc4d89ed572488ba26456fa87431938f81f93ac55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2265825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37eee4e8960982f38ea0d662a25b627e1400347c7dc76bff7414f08102ac9260`

```dockerfile
```

-	Layers:
	-	`sha256:1c9917cef5b43abaebcb6be32116c0afdeac54b40d2423f415076b5389a6adca`  
		Last Modified: Fri, 16 Oct 2026 20:33:08 GMT  
		Size: 2.2 MB (2247957 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3cdcb7829c710958d760b65316fff6d360565c2600267bb3516b470d1d4e1e5`  
		Last Modified: Fri, 16 Oct 2026 20:33:08 GMT  
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
$ docker pull julia@sha256:ad45422a91f69999a06bdf693eb814017e5c8dea4f712b362285882bf3babdcc
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
$ docker pull julia@sha256:455bea3ac701af6b1d9326a4b160e6122ed639c7f74dea967942c53dea5490f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.1 MB (342136372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeb8ec35ceb8aa0fda39620117b7d056aff8cfb8b1fdaad670ff533aa147208c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Fri, 16 Oct 2026 20:32:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:32:28 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 16 Oct 2026 20:32:28 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:32:28 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Fri, 16 Oct 2026 20:32:28 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:32:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Fri, 16 Oct 2026 20:32:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:32:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:32:28 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:484ae85fb47dce867e075a5ef7e894b4750187cb5711af4b3a58f24082a033bc`  
		Last Modified: Fri, 16 Oct 2026 20:33:12 GMT  
		Size: 6.2 MB (6249478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c32b4f3395a09e59e7fa17aafc615addbab9110a0f2e4a17519a45a8fcd8740`  
		Last Modified: Fri, 16 Oct 2026 20:33:18 GMT  
		Size: 306.0 MB (306043173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da6817beded8e0c327191e71618c83cbabb02fb17e107704e50d5ba3eeab72c`  
		Last Modified: Fri, 16 Oct 2026 20:33:12 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13.2` - unknown; unknown

```console
$ docker pull julia@sha256:ccd4b0885ad43e5c8339b85f36ff7885d3ab6f68e2ed1eff7c4d6482f46b277e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2265334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:689af110a9a95368829343bd45b189583c623d8e62d504373a45ecb314157636`

```dockerfile
```

-	Layers:
	-	`sha256:ef578de15aa322efbfe4f91f32028b759d642db4400547b4c0b21fc0e1c8f01b`  
		Last Modified: Fri, 16 Oct 2026 20:33:12 GMT  
		Size: 2.2 MB (2247633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2346092f22d9263f64a51a7048bcf8a64c71d3fbe6e45af0436510f016fcef7`  
		Last Modified: Fri, 16 Oct 2026 20:33:12 GMT  
		Size: 17.7 KB (17701 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.13.2` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:114d4ddfbc8d1deed197d7721a64a163680ff7123db9f4af147f91bec2a0c6ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.1 MB (361103239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bb2b4932d2b5aba69cd94b0b02359306fd04d201d39761d7ddf38ff3cf8a648`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Fri, 16 Oct 2026 20:31:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:32:22 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 16 Oct 2026 20:32:22 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:32:22 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Fri, 16 Oct 2026 20:32:22 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:32:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Fri, 16 Oct 2026 20:32:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:32:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:32:22 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b4e73afd73100a151be90e0f23ce02ed59a2b3d70d1665f0e71ac561feb9113`  
		Last Modified: Fri, 16 Oct 2026 20:33:08 GMT  
		Size: 6.2 MB (6156258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bee40d3f1ca3fbb24a60f8688166c61f3ab9455f5ec360565d2c85dcfb5b90e7`  
		Last Modified: Fri, 16 Oct 2026 20:33:14 GMT  
		Size: 324.7 MB (324746329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bf5a59c5919957e7dd6b6caae038459ef12af739c7b17bf7ac08c25f5e400bf`  
		Last Modified: Fri, 16 Oct 2026 20:33:08 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13.2` - unknown; unknown

```console
$ docker pull julia@sha256:661545cb22ae503cc4493cbcc4d89ed572488ba26456fa87431938f81f93ac55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2265825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37eee4e8960982f38ea0d662a25b627e1400347c7dc76bff7414f08102ac9260`

```dockerfile
```

-	Layers:
	-	`sha256:1c9917cef5b43abaebcb6be32116c0afdeac54b40d2423f415076b5389a6adca`  
		Last Modified: Fri, 16 Oct 2026 20:33:08 GMT  
		Size: 2.2 MB (2247957 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3cdcb7829c710958d760b65316fff6d360565c2600267bb3516b470d1d4e1e5`  
		Last Modified: Fri, 16 Oct 2026 20:33:08 GMT  
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
$ docker pull julia@sha256:c2212b3109a9e236a44cfc157ff7eb3eadf43cb3f3ef8db26f1c936c4780cf2e
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
$ docker pull julia@sha256:a49178b3a7bfc31e08550af074f223548b3170b4ae761e89b580618df731c034
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.8 MB (339802800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3928454ba4e537858ca13b9acfbf90c4fe7610f99d0dad3c3f056141f66b139c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Fri, 16 Oct 2026 20:32:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:32:32 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 16 Oct 2026 20:32:32 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:32:32 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Fri, 16 Oct 2026 20:32:32 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:32:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Fri, 16 Oct 2026 20:32:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:32:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:32:32 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdd6a977240db0ee001768ba9a56f545f62204c63ef955159a4e14b365c56656`  
		Last Modified: Fri, 16 Oct 2026 20:33:18 GMT  
		Size: 5.5 MB (5545956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7908402a6bf9d0691d0bf16c6c6c1c2e4b1d83f887127c05500c8cee1e92bf8`  
		Last Modified: Fri, 16 Oct 2026 20:33:24 GMT  
		Size: 306.0 MB (306007152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9467a7b74108b934f1375be08551f7cadfe9be0270be18bef1db59f2cdce4c2`  
		Last Modified: Fri, 16 Oct 2026 20:33:18 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13.2-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:d74c75affb972b32090772f7cee8d69d1ba5056f3717ee07c1ba6b5af65fc676
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2590798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e02a3c1eb49ddc914e0d2a8b5376611501f9cef9433e2016e446f42b83783985`

```dockerfile
```

-	Layers:
	-	`sha256:9c7e30f59b0fa214764467fb620b0fe0628d657cd7c7e421149b796a142149be`  
		Last Modified: Fri, 16 Oct 2026 20:33:18 GMT  
		Size: 2.6 MB (2574243 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:509e9bbb9ca646357909e111b2d585280dbc3e5f3f66635e31177f202420342a`  
		Last Modified: Fri, 16 Oct 2026 20:33:18 GMT  
		Size: 16.6 KB (16555 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.13.2-bookworm` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:c938e5772d41a1a50616108278a165674da65935f45b45d8b2830b04295d1d91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.2 MB (358241593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:730b57c96e8618df561dad96bef94cbbd6023a1b158a5fbeadac3666e62f00ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Fri, 16 Oct 2026 20:31:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:32:24 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 16 Oct 2026 20:32:24 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:32:24 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Fri, 16 Oct 2026 20:32:24 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:32:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Fri, 16 Oct 2026 20:32:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:32:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:32:24 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7f4694ee6b9ab328b659c137309ca045e0b036df9e92c4e49999e9531206f8f`  
		Last Modified: Fri, 16 Oct 2026 20:33:10 GMT  
		Size: 5.4 MB (5388814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0600c0dc956906938e4c59d7393a37096e1b0c08e8db70e91cd09772fb05a4f1`  
		Last Modified: Fri, 16 Oct 2026 20:33:16 GMT  
		Size: 324.7 MB (324715229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83509abe388d540b8af4e3400fb41d199601a3ed871b2a9b3d8e28a3edf09775`  
		Last Modified: Fri, 16 Oct 2026 20:33:10 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13.2-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:455ba3015076ed2ca1675f4db0db81d496f0e9b799242b074eeb592b60e74b4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2591191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f3a0e6468702ee2836a683e516f4cf5ba9e9f6ec53a1723cd48e153f390178b`

```dockerfile
```

-	Layers:
	-	`sha256:8b8d57e12cea86191c475ca4f0f087aac485f695b6fef6d3515a819086f2713b`  
		Last Modified: Fri, 16 Oct 2026 20:33:10 GMT  
		Size: 2.6 MB (2574518 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24fad7c51dd594eff541c289e8b36b1972fd8d47a251c7f59a9f02efc2abc010`  
		Last Modified: Fri, 16 Oct 2026 20:33:10 GMT  
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
$ docker pull julia@sha256:4df06df7f083d6070d0ddede540cb6a72e933378636e601f4da3bf11c66c1a22
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
$ docker pull julia@sha256:455bea3ac701af6b1d9326a4b160e6122ed639c7f74dea967942c53dea5490f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.1 MB (342136372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeb8ec35ceb8aa0fda39620117b7d056aff8cfb8b1fdaad670ff533aa147208c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Fri, 16 Oct 2026 20:32:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:32:28 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 16 Oct 2026 20:32:28 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:32:28 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Fri, 16 Oct 2026 20:32:28 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:32:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Fri, 16 Oct 2026 20:32:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:32:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:32:28 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:484ae85fb47dce867e075a5ef7e894b4750187cb5711af4b3a58f24082a033bc`  
		Last Modified: Fri, 16 Oct 2026 20:33:12 GMT  
		Size: 6.2 MB (6249478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c32b4f3395a09e59e7fa17aafc615addbab9110a0f2e4a17519a45a8fcd8740`  
		Last Modified: Fri, 16 Oct 2026 20:33:18 GMT  
		Size: 306.0 MB (306043173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da6817beded8e0c327191e71618c83cbabb02fb17e107704e50d5ba3eeab72c`  
		Last Modified: Fri, 16 Oct 2026 20:33:12 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13.2-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:ccd4b0885ad43e5c8339b85f36ff7885d3ab6f68e2ed1eff7c4d6482f46b277e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2265334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:689af110a9a95368829343bd45b189583c623d8e62d504373a45ecb314157636`

```dockerfile
```

-	Layers:
	-	`sha256:ef578de15aa322efbfe4f91f32028b759d642db4400547b4c0b21fc0e1c8f01b`  
		Last Modified: Fri, 16 Oct 2026 20:33:12 GMT  
		Size: 2.2 MB (2247633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2346092f22d9263f64a51a7048bcf8a64c71d3fbe6e45af0436510f016fcef7`  
		Last Modified: Fri, 16 Oct 2026 20:33:12 GMT  
		Size: 17.7 KB (17701 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.13.2-trixie` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:114d4ddfbc8d1deed197d7721a64a163680ff7123db9f4af147f91bec2a0c6ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.1 MB (361103239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bb2b4932d2b5aba69cd94b0b02359306fd04d201d39761d7ddf38ff3cf8a648`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Fri, 16 Oct 2026 20:31:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:32:22 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 16 Oct 2026 20:32:22 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:32:22 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Fri, 16 Oct 2026 20:32:22 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:32:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Fri, 16 Oct 2026 20:32:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:32:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:32:22 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b4e73afd73100a151be90e0f23ce02ed59a2b3d70d1665f0e71ac561feb9113`  
		Last Modified: Fri, 16 Oct 2026 20:33:08 GMT  
		Size: 6.2 MB (6156258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bee40d3f1ca3fbb24a60f8688166c61f3ab9455f5ec360565d2c85dcfb5b90e7`  
		Last Modified: Fri, 16 Oct 2026 20:33:14 GMT  
		Size: 324.7 MB (324746329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bf5a59c5919957e7dd6b6caae038459ef12af739c7b17bf7ac08c25f5e400bf`  
		Last Modified: Fri, 16 Oct 2026 20:33:08 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13.2-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:661545cb22ae503cc4493cbcc4d89ed572488ba26456fa87431938f81f93ac55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2265825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37eee4e8960982f38ea0d662a25b627e1400347c7dc76bff7414f08102ac9260`

```dockerfile
```

-	Layers:
	-	`sha256:1c9917cef5b43abaebcb6be32116c0afdeac54b40d2423f415076b5389a6adca`  
		Last Modified: Fri, 16 Oct 2026 20:33:08 GMT  
		Size: 2.2 MB (2247957 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3cdcb7829c710958d760b65316fff6d360565c2600267bb3516b470d1d4e1e5`  
		Last Modified: Fri, 16 Oct 2026 20:33:08 GMT  
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
$ docker pull julia@sha256:c2212b3109a9e236a44cfc157ff7eb3eadf43cb3f3ef8db26f1c936c4780cf2e
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
$ docker pull julia@sha256:a49178b3a7bfc31e08550af074f223548b3170b4ae761e89b580618df731c034
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.8 MB (339802800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3928454ba4e537858ca13b9acfbf90c4fe7610f99d0dad3c3f056141f66b139c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Fri, 16 Oct 2026 20:32:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:32:32 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 16 Oct 2026 20:32:32 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:32:32 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Fri, 16 Oct 2026 20:32:32 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:32:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Fri, 16 Oct 2026 20:32:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:32:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:32:32 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdd6a977240db0ee001768ba9a56f545f62204c63ef955159a4e14b365c56656`  
		Last Modified: Fri, 16 Oct 2026 20:33:18 GMT  
		Size: 5.5 MB (5545956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7908402a6bf9d0691d0bf16c6c6c1c2e4b1d83f887127c05500c8cee1e92bf8`  
		Last Modified: Fri, 16 Oct 2026 20:33:24 GMT  
		Size: 306.0 MB (306007152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9467a7b74108b934f1375be08551f7cadfe9be0270be18bef1db59f2cdce4c2`  
		Last Modified: Fri, 16 Oct 2026 20:33:18 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:d74c75affb972b32090772f7cee8d69d1ba5056f3717ee07c1ba6b5af65fc676
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2590798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e02a3c1eb49ddc914e0d2a8b5376611501f9cef9433e2016e446f42b83783985`

```dockerfile
```

-	Layers:
	-	`sha256:9c7e30f59b0fa214764467fb620b0fe0628d657cd7c7e421149b796a142149be`  
		Last Modified: Fri, 16 Oct 2026 20:33:18 GMT  
		Size: 2.6 MB (2574243 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:509e9bbb9ca646357909e111b2d585280dbc3e5f3f66635e31177f202420342a`  
		Last Modified: Fri, 16 Oct 2026 20:33:18 GMT  
		Size: 16.6 KB (16555 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:bookworm` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:c938e5772d41a1a50616108278a165674da65935f45b45d8b2830b04295d1d91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.2 MB (358241593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:730b57c96e8618df561dad96bef94cbbd6023a1b158a5fbeadac3666e62f00ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Fri, 16 Oct 2026 20:31:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:32:24 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 16 Oct 2026 20:32:24 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:32:24 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Fri, 16 Oct 2026 20:32:24 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:32:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Fri, 16 Oct 2026 20:32:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:32:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:32:24 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7f4694ee6b9ab328b659c137309ca045e0b036df9e92c4e49999e9531206f8f`  
		Last Modified: Fri, 16 Oct 2026 20:33:10 GMT  
		Size: 5.4 MB (5388814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0600c0dc956906938e4c59d7393a37096e1b0c08e8db70e91cd09772fb05a4f1`  
		Last Modified: Fri, 16 Oct 2026 20:33:16 GMT  
		Size: 324.7 MB (324715229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83509abe388d540b8af4e3400fb41d199601a3ed871b2a9b3d8e28a3edf09775`  
		Last Modified: Fri, 16 Oct 2026 20:33:10 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:455ba3015076ed2ca1675f4db0db81d496f0e9b799242b074eeb592b60e74b4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2591191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f3a0e6468702ee2836a683e516f4cf5ba9e9f6ec53a1723cd48e153f390178b`

```dockerfile
```

-	Layers:
	-	`sha256:8b8d57e12cea86191c475ca4f0f087aac485f695b6fef6d3515a819086f2713b`  
		Last Modified: Fri, 16 Oct 2026 20:33:10 GMT  
		Size: 2.6 MB (2574518 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24fad7c51dd594eff541c289e8b36b1972fd8d47a251c7f59a9f02efc2abc010`  
		Last Modified: Fri, 16 Oct 2026 20:33:10 GMT  
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
$ docker pull julia@sha256:ad45422a91f69999a06bdf693eb814017e5c8dea4f712b362285882bf3babdcc
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
$ docker pull julia@sha256:455bea3ac701af6b1d9326a4b160e6122ed639c7f74dea967942c53dea5490f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.1 MB (342136372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeb8ec35ceb8aa0fda39620117b7d056aff8cfb8b1fdaad670ff533aa147208c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Fri, 16 Oct 2026 20:32:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:32:28 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 16 Oct 2026 20:32:28 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:32:28 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Fri, 16 Oct 2026 20:32:28 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:32:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Fri, 16 Oct 2026 20:32:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:32:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:32:28 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:484ae85fb47dce867e075a5ef7e894b4750187cb5711af4b3a58f24082a033bc`  
		Last Modified: Fri, 16 Oct 2026 20:33:12 GMT  
		Size: 6.2 MB (6249478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c32b4f3395a09e59e7fa17aafc615addbab9110a0f2e4a17519a45a8fcd8740`  
		Last Modified: Fri, 16 Oct 2026 20:33:18 GMT  
		Size: 306.0 MB (306043173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da6817beded8e0c327191e71618c83cbabb02fb17e107704e50d5ba3eeab72c`  
		Last Modified: Fri, 16 Oct 2026 20:33:12 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:latest` - unknown; unknown

```console
$ docker pull julia@sha256:ccd4b0885ad43e5c8339b85f36ff7885d3ab6f68e2ed1eff7c4d6482f46b277e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2265334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:689af110a9a95368829343bd45b189583c623d8e62d504373a45ecb314157636`

```dockerfile
```

-	Layers:
	-	`sha256:ef578de15aa322efbfe4f91f32028b759d642db4400547b4c0b21fc0e1c8f01b`  
		Last Modified: Fri, 16 Oct 2026 20:33:12 GMT  
		Size: 2.2 MB (2247633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2346092f22d9263f64a51a7048bcf8a64c71d3fbe6e45af0436510f016fcef7`  
		Last Modified: Fri, 16 Oct 2026 20:33:12 GMT  
		Size: 17.7 KB (17701 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:latest` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:114d4ddfbc8d1deed197d7721a64a163680ff7123db9f4af147f91bec2a0c6ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.1 MB (361103239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bb2b4932d2b5aba69cd94b0b02359306fd04d201d39761d7ddf38ff3cf8a648`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Fri, 16 Oct 2026 20:31:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:32:22 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 16 Oct 2026 20:32:22 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:32:22 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Fri, 16 Oct 2026 20:32:22 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:32:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Fri, 16 Oct 2026 20:32:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:32:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:32:22 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b4e73afd73100a151be90e0f23ce02ed59a2b3d70d1665f0e71ac561feb9113`  
		Last Modified: Fri, 16 Oct 2026 20:33:08 GMT  
		Size: 6.2 MB (6156258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bee40d3f1ca3fbb24a60f8688166c61f3ab9455f5ec360565d2c85dcfb5b90e7`  
		Last Modified: Fri, 16 Oct 2026 20:33:14 GMT  
		Size: 324.7 MB (324746329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bf5a59c5919957e7dd6b6caae038459ef12af739c7b17bf7ac08c25f5e400bf`  
		Last Modified: Fri, 16 Oct 2026 20:33:08 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:latest` - unknown; unknown

```console
$ docker pull julia@sha256:661545cb22ae503cc4493cbcc4d89ed572488ba26456fa87431938f81f93ac55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2265825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37eee4e8960982f38ea0d662a25b627e1400347c7dc76bff7414f08102ac9260`

```dockerfile
```

-	Layers:
	-	`sha256:1c9917cef5b43abaebcb6be32116c0afdeac54b40d2423f415076b5389a6adca`  
		Last Modified: Fri, 16 Oct 2026 20:33:08 GMT  
		Size: 2.2 MB (2247957 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3cdcb7829c710958d760b65316fff6d360565c2600267bb3516b470d1d4e1e5`  
		Last Modified: Fri, 16 Oct 2026 20:33:08 GMT  
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
$ docker pull julia@sha256:4df06df7f083d6070d0ddede540cb6a72e933378636e601f4da3bf11c66c1a22
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
$ docker pull julia@sha256:455bea3ac701af6b1d9326a4b160e6122ed639c7f74dea967942c53dea5490f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.1 MB (342136372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeb8ec35ceb8aa0fda39620117b7d056aff8cfb8b1fdaad670ff533aa147208c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Fri, 16 Oct 2026 20:32:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:32:28 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 16 Oct 2026 20:32:28 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:32:28 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Fri, 16 Oct 2026 20:32:28 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:32:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Fri, 16 Oct 2026 20:32:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:32:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:32:28 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:484ae85fb47dce867e075a5ef7e894b4750187cb5711af4b3a58f24082a033bc`  
		Last Modified: Fri, 16 Oct 2026 20:33:12 GMT  
		Size: 6.2 MB (6249478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c32b4f3395a09e59e7fa17aafc615addbab9110a0f2e4a17519a45a8fcd8740`  
		Last Modified: Fri, 16 Oct 2026 20:33:18 GMT  
		Size: 306.0 MB (306043173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da6817beded8e0c327191e71618c83cbabb02fb17e107704e50d5ba3eeab72c`  
		Last Modified: Fri, 16 Oct 2026 20:33:12 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:trixie` - unknown; unknown

```console
$ docker pull julia@sha256:ccd4b0885ad43e5c8339b85f36ff7885d3ab6f68e2ed1eff7c4d6482f46b277e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2265334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:689af110a9a95368829343bd45b189583c623d8e62d504373a45ecb314157636`

```dockerfile
```

-	Layers:
	-	`sha256:ef578de15aa322efbfe4f91f32028b759d642db4400547b4c0b21fc0e1c8f01b`  
		Last Modified: Fri, 16 Oct 2026 20:33:12 GMT  
		Size: 2.2 MB (2247633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2346092f22d9263f64a51a7048bcf8a64c71d3fbe6e45af0436510f016fcef7`  
		Last Modified: Fri, 16 Oct 2026 20:33:12 GMT  
		Size: 17.7 KB (17701 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:trixie` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:114d4ddfbc8d1deed197d7721a64a163680ff7123db9f4af147f91bec2a0c6ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.1 MB (361103239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bb2b4932d2b5aba69cd94b0b02359306fd04d201d39761d7ddf38ff3cf8a648`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Fri, 16 Oct 2026 20:31:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:32:22 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 16 Oct 2026 20:32:22 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:32:22 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Fri, 16 Oct 2026 20:32:22 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:32:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.2-linux-x86_64.tar.gz'; 			sha256='2ecdfc9890ab0a565fdd92404c915ba2a04a933dbd5d292cc224d13819d17d07'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.2-linux-i686.tar.gz'; 			sha256='ae191a7c830a54b9ac1b95ad55c2eba97c7f12d8e5b78488438f53f4a3ab5fa6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.2-linux-aarch64.tar.gz'; 			sha256='b366ac62162d42b272e82436397487dec719f0830d059cdd8a3f7a1810647128'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Fri, 16 Oct 2026 20:32:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:32:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:32:22 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b4e73afd73100a151be90e0f23ce02ed59a2b3d70d1665f0e71ac561feb9113`  
		Last Modified: Fri, 16 Oct 2026 20:33:08 GMT  
		Size: 6.2 MB (6156258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bee40d3f1ca3fbb24a60f8688166c61f3ab9455f5ec360565d2c85dcfb5b90e7`  
		Last Modified: Fri, 16 Oct 2026 20:33:14 GMT  
		Size: 324.7 MB (324746329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bf5a59c5919957e7dd6b6caae038459ef12af739c7b17bf7ac08c25f5e400bf`  
		Last Modified: Fri, 16 Oct 2026 20:33:08 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:trixie` - unknown; unknown

```console
$ docker pull julia@sha256:661545cb22ae503cc4493cbcc4d89ed572488ba26456fa87431938f81f93ac55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2265825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37eee4e8960982f38ea0d662a25b627e1400347c7dc76bff7414f08102ac9260`

```dockerfile
```

-	Layers:
	-	`sha256:1c9917cef5b43abaebcb6be32116c0afdeac54b40d2423f415076b5389a6adca`  
		Last Modified: Fri, 16 Oct 2026 20:33:08 GMT  
		Size: 2.2 MB (2247957 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3cdcb7829c710958d760b65316fff6d360565c2600267bb3516b470d1d4e1e5`  
		Last Modified: Fri, 16 Oct 2026 20:33:08 GMT  
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
