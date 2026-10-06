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
