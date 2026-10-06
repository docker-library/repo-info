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
-	[`julia:1.13.1`](#julia1131)
-	[`julia:1.13.1-bookworm`](#julia1131-bookworm)
-	[`julia:1.13.1-trixie`](#julia1131-trixie)
-	[`julia:1.13.1-windowsservercore`](#julia1131-windowsservercore)
-	[`julia:1.13.1-windowsservercore-ltsc2022`](#julia1131-windowsservercore-ltsc2022)
-	[`julia:1.13.1-windowsservercore-ltsc2025`](#julia1131-windowsservercore-ltsc2025)
-	[`julia:bookworm`](#juliabookworm)
-	[`julia:latest`](#julialatest)
-	[`julia:trixie`](#juliatrixie)
-	[`julia:windowsservercore`](#juliawindowsservercore)
-	[`julia:windowsservercore-ltsc2022`](#juliawindowsservercore-ltsc2022)
-	[`julia:windowsservercore-ltsc2025`](#juliawindowsservercore-ltsc2025)

## `julia:1`

```console
$ docker pull julia@sha256:9b2356881dce6ff41143faf8c5b1bc5c24d4861eaa8d20c88cb273d8db065da4
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

### `julia:1` - linux; amd64

```console
$ docker pull julia@sha256:acbc8af9ea4f1a278b41adcddd667eb15c194691302a8477d42ca45b7f2a5034
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.4 MB (342398235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fcb0a94693bf143945bb56f6b004fb695b411630213d41df6cb8892c19426c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:17:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:17:46 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:17:46 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:17:46 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:17:46 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 06 Oct 2026 01:17:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.1-linux-x86_64.tar.gz'; 			sha256='0f2e18c8dea60a2c8711d089cd9612f7a8df394b89e5208096fe5867647e0908'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.1-linux-i686.tar.gz'; 			sha256='8bd3f8f20c0fd346b31ba5204f50d770c21abc0dba6f37b7ad7c02faa05033a6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.1-linux-aarch64.tar.gz'; 			sha256='78341862e24734ea1c2fa8795183c52627c23a99aba5aa1d0ec840edecec5ce0'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:17:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:17:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:17:46 GMT
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
	-	`sha256:cb5dc77e66073cd21b84f34e3dc6e6a19c8f4d7f50ed9671015b99a3f69ef1df`  
		Last Modified: Tue, 06 Oct 2026 01:18:35 GMT  
		Size: 306.3 MB (306305175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de8d12602fb0d388a81fc681eacdd68732979bdb03d1045915682346489dc083`  
		Last Modified: Tue, 06 Oct 2026 01:18:29 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1` - unknown; unknown

```console
$ docker pull julia@sha256:0d81bd584a94bb63306e7cc1ef19f1ccb06211f1dad19c34c62df9b6d4ec70c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2265334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56fdbbe2e94992979dba2ca429a8e5f018dbce9739ca9c72fa8d8a81c760973d`

```dockerfile
```

-	Layers:
	-	`sha256:3ba65a54ae2a23b09301a9c0a18565850a7d9c31a862a8eb861d9ae747c054c2`  
		Last Modified: Tue, 06 Oct 2026 01:18:29 GMT  
		Size: 2.2 MB (2247633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95bd2f9b2b25495b406ee67ff5ba75fc25d1d00db841c290f28e3fdea2b75278`  
		Last Modified: Tue, 06 Oct 2026 01:18:29 GMT  
		Size: 17.7 KB (17701 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:5f7bc1153325ae44a3cbef0852d189b52a7cc3d21544d68f982b7b7ed2595f39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.7 MB (361712722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4920ef5e813186e86344d52ec221c346301a8ab6d6b97951201a5dd53f72d6c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:19:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:19:47 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:19:47 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:19:47 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:19:47 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 06 Oct 2026 01:19:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.1-linux-x86_64.tar.gz'; 			sha256='0f2e18c8dea60a2c8711d089cd9612f7a8df394b89e5208096fe5867647e0908'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.1-linux-i686.tar.gz'; 			sha256='8bd3f8f20c0fd346b31ba5204f50d770c21abc0dba6f37b7ad7c02faa05033a6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.1-linux-aarch64.tar.gz'; 			sha256='78341862e24734ea1c2fa8795183c52627c23a99aba5aa1d0ec840edecec5ce0'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:19:47 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:19:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:19:47 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c63217cb9a06576ce0342d4cc63634c01370d11e6e43122e37e11c8dc2e4a21`  
		Last Modified: Tue, 06 Oct 2026 01:20:33 GMT  
		Size: 6.2 MB (6156306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed7a3f4ae062dd59e467d5dd2a125abfa8bffd323930a9cf0632b6ff8e3948d9`  
		Last Modified: Tue, 06 Oct 2026 01:20:39 GMT  
		Size: 325.4 MB (325355766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db68a9a54903cc6357fea815a696cb123ca6c6735760674f818f8536716414cb`  
		Last Modified: Tue, 06 Oct 2026 01:20:32 GMT  
		Size: 368.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1` - unknown; unknown

```console
$ docker pull julia@sha256:adb94ac3ff29be1cf43fea6259559f1648a9768c76acec3e8bd64488efe25c6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2265825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1595265615de419d1645c52c58bf751a63077dcd094b30bfd48822238c6a14df`

```dockerfile
```

-	Layers:
	-	`sha256:cead3ad7485a432e56103007096641193d32d3719ccbf2f51cb7a0b87d105acd`  
		Last Modified: Tue, 06 Oct 2026 01:20:32 GMT  
		Size: 2.2 MB (2247957 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2251714eb12e9cdaf9f5fb2f1f7fadd1b16293c64f4f13fa4ae47c8a00dfda00`  
		Last Modified: Tue, 06 Oct 2026 01:20:32 GMT  
		Size: 17.9 KB (17868 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1` - linux; 386

```console
$ docker pull julia@sha256:ec7086279896ff2660abf3a6fa51bdaee8a6362c200e491bf85aecde57326f84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.5 MB (280487205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c32755e042497c8e0ba4c35b177a40388dcca8bdd9ea98ee0c747b71fc9526a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:16:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:16:40 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:16:40 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:16:40 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:16:40 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 06 Oct 2026 01:16:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.1-linux-x86_64.tar.gz'; 			sha256='0f2e18c8dea60a2c8711d089cd9612f7a8df394b89e5208096fe5867647e0908'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.1-linux-i686.tar.gz'; 			sha256='8bd3f8f20c0fd346b31ba5204f50d770c21abc0dba6f37b7ad7c02faa05033a6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.1-linux-aarch64.tar.gz'; 			sha256='78341862e24734ea1c2fa8795183c52627c23a99aba5aa1d0ec840edecec5ce0'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:16:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:16:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:16:40 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ca022fbc63d33cffdd1c01c83628151eb3bd052184abd7fccc450342012464c`  
		Last Modified: Tue, 06 Oct 2026 01:17:15 GMT  
		Size: 6.4 MB (6436306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a203c1eddaf48e3b424a90ec29d4e069d84e6b1b9adc1ccaf695a3472099999`  
		Last Modified: Tue, 06 Oct 2026 01:17:20 GMT  
		Size: 242.7 MB (242697230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a3f6cac63e26543d6dcdf1810e75aeebc961ecc839d6f6680688a368583eb75`  
		Last Modified: Tue, 06 Oct 2026 01:17:15 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1` - unknown; unknown

```console
$ docker pull julia@sha256:0a87657c3f3fc2499888072fc1019e2e83166286bbafe08235770bebfe1f96cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2262405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2be40150d1e9fe1d0b409ffa6bab4132c1e2a36d314ce3a66739c914a229cdea`

```dockerfile
```

-	Layers:
	-	`sha256:031d0ba7a34a0d0f3d049b43fc8a5d61902989f8e4e57a06cd31ba93c81624fe`  
		Last Modified: Tue, 06 Oct 2026 01:17:15 GMT  
		Size: 2.2 MB (2244758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff21f8cbf58246edd02c540ecf0340507030fdccb82baf86b680497d8abe32d4`  
		Last Modified: Tue, 06 Oct 2026 01:17:15 GMT  
		Size: 17.6 KB (17647 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1` - windows version 10.0.26100.33438; amd64

```console
$ docker pull julia@sha256:19533cd65ce7a09fa1c1d3359fa79f8dd9ea2a397e9ab3d718b527941f2d63e2
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2766881546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcb156701154c8684a82a72cff8e6bb0ee154f53ecef00ae3847f0ffe6fddde0`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Mon, 28 Sep 2026 23:42:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 28 Sep 2026 23:42:48 GMT
ENV JULIA_VERSION=1.13.1
# Mon, 28 Sep 2026 23:42:48 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.1-win64.exe
# Mon, 28 Sep 2026 23:42:49 GMT
ENV JULIA_SHA256=a9748efca5e4c4a4188261fd569f9275426cb655781692be308d604da1c1e1b7
# Mon, 28 Sep 2026 23:45:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Mon, 28 Sep 2026 23:45:06 GMT
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
	-	`sha256:ba6b024ac08375648c1d3dd9d1a3c8a18f7b37a721d60c44715afdfa6d482b9f`  
		Last Modified: Mon, 28 Sep 2026 23:45:12 GMT  
		Size: 1.3 KB (1340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eedd547e6565009d09136b32123dcfbb47e9c821c9723509f1b78c79274df4d`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f7494af7342a64846fb01f7d034da738025632fca7997226f8f6f662e446ff`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd8ca8a7b4053d8487ca8e6500f15c3a3d55dbcbff0904f278191790aebb53d3`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2538907158ce0a26fc27b0632ccfb5a0f53902c110053d89da29fd5c8009d2b4`  
		Last Modified: Mon, 28 Sep 2026 23:45:47 GMT  
		Size: 309.2 MB (309245397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d74d26b958700b42ea4084988788b2fd993551ec2dee1e2f879f0068e36028`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1` - windows version 10.0.20348.5622; amd64

```console
$ docker pull julia@sha256:d80b2fd1d3f8d0bd40a75273cc2444796167da8b315d5d74ad7f8f0922194e55
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2528711919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2d049d0624180ccb46605e8b882e0814a8518de02ac2c3deb84c1411ca66b40`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Mon, 28 Sep 2026 23:42:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 28 Sep 2026 23:42:50 GMT
ENV JULIA_VERSION=1.13.1
# Mon, 28 Sep 2026 23:42:51 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.1-win64.exe
# Mon, 28 Sep 2026 23:42:53 GMT
ENV JULIA_SHA256=a9748efca5e4c4a4188261fd569f9275426cb655781692be308d604da1c1e1b7
# Mon, 28 Sep 2026 23:48:31 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Mon, 28 Sep 2026 23:48:32 GMT
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
	-	`sha256:92da9030d6488f94c1464eb176bb167430fb388622462eac1f949824e0acc18e`  
		Last Modified: Mon, 28 Sep 2026 23:48:38 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ff33d826f815dec6608e75581bc01ec232731fb89cb350ded1dd8bd78454911`  
		Last Modified: Mon, 28 Sep 2026 23:48:37 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f378efe657f23f5ca4ae347c6b2bf7458de16545e1ad8e559df5143c8b54f2ab`  
		Last Modified: Mon, 28 Sep 2026 23:48:36 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53d9687ed7d58f696d166555a841fa614e9547d662d39bf95ee4adb669bfc06`  
		Last Modified: Mon, 28 Sep 2026 23:48:36 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f7dc4c6ea2d5855227f2a4f5885ef3a733b6cb6b437857e7129c06c6001b4c`  
		Last Modified: Mon, 28 Sep 2026 23:49:16 GMT  
		Size: 309.2 MB (309216633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d8f9703cfdaae26f297da651b0bd60ed19718316a562b5bb325e333cfb6c798`  
		Last Modified: Mon, 28 Sep 2026 23:48:36 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1-bookworm`

```console
$ docker pull julia@sha256:41561e8f2c891960279ead9fe61111fd12fb4e12ab6a9fc5a9efce7ae23642d4
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
$ docker pull julia@sha256:229eb93c838d469012ab7ebe47c4d4ba50aa3e28094d12bbe820a47b482c1085
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.1 MB (340066472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e973dfa5be11b014af0217c917f3918a29f7e8b6646b0a7f0b9f339763eaec83`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:18:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:18:31 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:18:31 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:18:31 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:18:31 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 06 Oct 2026 01:18:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.1-linux-x86_64.tar.gz'; 			sha256='0f2e18c8dea60a2c8711d089cd9612f7a8df394b89e5208096fe5867647e0908'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.1-linux-i686.tar.gz'; 			sha256='8bd3f8f20c0fd346b31ba5204f50d770c21abc0dba6f37b7ad7c02faa05033a6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.1-linux-aarch64.tar.gz'; 			sha256='78341862e24734ea1c2fa8795183c52627c23a99aba5aa1d0ec840edecec5ce0'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:18:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:18:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:18:31 GMT
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
	-	`sha256:c88938ba66fd23dd43aa960a332e275d1ee550c497dfb03932021e6da2878f85`  
		Last Modified: Tue, 06 Oct 2026 01:19:23 GMT  
		Size: 306.3 MB (306270853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06cd1f3ef3bafc142ad32b2e52a017ea8e7cda211416cb5e2602f62dd8509f4a`  
		Last Modified: Tue, 06 Oct 2026 01:19:17 GMT  
		Size: 368.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:9e86379dced0b9d905623f3eff2907c67dd64046e5fbd6e507af7efb674840e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2590798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6241bb5fee781354eca42ba94a3563d8b16f57403df273a00ee973c39f05899`

```dockerfile
```

-	Layers:
	-	`sha256:c4251fdd1cf40f4e67926b3e16aefb3c39bfa0f5ae0c01d7923f29788cfee093`  
		Last Modified: Tue, 06 Oct 2026 01:19:17 GMT  
		Size: 2.6 MB (2574243 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:682700d413613bed1f20cc13d5f0b0b06a0920ba7c0852f5abd4ed90fa6cf977`  
		Last Modified: Tue, 06 Oct 2026 01:19:17 GMT  
		Size: 16.6 KB (16555 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1-bookworm` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:8bfe7168498592dc033cd39d2ce77a46d5e77da221e0bee5a89486f9497d0321
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.9 MB (358850170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d990544df6c9b8942b121d3f879817ee007337c447bc7ca5d202dc4de78d9f81`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:19:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:19:49 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:19:49 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:19:49 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 06 Oct 2026 01:19:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.1-linux-x86_64.tar.gz'; 			sha256='0f2e18c8dea60a2c8711d089cd9612f7a8df394b89e5208096fe5867647e0908'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.1-linux-i686.tar.gz'; 			sha256='8bd3f8f20c0fd346b31ba5204f50d770c21abc0dba6f37b7ad7c02faa05033a6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.1-linux-aarch64.tar.gz'; 			sha256='78341862e24734ea1c2fa8795183c52627c23a99aba5aa1d0ec840edecec5ce0'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:19:49 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93794a8c3f2257149aef21a9fab14395fc45359f7aeffa926ba0e724cb973ccb`  
		Last Modified: Tue, 06 Oct 2026 01:20:35 GMT  
		Size: 5.4 MB (5388847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c6fe7a488267e1eb4b0f189e3dae52835a12da01d7dcb7812cd203cea0c6f97`  
		Last Modified: Tue, 06 Oct 2026 01:20:41 GMT  
		Size: 325.3 MB (325323773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cfcab2a0578e03147983b174175eea51fcb364eabc7d9b275508eaabfe6df86`  
		Last Modified: Tue, 06 Oct 2026 01:20:35 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:eedcab6b716b6bbda73deb3cc3d63105b66ba7a129be1482f270f78f716d7736
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2591191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb7839340891fece89a47e01718670378180a9c8028e2bb9979012f744599da9`

```dockerfile
```

-	Layers:
	-	`sha256:117eb48e2f23f0ad653f38e5094ee8e60b2d4f3aed9e2360c533cd6c8abb0a6c`  
		Last Modified: Tue, 06 Oct 2026 01:20:35 GMT  
		Size: 2.6 MB (2574518 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5839397e975e020267de660c7c71997ea0c81746b190a2112558f186fcb1877a`  
		Last Modified: Tue, 06 Oct 2026 01:20:35 GMT  
		Size: 16.7 KB (16673 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1-bookworm` - linux; 386

```console
$ docker pull julia@sha256:0d6af774fd2320543b1834c9c82b45f85b206f7476e7cd86aefb0906eb76d577
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.6 MB (277609913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04fe7592b8fbb3d2798af54fc40cf099d054857469832a20b1e36a824f8c1353`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:16:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:16:37 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:16:37 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:16:37 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:16:37 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 06 Oct 2026 01:16:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.1-linux-x86_64.tar.gz'; 			sha256='0f2e18c8dea60a2c8711d089cd9612f7a8df394b89e5208096fe5867647e0908'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.1-linux-i686.tar.gz'; 			sha256='8bd3f8f20c0fd346b31ba5204f50d770c21abc0dba6f37b7ad7c02faa05033a6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.1-linux-aarch64.tar.gz'; 			sha256='78341862e24734ea1c2fa8795183c52627c23a99aba5aa1d0ec840edecec5ce0'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:16:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:16:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:16:37 GMT
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
	-	`sha256:c9d3d060a2d246c7decc539d9c53b77ad77118ea380c5fb5d56b4367afc94011`  
		Last Modified: Tue, 06 Oct 2026 01:17:14 GMT  
		Size: 242.7 MB (242665190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff29e6ba89e064e72102cd31aea6cec4b6c68acddfaae8679fb1375e42a1c98b`  
		Last Modified: Tue, 06 Oct 2026 01:17:10 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:6fd046794d071fde1c98d1295ede934fcb4ccee058bef9f16fd48a5275a07ae5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2587911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bac4e743521929462e7982ecc1713bf776db08d40162be9f8a25cc61a1866ee`

```dockerfile
```

-	Layers:
	-	`sha256:4986035b0746226b9d0b91d0407127df75dd6418212cbf603892cd9894613170`  
		Last Modified: Tue, 06 Oct 2026 01:17:10 GMT  
		Size: 2.6 MB (2571390 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:867b6b80da4a59537e9a79e2a81f4814ddf4cdfd47648771619d1704bf6bd96f`  
		Last Modified: Tue, 06 Oct 2026 01:17:10 GMT  
		Size: 16.5 KB (16521 bytes)  
		MIME: application/vnd.in-toto+json

## `julia:1-trixie`

```console
$ docker pull julia@sha256:0002771531bbae894f2532a5ae02ea71c30685440ca3bdaea0a43d17e65571e0
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
$ docker pull julia@sha256:acbc8af9ea4f1a278b41adcddd667eb15c194691302a8477d42ca45b7f2a5034
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.4 MB (342398235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fcb0a94693bf143945bb56f6b004fb695b411630213d41df6cb8892c19426c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:17:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:17:46 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:17:46 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:17:46 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:17:46 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 06 Oct 2026 01:17:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.1-linux-x86_64.tar.gz'; 			sha256='0f2e18c8dea60a2c8711d089cd9612f7a8df394b89e5208096fe5867647e0908'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.1-linux-i686.tar.gz'; 			sha256='8bd3f8f20c0fd346b31ba5204f50d770c21abc0dba6f37b7ad7c02faa05033a6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.1-linux-aarch64.tar.gz'; 			sha256='78341862e24734ea1c2fa8795183c52627c23a99aba5aa1d0ec840edecec5ce0'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:17:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:17:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:17:46 GMT
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
	-	`sha256:cb5dc77e66073cd21b84f34e3dc6e6a19c8f4d7f50ed9671015b99a3f69ef1df`  
		Last Modified: Tue, 06 Oct 2026 01:18:35 GMT  
		Size: 306.3 MB (306305175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de8d12602fb0d388a81fc681eacdd68732979bdb03d1045915682346489dc083`  
		Last Modified: Tue, 06 Oct 2026 01:18:29 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:0d81bd584a94bb63306e7cc1ef19f1ccb06211f1dad19c34c62df9b6d4ec70c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2265334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56fdbbe2e94992979dba2ca429a8e5f018dbce9739ca9c72fa8d8a81c760973d`

```dockerfile
```

-	Layers:
	-	`sha256:3ba65a54ae2a23b09301a9c0a18565850a7d9c31a862a8eb861d9ae747c054c2`  
		Last Modified: Tue, 06 Oct 2026 01:18:29 GMT  
		Size: 2.2 MB (2247633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95bd2f9b2b25495b406ee67ff5ba75fc25d1d00db841c290f28e3fdea2b75278`  
		Last Modified: Tue, 06 Oct 2026 01:18:29 GMT  
		Size: 17.7 KB (17701 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1-trixie` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:5f7bc1153325ae44a3cbef0852d189b52a7cc3d21544d68f982b7b7ed2595f39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.7 MB (361712722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4920ef5e813186e86344d52ec221c346301a8ab6d6b97951201a5dd53f72d6c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:19:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:19:47 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:19:47 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:19:47 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:19:47 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 06 Oct 2026 01:19:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.1-linux-x86_64.tar.gz'; 			sha256='0f2e18c8dea60a2c8711d089cd9612f7a8df394b89e5208096fe5867647e0908'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.1-linux-i686.tar.gz'; 			sha256='8bd3f8f20c0fd346b31ba5204f50d770c21abc0dba6f37b7ad7c02faa05033a6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.1-linux-aarch64.tar.gz'; 			sha256='78341862e24734ea1c2fa8795183c52627c23a99aba5aa1d0ec840edecec5ce0'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:19:47 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:19:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:19:47 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c63217cb9a06576ce0342d4cc63634c01370d11e6e43122e37e11c8dc2e4a21`  
		Last Modified: Tue, 06 Oct 2026 01:20:33 GMT  
		Size: 6.2 MB (6156306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed7a3f4ae062dd59e467d5dd2a125abfa8bffd323930a9cf0632b6ff8e3948d9`  
		Last Modified: Tue, 06 Oct 2026 01:20:39 GMT  
		Size: 325.4 MB (325355766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db68a9a54903cc6357fea815a696cb123ca6c6735760674f818f8536716414cb`  
		Last Modified: Tue, 06 Oct 2026 01:20:32 GMT  
		Size: 368.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:adb94ac3ff29be1cf43fea6259559f1648a9768c76acec3e8bd64488efe25c6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2265825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1595265615de419d1645c52c58bf751a63077dcd094b30bfd48822238c6a14df`

```dockerfile
```

-	Layers:
	-	`sha256:cead3ad7485a432e56103007096641193d32d3719ccbf2f51cb7a0b87d105acd`  
		Last Modified: Tue, 06 Oct 2026 01:20:32 GMT  
		Size: 2.2 MB (2247957 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2251714eb12e9cdaf9f5fb2f1f7fadd1b16293c64f4f13fa4ae47c8a00dfda00`  
		Last Modified: Tue, 06 Oct 2026 01:20:32 GMT  
		Size: 17.9 KB (17868 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1-trixie` - linux; 386

```console
$ docker pull julia@sha256:ec7086279896ff2660abf3a6fa51bdaee8a6362c200e491bf85aecde57326f84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.5 MB (280487205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c32755e042497c8e0ba4c35b177a40388dcca8bdd9ea98ee0c747b71fc9526a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:16:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:16:40 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:16:40 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:16:40 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:16:40 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 06 Oct 2026 01:16:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.1-linux-x86_64.tar.gz'; 			sha256='0f2e18c8dea60a2c8711d089cd9612f7a8df394b89e5208096fe5867647e0908'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.1-linux-i686.tar.gz'; 			sha256='8bd3f8f20c0fd346b31ba5204f50d770c21abc0dba6f37b7ad7c02faa05033a6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.1-linux-aarch64.tar.gz'; 			sha256='78341862e24734ea1c2fa8795183c52627c23a99aba5aa1d0ec840edecec5ce0'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:16:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:16:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:16:40 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ca022fbc63d33cffdd1c01c83628151eb3bd052184abd7fccc450342012464c`  
		Last Modified: Tue, 06 Oct 2026 01:17:15 GMT  
		Size: 6.4 MB (6436306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a203c1eddaf48e3b424a90ec29d4e069d84e6b1b9adc1ccaf695a3472099999`  
		Last Modified: Tue, 06 Oct 2026 01:17:20 GMT  
		Size: 242.7 MB (242697230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a3f6cac63e26543d6dcdf1810e75aeebc961ecc839d6f6680688a368583eb75`  
		Last Modified: Tue, 06 Oct 2026 01:17:15 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:0a87657c3f3fc2499888072fc1019e2e83166286bbafe08235770bebfe1f96cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2262405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2be40150d1e9fe1d0b409ffa6bab4132c1e2a36d314ce3a66739c914a229cdea`

```dockerfile
```

-	Layers:
	-	`sha256:031d0ba7a34a0d0f3d049b43fc8a5d61902989f8e4e57a06cd31ba93c81624fe`  
		Last Modified: Tue, 06 Oct 2026 01:17:15 GMT  
		Size: 2.2 MB (2244758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff21f8cbf58246edd02c540ecf0340507030fdccb82baf86b680497d8abe32d4`  
		Last Modified: Tue, 06 Oct 2026 01:17:15 GMT  
		Size: 17.6 KB (17647 bytes)  
		MIME: application/vnd.in-toto+json

## `julia:1-windowsservercore`

```console
$ docker pull julia@sha256:d4081f1815a89df67cd2fb731ebff6b55106ed9cefc2b2eb991f3d033299df3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `julia:1-windowsservercore` - windows version 10.0.26100.33438; amd64

```console
$ docker pull julia@sha256:19533cd65ce7a09fa1c1d3359fa79f8dd9ea2a397e9ab3d718b527941f2d63e2
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2766881546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcb156701154c8684a82a72cff8e6bb0ee154f53ecef00ae3847f0ffe6fddde0`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Mon, 28 Sep 2026 23:42:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 28 Sep 2026 23:42:48 GMT
ENV JULIA_VERSION=1.13.1
# Mon, 28 Sep 2026 23:42:48 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.1-win64.exe
# Mon, 28 Sep 2026 23:42:49 GMT
ENV JULIA_SHA256=a9748efca5e4c4a4188261fd569f9275426cb655781692be308d604da1c1e1b7
# Mon, 28 Sep 2026 23:45:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Mon, 28 Sep 2026 23:45:06 GMT
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
	-	`sha256:ba6b024ac08375648c1d3dd9d1a3c8a18f7b37a721d60c44715afdfa6d482b9f`  
		Last Modified: Mon, 28 Sep 2026 23:45:12 GMT  
		Size: 1.3 KB (1340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eedd547e6565009d09136b32123dcfbb47e9c821c9723509f1b78c79274df4d`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f7494af7342a64846fb01f7d034da738025632fca7997226f8f6f662e446ff`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd8ca8a7b4053d8487ca8e6500f15c3a3d55dbcbff0904f278191790aebb53d3`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2538907158ce0a26fc27b0632ccfb5a0f53902c110053d89da29fd5c8009d2b4`  
		Last Modified: Mon, 28 Sep 2026 23:45:47 GMT  
		Size: 309.2 MB (309245397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d74d26b958700b42ea4084988788b2fd993551ec2dee1e2f879f0068e36028`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull julia@sha256:d80b2fd1d3f8d0bd40a75273cc2444796167da8b315d5d74ad7f8f0922194e55
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2528711919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2d049d0624180ccb46605e8b882e0814a8518de02ac2c3deb84c1411ca66b40`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Mon, 28 Sep 2026 23:42:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 28 Sep 2026 23:42:50 GMT
ENV JULIA_VERSION=1.13.1
# Mon, 28 Sep 2026 23:42:51 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.1-win64.exe
# Mon, 28 Sep 2026 23:42:53 GMT
ENV JULIA_SHA256=a9748efca5e4c4a4188261fd569f9275426cb655781692be308d604da1c1e1b7
# Mon, 28 Sep 2026 23:48:31 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Mon, 28 Sep 2026 23:48:32 GMT
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
	-	`sha256:92da9030d6488f94c1464eb176bb167430fb388622462eac1f949824e0acc18e`  
		Last Modified: Mon, 28 Sep 2026 23:48:38 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ff33d826f815dec6608e75581bc01ec232731fb89cb350ded1dd8bd78454911`  
		Last Modified: Mon, 28 Sep 2026 23:48:37 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f378efe657f23f5ca4ae347c6b2bf7458de16545e1ad8e559df5143c8b54f2ab`  
		Last Modified: Mon, 28 Sep 2026 23:48:36 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53d9687ed7d58f696d166555a841fa614e9547d662d39bf95ee4adb669bfc06`  
		Last Modified: Mon, 28 Sep 2026 23:48:36 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f7dc4c6ea2d5855227f2a4f5885ef3a733b6cb6b437857e7129c06c6001b4c`  
		Last Modified: Mon, 28 Sep 2026 23:49:16 GMT  
		Size: 309.2 MB (309216633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d8f9703cfdaae26f297da651b0bd60ed19718316a562b5bb325e333cfb6c798`  
		Last Modified: Mon, 28 Sep 2026 23:48:36 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1-windowsservercore-ltsc2022`

```console
$ docker pull julia@sha256:bd07857c8870598c53b14c7e06220dca3ac2ecc55d23cab655ec4c847daa1095
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `julia:1-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull julia@sha256:d80b2fd1d3f8d0bd40a75273cc2444796167da8b315d5d74ad7f8f0922194e55
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2528711919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2d049d0624180ccb46605e8b882e0814a8518de02ac2c3deb84c1411ca66b40`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Mon, 28 Sep 2026 23:42:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 28 Sep 2026 23:42:50 GMT
ENV JULIA_VERSION=1.13.1
# Mon, 28 Sep 2026 23:42:51 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.1-win64.exe
# Mon, 28 Sep 2026 23:42:53 GMT
ENV JULIA_SHA256=a9748efca5e4c4a4188261fd569f9275426cb655781692be308d604da1c1e1b7
# Mon, 28 Sep 2026 23:48:31 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Mon, 28 Sep 2026 23:48:32 GMT
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
	-	`sha256:92da9030d6488f94c1464eb176bb167430fb388622462eac1f949824e0acc18e`  
		Last Modified: Mon, 28 Sep 2026 23:48:38 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ff33d826f815dec6608e75581bc01ec232731fb89cb350ded1dd8bd78454911`  
		Last Modified: Mon, 28 Sep 2026 23:48:37 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f378efe657f23f5ca4ae347c6b2bf7458de16545e1ad8e559df5143c8b54f2ab`  
		Last Modified: Mon, 28 Sep 2026 23:48:36 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53d9687ed7d58f696d166555a841fa614e9547d662d39bf95ee4adb669bfc06`  
		Last Modified: Mon, 28 Sep 2026 23:48:36 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f7dc4c6ea2d5855227f2a4f5885ef3a733b6cb6b437857e7129c06c6001b4c`  
		Last Modified: Mon, 28 Sep 2026 23:49:16 GMT  
		Size: 309.2 MB (309216633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d8f9703cfdaae26f297da651b0bd60ed19718316a562b5bb325e333cfb6c798`  
		Last Modified: Mon, 28 Sep 2026 23:48:36 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1-windowsservercore-ltsc2025`

```console
$ docker pull julia@sha256:b417f835dcc78c9ce25972bdd52e46fd0e687072c6b10e04cc87274e4e69cd88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `julia:1-windowsservercore-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull julia@sha256:19533cd65ce7a09fa1c1d3359fa79f8dd9ea2a397e9ab3d718b527941f2d63e2
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2766881546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcb156701154c8684a82a72cff8e6bb0ee154f53ecef00ae3847f0ffe6fddde0`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Mon, 28 Sep 2026 23:42:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 28 Sep 2026 23:42:48 GMT
ENV JULIA_VERSION=1.13.1
# Mon, 28 Sep 2026 23:42:48 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.1-win64.exe
# Mon, 28 Sep 2026 23:42:49 GMT
ENV JULIA_SHA256=a9748efca5e4c4a4188261fd569f9275426cb655781692be308d604da1c1e1b7
# Mon, 28 Sep 2026 23:45:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Mon, 28 Sep 2026 23:45:06 GMT
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
	-	`sha256:ba6b024ac08375648c1d3dd9d1a3c8a18f7b37a721d60c44715afdfa6d482b9f`  
		Last Modified: Mon, 28 Sep 2026 23:45:12 GMT  
		Size: 1.3 KB (1340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eedd547e6565009d09136b32123dcfbb47e9c821c9723509f1b78c79274df4d`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f7494af7342a64846fb01f7d034da738025632fca7997226f8f6f662e446ff`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd8ca8a7b4053d8487ca8e6500f15c3a3d55dbcbff0904f278191790aebb53d3`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2538907158ce0a26fc27b0632ccfb5a0f53902c110053d89da29fd5c8009d2b4`  
		Last Modified: Mon, 28 Sep 2026 23:45:47 GMT  
		Size: 309.2 MB (309245397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d74d26b958700b42ea4084988788b2fd993551ec2dee1e2f879f0068e36028`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.10`

```console
$ docker pull julia@sha256:4972d3786c18fee85f632fa027f1421428745c881324fd4b5431eaef2ccc40ec
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

### `julia:1.10` - windows version 10.0.26100.33438; amd64

```console
$ docker pull julia@sha256:2a9e74a252503bd017228c1591d4bf30c2fe81781675f05de4d72410625f99d8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2651774288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86522856aad5f3e6d510b9d66dc19839b11b09a11120e5e7d85f75514080f0af`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Wed, 09 Sep 2026 22:32:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:32:02 GMT
ENV JULIA_VERSION=1.10.12
# Wed, 09 Sep 2026 22:32:04 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.10/julia-1.10.12-win64.exe
# Wed, 09 Sep 2026 22:32:05 GMT
ENV JULIA_SHA256=d971ea3cc03040e45893e3591b86809bb69b33693091b068270bf6f341f38f94
# Wed, 09 Sep 2026 22:34:39 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:34:40 GMT
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
	-	`sha256:a94ca15f4f6f359841e19a7dae222af6b7a86ceefe8714b68e57b6302f2cdd3d`  
		Last Modified: Wed, 09 Sep 2026 22:34:47 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260923de20f1450b074876cbb08844dfed2dfb61ff062a3f83293cff38bbd0db`  
		Last Modified: Wed, 09 Sep 2026 22:34:45 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db03098cbc663cfe14c42633d9f754210a815bb2fa3dca3f31fdf2df9cb7783c`  
		Last Modified: Wed, 09 Sep 2026 22:34:45 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4695e02b418da78856fd2f13091f23eab0a1e09fb149ffe6494f63bfdc44c51f`  
		Last Modified: Wed, 09 Sep 2026 22:34:46 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da32f3665985683ec4ff522e796be55dbe37b5cf392d2b549d4f4b286565055`  
		Last Modified: Wed, 09 Sep 2026 22:35:09 GMT  
		Size: 194.1 MB (194138247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8889b1598a1aa46bb455edea4f2e1a32bfa5d7ef26c42d83c7e2b896d1ef0fc`  
		Last Modified: Wed, 09 Sep 2026 22:34:46 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.10` - windows version 10.0.20348.5622; amd64

```console
$ docker pull julia@sha256:c9b58344adc046b9e02ba30d5afebc37e2ac3beb025b27b5fa357bf7c139d15f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2413610366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8d670a1631224a4383ca2692020e6cbba923f955c4c7a641b21f8a7dc8f03a5`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 09 Sep 2026 22:32:04 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:32:06 GMT
ENV JULIA_VERSION=1.10.12
# Wed, 09 Sep 2026 22:32:07 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.10/julia-1.10.12-win64.exe
# Wed, 09 Sep 2026 22:32:08 GMT
ENV JULIA_SHA256=d971ea3cc03040e45893e3591b86809bb69b33693091b068270bf6f341f38f94
# Wed, 09 Sep 2026 22:34:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:34:49 GMT
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
	-	`sha256:786a81c2904851d2f66fc6670e36ddb5d4eda26639a62a7badebf31d08f1160b`  
		Last Modified: Wed, 09 Sep 2026 22:35:04 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:997230e5e861d6b50d37457ab34eef91eaac9c9ae25415bd99980c544a711c34`  
		Last Modified: Wed, 09 Sep 2026 22:35:02 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c84028980add5cd6686dcc9b5a36369561875584e2b57b168574833b3b01eaa`  
		Last Modified: Wed, 09 Sep 2026 22:35:02 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4894aca1e9abc01d337c1b549ebcc3a1f881976298ad5e23137b986ee6d9fa16`  
		Last Modified: Wed, 09 Sep 2026 22:35:04 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca160e7fe9c4bda9f13665730084bf87688b44ed5ac379a8d8bd570142519ce3`  
		Last Modified: Wed, 09 Sep 2026 22:35:28 GMT  
		Size: 194.1 MB (194115128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a6fb0e9ddd316bd26dd3748464d3774e4deb1ee2184618e275451bb1e38dca`  
		Last Modified: Wed, 09 Sep 2026 22:35:04 GMT  
		Size: 1.3 KB (1292 bytes)  
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
$ docker pull julia@sha256:b890e7bfc7f4caeb3195887620c7012f9c29990406569e0722f7293542bf87ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `julia:1.10-windowsservercore` - windows version 10.0.26100.33438; amd64

```console
$ docker pull julia@sha256:2a9e74a252503bd017228c1591d4bf30c2fe81781675f05de4d72410625f99d8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2651774288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86522856aad5f3e6d510b9d66dc19839b11b09a11120e5e7d85f75514080f0af`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Wed, 09 Sep 2026 22:32:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:32:02 GMT
ENV JULIA_VERSION=1.10.12
# Wed, 09 Sep 2026 22:32:04 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.10/julia-1.10.12-win64.exe
# Wed, 09 Sep 2026 22:32:05 GMT
ENV JULIA_SHA256=d971ea3cc03040e45893e3591b86809bb69b33693091b068270bf6f341f38f94
# Wed, 09 Sep 2026 22:34:39 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:34:40 GMT
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
	-	`sha256:a94ca15f4f6f359841e19a7dae222af6b7a86ceefe8714b68e57b6302f2cdd3d`  
		Last Modified: Wed, 09 Sep 2026 22:34:47 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260923de20f1450b074876cbb08844dfed2dfb61ff062a3f83293cff38bbd0db`  
		Last Modified: Wed, 09 Sep 2026 22:34:45 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db03098cbc663cfe14c42633d9f754210a815bb2fa3dca3f31fdf2df9cb7783c`  
		Last Modified: Wed, 09 Sep 2026 22:34:45 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4695e02b418da78856fd2f13091f23eab0a1e09fb149ffe6494f63bfdc44c51f`  
		Last Modified: Wed, 09 Sep 2026 22:34:46 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da32f3665985683ec4ff522e796be55dbe37b5cf392d2b549d4f4b286565055`  
		Last Modified: Wed, 09 Sep 2026 22:35:09 GMT  
		Size: 194.1 MB (194138247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8889b1598a1aa46bb455edea4f2e1a32bfa5d7ef26c42d83c7e2b896d1ef0fc`  
		Last Modified: Wed, 09 Sep 2026 22:34:46 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.10-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull julia@sha256:c9b58344adc046b9e02ba30d5afebc37e2ac3beb025b27b5fa357bf7c139d15f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2413610366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8d670a1631224a4383ca2692020e6cbba923f955c4c7a641b21f8a7dc8f03a5`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 09 Sep 2026 22:32:04 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:32:06 GMT
ENV JULIA_VERSION=1.10.12
# Wed, 09 Sep 2026 22:32:07 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.10/julia-1.10.12-win64.exe
# Wed, 09 Sep 2026 22:32:08 GMT
ENV JULIA_SHA256=d971ea3cc03040e45893e3591b86809bb69b33693091b068270bf6f341f38f94
# Wed, 09 Sep 2026 22:34:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:34:49 GMT
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
	-	`sha256:786a81c2904851d2f66fc6670e36ddb5d4eda26639a62a7badebf31d08f1160b`  
		Last Modified: Wed, 09 Sep 2026 22:35:04 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:997230e5e861d6b50d37457ab34eef91eaac9c9ae25415bd99980c544a711c34`  
		Last Modified: Wed, 09 Sep 2026 22:35:02 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c84028980add5cd6686dcc9b5a36369561875584e2b57b168574833b3b01eaa`  
		Last Modified: Wed, 09 Sep 2026 22:35:02 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4894aca1e9abc01d337c1b549ebcc3a1f881976298ad5e23137b986ee6d9fa16`  
		Last Modified: Wed, 09 Sep 2026 22:35:04 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca160e7fe9c4bda9f13665730084bf87688b44ed5ac379a8d8bd570142519ce3`  
		Last Modified: Wed, 09 Sep 2026 22:35:28 GMT  
		Size: 194.1 MB (194115128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a6fb0e9ddd316bd26dd3748464d3774e4deb1ee2184618e275451bb1e38dca`  
		Last Modified: Wed, 09 Sep 2026 22:35:04 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.10-windowsservercore-ltsc2022`

```console
$ docker pull julia@sha256:9fa63b49921fa66b5522784758e2a7230aaf572167449c06eaef5d15cae65abf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `julia:1.10-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull julia@sha256:c9b58344adc046b9e02ba30d5afebc37e2ac3beb025b27b5fa357bf7c139d15f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2413610366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8d670a1631224a4383ca2692020e6cbba923f955c4c7a641b21f8a7dc8f03a5`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 09 Sep 2026 22:32:04 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:32:06 GMT
ENV JULIA_VERSION=1.10.12
# Wed, 09 Sep 2026 22:32:07 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.10/julia-1.10.12-win64.exe
# Wed, 09 Sep 2026 22:32:08 GMT
ENV JULIA_SHA256=d971ea3cc03040e45893e3591b86809bb69b33693091b068270bf6f341f38f94
# Wed, 09 Sep 2026 22:34:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:34:49 GMT
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
	-	`sha256:786a81c2904851d2f66fc6670e36ddb5d4eda26639a62a7badebf31d08f1160b`  
		Last Modified: Wed, 09 Sep 2026 22:35:04 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:997230e5e861d6b50d37457ab34eef91eaac9c9ae25415bd99980c544a711c34`  
		Last Modified: Wed, 09 Sep 2026 22:35:02 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c84028980add5cd6686dcc9b5a36369561875584e2b57b168574833b3b01eaa`  
		Last Modified: Wed, 09 Sep 2026 22:35:02 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4894aca1e9abc01d337c1b549ebcc3a1f881976298ad5e23137b986ee6d9fa16`  
		Last Modified: Wed, 09 Sep 2026 22:35:04 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca160e7fe9c4bda9f13665730084bf87688b44ed5ac379a8d8bd570142519ce3`  
		Last Modified: Wed, 09 Sep 2026 22:35:28 GMT  
		Size: 194.1 MB (194115128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a6fb0e9ddd316bd26dd3748464d3774e4deb1ee2184618e275451bb1e38dca`  
		Last Modified: Wed, 09 Sep 2026 22:35:04 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.10-windowsservercore-ltsc2025`

```console
$ docker pull julia@sha256:eb7e281a5169b18eb767a9325e7b2239af8becd4bb0dc77f01eb4d1c8eface52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `julia:1.10-windowsservercore-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull julia@sha256:2a9e74a252503bd017228c1591d4bf30c2fe81781675f05de4d72410625f99d8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2651774288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86522856aad5f3e6d510b9d66dc19839b11b09a11120e5e7d85f75514080f0af`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Wed, 09 Sep 2026 22:32:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:32:02 GMT
ENV JULIA_VERSION=1.10.12
# Wed, 09 Sep 2026 22:32:04 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.10/julia-1.10.12-win64.exe
# Wed, 09 Sep 2026 22:32:05 GMT
ENV JULIA_SHA256=d971ea3cc03040e45893e3591b86809bb69b33693091b068270bf6f341f38f94
# Wed, 09 Sep 2026 22:34:39 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:34:40 GMT
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
	-	`sha256:a94ca15f4f6f359841e19a7dae222af6b7a86ceefe8714b68e57b6302f2cdd3d`  
		Last Modified: Wed, 09 Sep 2026 22:34:47 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260923de20f1450b074876cbb08844dfed2dfb61ff062a3f83293cff38bbd0db`  
		Last Modified: Wed, 09 Sep 2026 22:34:45 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db03098cbc663cfe14c42633d9f754210a815bb2fa3dca3f31fdf2df9cb7783c`  
		Last Modified: Wed, 09 Sep 2026 22:34:45 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4695e02b418da78856fd2f13091f23eab0a1e09fb149ffe6494f63bfdc44c51f`  
		Last Modified: Wed, 09 Sep 2026 22:34:46 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da32f3665985683ec4ff522e796be55dbe37b5cf392d2b549d4f4b286565055`  
		Last Modified: Wed, 09 Sep 2026 22:35:09 GMT  
		Size: 194.1 MB (194138247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8889b1598a1aa46bb455edea4f2e1a32bfa5d7ef26c42d83c7e2b896d1ef0fc`  
		Last Modified: Wed, 09 Sep 2026 22:34:46 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.10.12`

```console
$ docker pull julia@sha256:4972d3786c18fee85f632fa027f1421428745c881324fd4b5431eaef2ccc40ec
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

### `julia:1.10.12` - windows version 10.0.26100.33438; amd64

```console
$ docker pull julia@sha256:2a9e74a252503bd017228c1591d4bf30c2fe81781675f05de4d72410625f99d8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2651774288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86522856aad5f3e6d510b9d66dc19839b11b09a11120e5e7d85f75514080f0af`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Wed, 09 Sep 2026 22:32:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:32:02 GMT
ENV JULIA_VERSION=1.10.12
# Wed, 09 Sep 2026 22:32:04 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.10/julia-1.10.12-win64.exe
# Wed, 09 Sep 2026 22:32:05 GMT
ENV JULIA_SHA256=d971ea3cc03040e45893e3591b86809bb69b33693091b068270bf6f341f38f94
# Wed, 09 Sep 2026 22:34:39 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:34:40 GMT
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
	-	`sha256:a94ca15f4f6f359841e19a7dae222af6b7a86ceefe8714b68e57b6302f2cdd3d`  
		Last Modified: Wed, 09 Sep 2026 22:34:47 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260923de20f1450b074876cbb08844dfed2dfb61ff062a3f83293cff38bbd0db`  
		Last Modified: Wed, 09 Sep 2026 22:34:45 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db03098cbc663cfe14c42633d9f754210a815bb2fa3dca3f31fdf2df9cb7783c`  
		Last Modified: Wed, 09 Sep 2026 22:34:45 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4695e02b418da78856fd2f13091f23eab0a1e09fb149ffe6494f63bfdc44c51f`  
		Last Modified: Wed, 09 Sep 2026 22:34:46 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da32f3665985683ec4ff522e796be55dbe37b5cf392d2b549d4f4b286565055`  
		Last Modified: Wed, 09 Sep 2026 22:35:09 GMT  
		Size: 194.1 MB (194138247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8889b1598a1aa46bb455edea4f2e1a32bfa5d7ef26c42d83c7e2b896d1ef0fc`  
		Last Modified: Wed, 09 Sep 2026 22:34:46 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.10.12` - windows version 10.0.20348.5622; amd64

```console
$ docker pull julia@sha256:c9b58344adc046b9e02ba30d5afebc37e2ac3beb025b27b5fa357bf7c139d15f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2413610366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8d670a1631224a4383ca2692020e6cbba923f955c4c7a641b21f8a7dc8f03a5`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 09 Sep 2026 22:32:04 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:32:06 GMT
ENV JULIA_VERSION=1.10.12
# Wed, 09 Sep 2026 22:32:07 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.10/julia-1.10.12-win64.exe
# Wed, 09 Sep 2026 22:32:08 GMT
ENV JULIA_SHA256=d971ea3cc03040e45893e3591b86809bb69b33693091b068270bf6f341f38f94
# Wed, 09 Sep 2026 22:34:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:34:49 GMT
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
	-	`sha256:786a81c2904851d2f66fc6670e36ddb5d4eda26639a62a7badebf31d08f1160b`  
		Last Modified: Wed, 09 Sep 2026 22:35:04 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:997230e5e861d6b50d37457ab34eef91eaac9c9ae25415bd99980c544a711c34`  
		Last Modified: Wed, 09 Sep 2026 22:35:02 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c84028980add5cd6686dcc9b5a36369561875584e2b57b168574833b3b01eaa`  
		Last Modified: Wed, 09 Sep 2026 22:35:02 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4894aca1e9abc01d337c1b549ebcc3a1f881976298ad5e23137b986ee6d9fa16`  
		Last Modified: Wed, 09 Sep 2026 22:35:04 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca160e7fe9c4bda9f13665730084bf87688b44ed5ac379a8d8bd570142519ce3`  
		Last Modified: Wed, 09 Sep 2026 22:35:28 GMT  
		Size: 194.1 MB (194115128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a6fb0e9ddd316bd26dd3748464d3774e4deb1ee2184618e275451bb1e38dca`  
		Last Modified: Wed, 09 Sep 2026 22:35:04 GMT  
		Size: 1.3 KB (1292 bytes)  
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
$ docker pull julia@sha256:b890e7bfc7f4caeb3195887620c7012f9c29990406569e0722f7293542bf87ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `julia:1.10.12-windowsservercore` - windows version 10.0.26100.33438; amd64

```console
$ docker pull julia@sha256:2a9e74a252503bd017228c1591d4bf30c2fe81781675f05de4d72410625f99d8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2651774288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86522856aad5f3e6d510b9d66dc19839b11b09a11120e5e7d85f75514080f0af`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Wed, 09 Sep 2026 22:32:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:32:02 GMT
ENV JULIA_VERSION=1.10.12
# Wed, 09 Sep 2026 22:32:04 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.10/julia-1.10.12-win64.exe
# Wed, 09 Sep 2026 22:32:05 GMT
ENV JULIA_SHA256=d971ea3cc03040e45893e3591b86809bb69b33693091b068270bf6f341f38f94
# Wed, 09 Sep 2026 22:34:39 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:34:40 GMT
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
	-	`sha256:a94ca15f4f6f359841e19a7dae222af6b7a86ceefe8714b68e57b6302f2cdd3d`  
		Last Modified: Wed, 09 Sep 2026 22:34:47 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260923de20f1450b074876cbb08844dfed2dfb61ff062a3f83293cff38bbd0db`  
		Last Modified: Wed, 09 Sep 2026 22:34:45 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db03098cbc663cfe14c42633d9f754210a815bb2fa3dca3f31fdf2df9cb7783c`  
		Last Modified: Wed, 09 Sep 2026 22:34:45 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4695e02b418da78856fd2f13091f23eab0a1e09fb149ffe6494f63bfdc44c51f`  
		Last Modified: Wed, 09 Sep 2026 22:34:46 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da32f3665985683ec4ff522e796be55dbe37b5cf392d2b549d4f4b286565055`  
		Last Modified: Wed, 09 Sep 2026 22:35:09 GMT  
		Size: 194.1 MB (194138247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8889b1598a1aa46bb455edea4f2e1a32bfa5d7ef26c42d83c7e2b896d1ef0fc`  
		Last Modified: Wed, 09 Sep 2026 22:34:46 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.10.12-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull julia@sha256:c9b58344adc046b9e02ba30d5afebc37e2ac3beb025b27b5fa357bf7c139d15f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2413610366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8d670a1631224a4383ca2692020e6cbba923f955c4c7a641b21f8a7dc8f03a5`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 09 Sep 2026 22:32:04 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:32:06 GMT
ENV JULIA_VERSION=1.10.12
# Wed, 09 Sep 2026 22:32:07 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.10/julia-1.10.12-win64.exe
# Wed, 09 Sep 2026 22:32:08 GMT
ENV JULIA_SHA256=d971ea3cc03040e45893e3591b86809bb69b33693091b068270bf6f341f38f94
# Wed, 09 Sep 2026 22:34:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:34:49 GMT
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
	-	`sha256:786a81c2904851d2f66fc6670e36ddb5d4eda26639a62a7badebf31d08f1160b`  
		Last Modified: Wed, 09 Sep 2026 22:35:04 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:997230e5e861d6b50d37457ab34eef91eaac9c9ae25415bd99980c544a711c34`  
		Last Modified: Wed, 09 Sep 2026 22:35:02 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c84028980add5cd6686dcc9b5a36369561875584e2b57b168574833b3b01eaa`  
		Last Modified: Wed, 09 Sep 2026 22:35:02 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4894aca1e9abc01d337c1b549ebcc3a1f881976298ad5e23137b986ee6d9fa16`  
		Last Modified: Wed, 09 Sep 2026 22:35:04 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca160e7fe9c4bda9f13665730084bf87688b44ed5ac379a8d8bd570142519ce3`  
		Last Modified: Wed, 09 Sep 2026 22:35:28 GMT  
		Size: 194.1 MB (194115128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a6fb0e9ddd316bd26dd3748464d3774e4deb1ee2184618e275451bb1e38dca`  
		Last Modified: Wed, 09 Sep 2026 22:35:04 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.10.12-windowsservercore-ltsc2022`

```console
$ docker pull julia@sha256:9fa63b49921fa66b5522784758e2a7230aaf572167449c06eaef5d15cae65abf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `julia:1.10.12-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull julia@sha256:c9b58344adc046b9e02ba30d5afebc37e2ac3beb025b27b5fa357bf7c139d15f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2413610366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8d670a1631224a4383ca2692020e6cbba923f955c4c7a641b21f8a7dc8f03a5`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 09 Sep 2026 22:32:04 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:32:06 GMT
ENV JULIA_VERSION=1.10.12
# Wed, 09 Sep 2026 22:32:07 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.10/julia-1.10.12-win64.exe
# Wed, 09 Sep 2026 22:32:08 GMT
ENV JULIA_SHA256=d971ea3cc03040e45893e3591b86809bb69b33693091b068270bf6f341f38f94
# Wed, 09 Sep 2026 22:34:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:34:49 GMT
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
	-	`sha256:786a81c2904851d2f66fc6670e36ddb5d4eda26639a62a7badebf31d08f1160b`  
		Last Modified: Wed, 09 Sep 2026 22:35:04 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:997230e5e861d6b50d37457ab34eef91eaac9c9ae25415bd99980c544a711c34`  
		Last Modified: Wed, 09 Sep 2026 22:35:02 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c84028980add5cd6686dcc9b5a36369561875584e2b57b168574833b3b01eaa`  
		Last Modified: Wed, 09 Sep 2026 22:35:02 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4894aca1e9abc01d337c1b549ebcc3a1f881976298ad5e23137b986ee6d9fa16`  
		Last Modified: Wed, 09 Sep 2026 22:35:04 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca160e7fe9c4bda9f13665730084bf87688b44ed5ac379a8d8bd570142519ce3`  
		Last Modified: Wed, 09 Sep 2026 22:35:28 GMT  
		Size: 194.1 MB (194115128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a6fb0e9ddd316bd26dd3748464d3774e4deb1ee2184618e275451bb1e38dca`  
		Last Modified: Wed, 09 Sep 2026 22:35:04 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.10.12-windowsservercore-ltsc2025`

```console
$ docker pull julia@sha256:eb7e281a5169b18eb767a9325e7b2239af8becd4bb0dc77f01eb4d1c8eface52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `julia:1.10.12-windowsservercore-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull julia@sha256:2a9e74a252503bd017228c1591d4bf30c2fe81781675f05de4d72410625f99d8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2651774288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86522856aad5f3e6d510b9d66dc19839b11b09a11120e5e7d85f75514080f0af`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Wed, 09 Sep 2026 22:32:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:32:02 GMT
ENV JULIA_VERSION=1.10.12
# Wed, 09 Sep 2026 22:32:04 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.10/julia-1.10.12-win64.exe
# Wed, 09 Sep 2026 22:32:05 GMT
ENV JULIA_SHA256=d971ea3cc03040e45893e3591b86809bb69b33693091b068270bf6f341f38f94
# Wed, 09 Sep 2026 22:34:39 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:34:40 GMT
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
	-	`sha256:a94ca15f4f6f359841e19a7dae222af6b7a86ceefe8714b68e57b6302f2cdd3d`  
		Last Modified: Wed, 09 Sep 2026 22:34:47 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260923de20f1450b074876cbb08844dfed2dfb61ff062a3f83293cff38bbd0db`  
		Last Modified: Wed, 09 Sep 2026 22:34:45 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db03098cbc663cfe14c42633d9f754210a815bb2fa3dca3f31fdf2df9cb7783c`  
		Last Modified: Wed, 09 Sep 2026 22:34:45 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4695e02b418da78856fd2f13091f23eab0a1e09fb149ffe6494f63bfdc44c51f`  
		Last Modified: Wed, 09 Sep 2026 22:34:46 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da32f3665985683ec4ff522e796be55dbe37b5cf392d2b549d4f4b286565055`  
		Last Modified: Wed, 09 Sep 2026 22:35:09 GMT  
		Size: 194.1 MB (194138247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8889b1598a1aa46bb455edea4f2e1a32bfa5d7ef26c42d83c7e2b896d1ef0fc`  
		Last Modified: Wed, 09 Sep 2026 22:34:46 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.11`

```console
$ docker pull julia@sha256:979ec4ffcd1c3dc41c323b1d167a88cf6ab5a22792daf6ad4e9811e9acdef743
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
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

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

### `julia:1.11` - windows version 10.0.26100.33438; amd64

```console
$ docker pull julia@sha256:0a98ec0e2e2a0b041f21ae0309edb95bfad97cbc3d0f1736df3b9387d0a95bc8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2743968769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dd458513b67063150bd2dfdb2f8b4d438c08d9137bccac097ea6cce364579f6`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Wed, 09 Sep 2026 22:32:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:32:02 GMT
ENV JULIA_VERSION=1.11.9
# Wed, 09 Sep 2026 22:32:04 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.11/julia-1.11.9-win64.exe
# Wed, 09 Sep 2026 22:32:05 GMT
ENV JULIA_SHA256=747ff8983fa183e0e35e618c9212815cba0b3ad29a44eaac039acc755a0d91b6
# Wed, 09 Sep 2026 22:34:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:34:19 GMT
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
	-	`sha256:b7703c25d879bd497a23a6de4be9e43407f7e63bcd72a21fcaebea19562f5a85`  
		Last Modified: Wed, 09 Sep 2026 22:34:31 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e079c023c944dfab8f8d61685236cc4e84903fb7392af0ab58819caa54a7d440`  
		Last Modified: Wed, 09 Sep 2026 22:34:28 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a359264b081b77b6261148779d539c928d95465db1343b88fd62151ccae5159c`  
		Last Modified: Wed, 09 Sep 2026 22:34:28 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf9a3ed5cb7403251c7bf31a9ee0b1de261271263fee0f0405977e722d81ad7`  
		Last Modified: Wed, 09 Sep 2026 22:34:28 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed7492780c646041bb8870ca296dcbf32d037ada259f954ed7de6a1cd3fc9e2`  
		Last Modified: Wed, 09 Sep 2026 22:35:07 GMT  
		Size: 286.3 MB (286332621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ff028d75b5746b456f14c09cd73efc1b8fb0bef9c9964d2ef38f7372574cf4`  
		Last Modified: Wed, 09 Sep 2026 22:34:29 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.11` - windows version 10.0.20348.5622; amd64

```console
$ docker pull julia@sha256:e9fca416b82a6660a0893780150d91db2dd04e8e41fce079643b90a4928ade0a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2505795883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5255e1e2d70a6107c15c114bcc7b1103ac7cd2095e3354e00c748955813a69c`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 09 Sep 2026 22:32:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:32:05 GMT
ENV JULIA_VERSION=1.11.9
# Wed, 09 Sep 2026 22:32:06 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.11/julia-1.11.9-win64.exe
# Wed, 09 Sep 2026 22:32:08 GMT
ENV JULIA_SHA256=747ff8983fa183e0e35e618c9212815cba0b3ad29a44eaac039acc755a0d91b6
# Wed, 09 Sep 2026 22:35:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:35:45 GMT
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
	-	`sha256:22c4f46dae81cd276ace99f174ddc28b66a30f66b45cfecd3f0c9b79b0efd9a5`  
		Last Modified: Wed, 09 Sep 2026 22:36:03 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c5b6783e9b52a98a8b6dbe84cc1dfebacf5a6e7608dfcb593ca862a312f844`  
		Last Modified: Wed, 09 Sep 2026 22:36:01 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b9abc465d96d1d9199b3e80b896e25d19c04bc80521ad6ca5dd363e448f04e`  
		Last Modified: Wed, 09 Sep 2026 22:36:01 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f00c00725f52ebf80121cb6c468dc983e71cfaf46a53ca7bd3e0dab68b4c867`  
		Last Modified: Wed, 09 Sep 2026 22:36:01 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:777ece358dd1730bda163d3d93ab8a96e1050409f3a89f4397a83b6297b290cb`  
		Last Modified: Wed, 09 Sep 2026 22:36:39 GMT  
		Size: 286.3 MB (286300610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875297e3dbe60b1f3fc4544b29221348bc7860ae2f80343be61ca5e3cdc9713b`  
		Last Modified: Wed, 09 Sep 2026 22:36:01 GMT  
		Size: 1.3 KB (1324 bytes)  
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
$ docker pull julia@sha256:fd5b0d180da830444189dd4322b40872abd6c9c101a5a4620d5c3de784347cec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `julia:1.11-windowsservercore` - windows version 10.0.26100.33438; amd64

```console
$ docker pull julia@sha256:0a98ec0e2e2a0b041f21ae0309edb95bfad97cbc3d0f1736df3b9387d0a95bc8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2743968769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dd458513b67063150bd2dfdb2f8b4d438c08d9137bccac097ea6cce364579f6`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Wed, 09 Sep 2026 22:32:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:32:02 GMT
ENV JULIA_VERSION=1.11.9
# Wed, 09 Sep 2026 22:32:04 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.11/julia-1.11.9-win64.exe
# Wed, 09 Sep 2026 22:32:05 GMT
ENV JULIA_SHA256=747ff8983fa183e0e35e618c9212815cba0b3ad29a44eaac039acc755a0d91b6
# Wed, 09 Sep 2026 22:34:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:34:19 GMT
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
	-	`sha256:b7703c25d879bd497a23a6de4be9e43407f7e63bcd72a21fcaebea19562f5a85`  
		Last Modified: Wed, 09 Sep 2026 22:34:31 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e079c023c944dfab8f8d61685236cc4e84903fb7392af0ab58819caa54a7d440`  
		Last Modified: Wed, 09 Sep 2026 22:34:28 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a359264b081b77b6261148779d539c928d95465db1343b88fd62151ccae5159c`  
		Last Modified: Wed, 09 Sep 2026 22:34:28 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf9a3ed5cb7403251c7bf31a9ee0b1de261271263fee0f0405977e722d81ad7`  
		Last Modified: Wed, 09 Sep 2026 22:34:28 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed7492780c646041bb8870ca296dcbf32d037ada259f954ed7de6a1cd3fc9e2`  
		Last Modified: Wed, 09 Sep 2026 22:35:07 GMT  
		Size: 286.3 MB (286332621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ff028d75b5746b456f14c09cd73efc1b8fb0bef9c9964d2ef38f7372574cf4`  
		Last Modified: Wed, 09 Sep 2026 22:34:29 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.11-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull julia@sha256:e9fca416b82a6660a0893780150d91db2dd04e8e41fce079643b90a4928ade0a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2505795883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5255e1e2d70a6107c15c114bcc7b1103ac7cd2095e3354e00c748955813a69c`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 09 Sep 2026 22:32:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:32:05 GMT
ENV JULIA_VERSION=1.11.9
# Wed, 09 Sep 2026 22:32:06 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.11/julia-1.11.9-win64.exe
# Wed, 09 Sep 2026 22:32:08 GMT
ENV JULIA_SHA256=747ff8983fa183e0e35e618c9212815cba0b3ad29a44eaac039acc755a0d91b6
# Wed, 09 Sep 2026 22:35:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:35:45 GMT
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
	-	`sha256:22c4f46dae81cd276ace99f174ddc28b66a30f66b45cfecd3f0c9b79b0efd9a5`  
		Last Modified: Wed, 09 Sep 2026 22:36:03 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c5b6783e9b52a98a8b6dbe84cc1dfebacf5a6e7608dfcb593ca862a312f844`  
		Last Modified: Wed, 09 Sep 2026 22:36:01 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b9abc465d96d1d9199b3e80b896e25d19c04bc80521ad6ca5dd363e448f04e`  
		Last Modified: Wed, 09 Sep 2026 22:36:01 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f00c00725f52ebf80121cb6c468dc983e71cfaf46a53ca7bd3e0dab68b4c867`  
		Last Modified: Wed, 09 Sep 2026 22:36:01 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:777ece358dd1730bda163d3d93ab8a96e1050409f3a89f4397a83b6297b290cb`  
		Last Modified: Wed, 09 Sep 2026 22:36:39 GMT  
		Size: 286.3 MB (286300610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875297e3dbe60b1f3fc4544b29221348bc7860ae2f80343be61ca5e3cdc9713b`  
		Last Modified: Wed, 09 Sep 2026 22:36:01 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.11-windowsservercore-ltsc2022`

```console
$ docker pull julia@sha256:1a46f25ae108e81b81f2900f59b8a47c2765207a8e9f49491b404bf68795e7ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `julia:1.11-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull julia@sha256:e9fca416b82a6660a0893780150d91db2dd04e8e41fce079643b90a4928ade0a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2505795883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5255e1e2d70a6107c15c114bcc7b1103ac7cd2095e3354e00c748955813a69c`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 09 Sep 2026 22:32:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:32:05 GMT
ENV JULIA_VERSION=1.11.9
# Wed, 09 Sep 2026 22:32:06 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.11/julia-1.11.9-win64.exe
# Wed, 09 Sep 2026 22:32:08 GMT
ENV JULIA_SHA256=747ff8983fa183e0e35e618c9212815cba0b3ad29a44eaac039acc755a0d91b6
# Wed, 09 Sep 2026 22:35:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:35:45 GMT
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
	-	`sha256:22c4f46dae81cd276ace99f174ddc28b66a30f66b45cfecd3f0c9b79b0efd9a5`  
		Last Modified: Wed, 09 Sep 2026 22:36:03 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c5b6783e9b52a98a8b6dbe84cc1dfebacf5a6e7608dfcb593ca862a312f844`  
		Last Modified: Wed, 09 Sep 2026 22:36:01 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b9abc465d96d1d9199b3e80b896e25d19c04bc80521ad6ca5dd363e448f04e`  
		Last Modified: Wed, 09 Sep 2026 22:36:01 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f00c00725f52ebf80121cb6c468dc983e71cfaf46a53ca7bd3e0dab68b4c867`  
		Last Modified: Wed, 09 Sep 2026 22:36:01 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:777ece358dd1730bda163d3d93ab8a96e1050409f3a89f4397a83b6297b290cb`  
		Last Modified: Wed, 09 Sep 2026 22:36:39 GMT  
		Size: 286.3 MB (286300610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875297e3dbe60b1f3fc4544b29221348bc7860ae2f80343be61ca5e3cdc9713b`  
		Last Modified: Wed, 09 Sep 2026 22:36:01 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.11-windowsservercore-ltsc2025`

```console
$ docker pull julia@sha256:931ceb3cef6d4456b4858eff609dd94f20d1ce64266253d5f4a445659ab9019d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `julia:1.11-windowsservercore-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull julia@sha256:0a98ec0e2e2a0b041f21ae0309edb95bfad97cbc3d0f1736df3b9387d0a95bc8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2743968769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dd458513b67063150bd2dfdb2f8b4d438c08d9137bccac097ea6cce364579f6`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Wed, 09 Sep 2026 22:32:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:32:02 GMT
ENV JULIA_VERSION=1.11.9
# Wed, 09 Sep 2026 22:32:04 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.11/julia-1.11.9-win64.exe
# Wed, 09 Sep 2026 22:32:05 GMT
ENV JULIA_SHA256=747ff8983fa183e0e35e618c9212815cba0b3ad29a44eaac039acc755a0d91b6
# Wed, 09 Sep 2026 22:34:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:34:19 GMT
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
	-	`sha256:b7703c25d879bd497a23a6de4be9e43407f7e63bcd72a21fcaebea19562f5a85`  
		Last Modified: Wed, 09 Sep 2026 22:34:31 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e079c023c944dfab8f8d61685236cc4e84903fb7392af0ab58819caa54a7d440`  
		Last Modified: Wed, 09 Sep 2026 22:34:28 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a359264b081b77b6261148779d539c928d95465db1343b88fd62151ccae5159c`  
		Last Modified: Wed, 09 Sep 2026 22:34:28 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf9a3ed5cb7403251c7bf31a9ee0b1de261271263fee0f0405977e722d81ad7`  
		Last Modified: Wed, 09 Sep 2026 22:34:28 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed7492780c646041bb8870ca296dcbf32d037ada259f954ed7de6a1cd3fc9e2`  
		Last Modified: Wed, 09 Sep 2026 22:35:07 GMT  
		Size: 286.3 MB (286332621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ff028d75b5746b456f14c09cd73efc1b8fb0bef9c9964d2ef38f7372574cf4`  
		Last Modified: Wed, 09 Sep 2026 22:34:29 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.11.9`

```console
$ docker pull julia@sha256:979ec4ffcd1c3dc41c323b1d167a88cf6ab5a22792daf6ad4e9811e9acdef743
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
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

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

### `julia:1.11.9` - windows version 10.0.26100.33438; amd64

```console
$ docker pull julia@sha256:0a98ec0e2e2a0b041f21ae0309edb95bfad97cbc3d0f1736df3b9387d0a95bc8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2743968769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dd458513b67063150bd2dfdb2f8b4d438c08d9137bccac097ea6cce364579f6`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Wed, 09 Sep 2026 22:32:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:32:02 GMT
ENV JULIA_VERSION=1.11.9
# Wed, 09 Sep 2026 22:32:04 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.11/julia-1.11.9-win64.exe
# Wed, 09 Sep 2026 22:32:05 GMT
ENV JULIA_SHA256=747ff8983fa183e0e35e618c9212815cba0b3ad29a44eaac039acc755a0d91b6
# Wed, 09 Sep 2026 22:34:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:34:19 GMT
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
	-	`sha256:b7703c25d879bd497a23a6de4be9e43407f7e63bcd72a21fcaebea19562f5a85`  
		Last Modified: Wed, 09 Sep 2026 22:34:31 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e079c023c944dfab8f8d61685236cc4e84903fb7392af0ab58819caa54a7d440`  
		Last Modified: Wed, 09 Sep 2026 22:34:28 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a359264b081b77b6261148779d539c928d95465db1343b88fd62151ccae5159c`  
		Last Modified: Wed, 09 Sep 2026 22:34:28 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf9a3ed5cb7403251c7bf31a9ee0b1de261271263fee0f0405977e722d81ad7`  
		Last Modified: Wed, 09 Sep 2026 22:34:28 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed7492780c646041bb8870ca296dcbf32d037ada259f954ed7de6a1cd3fc9e2`  
		Last Modified: Wed, 09 Sep 2026 22:35:07 GMT  
		Size: 286.3 MB (286332621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ff028d75b5746b456f14c09cd73efc1b8fb0bef9c9964d2ef38f7372574cf4`  
		Last Modified: Wed, 09 Sep 2026 22:34:29 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.11.9` - windows version 10.0.20348.5622; amd64

```console
$ docker pull julia@sha256:e9fca416b82a6660a0893780150d91db2dd04e8e41fce079643b90a4928ade0a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2505795883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5255e1e2d70a6107c15c114bcc7b1103ac7cd2095e3354e00c748955813a69c`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 09 Sep 2026 22:32:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:32:05 GMT
ENV JULIA_VERSION=1.11.9
# Wed, 09 Sep 2026 22:32:06 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.11/julia-1.11.9-win64.exe
# Wed, 09 Sep 2026 22:32:08 GMT
ENV JULIA_SHA256=747ff8983fa183e0e35e618c9212815cba0b3ad29a44eaac039acc755a0d91b6
# Wed, 09 Sep 2026 22:35:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:35:45 GMT
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
	-	`sha256:22c4f46dae81cd276ace99f174ddc28b66a30f66b45cfecd3f0c9b79b0efd9a5`  
		Last Modified: Wed, 09 Sep 2026 22:36:03 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c5b6783e9b52a98a8b6dbe84cc1dfebacf5a6e7608dfcb593ca862a312f844`  
		Last Modified: Wed, 09 Sep 2026 22:36:01 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b9abc465d96d1d9199b3e80b896e25d19c04bc80521ad6ca5dd363e448f04e`  
		Last Modified: Wed, 09 Sep 2026 22:36:01 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f00c00725f52ebf80121cb6c468dc983e71cfaf46a53ca7bd3e0dab68b4c867`  
		Last Modified: Wed, 09 Sep 2026 22:36:01 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:777ece358dd1730bda163d3d93ab8a96e1050409f3a89f4397a83b6297b290cb`  
		Last Modified: Wed, 09 Sep 2026 22:36:39 GMT  
		Size: 286.3 MB (286300610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875297e3dbe60b1f3fc4544b29221348bc7860ae2f80343be61ca5e3cdc9713b`  
		Last Modified: Wed, 09 Sep 2026 22:36:01 GMT  
		Size: 1.3 KB (1324 bytes)  
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
$ docker pull julia@sha256:fd5b0d180da830444189dd4322b40872abd6c9c101a5a4620d5c3de784347cec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `julia:1.11.9-windowsservercore` - windows version 10.0.26100.33438; amd64

```console
$ docker pull julia@sha256:0a98ec0e2e2a0b041f21ae0309edb95bfad97cbc3d0f1736df3b9387d0a95bc8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2743968769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dd458513b67063150bd2dfdb2f8b4d438c08d9137bccac097ea6cce364579f6`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Wed, 09 Sep 2026 22:32:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:32:02 GMT
ENV JULIA_VERSION=1.11.9
# Wed, 09 Sep 2026 22:32:04 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.11/julia-1.11.9-win64.exe
# Wed, 09 Sep 2026 22:32:05 GMT
ENV JULIA_SHA256=747ff8983fa183e0e35e618c9212815cba0b3ad29a44eaac039acc755a0d91b6
# Wed, 09 Sep 2026 22:34:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:34:19 GMT
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
	-	`sha256:b7703c25d879bd497a23a6de4be9e43407f7e63bcd72a21fcaebea19562f5a85`  
		Last Modified: Wed, 09 Sep 2026 22:34:31 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e079c023c944dfab8f8d61685236cc4e84903fb7392af0ab58819caa54a7d440`  
		Last Modified: Wed, 09 Sep 2026 22:34:28 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a359264b081b77b6261148779d539c928d95465db1343b88fd62151ccae5159c`  
		Last Modified: Wed, 09 Sep 2026 22:34:28 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf9a3ed5cb7403251c7bf31a9ee0b1de261271263fee0f0405977e722d81ad7`  
		Last Modified: Wed, 09 Sep 2026 22:34:28 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed7492780c646041bb8870ca296dcbf32d037ada259f954ed7de6a1cd3fc9e2`  
		Last Modified: Wed, 09 Sep 2026 22:35:07 GMT  
		Size: 286.3 MB (286332621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ff028d75b5746b456f14c09cd73efc1b8fb0bef9c9964d2ef38f7372574cf4`  
		Last Modified: Wed, 09 Sep 2026 22:34:29 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.11.9-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull julia@sha256:e9fca416b82a6660a0893780150d91db2dd04e8e41fce079643b90a4928ade0a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2505795883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5255e1e2d70a6107c15c114bcc7b1103ac7cd2095e3354e00c748955813a69c`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 09 Sep 2026 22:32:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:32:05 GMT
ENV JULIA_VERSION=1.11.9
# Wed, 09 Sep 2026 22:32:06 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.11/julia-1.11.9-win64.exe
# Wed, 09 Sep 2026 22:32:08 GMT
ENV JULIA_SHA256=747ff8983fa183e0e35e618c9212815cba0b3ad29a44eaac039acc755a0d91b6
# Wed, 09 Sep 2026 22:35:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:35:45 GMT
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
	-	`sha256:22c4f46dae81cd276ace99f174ddc28b66a30f66b45cfecd3f0c9b79b0efd9a5`  
		Last Modified: Wed, 09 Sep 2026 22:36:03 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c5b6783e9b52a98a8b6dbe84cc1dfebacf5a6e7608dfcb593ca862a312f844`  
		Last Modified: Wed, 09 Sep 2026 22:36:01 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b9abc465d96d1d9199b3e80b896e25d19c04bc80521ad6ca5dd363e448f04e`  
		Last Modified: Wed, 09 Sep 2026 22:36:01 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f00c00725f52ebf80121cb6c468dc983e71cfaf46a53ca7bd3e0dab68b4c867`  
		Last Modified: Wed, 09 Sep 2026 22:36:01 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:777ece358dd1730bda163d3d93ab8a96e1050409f3a89f4397a83b6297b290cb`  
		Last Modified: Wed, 09 Sep 2026 22:36:39 GMT  
		Size: 286.3 MB (286300610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875297e3dbe60b1f3fc4544b29221348bc7860ae2f80343be61ca5e3cdc9713b`  
		Last Modified: Wed, 09 Sep 2026 22:36:01 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.11.9-windowsservercore-ltsc2022`

```console
$ docker pull julia@sha256:1a46f25ae108e81b81f2900f59b8a47c2765207a8e9f49491b404bf68795e7ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `julia:1.11.9-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull julia@sha256:e9fca416b82a6660a0893780150d91db2dd04e8e41fce079643b90a4928ade0a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2505795883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5255e1e2d70a6107c15c114bcc7b1103ac7cd2095e3354e00c748955813a69c`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 09 Sep 2026 22:32:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:32:05 GMT
ENV JULIA_VERSION=1.11.9
# Wed, 09 Sep 2026 22:32:06 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.11/julia-1.11.9-win64.exe
# Wed, 09 Sep 2026 22:32:08 GMT
ENV JULIA_SHA256=747ff8983fa183e0e35e618c9212815cba0b3ad29a44eaac039acc755a0d91b6
# Wed, 09 Sep 2026 22:35:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:35:45 GMT
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
	-	`sha256:22c4f46dae81cd276ace99f174ddc28b66a30f66b45cfecd3f0c9b79b0efd9a5`  
		Last Modified: Wed, 09 Sep 2026 22:36:03 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c5b6783e9b52a98a8b6dbe84cc1dfebacf5a6e7608dfcb593ca862a312f844`  
		Last Modified: Wed, 09 Sep 2026 22:36:01 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b9abc465d96d1d9199b3e80b896e25d19c04bc80521ad6ca5dd363e448f04e`  
		Last Modified: Wed, 09 Sep 2026 22:36:01 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f00c00725f52ebf80121cb6c468dc983e71cfaf46a53ca7bd3e0dab68b4c867`  
		Last Modified: Wed, 09 Sep 2026 22:36:01 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:777ece358dd1730bda163d3d93ab8a96e1050409f3a89f4397a83b6297b290cb`  
		Last Modified: Wed, 09 Sep 2026 22:36:39 GMT  
		Size: 286.3 MB (286300610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875297e3dbe60b1f3fc4544b29221348bc7860ae2f80343be61ca5e3cdc9713b`  
		Last Modified: Wed, 09 Sep 2026 22:36:01 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.11.9-windowsservercore-ltsc2025`

```console
$ docker pull julia@sha256:931ceb3cef6d4456b4858eff609dd94f20d1ce64266253d5f4a445659ab9019d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `julia:1.11.9-windowsservercore-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull julia@sha256:0a98ec0e2e2a0b041f21ae0309edb95bfad97cbc3d0f1736df3b9387d0a95bc8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2743968769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dd458513b67063150bd2dfdb2f8b4d438c08d9137bccac097ea6cce364579f6`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Wed, 09 Sep 2026 22:32:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:32:02 GMT
ENV JULIA_VERSION=1.11.9
# Wed, 09 Sep 2026 22:32:04 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.11/julia-1.11.9-win64.exe
# Wed, 09 Sep 2026 22:32:05 GMT
ENV JULIA_SHA256=747ff8983fa183e0e35e618c9212815cba0b3ad29a44eaac039acc755a0d91b6
# Wed, 09 Sep 2026 22:34:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:34:19 GMT
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
	-	`sha256:b7703c25d879bd497a23a6de4be9e43407f7e63bcd72a21fcaebea19562f5a85`  
		Last Modified: Wed, 09 Sep 2026 22:34:31 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e079c023c944dfab8f8d61685236cc4e84903fb7392af0ab58819caa54a7d440`  
		Last Modified: Wed, 09 Sep 2026 22:34:28 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a359264b081b77b6261148779d539c928d95465db1343b88fd62151ccae5159c`  
		Last Modified: Wed, 09 Sep 2026 22:34:28 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf9a3ed5cb7403251c7bf31a9ee0b1de261271263fee0f0405977e722d81ad7`  
		Last Modified: Wed, 09 Sep 2026 22:34:28 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed7492780c646041bb8870ca296dcbf32d037ada259f954ed7de6a1cd3fc9e2`  
		Last Modified: Wed, 09 Sep 2026 22:35:07 GMT  
		Size: 286.3 MB (286332621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ff028d75b5746b456f14c09cd73efc1b8fb0bef9c9964d2ef38f7372574cf4`  
		Last Modified: Wed, 09 Sep 2026 22:34:29 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.13`

```console
$ docker pull julia@sha256:9b2356881dce6ff41143faf8c5b1bc5c24d4861eaa8d20c88cb273d8db065da4
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

### `julia:1.13` - linux; amd64

```console
$ docker pull julia@sha256:acbc8af9ea4f1a278b41adcddd667eb15c194691302a8477d42ca45b7f2a5034
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.4 MB (342398235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fcb0a94693bf143945bb56f6b004fb695b411630213d41df6cb8892c19426c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:17:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:17:46 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:17:46 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:17:46 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:17:46 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 06 Oct 2026 01:17:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.1-linux-x86_64.tar.gz'; 			sha256='0f2e18c8dea60a2c8711d089cd9612f7a8df394b89e5208096fe5867647e0908'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.1-linux-i686.tar.gz'; 			sha256='8bd3f8f20c0fd346b31ba5204f50d770c21abc0dba6f37b7ad7c02faa05033a6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.1-linux-aarch64.tar.gz'; 			sha256='78341862e24734ea1c2fa8795183c52627c23a99aba5aa1d0ec840edecec5ce0'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:17:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:17:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:17:46 GMT
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
	-	`sha256:cb5dc77e66073cd21b84f34e3dc6e6a19c8f4d7f50ed9671015b99a3f69ef1df`  
		Last Modified: Tue, 06 Oct 2026 01:18:35 GMT  
		Size: 306.3 MB (306305175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de8d12602fb0d388a81fc681eacdd68732979bdb03d1045915682346489dc083`  
		Last Modified: Tue, 06 Oct 2026 01:18:29 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13` - unknown; unknown

```console
$ docker pull julia@sha256:0d81bd584a94bb63306e7cc1ef19f1ccb06211f1dad19c34c62df9b6d4ec70c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2265334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56fdbbe2e94992979dba2ca429a8e5f018dbce9739ca9c72fa8d8a81c760973d`

```dockerfile
```

-	Layers:
	-	`sha256:3ba65a54ae2a23b09301a9c0a18565850a7d9c31a862a8eb861d9ae747c054c2`  
		Last Modified: Tue, 06 Oct 2026 01:18:29 GMT  
		Size: 2.2 MB (2247633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95bd2f9b2b25495b406ee67ff5ba75fc25d1d00db841c290f28e3fdea2b75278`  
		Last Modified: Tue, 06 Oct 2026 01:18:29 GMT  
		Size: 17.7 KB (17701 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.13` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:5f7bc1153325ae44a3cbef0852d189b52a7cc3d21544d68f982b7b7ed2595f39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.7 MB (361712722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4920ef5e813186e86344d52ec221c346301a8ab6d6b97951201a5dd53f72d6c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:19:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:19:47 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:19:47 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:19:47 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:19:47 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 06 Oct 2026 01:19:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.1-linux-x86_64.tar.gz'; 			sha256='0f2e18c8dea60a2c8711d089cd9612f7a8df394b89e5208096fe5867647e0908'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.1-linux-i686.tar.gz'; 			sha256='8bd3f8f20c0fd346b31ba5204f50d770c21abc0dba6f37b7ad7c02faa05033a6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.1-linux-aarch64.tar.gz'; 			sha256='78341862e24734ea1c2fa8795183c52627c23a99aba5aa1d0ec840edecec5ce0'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:19:47 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:19:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:19:47 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c63217cb9a06576ce0342d4cc63634c01370d11e6e43122e37e11c8dc2e4a21`  
		Last Modified: Tue, 06 Oct 2026 01:20:33 GMT  
		Size: 6.2 MB (6156306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed7a3f4ae062dd59e467d5dd2a125abfa8bffd323930a9cf0632b6ff8e3948d9`  
		Last Modified: Tue, 06 Oct 2026 01:20:39 GMT  
		Size: 325.4 MB (325355766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db68a9a54903cc6357fea815a696cb123ca6c6735760674f818f8536716414cb`  
		Last Modified: Tue, 06 Oct 2026 01:20:32 GMT  
		Size: 368.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13` - unknown; unknown

```console
$ docker pull julia@sha256:adb94ac3ff29be1cf43fea6259559f1648a9768c76acec3e8bd64488efe25c6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2265825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1595265615de419d1645c52c58bf751a63077dcd094b30bfd48822238c6a14df`

```dockerfile
```

-	Layers:
	-	`sha256:cead3ad7485a432e56103007096641193d32d3719ccbf2f51cb7a0b87d105acd`  
		Last Modified: Tue, 06 Oct 2026 01:20:32 GMT  
		Size: 2.2 MB (2247957 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2251714eb12e9cdaf9f5fb2f1f7fadd1b16293c64f4f13fa4ae47c8a00dfda00`  
		Last Modified: Tue, 06 Oct 2026 01:20:32 GMT  
		Size: 17.9 KB (17868 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.13` - linux; 386

```console
$ docker pull julia@sha256:ec7086279896ff2660abf3a6fa51bdaee8a6362c200e491bf85aecde57326f84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.5 MB (280487205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c32755e042497c8e0ba4c35b177a40388dcca8bdd9ea98ee0c747b71fc9526a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:16:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:16:40 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:16:40 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:16:40 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:16:40 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 06 Oct 2026 01:16:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.1-linux-x86_64.tar.gz'; 			sha256='0f2e18c8dea60a2c8711d089cd9612f7a8df394b89e5208096fe5867647e0908'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.1-linux-i686.tar.gz'; 			sha256='8bd3f8f20c0fd346b31ba5204f50d770c21abc0dba6f37b7ad7c02faa05033a6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.1-linux-aarch64.tar.gz'; 			sha256='78341862e24734ea1c2fa8795183c52627c23a99aba5aa1d0ec840edecec5ce0'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:16:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:16:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:16:40 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ca022fbc63d33cffdd1c01c83628151eb3bd052184abd7fccc450342012464c`  
		Last Modified: Tue, 06 Oct 2026 01:17:15 GMT  
		Size: 6.4 MB (6436306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a203c1eddaf48e3b424a90ec29d4e069d84e6b1b9adc1ccaf695a3472099999`  
		Last Modified: Tue, 06 Oct 2026 01:17:20 GMT  
		Size: 242.7 MB (242697230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a3f6cac63e26543d6dcdf1810e75aeebc961ecc839d6f6680688a368583eb75`  
		Last Modified: Tue, 06 Oct 2026 01:17:15 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13` - unknown; unknown

```console
$ docker pull julia@sha256:0a87657c3f3fc2499888072fc1019e2e83166286bbafe08235770bebfe1f96cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2262405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2be40150d1e9fe1d0b409ffa6bab4132c1e2a36d314ce3a66739c914a229cdea`

```dockerfile
```

-	Layers:
	-	`sha256:031d0ba7a34a0d0f3d049b43fc8a5d61902989f8e4e57a06cd31ba93c81624fe`  
		Last Modified: Tue, 06 Oct 2026 01:17:15 GMT  
		Size: 2.2 MB (2244758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff21f8cbf58246edd02c540ecf0340507030fdccb82baf86b680497d8abe32d4`  
		Last Modified: Tue, 06 Oct 2026 01:17:15 GMT  
		Size: 17.6 KB (17647 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.13` - windows version 10.0.26100.33438; amd64

```console
$ docker pull julia@sha256:19533cd65ce7a09fa1c1d3359fa79f8dd9ea2a397e9ab3d718b527941f2d63e2
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2766881546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcb156701154c8684a82a72cff8e6bb0ee154f53ecef00ae3847f0ffe6fddde0`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Mon, 28 Sep 2026 23:42:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 28 Sep 2026 23:42:48 GMT
ENV JULIA_VERSION=1.13.1
# Mon, 28 Sep 2026 23:42:48 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.1-win64.exe
# Mon, 28 Sep 2026 23:42:49 GMT
ENV JULIA_SHA256=a9748efca5e4c4a4188261fd569f9275426cb655781692be308d604da1c1e1b7
# Mon, 28 Sep 2026 23:45:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Mon, 28 Sep 2026 23:45:06 GMT
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
	-	`sha256:ba6b024ac08375648c1d3dd9d1a3c8a18f7b37a721d60c44715afdfa6d482b9f`  
		Last Modified: Mon, 28 Sep 2026 23:45:12 GMT  
		Size: 1.3 KB (1340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eedd547e6565009d09136b32123dcfbb47e9c821c9723509f1b78c79274df4d`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f7494af7342a64846fb01f7d034da738025632fca7997226f8f6f662e446ff`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd8ca8a7b4053d8487ca8e6500f15c3a3d55dbcbff0904f278191790aebb53d3`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2538907158ce0a26fc27b0632ccfb5a0f53902c110053d89da29fd5c8009d2b4`  
		Last Modified: Mon, 28 Sep 2026 23:45:47 GMT  
		Size: 309.2 MB (309245397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d74d26b958700b42ea4084988788b2fd993551ec2dee1e2f879f0068e36028`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.13` - windows version 10.0.20348.5622; amd64

```console
$ docker pull julia@sha256:d80b2fd1d3f8d0bd40a75273cc2444796167da8b315d5d74ad7f8f0922194e55
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2528711919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2d049d0624180ccb46605e8b882e0814a8518de02ac2c3deb84c1411ca66b40`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Mon, 28 Sep 2026 23:42:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 28 Sep 2026 23:42:50 GMT
ENV JULIA_VERSION=1.13.1
# Mon, 28 Sep 2026 23:42:51 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.1-win64.exe
# Mon, 28 Sep 2026 23:42:53 GMT
ENV JULIA_SHA256=a9748efca5e4c4a4188261fd569f9275426cb655781692be308d604da1c1e1b7
# Mon, 28 Sep 2026 23:48:31 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Mon, 28 Sep 2026 23:48:32 GMT
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
	-	`sha256:92da9030d6488f94c1464eb176bb167430fb388622462eac1f949824e0acc18e`  
		Last Modified: Mon, 28 Sep 2026 23:48:38 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ff33d826f815dec6608e75581bc01ec232731fb89cb350ded1dd8bd78454911`  
		Last Modified: Mon, 28 Sep 2026 23:48:37 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f378efe657f23f5ca4ae347c6b2bf7458de16545e1ad8e559df5143c8b54f2ab`  
		Last Modified: Mon, 28 Sep 2026 23:48:36 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53d9687ed7d58f696d166555a841fa614e9547d662d39bf95ee4adb669bfc06`  
		Last Modified: Mon, 28 Sep 2026 23:48:36 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f7dc4c6ea2d5855227f2a4f5885ef3a733b6cb6b437857e7129c06c6001b4c`  
		Last Modified: Mon, 28 Sep 2026 23:49:16 GMT  
		Size: 309.2 MB (309216633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d8f9703cfdaae26f297da651b0bd60ed19718316a562b5bb325e333cfb6c798`  
		Last Modified: Mon, 28 Sep 2026 23:48:36 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.13-bookworm`

```console
$ docker pull julia@sha256:41561e8f2c891960279ead9fe61111fd12fb4e12ab6a9fc5a9efce7ae23642d4
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
$ docker pull julia@sha256:229eb93c838d469012ab7ebe47c4d4ba50aa3e28094d12bbe820a47b482c1085
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.1 MB (340066472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e973dfa5be11b014af0217c917f3918a29f7e8b6646b0a7f0b9f339763eaec83`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:18:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:18:31 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:18:31 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:18:31 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:18:31 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 06 Oct 2026 01:18:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.1-linux-x86_64.tar.gz'; 			sha256='0f2e18c8dea60a2c8711d089cd9612f7a8df394b89e5208096fe5867647e0908'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.1-linux-i686.tar.gz'; 			sha256='8bd3f8f20c0fd346b31ba5204f50d770c21abc0dba6f37b7ad7c02faa05033a6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.1-linux-aarch64.tar.gz'; 			sha256='78341862e24734ea1c2fa8795183c52627c23a99aba5aa1d0ec840edecec5ce0'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:18:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:18:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:18:31 GMT
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
	-	`sha256:c88938ba66fd23dd43aa960a332e275d1ee550c497dfb03932021e6da2878f85`  
		Last Modified: Tue, 06 Oct 2026 01:19:23 GMT  
		Size: 306.3 MB (306270853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06cd1f3ef3bafc142ad32b2e52a017ea8e7cda211416cb5e2602f62dd8509f4a`  
		Last Modified: Tue, 06 Oct 2026 01:19:17 GMT  
		Size: 368.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:9e86379dced0b9d905623f3eff2907c67dd64046e5fbd6e507af7efb674840e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2590798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6241bb5fee781354eca42ba94a3563d8b16f57403df273a00ee973c39f05899`

```dockerfile
```

-	Layers:
	-	`sha256:c4251fdd1cf40f4e67926b3e16aefb3c39bfa0f5ae0c01d7923f29788cfee093`  
		Last Modified: Tue, 06 Oct 2026 01:19:17 GMT  
		Size: 2.6 MB (2574243 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:682700d413613bed1f20cc13d5f0b0b06a0920ba7c0852f5abd4ed90fa6cf977`  
		Last Modified: Tue, 06 Oct 2026 01:19:17 GMT  
		Size: 16.6 KB (16555 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.13-bookworm` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:8bfe7168498592dc033cd39d2ce77a46d5e77da221e0bee5a89486f9497d0321
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.9 MB (358850170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d990544df6c9b8942b121d3f879817ee007337c447bc7ca5d202dc4de78d9f81`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:19:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:19:49 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:19:49 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:19:49 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 06 Oct 2026 01:19:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.1-linux-x86_64.tar.gz'; 			sha256='0f2e18c8dea60a2c8711d089cd9612f7a8df394b89e5208096fe5867647e0908'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.1-linux-i686.tar.gz'; 			sha256='8bd3f8f20c0fd346b31ba5204f50d770c21abc0dba6f37b7ad7c02faa05033a6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.1-linux-aarch64.tar.gz'; 			sha256='78341862e24734ea1c2fa8795183c52627c23a99aba5aa1d0ec840edecec5ce0'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:19:49 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93794a8c3f2257149aef21a9fab14395fc45359f7aeffa926ba0e724cb973ccb`  
		Last Modified: Tue, 06 Oct 2026 01:20:35 GMT  
		Size: 5.4 MB (5388847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c6fe7a488267e1eb4b0f189e3dae52835a12da01d7dcb7812cd203cea0c6f97`  
		Last Modified: Tue, 06 Oct 2026 01:20:41 GMT  
		Size: 325.3 MB (325323773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cfcab2a0578e03147983b174175eea51fcb364eabc7d9b275508eaabfe6df86`  
		Last Modified: Tue, 06 Oct 2026 01:20:35 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:eedcab6b716b6bbda73deb3cc3d63105b66ba7a129be1482f270f78f716d7736
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2591191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb7839340891fece89a47e01718670378180a9c8028e2bb9979012f744599da9`

```dockerfile
```

-	Layers:
	-	`sha256:117eb48e2f23f0ad653f38e5094ee8e60b2d4f3aed9e2360c533cd6c8abb0a6c`  
		Last Modified: Tue, 06 Oct 2026 01:20:35 GMT  
		Size: 2.6 MB (2574518 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5839397e975e020267de660c7c71997ea0c81746b190a2112558f186fcb1877a`  
		Last Modified: Tue, 06 Oct 2026 01:20:35 GMT  
		Size: 16.7 KB (16673 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.13-bookworm` - linux; 386

```console
$ docker pull julia@sha256:0d6af774fd2320543b1834c9c82b45f85b206f7476e7cd86aefb0906eb76d577
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.6 MB (277609913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04fe7592b8fbb3d2798af54fc40cf099d054857469832a20b1e36a824f8c1353`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:16:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:16:37 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:16:37 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:16:37 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:16:37 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 06 Oct 2026 01:16:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.1-linux-x86_64.tar.gz'; 			sha256='0f2e18c8dea60a2c8711d089cd9612f7a8df394b89e5208096fe5867647e0908'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.1-linux-i686.tar.gz'; 			sha256='8bd3f8f20c0fd346b31ba5204f50d770c21abc0dba6f37b7ad7c02faa05033a6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.1-linux-aarch64.tar.gz'; 			sha256='78341862e24734ea1c2fa8795183c52627c23a99aba5aa1d0ec840edecec5ce0'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:16:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:16:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:16:37 GMT
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
	-	`sha256:c9d3d060a2d246c7decc539d9c53b77ad77118ea380c5fb5d56b4367afc94011`  
		Last Modified: Tue, 06 Oct 2026 01:17:14 GMT  
		Size: 242.7 MB (242665190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff29e6ba89e064e72102cd31aea6cec4b6c68acddfaae8679fb1375e42a1c98b`  
		Last Modified: Tue, 06 Oct 2026 01:17:10 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:6fd046794d071fde1c98d1295ede934fcb4ccee058bef9f16fd48a5275a07ae5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2587911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bac4e743521929462e7982ecc1713bf776db08d40162be9f8a25cc61a1866ee`

```dockerfile
```

-	Layers:
	-	`sha256:4986035b0746226b9d0b91d0407127df75dd6418212cbf603892cd9894613170`  
		Last Modified: Tue, 06 Oct 2026 01:17:10 GMT  
		Size: 2.6 MB (2571390 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:867b6b80da4a59537e9a79e2a81f4814ddf4cdfd47648771619d1704bf6bd96f`  
		Last Modified: Tue, 06 Oct 2026 01:17:10 GMT  
		Size: 16.5 KB (16521 bytes)  
		MIME: application/vnd.in-toto+json

## `julia:1.13-trixie`

```console
$ docker pull julia@sha256:0002771531bbae894f2532a5ae02ea71c30685440ca3bdaea0a43d17e65571e0
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
$ docker pull julia@sha256:acbc8af9ea4f1a278b41adcddd667eb15c194691302a8477d42ca45b7f2a5034
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.4 MB (342398235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fcb0a94693bf143945bb56f6b004fb695b411630213d41df6cb8892c19426c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:17:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:17:46 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:17:46 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:17:46 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:17:46 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 06 Oct 2026 01:17:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.1-linux-x86_64.tar.gz'; 			sha256='0f2e18c8dea60a2c8711d089cd9612f7a8df394b89e5208096fe5867647e0908'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.1-linux-i686.tar.gz'; 			sha256='8bd3f8f20c0fd346b31ba5204f50d770c21abc0dba6f37b7ad7c02faa05033a6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.1-linux-aarch64.tar.gz'; 			sha256='78341862e24734ea1c2fa8795183c52627c23a99aba5aa1d0ec840edecec5ce0'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:17:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:17:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:17:46 GMT
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
	-	`sha256:cb5dc77e66073cd21b84f34e3dc6e6a19c8f4d7f50ed9671015b99a3f69ef1df`  
		Last Modified: Tue, 06 Oct 2026 01:18:35 GMT  
		Size: 306.3 MB (306305175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de8d12602fb0d388a81fc681eacdd68732979bdb03d1045915682346489dc083`  
		Last Modified: Tue, 06 Oct 2026 01:18:29 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:0d81bd584a94bb63306e7cc1ef19f1ccb06211f1dad19c34c62df9b6d4ec70c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2265334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56fdbbe2e94992979dba2ca429a8e5f018dbce9739ca9c72fa8d8a81c760973d`

```dockerfile
```

-	Layers:
	-	`sha256:3ba65a54ae2a23b09301a9c0a18565850a7d9c31a862a8eb861d9ae747c054c2`  
		Last Modified: Tue, 06 Oct 2026 01:18:29 GMT  
		Size: 2.2 MB (2247633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95bd2f9b2b25495b406ee67ff5ba75fc25d1d00db841c290f28e3fdea2b75278`  
		Last Modified: Tue, 06 Oct 2026 01:18:29 GMT  
		Size: 17.7 KB (17701 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.13-trixie` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:5f7bc1153325ae44a3cbef0852d189b52a7cc3d21544d68f982b7b7ed2595f39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.7 MB (361712722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4920ef5e813186e86344d52ec221c346301a8ab6d6b97951201a5dd53f72d6c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:19:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:19:47 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:19:47 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:19:47 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:19:47 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 06 Oct 2026 01:19:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.1-linux-x86_64.tar.gz'; 			sha256='0f2e18c8dea60a2c8711d089cd9612f7a8df394b89e5208096fe5867647e0908'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.1-linux-i686.tar.gz'; 			sha256='8bd3f8f20c0fd346b31ba5204f50d770c21abc0dba6f37b7ad7c02faa05033a6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.1-linux-aarch64.tar.gz'; 			sha256='78341862e24734ea1c2fa8795183c52627c23a99aba5aa1d0ec840edecec5ce0'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:19:47 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:19:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:19:47 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c63217cb9a06576ce0342d4cc63634c01370d11e6e43122e37e11c8dc2e4a21`  
		Last Modified: Tue, 06 Oct 2026 01:20:33 GMT  
		Size: 6.2 MB (6156306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed7a3f4ae062dd59e467d5dd2a125abfa8bffd323930a9cf0632b6ff8e3948d9`  
		Last Modified: Tue, 06 Oct 2026 01:20:39 GMT  
		Size: 325.4 MB (325355766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db68a9a54903cc6357fea815a696cb123ca6c6735760674f818f8536716414cb`  
		Last Modified: Tue, 06 Oct 2026 01:20:32 GMT  
		Size: 368.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:adb94ac3ff29be1cf43fea6259559f1648a9768c76acec3e8bd64488efe25c6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2265825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1595265615de419d1645c52c58bf751a63077dcd094b30bfd48822238c6a14df`

```dockerfile
```

-	Layers:
	-	`sha256:cead3ad7485a432e56103007096641193d32d3719ccbf2f51cb7a0b87d105acd`  
		Last Modified: Tue, 06 Oct 2026 01:20:32 GMT  
		Size: 2.2 MB (2247957 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2251714eb12e9cdaf9f5fb2f1f7fadd1b16293c64f4f13fa4ae47c8a00dfda00`  
		Last Modified: Tue, 06 Oct 2026 01:20:32 GMT  
		Size: 17.9 KB (17868 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.13-trixie` - linux; 386

```console
$ docker pull julia@sha256:ec7086279896ff2660abf3a6fa51bdaee8a6362c200e491bf85aecde57326f84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.5 MB (280487205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c32755e042497c8e0ba4c35b177a40388dcca8bdd9ea98ee0c747b71fc9526a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:16:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:16:40 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:16:40 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:16:40 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:16:40 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 06 Oct 2026 01:16:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.1-linux-x86_64.tar.gz'; 			sha256='0f2e18c8dea60a2c8711d089cd9612f7a8df394b89e5208096fe5867647e0908'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.1-linux-i686.tar.gz'; 			sha256='8bd3f8f20c0fd346b31ba5204f50d770c21abc0dba6f37b7ad7c02faa05033a6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.1-linux-aarch64.tar.gz'; 			sha256='78341862e24734ea1c2fa8795183c52627c23a99aba5aa1d0ec840edecec5ce0'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:16:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:16:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:16:40 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ca022fbc63d33cffdd1c01c83628151eb3bd052184abd7fccc450342012464c`  
		Last Modified: Tue, 06 Oct 2026 01:17:15 GMT  
		Size: 6.4 MB (6436306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a203c1eddaf48e3b424a90ec29d4e069d84e6b1b9adc1ccaf695a3472099999`  
		Last Modified: Tue, 06 Oct 2026 01:17:20 GMT  
		Size: 242.7 MB (242697230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a3f6cac63e26543d6dcdf1810e75aeebc961ecc839d6f6680688a368583eb75`  
		Last Modified: Tue, 06 Oct 2026 01:17:15 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:0a87657c3f3fc2499888072fc1019e2e83166286bbafe08235770bebfe1f96cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2262405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2be40150d1e9fe1d0b409ffa6bab4132c1e2a36d314ce3a66739c914a229cdea`

```dockerfile
```

-	Layers:
	-	`sha256:031d0ba7a34a0d0f3d049b43fc8a5d61902989f8e4e57a06cd31ba93c81624fe`  
		Last Modified: Tue, 06 Oct 2026 01:17:15 GMT  
		Size: 2.2 MB (2244758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff21f8cbf58246edd02c540ecf0340507030fdccb82baf86b680497d8abe32d4`  
		Last Modified: Tue, 06 Oct 2026 01:17:15 GMT  
		Size: 17.6 KB (17647 bytes)  
		MIME: application/vnd.in-toto+json

## `julia:1.13-windowsservercore`

```console
$ docker pull julia@sha256:d4081f1815a89df67cd2fb731ebff6b55106ed9cefc2b2eb991f3d033299df3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `julia:1.13-windowsservercore` - windows version 10.0.26100.33438; amd64

```console
$ docker pull julia@sha256:19533cd65ce7a09fa1c1d3359fa79f8dd9ea2a397e9ab3d718b527941f2d63e2
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2766881546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcb156701154c8684a82a72cff8e6bb0ee154f53ecef00ae3847f0ffe6fddde0`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Mon, 28 Sep 2026 23:42:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 28 Sep 2026 23:42:48 GMT
ENV JULIA_VERSION=1.13.1
# Mon, 28 Sep 2026 23:42:48 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.1-win64.exe
# Mon, 28 Sep 2026 23:42:49 GMT
ENV JULIA_SHA256=a9748efca5e4c4a4188261fd569f9275426cb655781692be308d604da1c1e1b7
# Mon, 28 Sep 2026 23:45:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Mon, 28 Sep 2026 23:45:06 GMT
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
	-	`sha256:ba6b024ac08375648c1d3dd9d1a3c8a18f7b37a721d60c44715afdfa6d482b9f`  
		Last Modified: Mon, 28 Sep 2026 23:45:12 GMT  
		Size: 1.3 KB (1340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eedd547e6565009d09136b32123dcfbb47e9c821c9723509f1b78c79274df4d`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f7494af7342a64846fb01f7d034da738025632fca7997226f8f6f662e446ff`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd8ca8a7b4053d8487ca8e6500f15c3a3d55dbcbff0904f278191790aebb53d3`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2538907158ce0a26fc27b0632ccfb5a0f53902c110053d89da29fd5c8009d2b4`  
		Last Modified: Mon, 28 Sep 2026 23:45:47 GMT  
		Size: 309.2 MB (309245397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d74d26b958700b42ea4084988788b2fd993551ec2dee1e2f879f0068e36028`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.13-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull julia@sha256:d80b2fd1d3f8d0bd40a75273cc2444796167da8b315d5d74ad7f8f0922194e55
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2528711919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2d049d0624180ccb46605e8b882e0814a8518de02ac2c3deb84c1411ca66b40`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Mon, 28 Sep 2026 23:42:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 28 Sep 2026 23:42:50 GMT
ENV JULIA_VERSION=1.13.1
# Mon, 28 Sep 2026 23:42:51 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.1-win64.exe
# Mon, 28 Sep 2026 23:42:53 GMT
ENV JULIA_SHA256=a9748efca5e4c4a4188261fd569f9275426cb655781692be308d604da1c1e1b7
# Mon, 28 Sep 2026 23:48:31 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Mon, 28 Sep 2026 23:48:32 GMT
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
	-	`sha256:92da9030d6488f94c1464eb176bb167430fb388622462eac1f949824e0acc18e`  
		Last Modified: Mon, 28 Sep 2026 23:48:38 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ff33d826f815dec6608e75581bc01ec232731fb89cb350ded1dd8bd78454911`  
		Last Modified: Mon, 28 Sep 2026 23:48:37 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f378efe657f23f5ca4ae347c6b2bf7458de16545e1ad8e559df5143c8b54f2ab`  
		Last Modified: Mon, 28 Sep 2026 23:48:36 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53d9687ed7d58f696d166555a841fa614e9547d662d39bf95ee4adb669bfc06`  
		Last Modified: Mon, 28 Sep 2026 23:48:36 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f7dc4c6ea2d5855227f2a4f5885ef3a733b6cb6b437857e7129c06c6001b4c`  
		Last Modified: Mon, 28 Sep 2026 23:49:16 GMT  
		Size: 309.2 MB (309216633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d8f9703cfdaae26f297da651b0bd60ed19718316a562b5bb325e333cfb6c798`  
		Last Modified: Mon, 28 Sep 2026 23:48:36 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.13-windowsservercore-ltsc2022`

```console
$ docker pull julia@sha256:bd07857c8870598c53b14c7e06220dca3ac2ecc55d23cab655ec4c847daa1095
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `julia:1.13-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull julia@sha256:d80b2fd1d3f8d0bd40a75273cc2444796167da8b315d5d74ad7f8f0922194e55
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2528711919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2d049d0624180ccb46605e8b882e0814a8518de02ac2c3deb84c1411ca66b40`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Mon, 28 Sep 2026 23:42:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 28 Sep 2026 23:42:50 GMT
ENV JULIA_VERSION=1.13.1
# Mon, 28 Sep 2026 23:42:51 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.1-win64.exe
# Mon, 28 Sep 2026 23:42:53 GMT
ENV JULIA_SHA256=a9748efca5e4c4a4188261fd569f9275426cb655781692be308d604da1c1e1b7
# Mon, 28 Sep 2026 23:48:31 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Mon, 28 Sep 2026 23:48:32 GMT
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
	-	`sha256:92da9030d6488f94c1464eb176bb167430fb388622462eac1f949824e0acc18e`  
		Last Modified: Mon, 28 Sep 2026 23:48:38 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ff33d826f815dec6608e75581bc01ec232731fb89cb350ded1dd8bd78454911`  
		Last Modified: Mon, 28 Sep 2026 23:48:37 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f378efe657f23f5ca4ae347c6b2bf7458de16545e1ad8e559df5143c8b54f2ab`  
		Last Modified: Mon, 28 Sep 2026 23:48:36 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53d9687ed7d58f696d166555a841fa614e9547d662d39bf95ee4adb669bfc06`  
		Last Modified: Mon, 28 Sep 2026 23:48:36 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f7dc4c6ea2d5855227f2a4f5885ef3a733b6cb6b437857e7129c06c6001b4c`  
		Last Modified: Mon, 28 Sep 2026 23:49:16 GMT  
		Size: 309.2 MB (309216633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d8f9703cfdaae26f297da651b0bd60ed19718316a562b5bb325e333cfb6c798`  
		Last Modified: Mon, 28 Sep 2026 23:48:36 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.13-windowsservercore-ltsc2025`

```console
$ docker pull julia@sha256:b417f835dcc78c9ce25972bdd52e46fd0e687072c6b10e04cc87274e4e69cd88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `julia:1.13-windowsservercore-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull julia@sha256:19533cd65ce7a09fa1c1d3359fa79f8dd9ea2a397e9ab3d718b527941f2d63e2
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2766881546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcb156701154c8684a82a72cff8e6bb0ee154f53ecef00ae3847f0ffe6fddde0`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Mon, 28 Sep 2026 23:42:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 28 Sep 2026 23:42:48 GMT
ENV JULIA_VERSION=1.13.1
# Mon, 28 Sep 2026 23:42:48 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.1-win64.exe
# Mon, 28 Sep 2026 23:42:49 GMT
ENV JULIA_SHA256=a9748efca5e4c4a4188261fd569f9275426cb655781692be308d604da1c1e1b7
# Mon, 28 Sep 2026 23:45:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Mon, 28 Sep 2026 23:45:06 GMT
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
	-	`sha256:ba6b024ac08375648c1d3dd9d1a3c8a18f7b37a721d60c44715afdfa6d482b9f`  
		Last Modified: Mon, 28 Sep 2026 23:45:12 GMT  
		Size: 1.3 KB (1340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eedd547e6565009d09136b32123dcfbb47e9c821c9723509f1b78c79274df4d`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f7494af7342a64846fb01f7d034da738025632fca7997226f8f6f662e446ff`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd8ca8a7b4053d8487ca8e6500f15c3a3d55dbcbff0904f278191790aebb53d3`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2538907158ce0a26fc27b0632ccfb5a0f53902c110053d89da29fd5c8009d2b4`  
		Last Modified: Mon, 28 Sep 2026 23:45:47 GMT  
		Size: 309.2 MB (309245397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d74d26b958700b42ea4084988788b2fd993551ec2dee1e2f879f0068e36028`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.13.1`

```console
$ docker pull julia@sha256:9b2356881dce6ff41143faf8c5b1bc5c24d4861eaa8d20c88cb273d8db065da4
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

### `julia:1.13.1` - linux; amd64

```console
$ docker pull julia@sha256:acbc8af9ea4f1a278b41adcddd667eb15c194691302a8477d42ca45b7f2a5034
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.4 MB (342398235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fcb0a94693bf143945bb56f6b004fb695b411630213d41df6cb8892c19426c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:17:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:17:46 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:17:46 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:17:46 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:17:46 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 06 Oct 2026 01:17:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.1-linux-x86_64.tar.gz'; 			sha256='0f2e18c8dea60a2c8711d089cd9612f7a8df394b89e5208096fe5867647e0908'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.1-linux-i686.tar.gz'; 			sha256='8bd3f8f20c0fd346b31ba5204f50d770c21abc0dba6f37b7ad7c02faa05033a6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.1-linux-aarch64.tar.gz'; 			sha256='78341862e24734ea1c2fa8795183c52627c23a99aba5aa1d0ec840edecec5ce0'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:17:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:17:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:17:46 GMT
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
	-	`sha256:cb5dc77e66073cd21b84f34e3dc6e6a19c8f4d7f50ed9671015b99a3f69ef1df`  
		Last Modified: Tue, 06 Oct 2026 01:18:35 GMT  
		Size: 306.3 MB (306305175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de8d12602fb0d388a81fc681eacdd68732979bdb03d1045915682346489dc083`  
		Last Modified: Tue, 06 Oct 2026 01:18:29 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13.1` - unknown; unknown

```console
$ docker pull julia@sha256:0d81bd584a94bb63306e7cc1ef19f1ccb06211f1dad19c34c62df9b6d4ec70c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2265334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56fdbbe2e94992979dba2ca429a8e5f018dbce9739ca9c72fa8d8a81c760973d`

```dockerfile
```

-	Layers:
	-	`sha256:3ba65a54ae2a23b09301a9c0a18565850a7d9c31a862a8eb861d9ae747c054c2`  
		Last Modified: Tue, 06 Oct 2026 01:18:29 GMT  
		Size: 2.2 MB (2247633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95bd2f9b2b25495b406ee67ff5ba75fc25d1d00db841c290f28e3fdea2b75278`  
		Last Modified: Tue, 06 Oct 2026 01:18:29 GMT  
		Size: 17.7 KB (17701 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.13.1` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:5f7bc1153325ae44a3cbef0852d189b52a7cc3d21544d68f982b7b7ed2595f39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.7 MB (361712722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4920ef5e813186e86344d52ec221c346301a8ab6d6b97951201a5dd53f72d6c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:19:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:19:47 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:19:47 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:19:47 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:19:47 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 06 Oct 2026 01:19:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.1-linux-x86_64.tar.gz'; 			sha256='0f2e18c8dea60a2c8711d089cd9612f7a8df394b89e5208096fe5867647e0908'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.1-linux-i686.tar.gz'; 			sha256='8bd3f8f20c0fd346b31ba5204f50d770c21abc0dba6f37b7ad7c02faa05033a6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.1-linux-aarch64.tar.gz'; 			sha256='78341862e24734ea1c2fa8795183c52627c23a99aba5aa1d0ec840edecec5ce0'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:19:47 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:19:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:19:47 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c63217cb9a06576ce0342d4cc63634c01370d11e6e43122e37e11c8dc2e4a21`  
		Last Modified: Tue, 06 Oct 2026 01:20:33 GMT  
		Size: 6.2 MB (6156306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed7a3f4ae062dd59e467d5dd2a125abfa8bffd323930a9cf0632b6ff8e3948d9`  
		Last Modified: Tue, 06 Oct 2026 01:20:39 GMT  
		Size: 325.4 MB (325355766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db68a9a54903cc6357fea815a696cb123ca6c6735760674f818f8536716414cb`  
		Last Modified: Tue, 06 Oct 2026 01:20:32 GMT  
		Size: 368.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13.1` - unknown; unknown

```console
$ docker pull julia@sha256:adb94ac3ff29be1cf43fea6259559f1648a9768c76acec3e8bd64488efe25c6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2265825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1595265615de419d1645c52c58bf751a63077dcd094b30bfd48822238c6a14df`

```dockerfile
```

-	Layers:
	-	`sha256:cead3ad7485a432e56103007096641193d32d3719ccbf2f51cb7a0b87d105acd`  
		Last Modified: Tue, 06 Oct 2026 01:20:32 GMT  
		Size: 2.2 MB (2247957 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2251714eb12e9cdaf9f5fb2f1f7fadd1b16293c64f4f13fa4ae47c8a00dfda00`  
		Last Modified: Tue, 06 Oct 2026 01:20:32 GMT  
		Size: 17.9 KB (17868 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.13.1` - linux; 386

```console
$ docker pull julia@sha256:ec7086279896ff2660abf3a6fa51bdaee8a6362c200e491bf85aecde57326f84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.5 MB (280487205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c32755e042497c8e0ba4c35b177a40388dcca8bdd9ea98ee0c747b71fc9526a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:16:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:16:40 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:16:40 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:16:40 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:16:40 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 06 Oct 2026 01:16:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.1-linux-x86_64.tar.gz'; 			sha256='0f2e18c8dea60a2c8711d089cd9612f7a8df394b89e5208096fe5867647e0908'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.1-linux-i686.tar.gz'; 			sha256='8bd3f8f20c0fd346b31ba5204f50d770c21abc0dba6f37b7ad7c02faa05033a6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.1-linux-aarch64.tar.gz'; 			sha256='78341862e24734ea1c2fa8795183c52627c23a99aba5aa1d0ec840edecec5ce0'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:16:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:16:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:16:40 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ca022fbc63d33cffdd1c01c83628151eb3bd052184abd7fccc450342012464c`  
		Last Modified: Tue, 06 Oct 2026 01:17:15 GMT  
		Size: 6.4 MB (6436306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a203c1eddaf48e3b424a90ec29d4e069d84e6b1b9adc1ccaf695a3472099999`  
		Last Modified: Tue, 06 Oct 2026 01:17:20 GMT  
		Size: 242.7 MB (242697230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a3f6cac63e26543d6dcdf1810e75aeebc961ecc839d6f6680688a368583eb75`  
		Last Modified: Tue, 06 Oct 2026 01:17:15 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13.1` - unknown; unknown

```console
$ docker pull julia@sha256:0a87657c3f3fc2499888072fc1019e2e83166286bbafe08235770bebfe1f96cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2262405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2be40150d1e9fe1d0b409ffa6bab4132c1e2a36d314ce3a66739c914a229cdea`

```dockerfile
```

-	Layers:
	-	`sha256:031d0ba7a34a0d0f3d049b43fc8a5d61902989f8e4e57a06cd31ba93c81624fe`  
		Last Modified: Tue, 06 Oct 2026 01:17:15 GMT  
		Size: 2.2 MB (2244758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff21f8cbf58246edd02c540ecf0340507030fdccb82baf86b680497d8abe32d4`  
		Last Modified: Tue, 06 Oct 2026 01:17:15 GMT  
		Size: 17.6 KB (17647 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.13.1` - windows version 10.0.26100.33438; amd64

```console
$ docker pull julia@sha256:19533cd65ce7a09fa1c1d3359fa79f8dd9ea2a397e9ab3d718b527941f2d63e2
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2766881546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcb156701154c8684a82a72cff8e6bb0ee154f53ecef00ae3847f0ffe6fddde0`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Mon, 28 Sep 2026 23:42:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 28 Sep 2026 23:42:48 GMT
ENV JULIA_VERSION=1.13.1
# Mon, 28 Sep 2026 23:42:48 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.1-win64.exe
# Mon, 28 Sep 2026 23:42:49 GMT
ENV JULIA_SHA256=a9748efca5e4c4a4188261fd569f9275426cb655781692be308d604da1c1e1b7
# Mon, 28 Sep 2026 23:45:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Mon, 28 Sep 2026 23:45:06 GMT
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
	-	`sha256:ba6b024ac08375648c1d3dd9d1a3c8a18f7b37a721d60c44715afdfa6d482b9f`  
		Last Modified: Mon, 28 Sep 2026 23:45:12 GMT  
		Size: 1.3 KB (1340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eedd547e6565009d09136b32123dcfbb47e9c821c9723509f1b78c79274df4d`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f7494af7342a64846fb01f7d034da738025632fca7997226f8f6f662e446ff`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd8ca8a7b4053d8487ca8e6500f15c3a3d55dbcbff0904f278191790aebb53d3`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2538907158ce0a26fc27b0632ccfb5a0f53902c110053d89da29fd5c8009d2b4`  
		Last Modified: Mon, 28 Sep 2026 23:45:47 GMT  
		Size: 309.2 MB (309245397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d74d26b958700b42ea4084988788b2fd993551ec2dee1e2f879f0068e36028`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.13.1` - windows version 10.0.20348.5622; amd64

```console
$ docker pull julia@sha256:d80b2fd1d3f8d0bd40a75273cc2444796167da8b315d5d74ad7f8f0922194e55
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2528711919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2d049d0624180ccb46605e8b882e0814a8518de02ac2c3deb84c1411ca66b40`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Mon, 28 Sep 2026 23:42:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 28 Sep 2026 23:42:50 GMT
ENV JULIA_VERSION=1.13.1
# Mon, 28 Sep 2026 23:42:51 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.1-win64.exe
# Mon, 28 Sep 2026 23:42:53 GMT
ENV JULIA_SHA256=a9748efca5e4c4a4188261fd569f9275426cb655781692be308d604da1c1e1b7
# Mon, 28 Sep 2026 23:48:31 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Mon, 28 Sep 2026 23:48:32 GMT
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
	-	`sha256:92da9030d6488f94c1464eb176bb167430fb388622462eac1f949824e0acc18e`  
		Last Modified: Mon, 28 Sep 2026 23:48:38 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ff33d826f815dec6608e75581bc01ec232731fb89cb350ded1dd8bd78454911`  
		Last Modified: Mon, 28 Sep 2026 23:48:37 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f378efe657f23f5ca4ae347c6b2bf7458de16545e1ad8e559df5143c8b54f2ab`  
		Last Modified: Mon, 28 Sep 2026 23:48:36 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53d9687ed7d58f696d166555a841fa614e9547d662d39bf95ee4adb669bfc06`  
		Last Modified: Mon, 28 Sep 2026 23:48:36 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f7dc4c6ea2d5855227f2a4f5885ef3a733b6cb6b437857e7129c06c6001b4c`  
		Last Modified: Mon, 28 Sep 2026 23:49:16 GMT  
		Size: 309.2 MB (309216633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d8f9703cfdaae26f297da651b0bd60ed19718316a562b5bb325e333cfb6c798`  
		Last Modified: Mon, 28 Sep 2026 23:48:36 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.13.1-bookworm`

```console
$ docker pull julia@sha256:41561e8f2c891960279ead9fe61111fd12fb4e12ab6a9fc5a9efce7ae23642d4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `julia:1.13.1-bookworm` - linux; amd64

```console
$ docker pull julia@sha256:229eb93c838d469012ab7ebe47c4d4ba50aa3e28094d12bbe820a47b482c1085
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.1 MB (340066472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e973dfa5be11b014af0217c917f3918a29f7e8b6646b0a7f0b9f339763eaec83`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:18:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:18:31 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:18:31 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:18:31 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:18:31 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 06 Oct 2026 01:18:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.1-linux-x86_64.tar.gz'; 			sha256='0f2e18c8dea60a2c8711d089cd9612f7a8df394b89e5208096fe5867647e0908'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.1-linux-i686.tar.gz'; 			sha256='8bd3f8f20c0fd346b31ba5204f50d770c21abc0dba6f37b7ad7c02faa05033a6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.1-linux-aarch64.tar.gz'; 			sha256='78341862e24734ea1c2fa8795183c52627c23a99aba5aa1d0ec840edecec5ce0'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:18:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:18:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:18:31 GMT
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
	-	`sha256:c88938ba66fd23dd43aa960a332e275d1ee550c497dfb03932021e6da2878f85`  
		Last Modified: Tue, 06 Oct 2026 01:19:23 GMT  
		Size: 306.3 MB (306270853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06cd1f3ef3bafc142ad32b2e52a017ea8e7cda211416cb5e2602f62dd8509f4a`  
		Last Modified: Tue, 06 Oct 2026 01:19:17 GMT  
		Size: 368.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13.1-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:9e86379dced0b9d905623f3eff2907c67dd64046e5fbd6e507af7efb674840e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2590798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6241bb5fee781354eca42ba94a3563d8b16f57403df273a00ee973c39f05899`

```dockerfile
```

-	Layers:
	-	`sha256:c4251fdd1cf40f4e67926b3e16aefb3c39bfa0f5ae0c01d7923f29788cfee093`  
		Last Modified: Tue, 06 Oct 2026 01:19:17 GMT  
		Size: 2.6 MB (2574243 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:682700d413613bed1f20cc13d5f0b0b06a0920ba7c0852f5abd4ed90fa6cf977`  
		Last Modified: Tue, 06 Oct 2026 01:19:17 GMT  
		Size: 16.6 KB (16555 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.13.1-bookworm` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:8bfe7168498592dc033cd39d2ce77a46d5e77da221e0bee5a89486f9497d0321
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.9 MB (358850170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d990544df6c9b8942b121d3f879817ee007337c447bc7ca5d202dc4de78d9f81`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:19:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:19:49 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:19:49 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:19:49 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 06 Oct 2026 01:19:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.1-linux-x86_64.tar.gz'; 			sha256='0f2e18c8dea60a2c8711d089cd9612f7a8df394b89e5208096fe5867647e0908'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.1-linux-i686.tar.gz'; 			sha256='8bd3f8f20c0fd346b31ba5204f50d770c21abc0dba6f37b7ad7c02faa05033a6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.1-linux-aarch64.tar.gz'; 			sha256='78341862e24734ea1c2fa8795183c52627c23a99aba5aa1d0ec840edecec5ce0'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:19:49 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93794a8c3f2257149aef21a9fab14395fc45359f7aeffa926ba0e724cb973ccb`  
		Last Modified: Tue, 06 Oct 2026 01:20:35 GMT  
		Size: 5.4 MB (5388847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c6fe7a488267e1eb4b0f189e3dae52835a12da01d7dcb7812cd203cea0c6f97`  
		Last Modified: Tue, 06 Oct 2026 01:20:41 GMT  
		Size: 325.3 MB (325323773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cfcab2a0578e03147983b174175eea51fcb364eabc7d9b275508eaabfe6df86`  
		Last Modified: Tue, 06 Oct 2026 01:20:35 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13.1-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:eedcab6b716b6bbda73deb3cc3d63105b66ba7a129be1482f270f78f716d7736
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2591191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb7839340891fece89a47e01718670378180a9c8028e2bb9979012f744599da9`

```dockerfile
```

-	Layers:
	-	`sha256:117eb48e2f23f0ad653f38e5094ee8e60b2d4f3aed9e2360c533cd6c8abb0a6c`  
		Last Modified: Tue, 06 Oct 2026 01:20:35 GMT  
		Size: 2.6 MB (2574518 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5839397e975e020267de660c7c71997ea0c81746b190a2112558f186fcb1877a`  
		Last Modified: Tue, 06 Oct 2026 01:20:35 GMT  
		Size: 16.7 KB (16673 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.13.1-bookworm` - linux; 386

```console
$ docker pull julia@sha256:0d6af774fd2320543b1834c9c82b45f85b206f7476e7cd86aefb0906eb76d577
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.6 MB (277609913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04fe7592b8fbb3d2798af54fc40cf099d054857469832a20b1e36a824f8c1353`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:16:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:16:37 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:16:37 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:16:37 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:16:37 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 06 Oct 2026 01:16:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.1-linux-x86_64.tar.gz'; 			sha256='0f2e18c8dea60a2c8711d089cd9612f7a8df394b89e5208096fe5867647e0908'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.1-linux-i686.tar.gz'; 			sha256='8bd3f8f20c0fd346b31ba5204f50d770c21abc0dba6f37b7ad7c02faa05033a6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.1-linux-aarch64.tar.gz'; 			sha256='78341862e24734ea1c2fa8795183c52627c23a99aba5aa1d0ec840edecec5ce0'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:16:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:16:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:16:37 GMT
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
	-	`sha256:c9d3d060a2d246c7decc539d9c53b77ad77118ea380c5fb5d56b4367afc94011`  
		Last Modified: Tue, 06 Oct 2026 01:17:14 GMT  
		Size: 242.7 MB (242665190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff29e6ba89e064e72102cd31aea6cec4b6c68acddfaae8679fb1375e42a1c98b`  
		Last Modified: Tue, 06 Oct 2026 01:17:10 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13.1-bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:6fd046794d071fde1c98d1295ede934fcb4ccee058bef9f16fd48a5275a07ae5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2587911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bac4e743521929462e7982ecc1713bf776db08d40162be9f8a25cc61a1866ee`

```dockerfile
```

-	Layers:
	-	`sha256:4986035b0746226b9d0b91d0407127df75dd6418212cbf603892cd9894613170`  
		Last Modified: Tue, 06 Oct 2026 01:17:10 GMT  
		Size: 2.6 MB (2571390 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:867b6b80da4a59537e9a79e2a81f4814ddf4cdfd47648771619d1704bf6bd96f`  
		Last Modified: Tue, 06 Oct 2026 01:17:10 GMT  
		Size: 16.5 KB (16521 bytes)  
		MIME: application/vnd.in-toto+json

## `julia:1.13.1-trixie`

```console
$ docker pull julia@sha256:0002771531bbae894f2532a5ae02ea71c30685440ca3bdaea0a43d17e65571e0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `julia:1.13.1-trixie` - linux; amd64

```console
$ docker pull julia@sha256:acbc8af9ea4f1a278b41adcddd667eb15c194691302a8477d42ca45b7f2a5034
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.4 MB (342398235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fcb0a94693bf143945bb56f6b004fb695b411630213d41df6cb8892c19426c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:17:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:17:46 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:17:46 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:17:46 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:17:46 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 06 Oct 2026 01:17:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.1-linux-x86_64.tar.gz'; 			sha256='0f2e18c8dea60a2c8711d089cd9612f7a8df394b89e5208096fe5867647e0908'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.1-linux-i686.tar.gz'; 			sha256='8bd3f8f20c0fd346b31ba5204f50d770c21abc0dba6f37b7ad7c02faa05033a6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.1-linux-aarch64.tar.gz'; 			sha256='78341862e24734ea1c2fa8795183c52627c23a99aba5aa1d0ec840edecec5ce0'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:17:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:17:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:17:46 GMT
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
	-	`sha256:cb5dc77e66073cd21b84f34e3dc6e6a19c8f4d7f50ed9671015b99a3f69ef1df`  
		Last Modified: Tue, 06 Oct 2026 01:18:35 GMT  
		Size: 306.3 MB (306305175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de8d12602fb0d388a81fc681eacdd68732979bdb03d1045915682346489dc083`  
		Last Modified: Tue, 06 Oct 2026 01:18:29 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13.1-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:0d81bd584a94bb63306e7cc1ef19f1ccb06211f1dad19c34c62df9b6d4ec70c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2265334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56fdbbe2e94992979dba2ca429a8e5f018dbce9739ca9c72fa8d8a81c760973d`

```dockerfile
```

-	Layers:
	-	`sha256:3ba65a54ae2a23b09301a9c0a18565850a7d9c31a862a8eb861d9ae747c054c2`  
		Last Modified: Tue, 06 Oct 2026 01:18:29 GMT  
		Size: 2.2 MB (2247633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95bd2f9b2b25495b406ee67ff5ba75fc25d1d00db841c290f28e3fdea2b75278`  
		Last Modified: Tue, 06 Oct 2026 01:18:29 GMT  
		Size: 17.7 KB (17701 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.13.1-trixie` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:5f7bc1153325ae44a3cbef0852d189b52a7cc3d21544d68f982b7b7ed2595f39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.7 MB (361712722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4920ef5e813186e86344d52ec221c346301a8ab6d6b97951201a5dd53f72d6c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:19:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:19:47 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:19:47 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:19:47 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:19:47 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 06 Oct 2026 01:19:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.1-linux-x86_64.tar.gz'; 			sha256='0f2e18c8dea60a2c8711d089cd9612f7a8df394b89e5208096fe5867647e0908'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.1-linux-i686.tar.gz'; 			sha256='8bd3f8f20c0fd346b31ba5204f50d770c21abc0dba6f37b7ad7c02faa05033a6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.1-linux-aarch64.tar.gz'; 			sha256='78341862e24734ea1c2fa8795183c52627c23a99aba5aa1d0ec840edecec5ce0'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:19:47 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:19:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:19:47 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c63217cb9a06576ce0342d4cc63634c01370d11e6e43122e37e11c8dc2e4a21`  
		Last Modified: Tue, 06 Oct 2026 01:20:33 GMT  
		Size: 6.2 MB (6156306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed7a3f4ae062dd59e467d5dd2a125abfa8bffd323930a9cf0632b6ff8e3948d9`  
		Last Modified: Tue, 06 Oct 2026 01:20:39 GMT  
		Size: 325.4 MB (325355766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db68a9a54903cc6357fea815a696cb123ca6c6735760674f818f8536716414cb`  
		Last Modified: Tue, 06 Oct 2026 01:20:32 GMT  
		Size: 368.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13.1-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:adb94ac3ff29be1cf43fea6259559f1648a9768c76acec3e8bd64488efe25c6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2265825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1595265615de419d1645c52c58bf751a63077dcd094b30bfd48822238c6a14df`

```dockerfile
```

-	Layers:
	-	`sha256:cead3ad7485a432e56103007096641193d32d3719ccbf2f51cb7a0b87d105acd`  
		Last Modified: Tue, 06 Oct 2026 01:20:32 GMT  
		Size: 2.2 MB (2247957 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2251714eb12e9cdaf9f5fb2f1f7fadd1b16293c64f4f13fa4ae47c8a00dfda00`  
		Last Modified: Tue, 06 Oct 2026 01:20:32 GMT  
		Size: 17.9 KB (17868 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:1.13.1-trixie` - linux; 386

```console
$ docker pull julia@sha256:ec7086279896ff2660abf3a6fa51bdaee8a6362c200e491bf85aecde57326f84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.5 MB (280487205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c32755e042497c8e0ba4c35b177a40388dcca8bdd9ea98ee0c747b71fc9526a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:16:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:16:40 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:16:40 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:16:40 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:16:40 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 06 Oct 2026 01:16:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.1-linux-x86_64.tar.gz'; 			sha256='0f2e18c8dea60a2c8711d089cd9612f7a8df394b89e5208096fe5867647e0908'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.1-linux-i686.tar.gz'; 			sha256='8bd3f8f20c0fd346b31ba5204f50d770c21abc0dba6f37b7ad7c02faa05033a6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.1-linux-aarch64.tar.gz'; 			sha256='78341862e24734ea1c2fa8795183c52627c23a99aba5aa1d0ec840edecec5ce0'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:16:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:16:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:16:40 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ca022fbc63d33cffdd1c01c83628151eb3bd052184abd7fccc450342012464c`  
		Last Modified: Tue, 06 Oct 2026 01:17:15 GMT  
		Size: 6.4 MB (6436306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a203c1eddaf48e3b424a90ec29d4e069d84e6b1b9adc1ccaf695a3472099999`  
		Last Modified: Tue, 06 Oct 2026 01:17:20 GMT  
		Size: 242.7 MB (242697230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a3f6cac63e26543d6dcdf1810e75aeebc961ecc839d6f6680688a368583eb75`  
		Last Modified: Tue, 06 Oct 2026 01:17:15 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:1.13.1-trixie` - unknown; unknown

```console
$ docker pull julia@sha256:0a87657c3f3fc2499888072fc1019e2e83166286bbafe08235770bebfe1f96cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2262405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2be40150d1e9fe1d0b409ffa6bab4132c1e2a36d314ce3a66739c914a229cdea`

```dockerfile
```

-	Layers:
	-	`sha256:031d0ba7a34a0d0f3d049b43fc8a5d61902989f8e4e57a06cd31ba93c81624fe`  
		Last Modified: Tue, 06 Oct 2026 01:17:15 GMT  
		Size: 2.2 MB (2244758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff21f8cbf58246edd02c540ecf0340507030fdccb82baf86b680497d8abe32d4`  
		Last Modified: Tue, 06 Oct 2026 01:17:15 GMT  
		Size: 17.6 KB (17647 bytes)  
		MIME: application/vnd.in-toto+json

## `julia:1.13.1-windowsservercore`

```console
$ docker pull julia@sha256:d4081f1815a89df67cd2fb731ebff6b55106ed9cefc2b2eb991f3d033299df3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `julia:1.13.1-windowsservercore` - windows version 10.0.26100.33438; amd64

```console
$ docker pull julia@sha256:19533cd65ce7a09fa1c1d3359fa79f8dd9ea2a397e9ab3d718b527941f2d63e2
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2766881546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcb156701154c8684a82a72cff8e6bb0ee154f53ecef00ae3847f0ffe6fddde0`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Mon, 28 Sep 2026 23:42:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 28 Sep 2026 23:42:48 GMT
ENV JULIA_VERSION=1.13.1
# Mon, 28 Sep 2026 23:42:48 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.1-win64.exe
# Mon, 28 Sep 2026 23:42:49 GMT
ENV JULIA_SHA256=a9748efca5e4c4a4188261fd569f9275426cb655781692be308d604da1c1e1b7
# Mon, 28 Sep 2026 23:45:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Mon, 28 Sep 2026 23:45:06 GMT
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
	-	`sha256:ba6b024ac08375648c1d3dd9d1a3c8a18f7b37a721d60c44715afdfa6d482b9f`  
		Last Modified: Mon, 28 Sep 2026 23:45:12 GMT  
		Size: 1.3 KB (1340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eedd547e6565009d09136b32123dcfbb47e9c821c9723509f1b78c79274df4d`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f7494af7342a64846fb01f7d034da738025632fca7997226f8f6f662e446ff`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd8ca8a7b4053d8487ca8e6500f15c3a3d55dbcbff0904f278191790aebb53d3`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2538907158ce0a26fc27b0632ccfb5a0f53902c110053d89da29fd5c8009d2b4`  
		Last Modified: Mon, 28 Sep 2026 23:45:47 GMT  
		Size: 309.2 MB (309245397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d74d26b958700b42ea4084988788b2fd993551ec2dee1e2f879f0068e36028`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.13.1-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull julia@sha256:d80b2fd1d3f8d0bd40a75273cc2444796167da8b315d5d74ad7f8f0922194e55
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2528711919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2d049d0624180ccb46605e8b882e0814a8518de02ac2c3deb84c1411ca66b40`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Mon, 28 Sep 2026 23:42:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 28 Sep 2026 23:42:50 GMT
ENV JULIA_VERSION=1.13.1
# Mon, 28 Sep 2026 23:42:51 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.1-win64.exe
# Mon, 28 Sep 2026 23:42:53 GMT
ENV JULIA_SHA256=a9748efca5e4c4a4188261fd569f9275426cb655781692be308d604da1c1e1b7
# Mon, 28 Sep 2026 23:48:31 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Mon, 28 Sep 2026 23:48:32 GMT
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
	-	`sha256:92da9030d6488f94c1464eb176bb167430fb388622462eac1f949824e0acc18e`  
		Last Modified: Mon, 28 Sep 2026 23:48:38 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ff33d826f815dec6608e75581bc01ec232731fb89cb350ded1dd8bd78454911`  
		Last Modified: Mon, 28 Sep 2026 23:48:37 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f378efe657f23f5ca4ae347c6b2bf7458de16545e1ad8e559df5143c8b54f2ab`  
		Last Modified: Mon, 28 Sep 2026 23:48:36 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53d9687ed7d58f696d166555a841fa614e9547d662d39bf95ee4adb669bfc06`  
		Last Modified: Mon, 28 Sep 2026 23:48:36 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f7dc4c6ea2d5855227f2a4f5885ef3a733b6cb6b437857e7129c06c6001b4c`  
		Last Modified: Mon, 28 Sep 2026 23:49:16 GMT  
		Size: 309.2 MB (309216633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d8f9703cfdaae26f297da651b0bd60ed19718316a562b5bb325e333cfb6c798`  
		Last Modified: Mon, 28 Sep 2026 23:48:36 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.13.1-windowsservercore-ltsc2022`

```console
$ docker pull julia@sha256:bd07857c8870598c53b14c7e06220dca3ac2ecc55d23cab655ec4c847daa1095
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `julia:1.13.1-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull julia@sha256:d80b2fd1d3f8d0bd40a75273cc2444796167da8b315d5d74ad7f8f0922194e55
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2528711919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2d049d0624180ccb46605e8b882e0814a8518de02ac2c3deb84c1411ca66b40`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Mon, 28 Sep 2026 23:42:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 28 Sep 2026 23:42:50 GMT
ENV JULIA_VERSION=1.13.1
# Mon, 28 Sep 2026 23:42:51 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.1-win64.exe
# Mon, 28 Sep 2026 23:42:53 GMT
ENV JULIA_SHA256=a9748efca5e4c4a4188261fd569f9275426cb655781692be308d604da1c1e1b7
# Mon, 28 Sep 2026 23:48:31 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Mon, 28 Sep 2026 23:48:32 GMT
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
	-	`sha256:92da9030d6488f94c1464eb176bb167430fb388622462eac1f949824e0acc18e`  
		Last Modified: Mon, 28 Sep 2026 23:48:38 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ff33d826f815dec6608e75581bc01ec232731fb89cb350ded1dd8bd78454911`  
		Last Modified: Mon, 28 Sep 2026 23:48:37 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f378efe657f23f5ca4ae347c6b2bf7458de16545e1ad8e559df5143c8b54f2ab`  
		Last Modified: Mon, 28 Sep 2026 23:48:36 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53d9687ed7d58f696d166555a841fa614e9547d662d39bf95ee4adb669bfc06`  
		Last Modified: Mon, 28 Sep 2026 23:48:36 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f7dc4c6ea2d5855227f2a4f5885ef3a733b6cb6b437857e7129c06c6001b4c`  
		Last Modified: Mon, 28 Sep 2026 23:49:16 GMT  
		Size: 309.2 MB (309216633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d8f9703cfdaae26f297da651b0bd60ed19718316a562b5bb325e333cfb6c798`  
		Last Modified: Mon, 28 Sep 2026 23:48:36 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.13.1-windowsservercore-ltsc2025`

```console
$ docker pull julia@sha256:b417f835dcc78c9ce25972bdd52e46fd0e687072c6b10e04cc87274e4e69cd88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `julia:1.13.1-windowsservercore-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull julia@sha256:19533cd65ce7a09fa1c1d3359fa79f8dd9ea2a397e9ab3d718b527941f2d63e2
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2766881546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcb156701154c8684a82a72cff8e6bb0ee154f53ecef00ae3847f0ffe6fddde0`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Mon, 28 Sep 2026 23:42:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 28 Sep 2026 23:42:48 GMT
ENV JULIA_VERSION=1.13.1
# Mon, 28 Sep 2026 23:42:48 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.1-win64.exe
# Mon, 28 Sep 2026 23:42:49 GMT
ENV JULIA_SHA256=a9748efca5e4c4a4188261fd569f9275426cb655781692be308d604da1c1e1b7
# Mon, 28 Sep 2026 23:45:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Mon, 28 Sep 2026 23:45:06 GMT
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
	-	`sha256:ba6b024ac08375648c1d3dd9d1a3c8a18f7b37a721d60c44715afdfa6d482b9f`  
		Last Modified: Mon, 28 Sep 2026 23:45:12 GMT  
		Size: 1.3 KB (1340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eedd547e6565009d09136b32123dcfbb47e9c821c9723509f1b78c79274df4d`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f7494af7342a64846fb01f7d034da738025632fca7997226f8f6f662e446ff`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd8ca8a7b4053d8487ca8e6500f15c3a3d55dbcbff0904f278191790aebb53d3`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2538907158ce0a26fc27b0632ccfb5a0f53902c110053d89da29fd5c8009d2b4`  
		Last Modified: Mon, 28 Sep 2026 23:45:47 GMT  
		Size: 309.2 MB (309245397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d74d26b958700b42ea4084988788b2fd993551ec2dee1e2f879f0068e36028`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:bookworm`

```console
$ docker pull julia@sha256:41561e8f2c891960279ead9fe61111fd12fb4e12ab6a9fc5a9efce7ae23642d4
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
$ docker pull julia@sha256:229eb93c838d469012ab7ebe47c4d4ba50aa3e28094d12bbe820a47b482c1085
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.1 MB (340066472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e973dfa5be11b014af0217c917f3918a29f7e8b6646b0a7f0b9f339763eaec83`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:18:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:18:31 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:18:31 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:18:31 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:18:31 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 06 Oct 2026 01:18:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.1-linux-x86_64.tar.gz'; 			sha256='0f2e18c8dea60a2c8711d089cd9612f7a8df394b89e5208096fe5867647e0908'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.1-linux-i686.tar.gz'; 			sha256='8bd3f8f20c0fd346b31ba5204f50d770c21abc0dba6f37b7ad7c02faa05033a6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.1-linux-aarch64.tar.gz'; 			sha256='78341862e24734ea1c2fa8795183c52627c23a99aba5aa1d0ec840edecec5ce0'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:18:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:18:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:18:31 GMT
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
	-	`sha256:c88938ba66fd23dd43aa960a332e275d1ee550c497dfb03932021e6da2878f85`  
		Last Modified: Tue, 06 Oct 2026 01:19:23 GMT  
		Size: 306.3 MB (306270853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06cd1f3ef3bafc142ad32b2e52a017ea8e7cda211416cb5e2602f62dd8509f4a`  
		Last Modified: Tue, 06 Oct 2026 01:19:17 GMT  
		Size: 368.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:9e86379dced0b9d905623f3eff2907c67dd64046e5fbd6e507af7efb674840e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2590798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6241bb5fee781354eca42ba94a3563d8b16f57403df273a00ee973c39f05899`

```dockerfile
```

-	Layers:
	-	`sha256:c4251fdd1cf40f4e67926b3e16aefb3c39bfa0f5ae0c01d7923f29788cfee093`  
		Last Modified: Tue, 06 Oct 2026 01:19:17 GMT  
		Size: 2.6 MB (2574243 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:682700d413613bed1f20cc13d5f0b0b06a0920ba7c0852f5abd4ed90fa6cf977`  
		Last Modified: Tue, 06 Oct 2026 01:19:17 GMT  
		Size: 16.6 KB (16555 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:bookworm` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:8bfe7168498592dc033cd39d2ce77a46d5e77da221e0bee5a89486f9497d0321
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.9 MB (358850170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d990544df6c9b8942b121d3f879817ee007337c447bc7ca5d202dc4de78d9f81`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:19:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:19:49 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:19:49 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:19:49 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 06 Oct 2026 01:19:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.1-linux-x86_64.tar.gz'; 			sha256='0f2e18c8dea60a2c8711d089cd9612f7a8df394b89e5208096fe5867647e0908'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.1-linux-i686.tar.gz'; 			sha256='8bd3f8f20c0fd346b31ba5204f50d770c21abc0dba6f37b7ad7c02faa05033a6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.1-linux-aarch64.tar.gz'; 			sha256='78341862e24734ea1c2fa8795183c52627c23a99aba5aa1d0ec840edecec5ce0'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:19:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:19:49 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93794a8c3f2257149aef21a9fab14395fc45359f7aeffa926ba0e724cb973ccb`  
		Last Modified: Tue, 06 Oct 2026 01:20:35 GMT  
		Size: 5.4 MB (5388847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c6fe7a488267e1eb4b0f189e3dae52835a12da01d7dcb7812cd203cea0c6f97`  
		Last Modified: Tue, 06 Oct 2026 01:20:41 GMT  
		Size: 325.3 MB (325323773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cfcab2a0578e03147983b174175eea51fcb364eabc7d9b275508eaabfe6df86`  
		Last Modified: Tue, 06 Oct 2026 01:20:35 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:eedcab6b716b6bbda73deb3cc3d63105b66ba7a129be1482f270f78f716d7736
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2591191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb7839340891fece89a47e01718670378180a9c8028e2bb9979012f744599da9`

```dockerfile
```

-	Layers:
	-	`sha256:117eb48e2f23f0ad653f38e5094ee8e60b2d4f3aed9e2360c533cd6c8abb0a6c`  
		Last Modified: Tue, 06 Oct 2026 01:20:35 GMT  
		Size: 2.6 MB (2574518 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5839397e975e020267de660c7c71997ea0c81746b190a2112558f186fcb1877a`  
		Last Modified: Tue, 06 Oct 2026 01:20:35 GMT  
		Size: 16.7 KB (16673 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:bookworm` - linux; 386

```console
$ docker pull julia@sha256:0d6af774fd2320543b1834c9c82b45f85b206f7476e7cd86aefb0906eb76d577
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.6 MB (277609913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04fe7592b8fbb3d2798af54fc40cf099d054857469832a20b1e36a824f8c1353`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:16:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:16:37 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:16:37 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:16:37 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:16:37 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 06 Oct 2026 01:16:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.1-linux-x86_64.tar.gz'; 			sha256='0f2e18c8dea60a2c8711d089cd9612f7a8df394b89e5208096fe5867647e0908'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.1-linux-i686.tar.gz'; 			sha256='8bd3f8f20c0fd346b31ba5204f50d770c21abc0dba6f37b7ad7c02faa05033a6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.1-linux-aarch64.tar.gz'; 			sha256='78341862e24734ea1c2fa8795183c52627c23a99aba5aa1d0ec840edecec5ce0'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:16:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:16:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:16:37 GMT
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
	-	`sha256:c9d3d060a2d246c7decc539d9c53b77ad77118ea380c5fb5d56b4367afc94011`  
		Last Modified: Tue, 06 Oct 2026 01:17:14 GMT  
		Size: 242.7 MB (242665190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff29e6ba89e064e72102cd31aea6cec4b6c68acddfaae8679fb1375e42a1c98b`  
		Last Modified: Tue, 06 Oct 2026 01:17:10 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:bookworm` - unknown; unknown

```console
$ docker pull julia@sha256:6fd046794d071fde1c98d1295ede934fcb4ccee058bef9f16fd48a5275a07ae5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2587911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bac4e743521929462e7982ecc1713bf776db08d40162be9f8a25cc61a1866ee`

```dockerfile
```

-	Layers:
	-	`sha256:4986035b0746226b9d0b91d0407127df75dd6418212cbf603892cd9894613170`  
		Last Modified: Tue, 06 Oct 2026 01:17:10 GMT  
		Size: 2.6 MB (2571390 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:867b6b80da4a59537e9a79e2a81f4814ddf4cdfd47648771619d1704bf6bd96f`  
		Last Modified: Tue, 06 Oct 2026 01:17:10 GMT  
		Size: 16.5 KB (16521 bytes)  
		MIME: application/vnd.in-toto+json

## `julia:latest`

```console
$ docker pull julia@sha256:9b2356881dce6ff41143faf8c5b1bc5c24d4861eaa8d20c88cb273d8db065da4
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
$ docker pull julia@sha256:acbc8af9ea4f1a278b41adcddd667eb15c194691302a8477d42ca45b7f2a5034
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.4 MB (342398235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fcb0a94693bf143945bb56f6b004fb695b411630213d41df6cb8892c19426c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:17:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:17:46 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:17:46 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:17:46 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:17:46 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 06 Oct 2026 01:17:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.1-linux-x86_64.tar.gz'; 			sha256='0f2e18c8dea60a2c8711d089cd9612f7a8df394b89e5208096fe5867647e0908'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.1-linux-i686.tar.gz'; 			sha256='8bd3f8f20c0fd346b31ba5204f50d770c21abc0dba6f37b7ad7c02faa05033a6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.1-linux-aarch64.tar.gz'; 			sha256='78341862e24734ea1c2fa8795183c52627c23a99aba5aa1d0ec840edecec5ce0'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:17:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:17:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:17:46 GMT
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
	-	`sha256:cb5dc77e66073cd21b84f34e3dc6e6a19c8f4d7f50ed9671015b99a3f69ef1df`  
		Last Modified: Tue, 06 Oct 2026 01:18:35 GMT  
		Size: 306.3 MB (306305175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de8d12602fb0d388a81fc681eacdd68732979bdb03d1045915682346489dc083`  
		Last Modified: Tue, 06 Oct 2026 01:18:29 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:latest` - unknown; unknown

```console
$ docker pull julia@sha256:0d81bd584a94bb63306e7cc1ef19f1ccb06211f1dad19c34c62df9b6d4ec70c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2265334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56fdbbe2e94992979dba2ca429a8e5f018dbce9739ca9c72fa8d8a81c760973d`

```dockerfile
```

-	Layers:
	-	`sha256:3ba65a54ae2a23b09301a9c0a18565850a7d9c31a862a8eb861d9ae747c054c2`  
		Last Modified: Tue, 06 Oct 2026 01:18:29 GMT  
		Size: 2.2 MB (2247633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95bd2f9b2b25495b406ee67ff5ba75fc25d1d00db841c290f28e3fdea2b75278`  
		Last Modified: Tue, 06 Oct 2026 01:18:29 GMT  
		Size: 17.7 KB (17701 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:latest` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:5f7bc1153325ae44a3cbef0852d189b52a7cc3d21544d68f982b7b7ed2595f39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.7 MB (361712722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4920ef5e813186e86344d52ec221c346301a8ab6d6b97951201a5dd53f72d6c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:19:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:19:47 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:19:47 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:19:47 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:19:47 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 06 Oct 2026 01:19:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.1-linux-x86_64.tar.gz'; 			sha256='0f2e18c8dea60a2c8711d089cd9612f7a8df394b89e5208096fe5867647e0908'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.1-linux-i686.tar.gz'; 			sha256='8bd3f8f20c0fd346b31ba5204f50d770c21abc0dba6f37b7ad7c02faa05033a6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.1-linux-aarch64.tar.gz'; 			sha256='78341862e24734ea1c2fa8795183c52627c23a99aba5aa1d0ec840edecec5ce0'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:19:47 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:19:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:19:47 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c63217cb9a06576ce0342d4cc63634c01370d11e6e43122e37e11c8dc2e4a21`  
		Last Modified: Tue, 06 Oct 2026 01:20:33 GMT  
		Size: 6.2 MB (6156306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed7a3f4ae062dd59e467d5dd2a125abfa8bffd323930a9cf0632b6ff8e3948d9`  
		Last Modified: Tue, 06 Oct 2026 01:20:39 GMT  
		Size: 325.4 MB (325355766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db68a9a54903cc6357fea815a696cb123ca6c6735760674f818f8536716414cb`  
		Last Modified: Tue, 06 Oct 2026 01:20:32 GMT  
		Size: 368.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:latest` - unknown; unknown

```console
$ docker pull julia@sha256:adb94ac3ff29be1cf43fea6259559f1648a9768c76acec3e8bd64488efe25c6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2265825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1595265615de419d1645c52c58bf751a63077dcd094b30bfd48822238c6a14df`

```dockerfile
```

-	Layers:
	-	`sha256:cead3ad7485a432e56103007096641193d32d3719ccbf2f51cb7a0b87d105acd`  
		Last Modified: Tue, 06 Oct 2026 01:20:32 GMT  
		Size: 2.2 MB (2247957 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2251714eb12e9cdaf9f5fb2f1f7fadd1b16293c64f4f13fa4ae47c8a00dfda00`  
		Last Modified: Tue, 06 Oct 2026 01:20:32 GMT  
		Size: 17.9 KB (17868 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:latest` - linux; 386

```console
$ docker pull julia@sha256:ec7086279896ff2660abf3a6fa51bdaee8a6362c200e491bf85aecde57326f84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.5 MB (280487205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c32755e042497c8e0ba4c35b177a40388dcca8bdd9ea98ee0c747b71fc9526a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:16:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:16:40 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:16:40 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:16:40 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:16:40 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 06 Oct 2026 01:16:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.1-linux-x86_64.tar.gz'; 			sha256='0f2e18c8dea60a2c8711d089cd9612f7a8df394b89e5208096fe5867647e0908'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.1-linux-i686.tar.gz'; 			sha256='8bd3f8f20c0fd346b31ba5204f50d770c21abc0dba6f37b7ad7c02faa05033a6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.1-linux-aarch64.tar.gz'; 			sha256='78341862e24734ea1c2fa8795183c52627c23a99aba5aa1d0ec840edecec5ce0'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:16:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:16:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:16:40 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ca022fbc63d33cffdd1c01c83628151eb3bd052184abd7fccc450342012464c`  
		Last Modified: Tue, 06 Oct 2026 01:17:15 GMT  
		Size: 6.4 MB (6436306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a203c1eddaf48e3b424a90ec29d4e069d84e6b1b9adc1ccaf695a3472099999`  
		Last Modified: Tue, 06 Oct 2026 01:17:20 GMT  
		Size: 242.7 MB (242697230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a3f6cac63e26543d6dcdf1810e75aeebc961ecc839d6f6680688a368583eb75`  
		Last Modified: Tue, 06 Oct 2026 01:17:15 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:latest` - unknown; unknown

```console
$ docker pull julia@sha256:0a87657c3f3fc2499888072fc1019e2e83166286bbafe08235770bebfe1f96cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2262405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2be40150d1e9fe1d0b409ffa6bab4132c1e2a36d314ce3a66739c914a229cdea`

```dockerfile
```

-	Layers:
	-	`sha256:031d0ba7a34a0d0f3d049b43fc8a5d61902989f8e4e57a06cd31ba93c81624fe`  
		Last Modified: Tue, 06 Oct 2026 01:17:15 GMT  
		Size: 2.2 MB (2244758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff21f8cbf58246edd02c540ecf0340507030fdccb82baf86b680497d8abe32d4`  
		Last Modified: Tue, 06 Oct 2026 01:17:15 GMT  
		Size: 17.6 KB (17647 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:latest` - windows version 10.0.26100.33438; amd64

```console
$ docker pull julia@sha256:19533cd65ce7a09fa1c1d3359fa79f8dd9ea2a397e9ab3d718b527941f2d63e2
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2766881546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcb156701154c8684a82a72cff8e6bb0ee154f53ecef00ae3847f0ffe6fddde0`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Mon, 28 Sep 2026 23:42:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 28 Sep 2026 23:42:48 GMT
ENV JULIA_VERSION=1.13.1
# Mon, 28 Sep 2026 23:42:48 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.1-win64.exe
# Mon, 28 Sep 2026 23:42:49 GMT
ENV JULIA_SHA256=a9748efca5e4c4a4188261fd569f9275426cb655781692be308d604da1c1e1b7
# Mon, 28 Sep 2026 23:45:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Mon, 28 Sep 2026 23:45:06 GMT
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
	-	`sha256:ba6b024ac08375648c1d3dd9d1a3c8a18f7b37a721d60c44715afdfa6d482b9f`  
		Last Modified: Mon, 28 Sep 2026 23:45:12 GMT  
		Size: 1.3 KB (1340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eedd547e6565009d09136b32123dcfbb47e9c821c9723509f1b78c79274df4d`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f7494af7342a64846fb01f7d034da738025632fca7997226f8f6f662e446ff`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd8ca8a7b4053d8487ca8e6500f15c3a3d55dbcbff0904f278191790aebb53d3`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2538907158ce0a26fc27b0632ccfb5a0f53902c110053d89da29fd5c8009d2b4`  
		Last Modified: Mon, 28 Sep 2026 23:45:47 GMT  
		Size: 309.2 MB (309245397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d74d26b958700b42ea4084988788b2fd993551ec2dee1e2f879f0068e36028`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:latest` - windows version 10.0.20348.5622; amd64

```console
$ docker pull julia@sha256:d80b2fd1d3f8d0bd40a75273cc2444796167da8b315d5d74ad7f8f0922194e55
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2528711919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2d049d0624180ccb46605e8b882e0814a8518de02ac2c3deb84c1411ca66b40`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Mon, 28 Sep 2026 23:42:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 28 Sep 2026 23:42:50 GMT
ENV JULIA_VERSION=1.13.1
# Mon, 28 Sep 2026 23:42:51 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.1-win64.exe
# Mon, 28 Sep 2026 23:42:53 GMT
ENV JULIA_SHA256=a9748efca5e4c4a4188261fd569f9275426cb655781692be308d604da1c1e1b7
# Mon, 28 Sep 2026 23:48:31 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Mon, 28 Sep 2026 23:48:32 GMT
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
	-	`sha256:92da9030d6488f94c1464eb176bb167430fb388622462eac1f949824e0acc18e`  
		Last Modified: Mon, 28 Sep 2026 23:48:38 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ff33d826f815dec6608e75581bc01ec232731fb89cb350ded1dd8bd78454911`  
		Last Modified: Mon, 28 Sep 2026 23:48:37 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f378efe657f23f5ca4ae347c6b2bf7458de16545e1ad8e559df5143c8b54f2ab`  
		Last Modified: Mon, 28 Sep 2026 23:48:36 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53d9687ed7d58f696d166555a841fa614e9547d662d39bf95ee4adb669bfc06`  
		Last Modified: Mon, 28 Sep 2026 23:48:36 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f7dc4c6ea2d5855227f2a4f5885ef3a733b6cb6b437857e7129c06c6001b4c`  
		Last Modified: Mon, 28 Sep 2026 23:49:16 GMT  
		Size: 309.2 MB (309216633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d8f9703cfdaae26f297da651b0bd60ed19718316a562b5bb325e333cfb6c798`  
		Last Modified: Mon, 28 Sep 2026 23:48:36 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:trixie`

```console
$ docker pull julia@sha256:0002771531bbae894f2532a5ae02ea71c30685440ca3bdaea0a43d17e65571e0
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
$ docker pull julia@sha256:acbc8af9ea4f1a278b41adcddd667eb15c194691302a8477d42ca45b7f2a5034
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.4 MB (342398235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fcb0a94693bf143945bb56f6b004fb695b411630213d41df6cb8892c19426c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:17:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:17:46 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:17:46 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:17:46 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:17:46 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 06 Oct 2026 01:17:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.1-linux-x86_64.tar.gz'; 			sha256='0f2e18c8dea60a2c8711d089cd9612f7a8df394b89e5208096fe5867647e0908'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.1-linux-i686.tar.gz'; 			sha256='8bd3f8f20c0fd346b31ba5204f50d770c21abc0dba6f37b7ad7c02faa05033a6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.1-linux-aarch64.tar.gz'; 			sha256='78341862e24734ea1c2fa8795183c52627c23a99aba5aa1d0ec840edecec5ce0'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:17:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:17:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:17:46 GMT
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
	-	`sha256:cb5dc77e66073cd21b84f34e3dc6e6a19c8f4d7f50ed9671015b99a3f69ef1df`  
		Last Modified: Tue, 06 Oct 2026 01:18:35 GMT  
		Size: 306.3 MB (306305175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de8d12602fb0d388a81fc681eacdd68732979bdb03d1045915682346489dc083`  
		Last Modified: Tue, 06 Oct 2026 01:18:29 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:trixie` - unknown; unknown

```console
$ docker pull julia@sha256:0d81bd584a94bb63306e7cc1ef19f1ccb06211f1dad19c34c62df9b6d4ec70c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2265334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56fdbbe2e94992979dba2ca429a8e5f018dbce9739ca9c72fa8d8a81c760973d`

```dockerfile
```

-	Layers:
	-	`sha256:3ba65a54ae2a23b09301a9c0a18565850a7d9c31a862a8eb861d9ae747c054c2`  
		Last Modified: Tue, 06 Oct 2026 01:18:29 GMT  
		Size: 2.2 MB (2247633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95bd2f9b2b25495b406ee67ff5ba75fc25d1d00db841c290f28e3fdea2b75278`  
		Last Modified: Tue, 06 Oct 2026 01:18:29 GMT  
		Size: 17.7 KB (17701 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:trixie` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:5f7bc1153325ae44a3cbef0852d189b52a7cc3d21544d68f982b7b7ed2595f39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.7 MB (361712722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4920ef5e813186e86344d52ec221c346301a8ab6d6b97951201a5dd53f72d6c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:19:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:19:47 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:19:47 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:19:47 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:19:47 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 06 Oct 2026 01:19:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.1-linux-x86_64.tar.gz'; 			sha256='0f2e18c8dea60a2c8711d089cd9612f7a8df394b89e5208096fe5867647e0908'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.1-linux-i686.tar.gz'; 			sha256='8bd3f8f20c0fd346b31ba5204f50d770c21abc0dba6f37b7ad7c02faa05033a6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.1-linux-aarch64.tar.gz'; 			sha256='78341862e24734ea1c2fa8795183c52627c23a99aba5aa1d0ec840edecec5ce0'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:19:47 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:19:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:19:47 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c63217cb9a06576ce0342d4cc63634c01370d11e6e43122e37e11c8dc2e4a21`  
		Last Modified: Tue, 06 Oct 2026 01:20:33 GMT  
		Size: 6.2 MB (6156306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed7a3f4ae062dd59e467d5dd2a125abfa8bffd323930a9cf0632b6ff8e3948d9`  
		Last Modified: Tue, 06 Oct 2026 01:20:39 GMT  
		Size: 325.4 MB (325355766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db68a9a54903cc6357fea815a696cb123ca6c6735760674f818f8536716414cb`  
		Last Modified: Tue, 06 Oct 2026 01:20:32 GMT  
		Size: 368.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:trixie` - unknown; unknown

```console
$ docker pull julia@sha256:adb94ac3ff29be1cf43fea6259559f1648a9768c76acec3e8bd64488efe25c6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2265825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1595265615de419d1645c52c58bf751a63077dcd094b30bfd48822238c6a14df`

```dockerfile
```

-	Layers:
	-	`sha256:cead3ad7485a432e56103007096641193d32d3719ccbf2f51cb7a0b87d105acd`  
		Last Modified: Tue, 06 Oct 2026 01:20:32 GMT  
		Size: 2.2 MB (2247957 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2251714eb12e9cdaf9f5fb2f1f7fadd1b16293c64f4f13fa4ae47c8a00dfda00`  
		Last Modified: Tue, 06 Oct 2026 01:20:32 GMT  
		Size: 17.9 KB (17868 bytes)  
		MIME: application/vnd.in-toto+json

### `julia:trixie` - linux; 386

```console
$ docker pull julia@sha256:ec7086279896ff2660abf3a6fa51bdaee8a6362c200e491bf85aecde57326f84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.5 MB (280487205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c32755e042497c8e0ba4c35b177a40388dcca8bdd9ea98ee0c747b71fc9526a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:16:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:16:40 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 06 Oct 2026 01:16:40 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:16:40 GMT
ENV JULIA_GPG=64B779A570972FFF7BFC2B54EAD471E1A1F2C10A
# Tue, 06 Oct 2026 01:16:40 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 06 Oct 2026 01:16:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			url='https://julialang-s3.julialang.org/bin/linux/x64/1.13/julia-1.13.1-linux-x86_64.tar.gz'; 			sha256='0f2e18c8dea60a2c8711d089cd9612f7a8df394b89e5208096fe5867647e0908'; 			;; 		'i386') 			url='https://julialang-s3.julialang.org/bin/linux/x86/1.13/julia-1.13.1-linux-i686.tar.gz'; 			sha256='8bd3f8f20c0fd346b31ba5204f50d770c21abc0dba6f37b7ad7c02faa05033a6'; 			;; 		'arm64') 			url='https://julialang-s3.julialang.org/bin/linux/aarch64/1.13/julia-1.13.1-linux-aarch64.tar.gz'; 			sha256='78341862e24734ea1c2fa8795183c52627c23a99aba5aa1d0ec840edecec5ce0'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		curl -fL -o julia.tar.gz.asc "$url.asc"; 	curl -fL -o julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum --strict --check -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		julia --version # buildkit
# Tue, 06 Oct 2026 01:16:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:16:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:16:40 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ca022fbc63d33cffdd1c01c83628151eb3bd052184abd7fccc450342012464c`  
		Last Modified: Tue, 06 Oct 2026 01:17:15 GMT  
		Size: 6.4 MB (6436306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a203c1eddaf48e3b424a90ec29d4e069d84e6b1b9adc1ccaf695a3472099999`  
		Last Modified: Tue, 06 Oct 2026 01:17:20 GMT  
		Size: 242.7 MB (242697230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a3f6cac63e26543d6dcdf1810e75aeebc961ecc839d6f6680688a368583eb75`  
		Last Modified: Tue, 06 Oct 2026 01:17:15 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `julia:trixie` - unknown; unknown

```console
$ docker pull julia@sha256:0a87657c3f3fc2499888072fc1019e2e83166286bbafe08235770bebfe1f96cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2262405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2be40150d1e9fe1d0b409ffa6bab4132c1e2a36d314ce3a66739c914a229cdea`

```dockerfile
```

-	Layers:
	-	`sha256:031d0ba7a34a0d0f3d049b43fc8a5d61902989f8e4e57a06cd31ba93c81624fe`  
		Last Modified: Tue, 06 Oct 2026 01:17:15 GMT  
		Size: 2.2 MB (2244758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff21f8cbf58246edd02c540ecf0340507030fdccb82baf86b680497d8abe32d4`  
		Last Modified: Tue, 06 Oct 2026 01:17:15 GMT  
		Size: 17.6 KB (17647 bytes)  
		MIME: application/vnd.in-toto+json

## `julia:windowsservercore`

```console
$ docker pull julia@sha256:d4081f1815a89df67cd2fb731ebff6b55106ed9cefc2b2eb991f3d033299df3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `julia:windowsservercore` - windows version 10.0.26100.33438; amd64

```console
$ docker pull julia@sha256:19533cd65ce7a09fa1c1d3359fa79f8dd9ea2a397e9ab3d718b527941f2d63e2
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2766881546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcb156701154c8684a82a72cff8e6bb0ee154f53ecef00ae3847f0ffe6fddde0`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Mon, 28 Sep 2026 23:42:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 28 Sep 2026 23:42:48 GMT
ENV JULIA_VERSION=1.13.1
# Mon, 28 Sep 2026 23:42:48 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.1-win64.exe
# Mon, 28 Sep 2026 23:42:49 GMT
ENV JULIA_SHA256=a9748efca5e4c4a4188261fd569f9275426cb655781692be308d604da1c1e1b7
# Mon, 28 Sep 2026 23:45:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Mon, 28 Sep 2026 23:45:06 GMT
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
	-	`sha256:ba6b024ac08375648c1d3dd9d1a3c8a18f7b37a721d60c44715afdfa6d482b9f`  
		Last Modified: Mon, 28 Sep 2026 23:45:12 GMT  
		Size: 1.3 KB (1340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eedd547e6565009d09136b32123dcfbb47e9c821c9723509f1b78c79274df4d`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f7494af7342a64846fb01f7d034da738025632fca7997226f8f6f662e446ff`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd8ca8a7b4053d8487ca8e6500f15c3a3d55dbcbff0904f278191790aebb53d3`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2538907158ce0a26fc27b0632ccfb5a0f53902c110053d89da29fd5c8009d2b4`  
		Last Modified: Mon, 28 Sep 2026 23:45:47 GMT  
		Size: 309.2 MB (309245397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d74d26b958700b42ea4084988788b2fd993551ec2dee1e2f879f0068e36028`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull julia@sha256:d80b2fd1d3f8d0bd40a75273cc2444796167da8b315d5d74ad7f8f0922194e55
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2528711919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2d049d0624180ccb46605e8b882e0814a8518de02ac2c3deb84c1411ca66b40`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Mon, 28 Sep 2026 23:42:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 28 Sep 2026 23:42:50 GMT
ENV JULIA_VERSION=1.13.1
# Mon, 28 Sep 2026 23:42:51 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.1-win64.exe
# Mon, 28 Sep 2026 23:42:53 GMT
ENV JULIA_SHA256=a9748efca5e4c4a4188261fd569f9275426cb655781692be308d604da1c1e1b7
# Mon, 28 Sep 2026 23:48:31 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Mon, 28 Sep 2026 23:48:32 GMT
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
	-	`sha256:92da9030d6488f94c1464eb176bb167430fb388622462eac1f949824e0acc18e`  
		Last Modified: Mon, 28 Sep 2026 23:48:38 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ff33d826f815dec6608e75581bc01ec232731fb89cb350ded1dd8bd78454911`  
		Last Modified: Mon, 28 Sep 2026 23:48:37 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f378efe657f23f5ca4ae347c6b2bf7458de16545e1ad8e559df5143c8b54f2ab`  
		Last Modified: Mon, 28 Sep 2026 23:48:36 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53d9687ed7d58f696d166555a841fa614e9547d662d39bf95ee4adb669bfc06`  
		Last Modified: Mon, 28 Sep 2026 23:48:36 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f7dc4c6ea2d5855227f2a4f5885ef3a733b6cb6b437857e7129c06c6001b4c`  
		Last Modified: Mon, 28 Sep 2026 23:49:16 GMT  
		Size: 309.2 MB (309216633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d8f9703cfdaae26f297da651b0bd60ed19718316a562b5bb325e333cfb6c798`  
		Last Modified: Mon, 28 Sep 2026 23:48:36 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:windowsservercore-ltsc2022`

```console
$ docker pull julia@sha256:bd07857c8870598c53b14c7e06220dca3ac2ecc55d23cab655ec4c847daa1095
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `julia:windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull julia@sha256:d80b2fd1d3f8d0bd40a75273cc2444796167da8b315d5d74ad7f8f0922194e55
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2528711919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2d049d0624180ccb46605e8b882e0814a8518de02ac2c3deb84c1411ca66b40`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Mon, 28 Sep 2026 23:42:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 28 Sep 2026 23:42:50 GMT
ENV JULIA_VERSION=1.13.1
# Mon, 28 Sep 2026 23:42:51 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.1-win64.exe
# Mon, 28 Sep 2026 23:42:53 GMT
ENV JULIA_SHA256=a9748efca5e4c4a4188261fd569f9275426cb655781692be308d604da1c1e1b7
# Mon, 28 Sep 2026 23:48:31 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Mon, 28 Sep 2026 23:48:32 GMT
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
	-	`sha256:92da9030d6488f94c1464eb176bb167430fb388622462eac1f949824e0acc18e`  
		Last Modified: Mon, 28 Sep 2026 23:48:38 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ff33d826f815dec6608e75581bc01ec232731fb89cb350ded1dd8bd78454911`  
		Last Modified: Mon, 28 Sep 2026 23:48:37 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f378efe657f23f5ca4ae347c6b2bf7458de16545e1ad8e559df5143c8b54f2ab`  
		Last Modified: Mon, 28 Sep 2026 23:48:36 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53d9687ed7d58f696d166555a841fa614e9547d662d39bf95ee4adb669bfc06`  
		Last Modified: Mon, 28 Sep 2026 23:48:36 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f7dc4c6ea2d5855227f2a4f5885ef3a733b6cb6b437857e7129c06c6001b4c`  
		Last Modified: Mon, 28 Sep 2026 23:49:16 GMT  
		Size: 309.2 MB (309216633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d8f9703cfdaae26f297da651b0bd60ed19718316a562b5bb325e333cfb6c798`  
		Last Modified: Mon, 28 Sep 2026 23:48:36 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:windowsservercore-ltsc2025`

```console
$ docker pull julia@sha256:b417f835dcc78c9ce25972bdd52e46fd0e687072c6b10e04cc87274e4e69cd88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `julia:windowsservercore-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull julia@sha256:19533cd65ce7a09fa1c1d3359fa79f8dd9ea2a397e9ab3d718b527941f2d63e2
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2766881546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcb156701154c8684a82a72cff8e6bb0ee154f53ecef00ae3847f0ffe6fddde0`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Mon, 28 Sep 2026 23:42:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 28 Sep 2026 23:42:48 GMT
ENV JULIA_VERSION=1.13.1
# Mon, 28 Sep 2026 23:42:48 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.1-win64.exe
# Mon, 28 Sep 2026 23:42:49 GMT
ENV JULIA_SHA256=a9748efca5e4c4a4188261fd569f9275426cb655781692be308d604da1c1e1b7
# Mon, 28 Sep 2026 23:45:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Mon, 28 Sep 2026 23:45:06 GMT
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
	-	`sha256:ba6b024ac08375648c1d3dd9d1a3c8a18f7b37a721d60c44715afdfa6d482b9f`  
		Last Modified: Mon, 28 Sep 2026 23:45:12 GMT  
		Size: 1.3 KB (1340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eedd547e6565009d09136b32123dcfbb47e9c821c9723509f1b78c79274df4d`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f7494af7342a64846fb01f7d034da738025632fca7997226f8f6f662e446ff`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd8ca8a7b4053d8487ca8e6500f15c3a3d55dbcbff0904f278191790aebb53d3`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2538907158ce0a26fc27b0632ccfb5a0f53902c110053d89da29fd5c8009d2b4`  
		Last Modified: Mon, 28 Sep 2026 23:45:47 GMT  
		Size: 309.2 MB (309245397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d74d26b958700b42ea4084988788b2fd993551ec2dee1e2f879f0068e36028`  
		Last Modified: Mon, 28 Sep 2026 23:45:10 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
