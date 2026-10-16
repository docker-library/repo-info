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
$ docker pull julia@sha256:8b840e57f106b68ae8f8879ca82104f1301e8db061b419358447b881f23a121c
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

### `julia:1` - windows version 10.0.26100.33650; amd64

```console
$ docker pull julia@sha256:c8a827332523db8caf8a18addb19bb3c7f38f09473de329b99c81acd6611e4ac
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2701225623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ca9f1d8af51fa4204a174745bf200d2b41d85e3f6c92230e82fe5f5fc56b775`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Tue, 13 Oct 2026 23:02:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:02:15 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 13 Oct 2026 23:02:16 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.1-win64.exe
# Tue, 13 Oct 2026 23:02:17 GMT
ENV JULIA_SHA256=a9748efca5e4c4a4188261fd569f9275426cb655781692be308d604da1c1e1b7
# Tue, 13 Oct 2026 23:03:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:03:31 GMT
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
	-	`sha256:bf7103549189e064f3b1670e35453ec46244660445912e0bdad839508e821cb6`  
		Last Modified: Tue, 13 Oct 2026 23:03:42 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35ee211fbb159b92073605f23cf679982f4f2a45cd987d0c2fffd1bd542c920`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561611ec8530c0ddd9305d521ecf8753b13748966fa904bcd8a0d6b6f7acfe03`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3558c7272bc92e711f7c12ae6e6c3810699fac6591eb65c5cbee2e6edf536df`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dec648e03fb1d03d2ab703a600380b831f9f8abf952710fa3c57d17ee16acec`  
		Last Modified: Tue, 13 Oct 2026 23:04:21 GMT  
		Size: 309.2 MB (309224866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ef985b2e46977e118cd6d528ff273012ddeb41e9d2eb98eda6c3f4f29743b1`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1` - windows version 10.0.20348.5761; amd64

```console
$ docker pull julia@sha256:4705ba8a0cb8e26d038df39178f2f1328d20092dfba8c17f6c2d53c11c4d38e9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2535497257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6ea63e1f1b5c5c2fe308a720f4eedab68f3a24b7d9f342486a83f68bf68b0c1`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 23:00:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:00:31 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 13 Oct 2026 23:00:32 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.1-win64.exe
# Tue, 13 Oct 2026 23:00:33 GMT
ENV JULIA_SHA256=a9748efca5e4c4a4188261fd569f9275426cb655781692be308d604da1c1e1b7
# Tue, 13 Oct 2026 23:02:01 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:02:03 GMT
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
	-	`sha256:1bdfa17b4044e1440a5a0438b3f018d63e2b4fd2279d784da459aecfcc7fa880`  
		Last Modified: Tue, 13 Oct 2026 23:02:09 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05dd5fa4594b042dab3e7f12bf47eae18a5151a02b7f6fa1131e1faa25474372`  
		Last Modified: Tue, 13 Oct 2026 23:02:07 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17eb10bd27f0dae7c0e0f3a44359e5138b0cedae9dc16e5e53e448950e19634b`  
		Last Modified: Tue, 13 Oct 2026 23:02:07 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8a1c720a5df6ec62e7008e3907bdd4123ed64d40b8f33ce019e582775c050c`  
		Last Modified: Tue, 13 Oct 2026 23:02:07 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d2b1be6a52638756d17ef4d6c3af3df197d9645c722ea6f9825d395c0dbadf`  
		Last Modified: Tue, 13 Oct 2026 23:02:46 GMT  
		Size: 309.2 MB (309205196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab4b19c8960cba07809f5d780644a8acc10f44f3ee5f87c6a2412a4b28c9893`  
		Last Modified: Tue, 13 Oct 2026 23:02:07 GMT  
		Size: 1.3 KB (1319 bytes)  
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
$ docker pull julia@sha256:e988807bab67bdbbde03c1bede21ff1a684935932e9a49f3050cd489cc6df75c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `julia:1-windowsservercore` - windows version 10.0.26100.33650; amd64

```console
$ docker pull julia@sha256:c8a827332523db8caf8a18addb19bb3c7f38f09473de329b99c81acd6611e4ac
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2701225623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ca9f1d8af51fa4204a174745bf200d2b41d85e3f6c92230e82fe5f5fc56b775`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Tue, 13 Oct 2026 23:02:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:02:15 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 13 Oct 2026 23:02:16 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.1-win64.exe
# Tue, 13 Oct 2026 23:02:17 GMT
ENV JULIA_SHA256=a9748efca5e4c4a4188261fd569f9275426cb655781692be308d604da1c1e1b7
# Tue, 13 Oct 2026 23:03:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:03:31 GMT
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
	-	`sha256:bf7103549189e064f3b1670e35453ec46244660445912e0bdad839508e821cb6`  
		Last Modified: Tue, 13 Oct 2026 23:03:42 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35ee211fbb159b92073605f23cf679982f4f2a45cd987d0c2fffd1bd542c920`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561611ec8530c0ddd9305d521ecf8753b13748966fa904bcd8a0d6b6f7acfe03`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3558c7272bc92e711f7c12ae6e6c3810699fac6591eb65c5cbee2e6edf536df`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dec648e03fb1d03d2ab703a600380b831f9f8abf952710fa3c57d17ee16acec`  
		Last Modified: Tue, 13 Oct 2026 23:04:21 GMT  
		Size: 309.2 MB (309224866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ef985b2e46977e118cd6d528ff273012ddeb41e9d2eb98eda6c3f4f29743b1`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1-windowsservercore` - windows version 10.0.20348.5761; amd64

```console
$ docker pull julia@sha256:4705ba8a0cb8e26d038df39178f2f1328d20092dfba8c17f6c2d53c11c4d38e9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2535497257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6ea63e1f1b5c5c2fe308a720f4eedab68f3a24b7d9f342486a83f68bf68b0c1`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 23:00:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:00:31 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 13 Oct 2026 23:00:32 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.1-win64.exe
# Tue, 13 Oct 2026 23:00:33 GMT
ENV JULIA_SHA256=a9748efca5e4c4a4188261fd569f9275426cb655781692be308d604da1c1e1b7
# Tue, 13 Oct 2026 23:02:01 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:02:03 GMT
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
	-	`sha256:1bdfa17b4044e1440a5a0438b3f018d63e2b4fd2279d784da459aecfcc7fa880`  
		Last Modified: Tue, 13 Oct 2026 23:02:09 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05dd5fa4594b042dab3e7f12bf47eae18a5151a02b7f6fa1131e1faa25474372`  
		Last Modified: Tue, 13 Oct 2026 23:02:07 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17eb10bd27f0dae7c0e0f3a44359e5138b0cedae9dc16e5e53e448950e19634b`  
		Last Modified: Tue, 13 Oct 2026 23:02:07 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8a1c720a5df6ec62e7008e3907bdd4123ed64d40b8f33ce019e582775c050c`  
		Last Modified: Tue, 13 Oct 2026 23:02:07 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d2b1be6a52638756d17ef4d6c3af3df197d9645c722ea6f9825d395c0dbadf`  
		Last Modified: Tue, 13 Oct 2026 23:02:46 GMT  
		Size: 309.2 MB (309205196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab4b19c8960cba07809f5d780644a8acc10f44f3ee5f87c6a2412a4b28c9893`  
		Last Modified: Tue, 13 Oct 2026 23:02:07 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1-windowsservercore-ltsc2022`

```console
$ docker pull julia@sha256:0aa91a70ad26448ff9e1e40d1e7cbb387c7296c82d10040a6696c0c0be83a48b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `julia:1-windowsservercore-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull julia@sha256:4705ba8a0cb8e26d038df39178f2f1328d20092dfba8c17f6c2d53c11c4d38e9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2535497257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6ea63e1f1b5c5c2fe308a720f4eedab68f3a24b7d9f342486a83f68bf68b0c1`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 23:00:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:00:31 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 13 Oct 2026 23:00:32 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.1-win64.exe
# Tue, 13 Oct 2026 23:00:33 GMT
ENV JULIA_SHA256=a9748efca5e4c4a4188261fd569f9275426cb655781692be308d604da1c1e1b7
# Tue, 13 Oct 2026 23:02:01 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:02:03 GMT
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
	-	`sha256:1bdfa17b4044e1440a5a0438b3f018d63e2b4fd2279d784da459aecfcc7fa880`  
		Last Modified: Tue, 13 Oct 2026 23:02:09 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05dd5fa4594b042dab3e7f12bf47eae18a5151a02b7f6fa1131e1faa25474372`  
		Last Modified: Tue, 13 Oct 2026 23:02:07 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17eb10bd27f0dae7c0e0f3a44359e5138b0cedae9dc16e5e53e448950e19634b`  
		Last Modified: Tue, 13 Oct 2026 23:02:07 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8a1c720a5df6ec62e7008e3907bdd4123ed64d40b8f33ce019e582775c050c`  
		Last Modified: Tue, 13 Oct 2026 23:02:07 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d2b1be6a52638756d17ef4d6c3af3df197d9645c722ea6f9825d395c0dbadf`  
		Last Modified: Tue, 13 Oct 2026 23:02:46 GMT  
		Size: 309.2 MB (309205196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab4b19c8960cba07809f5d780644a8acc10f44f3ee5f87c6a2412a4b28c9893`  
		Last Modified: Tue, 13 Oct 2026 23:02:07 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1-windowsservercore-ltsc2025`

```console
$ docker pull julia@sha256:67f2d5df9fe5422396a44f9bd20ddb25721a67bf4ca5fab9eba55f9fb95db27a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33650; amd64

### `julia:1-windowsservercore-ltsc2025` - windows version 10.0.26100.33650; amd64

```console
$ docker pull julia@sha256:c8a827332523db8caf8a18addb19bb3c7f38f09473de329b99c81acd6611e4ac
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2701225623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ca9f1d8af51fa4204a174745bf200d2b41d85e3f6c92230e82fe5f5fc56b775`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Tue, 13 Oct 2026 23:02:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:02:15 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 13 Oct 2026 23:02:16 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.1-win64.exe
# Tue, 13 Oct 2026 23:02:17 GMT
ENV JULIA_SHA256=a9748efca5e4c4a4188261fd569f9275426cb655781692be308d604da1c1e1b7
# Tue, 13 Oct 2026 23:03:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:03:31 GMT
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
	-	`sha256:bf7103549189e064f3b1670e35453ec46244660445912e0bdad839508e821cb6`  
		Last Modified: Tue, 13 Oct 2026 23:03:42 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35ee211fbb159b92073605f23cf679982f4f2a45cd987d0c2fffd1bd542c920`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561611ec8530c0ddd9305d521ecf8753b13748966fa904bcd8a0d6b6f7acfe03`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3558c7272bc92e711f7c12ae6e6c3810699fac6591eb65c5cbee2e6edf536df`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dec648e03fb1d03d2ab703a600380b831f9f8abf952710fa3c57d17ee16acec`  
		Last Modified: Tue, 13 Oct 2026 23:04:21 GMT  
		Size: 309.2 MB (309224866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ef985b2e46977e118cd6d528ff273012ddeb41e9d2eb98eda6c3f4f29743b1`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1278 bytes)  
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
$ docker pull julia@sha256:8b840e57f106b68ae8f8879ca82104f1301e8db061b419358447b881f23a121c
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

### `julia:1.13` - windows version 10.0.26100.33650; amd64

```console
$ docker pull julia@sha256:c8a827332523db8caf8a18addb19bb3c7f38f09473de329b99c81acd6611e4ac
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2701225623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ca9f1d8af51fa4204a174745bf200d2b41d85e3f6c92230e82fe5f5fc56b775`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Tue, 13 Oct 2026 23:02:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:02:15 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 13 Oct 2026 23:02:16 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.1-win64.exe
# Tue, 13 Oct 2026 23:02:17 GMT
ENV JULIA_SHA256=a9748efca5e4c4a4188261fd569f9275426cb655781692be308d604da1c1e1b7
# Tue, 13 Oct 2026 23:03:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:03:31 GMT
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
	-	`sha256:bf7103549189e064f3b1670e35453ec46244660445912e0bdad839508e821cb6`  
		Last Modified: Tue, 13 Oct 2026 23:03:42 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35ee211fbb159b92073605f23cf679982f4f2a45cd987d0c2fffd1bd542c920`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561611ec8530c0ddd9305d521ecf8753b13748966fa904bcd8a0d6b6f7acfe03`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3558c7272bc92e711f7c12ae6e6c3810699fac6591eb65c5cbee2e6edf536df`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dec648e03fb1d03d2ab703a600380b831f9f8abf952710fa3c57d17ee16acec`  
		Last Modified: Tue, 13 Oct 2026 23:04:21 GMT  
		Size: 309.2 MB (309224866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ef985b2e46977e118cd6d528ff273012ddeb41e9d2eb98eda6c3f4f29743b1`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.13` - windows version 10.0.20348.5761; amd64

```console
$ docker pull julia@sha256:4705ba8a0cb8e26d038df39178f2f1328d20092dfba8c17f6c2d53c11c4d38e9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2535497257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6ea63e1f1b5c5c2fe308a720f4eedab68f3a24b7d9f342486a83f68bf68b0c1`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 23:00:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:00:31 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 13 Oct 2026 23:00:32 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.1-win64.exe
# Tue, 13 Oct 2026 23:00:33 GMT
ENV JULIA_SHA256=a9748efca5e4c4a4188261fd569f9275426cb655781692be308d604da1c1e1b7
# Tue, 13 Oct 2026 23:02:01 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:02:03 GMT
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
	-	`sha256:1bdfa17b4044e1440a5a0438b3f018d63e2b4fd2279d784da459aecfcc7fa880`  
		Last Modified: Tue, 13 Oct 2026 23:02:09 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05dd5fa4594b042dab3e7f12bf47eae18a5151a02b7f6fa1131e1faa25474372`  
		Last Modified: Tue, 13 Oct 2026 23:02:07 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17eb10bd27f0dae7c0e0f3a44359e5138b0cedae9dc16e5e53e448950e19634b`  
		Last Modified: Tue, 13 Oct 2026 23:02:07 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8a1c720a5df6ec62e7008e3907bdd4123ed64d40b8f33ce019e582775c050c`  
		Last Modified: Tue, 13 Oct 2026 23:02:07 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d2b1be6a52638756d17ef4d6c3af3df197d9645c722ea6f9825d395c0dbadf`  
		Last Modified: Tue, 13 Oct 2026 23:02:46 GMT  
		Size: 309.2 MB (309205196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab4b19c8960cba07809f5d780644a8acc10f44f3ee5f87c6a2412a4b28c9893`  
		Last Modified: Tue, 13 Oct 2026 23:02:07 GMT  
		Size: 1.3 KB (1319 bytes)  
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
$ docker pull julia@sha256:e988807bab67bdbbde03c1bede21ff1a684935932e9a49f3050cd489cc6df75c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `julia:1.13-windowsservercore` - windows version 10.0.26100.33650; amd64

```console
$ docker pull julia@sha256:c8a827332523db8caf8a18addb19bb3c7f38f09473de329b99c81acd6611e4ac
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2701225623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ca9f1d8af51fa4204a174745bf200d2b41d85e3f6c92230e82fe5f5fc56b775`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Tue, 13 Oct 2026 23:02:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:02:15 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 13 Oct 2026 23:02:16 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.1-win64.exe
# Tue, 13 Oct 2026 23:02:17 GMT
ENV JULIA_SHA256=a9748efca5e4c4a4188261fd569f9275426cb655781692be308d604da1c1e1b7
# Tue, 13 Oct 2026 23:03:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:03:31 GMT
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
	-	`sha256:bf7103549189e064f3b1670e35453ec46244660445912e0bdad839508e821cb6`  
		Last Modified: Tue, 13 Oct 2026 23:03:42 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35ee211fbb159b92073605f23cf679982f4f2a45cd987d0c2fffd1bd542c920`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561611ec8530c0ddd9305d521ecf8753b13748966fa904bcd8a0d6b6f7acfe03`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3558c7272bc92e711f7c12ae6e6c3810699fac6591eb65c5cbee2e6edf536df`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dec648e03fb1d03d2ab703a600380b831f9f8abf952710fa3c57d17ee16acec`  
		Last Modified: Tue, 13 Oct 2026 23:04:21 GMT  
		Size: 309.2 MB (309224866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ef985b2e46977e118cd6d528ff273012ddeb41e9d2eb98eda6c3f4f29743b1`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1.13-windowsservercore` - windows version 10.0.20348.5761; amd64

```console
$ docker pull julia@sha256:4705ba8a0cb8e26d038df39178f2f1328d20092dfba8c17f6c2d53c11c4d38e9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2535497257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6ea63e1f1b5c5c2fe308a720f4eedab68f3a24b7d9f342486a83f68bf68b0c1`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 23:00:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:00:31 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 13 Oct 2026 23:00:32 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.1-win64.exe
# Tue, 13 Oct 2026 23:00:33 GMT
ENV JULIA_SHA256=a9748efca5e4c4a4188261fd569f9275426cb655781692be308d604da1c1e1b7
# Tue, 13 Oct 2026 23:02:01 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:02:03 GMT
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
	-	`sha256:1bdfa17b4044e1440a5a0438b3f018d63e2b4fd2279d784da459aecfcc7fa880`  
		Last Modified: Tue, 13 Oct 2026 23:02:09 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05dd5fa4594b042dab3e7f12bf47eae18a5151a02b7f6fa1131e1faa25474372`  
		Last Modified: Tue, 13 Oct 2026 23:02:07 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17eb10bd27f0dae7c0e0f3a44359e5138b0cedae9dc16e5e53e448950e19634b`  
		Last Modified: Tue, 13 Oct 2026 23:02:07 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8a1c720a5df6ec62e7008e3907bdd4123ed64d40b8f33ce019e582775c050c`  
		Last Modified: Tue, 13 Oct 2026 23:02:07 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d2b1be6a52638756d17ef4d6c3af3df197d9645c722ea6f9825d395c0dbadf`  
		Last Modified: Tue, 13 Oct 2026 23:02:46 GMT  
		Size: 309.2 MB (309205196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab4b19c8960cba07809f5d780644a8acc10f44f3ee5f87c6a2412a4b28c9893`  
		Last Modified: Tue, 13 Oct 2026 23:02:07 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.13-windowsservercore-ltsc2022`

```console
$ docker pull julia@sha256:0aa91a70ad26448ff9e1e40d1e7cbb387c7296c82d10040a6696c0c0be83a48b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `julia:1.13-windowsservercore-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull julia@sha256:4705ba8a0cb8e26d038df39178f2f1328d20092dfba8c17f6c2d53c11c4d38e9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2535497257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6ea63e1f1b5c5c2fe308a720f4eedab68f3a24b7d9f342486a83f68bf68b0c1`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 23:00:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:00:31 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 13 Oct 2026 23:00:32 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.1-win64.exe
# Tue, 13 Oct 2026 23:00:33 GMT
ENV JULIA_SHA256=a9748efca5e4c4a4188261fd569f9275426cb655781692be308d604da1c1e1b7
# Tue, 13 Oct 2026 23:02:01 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:02:03 GMT
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
	-	`sha256:1bdfa17b4044e1440a5a0438b3f018d63e2b4fd2279d784da459aecfcc7fa880`  
		Last Modified: Tue, 13 Oct 2026 23:02:09 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05dd5fa4594b042dab3e7f12bf47eae18a5151a02b7f6fa1131e1faa25474372`  
		Last Modified: Tue, 13 Oct 2026 23:02:07 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17eb10bd27f0dae7c0e0f3a44359e5138b0cedae9dc16e5e53e448950e19634b`  
		Last Modified: Tue, 13 Oct 2026 23:02:07 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8a1c720a5df6ec62e7008e3907bdd4123ed64d40b8f33ce019e582775c050c`  
		Last Modified: Tue, 13 Oct 2026 23:02:07 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d2b1be6a52638756d17ef4d6c3af3df197d9645c722ea6f9825d395c0dbadf`  
		Last Modified: Tue, 13 Oct 2026 23:02:46 GMT  
		Size: 309.2 MB (309205196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab4b19c8960cba07809f5d780644a8acc10f44f3ee5f87c6a2412a4b28c9893`  
		Last Modified: Tue, 13 Oct 2026 23:02:07 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.13-windowsservercore-ltsc2025`

```console
$ docker pull julia@sha256:67f2d5df9fe5422396a44f9bd20ddb25721a67bf4ca5fab9eba55f9fb95db27a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33650; amd64

### `julia:1.13-windowsservercore-ltsc2025` - windows version 10.0.26100.33650; amd64

```console
$ docker pull julia@sha256:c8a827332523db8caf8a18addb19bb3c7f38f09473de329b99c81acd6611e4ac
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2701225623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ca9f1d8af51fa4204a174745bf200d2b41d85e3f6c92230e82fe5f5fc56b775`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Tue, 13 Oct 2026 23:02:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:02:15 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 13 Oct 2026 23:02:16 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.1-win64.exe
# Tue, 13 Oct 2026 23:02:17 GMT
ENV JULIA_SHA256=a9748efca5e4c4a4188261fd569f9275426cb655781692be308d604da1c1e1b7
# Tue, 13 Oct 2026 23:03:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:03:31 GMT
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
	-	`sha256:bf7103549189e064f3b1670e35453ec46244660445912e0bdad839508e821cb6`  
		Last Modified: Tue, 13 Oct 2026 23:03:42 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35ee211fbb159b92073605f23cf679982f4f2a45cd987d0c2fffd1bd542c920`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561611ec8530c0ddd9305d521ecf8753b13748966fa904bcd8a0d6b6f7acfe03`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3558c7272bc92e711f7c12ae6e6c3810699fac6591eb65c5cbee2e6edf536df`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dec648e03fb1d03d2ab703a600380b831f9f8abf952710fa3c57d17ee16acec`  
		Last Modified: Tue, 13 Oct 2026 23:04:21 GMT  
		Size: 309.2 MB (309224866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ef985b2e46977e118cd6d528ff273012ddeb41e9d2eb98eda6c3f4f29743b1`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:1.13.2`

**does not exist** (yet?)

## `julia:1.13.2-bookworm`

**does not exist** (yet?)

## `julia:1.13.2-trixie`

**does not exist** (yet?)

## `julia:1.13.2-windowsservercore`

**does not exist** (yet?)

## `julia:1.13.2-windowsservercore-ltsc2022`

**does not exist** (yet?)

## `julia:1.13.2-windowsservercore-ltsc2025`

**does not exist** (yet?)

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
$ docker pull julia@sha256:8b840e57f106b68ae8f8879ca82104f1301e8db061b419358447b881f23a121c
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

### `julia:latest` - windows version 10.0.26100.33650; amd64

```console
$ docker pull julia@sha256:c8a827332523db8caf8a18addb19bb3c7f38f09473de329b99c81acd6611e4ac
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2701225623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ca9f1d8af51fa4204a174745bf200d2b41d85e3f6c92230e82fe5f5fc56b775`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Tue, 13 Oct 2026 23:02:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:02:15 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 13 Oct 2026 23:02:16 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.1-win64.exe
# Tue, 13 Oct 2026 23:02:17 GMT
ENV JULIA_SHA256=a9748efca5e4c4a4188261fd569f9275426cb655781692be308d604da1c1e1b7
# Tue, 13 Oct 2026 23:03:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:03:31 GMT
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
	-	`sha256:bf7103549189e064f3b1670e35453ec46244660445912e0bdad839508e821cb6`  
		Last Modified: Tue, 13 Oct 2026 23:03:42 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35ee211fbb159b92073605f23cf679982f4f2a45cd987d0c2fffd1bd542c920`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561611ec8530c0ddd9305d521ecf8753b13748966fa904bcd8a0d6b6f7acfe03`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3558c7272bc92e711f7c12ae6e6c3810699fac6591eb65c5cbee2e6edf536df`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dec648e03fb1d03d2ab703a600380b831f9f8abf952710fa3c57d17ee16acec`  
		Last Modified: Tue, 13 Oct 2026 23:04:21 GMT  
		Size: 309.2 MB (309224866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ef985b2e46977e118cd6d528ff273012ddeb41e9d2eb98eda6c3f4f29743b1`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:latest` - windows version 10.0.20348.5761; amd64

```console
$ docker pull julia@sha256:4705ba8a0cb8e26d038df39178f2f1328d20092dfba8c17f6c2d53c11c4d38e9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2535497257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6ea63e1f1b5c5c2fe308a720f4eedab68f3a24b7d9f342486a83f68bf68b0c1`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 23:00:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:00:31 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 13 Oct 2026 23:00:32 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.1-win64.exe
# Tue, 13 Oct 2026 23:00:33 GMT
ENV JULIA_SHA256=a9748efca5e4c4a4188261fd569f9275426cb655781692be308d604da1c1e1b7
# Tue, 13 Oct 2026 23:02:01 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:02:03 GMT
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
	-	`sha256:1bdfa17b4044e1440a5a0438b3f018d63e2b4fd2279d784da459aecfcc7fa880`  
		Last Modified: Tue, 13 Oct 2026 23:02:09 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05dd5fa4594b042dab3e7f12bf47eae18a5151a02b7f6fa1131e1faa25474372`  
		Last Modified: Tue, 13 Oct 2026 23:02:07 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17eb10bd27f0dae7c0e0f3a44359e5138b0cedae9dc16e5e53e448950e19634b`  
		Last Modified: Tue, 13 Oct 2026 23:02:07 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8a1c720a5df6ec62e7008e3907bdd4123ed64d40b8f33ce019e582775c050c`  
		Last Modified: Tue, 13 Oct 2026 23:02:07 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d2b1be6a52638756d17ef4d6c3af3df197d9645c722ea6f9825d395c0dbadf`  
		Last Modified: Tue, 13 Oct 2026 23:02:46 GMT  
		Size: 309.2 MB (309205196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab4b19c8960cba07809f5d780644a8acc10f44f3ee5f87c6a2412a4b28c9893`  
		Last Modified: Tue, 13 Oct 2026 23:02:07 GMT  
		Size: 1.3 KB (1319 bytes)  
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
$ docker pull julia@sha256:e988807bab67bdbbde03c1bede21ff1a684935932e9a49f3050cd489cc6df75c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `julia:windowsservercore` - windows version 10.0.26100.33650; amd64

```console
$ docker pull julia@sha256:c8a827332523db8caf8a18addb19bb3c7f38f09473de329b99c81acd6611e4ac
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2701225623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ca9f1d8af51fa4204a174745bf200d2b41d85e3f6c92230e82fe5f5fc56b775`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Tue, 13 Oct 2026 23:02:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:02:15 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 13 Oct 2026 23:02:16 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.1-win64.exe
# Tue, 13 Oct 2026 23:02:17 GMT
ENV JULIA_SHA256=a9748efca5e4c4a4188261fd569f9275426cb655781692be308d604da1c1e1b7
# Tue, 13 Oct 2026 23:03:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:03:31 GMT
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
	-	`sha256:bf7103549189e064f3b1670e35453ec46244660445912e0bdad839508e821cb6`  
		Last Modified: Tue, 13 Oct 2026 23:03:42 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35ee211fbb159b92073605f23cf679982f4f2a45cd987d0c2fffd1bd542c920`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561611ec8530c0ddd9305d521ecf8753b13748966fa904bcd8a0d6b6f7acfe03`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3558c7272bc92e711f7c12ae6e6c3810699fac6591eb65c5cbee2e6edf536df`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dec648e03fb1d03d2ab703a600380b831f9f8abf952710fa3c57d17ee16acec`  
		Last Modified: Tue, 13 Oct 2026 23:04:21 GMT  
		Size: 309.2 MB (309224866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ef985b2e46977e118cd6d528ff273012ddeb41e9d2eb98eda6c3f4f29743b1`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:windowsservercore` - windows version 10.0.20348.5761; amd64

```console
$ docker pull julia@sha256:4705ba8a0cb8e26d038df39178f2f1328d20092dfba8c17f6c2d53c11c4d38e9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2535497257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6ea63e1f1b5c5c2fe308a720f4eedab68f3a24b7d9f342486a83f68bf68b0c1`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 23:00:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:00:31 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 13 Oct 2026 23:00:32 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.1-win64.exe
# Tue, 13 Oct 2026 23:00:33 GMT
ENV JULIA_SHA256=a9748efca5e4c4a4188261fd569f9275426cb655781692be308d604da1c1e1b7
# Tue, 13 Oct 2026 23:02:01 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:02:03 GMT
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
	-	`sha256:1bdfa17b4044e1440a5a0438b3f018d63e2b4fd2279d784da459aecfcc7fa880`  
		Last Modified: Tue, 13 Oct 2026 23:02:09 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05dd5fa4594b042dab3e7f12bf47eae18a5151a02b7f6fa1131e1faa25474372`  
		Last Modified: Tue, 13 Oct 2026 23:02:07 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17eb10bd27f0dae7c0e0f3a44359e5138b0cedae9dc16e5e53e448950e19634b`  
		Last Modified: Tue, 13 Oct 2026 23:02:07 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8a1c720a5df6ec62e7008e3907bdd4123ed64d40b8f33ce019e582775c050c`  
		Last Modified: Tue, 13 Oct 2026 23:02:07 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d2b1be6a52638756d17ef4d6c3af3df197d9645c722ea6f9825d395c0dbadf`  
		Last Modified: Tue, 13 Oct 2026 23:02:46 GMT  
		Size: 309.2 MB (309205196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab4b19c8960cba07809f5d780644a8acc10f44f3ee5f87c6a2412a4b28c9893`  
		Last Modified: Tue, 13 Oct 2026 23:02:07 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:windowsservercore-ltsc2022`

```console
$ docker pull julia@sha256:0aa91a70ad26448ff9e1e40d1e7cbb387c7296c82d10040a6696c0c0be83a48b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `julia:windowsservercore-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull julia@sha256:4705ba8a0cb8e26d038df39178f2f1328d20092dfba8c17f6c2d53c11c4d38e9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2535497257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6ea63e1f1b5c5c2fe308a720f4eedab68f3a24b7d9f342486a83f68bf68b0c1`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 23:00:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:00:31 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 13 Oct 2026 23:00:32 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.1-win64.exe
# Tue, 13 Oct 2026 23:00:33 GMT
ENV JULIA_SHA256=a9748efca5e4c4a4188261fd569f9275426cb655781692be308d604da1c1e1b7
# Tue, 13 Oct 2026 23:02:01 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:02:03 GMT
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
	-	`sha256:1bdfa17b4044e1440a5a0438b3f018d63e2b4fd2279d784da459aecfcc7fa880`  
		Last Modified: Tue, 13 Oct 2026 23:02:09 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05dd5fa4594b042dab3e7f12bf47eae18a5151a02b7f6fa1131e1faa25474372`  
		Last Modified: Tue, 13 Oct 2026 23:02:07 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17eb10bd27f0dae7c0e0f3a44359e5138b0cedae9dc16e5e53e448950e19634b`  
		Last Modified: Tue, 13 Oct 2026 23:02:07 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8a1c720a5df6ec62e7008e3907bdd4123ed64d40b8f33ce019e582775c050c`  
		Last Modified: Tue, 13 Oct 2026 23:02:07 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d2b1be6a52638756d17ef4d6c3af3df197d9645c722ea6f9825d395c0dbadf`  
		Last Modified: Tue, 13 Oct 2026 23:02:46 GMT  
		Size: 309.2 MB (309205196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab4b19c8960cba07809f5d780644a8acc10f44f3ee5f87c6a2412a4b28c9893`  
		Last Modified: Tue, 13 Oct 2026 23:02:07 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:windowsservercore-ltsc2025`

```console
$ docker pull julia@sha256:67f2d5df9fe5422396a44f9bd20ddb25721a67bf4ca5fab9eba55f9fb95db27a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33650; amd64

### `julia:windowsservercore-ltsc2025` - windows version 10.0.26100.33650; amd64

```console
$ docker pull julia@sha256:c8a827332523db8caf8a18addb19bb3c7f38f09473de329b99c81acd6611e4ac
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2701225623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ca9f1d8af51fa4204a174745bf200d2b41d85e3f6c92230e82fe5f5fc56b775`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Tue, 13 Oct 2026 23:02:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:02:15 GMT
ENV JULIA_VERSION=1.13.1
# Tue, 13 Oct 2026 23:02:16 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.1-win64.exe
# Tue, 13 Oct 2026 23:02:17 GMT
ENV JULIA_SHA256=a9748efca5e4c4a4188261fd569f9275426cb655781692be308d604da1c1e1b7
# Tue, 13 Oct 2026 23:03:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:03:31 GMT
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
	-	`sha256:bf7103549189e064f3b1670e35453ec46244660445912e0bdad839508e821cb6`  
		Last Modified: Tue, 13 Oct 2026 23:03:42 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35ee211fbb159b92073605f23cf679982f4f2a45cd987d0c2fffd1bd542c920`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561611ec8530c0ddd9305d521ecf8753b13748966fa904bcd8a0d6b6f7acfe03`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3558c7272bc92e711f7c12ae6e6c3810699fac6591eb65c5cbee2e6edf536df`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dec648e03fb1d03d2ab703a600380b831f9f8abf952710fa3c57d17ee16acec`  
		Last Modified: Tue, 13 Oct 2026 23:04:21 GMT  
		Size: 309.2 MB (309224866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ef985b2e46977e118cd6d528ff273012ddeb41e9d2eb98eda6c3f4f29743b1`  
		Last Modified: Tue, 13 Oct 2026 23:03:41 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
