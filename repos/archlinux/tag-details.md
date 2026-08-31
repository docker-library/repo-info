<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `archlinux`

-	[`archlinux:base`](#archlinuxbase)
-	[`archlinux:base-20260830.0.582275`](#archlinuxbase-202608300582275)
-	[`archlinux:base-devel`](#archlinuxbase-devel)
-	[`archlinux:base-devel-20260830.0.582275`](#archlinuxbase-devel-202608300582275)
-	[`archlinux:latest`](#archlinuxlatest)
-	[`archlinux:multilib-devel`](#archlinuxmultilib-devel)
-	[`archlinux:multilib-devel-20260830.0.582275`](#archlinuxmultilib-devel-202608300582275)

## `archlinux:base`

```console
$ docker pull archlinux@sha256:b860afd5823683f7ea389ba5f00d812f4fe55f6f286dea329d2abeefa535e309
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base` - linux; amd64

```console
$ docker pull archlinux@sha256:c9dc8b5d1b06d8d50ace6d42b2c93fbb1e34c9e1332d1a2102936e497d3187ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.2 MB (133235985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5450f1f6c02a03b7675390a41f7b082f6f24c8737f1c583d0d23c49c0f791efe`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 24 Aug 2026 18:03:15 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 24 Aug 2026 18:03:15 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 24 Aug 2026 18:03:15 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 24 Aug 2026 18:03:15 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 24 Aug 2026 18:03:15 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 24 Aug 2026 18:03:15 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 24 Aug 2026 18:03:15 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 24 Aug 2026 18:03:15 GMT
LABEL org.opencontainers.image.version=20260823.0.578598
# Mon, 24 Aug 2026 18:03:15 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 24 Aug 2026 18:03:15 GMT
LABEL org.opencontainers.image.created=2026-08-23T00:09:32+00:00
# Mon, 24 Aug 2026 18:03:15 GMT
COPY /rootfs/ / # buildkit
# Mon, 24 Aug 2026 18:03:17 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260823.0.578598' /etc/os-release # buildkit
# Mon, 24 Aug 2026 18:03:17 GMT
ENV LANG=C.UTF-8
# Mon, 24 Aug 2026 18:03:17 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:05e591f6b3b52daf1c0e620de8d54f3a20d677c697201db1b63ea0fb2f6e987a`  
		Last Modified: Mon, 24 Aug 2026 18:03:45 GMT  
		Size: 133.2 MB (133227249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ada71fd3f8d2dfdf01cf370dcc2620b38f19d166715947f813303998950424d8`  
		Last Modified: Mon, 24 Aug 2026 18:03:41 GMT  
		Size: 8.7 KB (8736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base` - unknown; unknown

```console
$ docker pull archlinux@sha256:d046aabf21e606d245118c3a193002e21f60bd202c63e00a0900e3b68bbfd8f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8212972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6e5b84a9384184dfc4756ed82d097623e8dbfbe6031bfcfdfbf55c38b559616`

```dockerfile
```

-	Layers:
	-	`sha256:a93bf1f023c0171f6e47ede56c076cdd13271f8ea25edc136914f0a1904864cb`  
		Last Modified: Mon, 24 Aug 2026 18:03:41 GMT  
		Size: 8.2 MB (8201043 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9462b8ae9ca306b41bd73d623efcd7ffef02312f1a0d964a2fd3a09daff0c37b`  
		Last Modified: Mon, 24 Aug 2026 18:03:41 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-20260830.0.582275`

**does not exist** (yet?)

## `archlinux:base-devel`

```console
$ docker pull archlinux@sha256:68bfc3b0d277b08a99101dc9b94aaa03e5ae70cf1b4fb965c03b2b87b915760d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:a26046b7363dad8e2614858f4313949ae9b05c9c5f31de343a54864b9e20806f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.4 MB (307358225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:831eb2376c3c0edb5d404326342b89a3664b47184037c0773bcb86ba19d44b82`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 24 Aug 2026 18:03:51 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Mon, 24 Aug 2026 18:03:51 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 24 Aug 2026 18:03:51 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 24 Aug 2026 18:03:51 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 24 Aug 2026 18:03:51 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 24 Aug 2026 18:03:51 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 24 Aug 2026 18:03:51 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 24 Aug 2026 18:03:51 GMT
LABEL org.opencontainers.image.version=20260823.0.578598
# Mon, 24 Aug 2026 18:03:51 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 24 Aug 2026 18:03:51 GMT
LABEL org.opencontainers.image.created=2026-08-23T00:09:32+00:00
# Mon, 24 Aug 2026 18:03:51 GMT
COPY /rootfs/ / # buildkit
# Mon, 24 Aug 2026 18:03:58 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260823.0.578598' /etc/os-release # buildkit
# Mon, 24 Aug 2026 18:03:58 GMT
ENV LANG=C.UTF-8
# Mon, 24 Aug 2026 18:03:58 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:eec7b623217d1e36ee44e8dde30878a0d7324bdcb172e9fa9f3e605a58c956d3`  
		Last Modified: Mon, 24 Aug 2026 18:04:52 GMT  
		Size: 307.3 MB (307346710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de15d39e90f7cebdd9b24d66ba248bb7d0a1cbe5291fbad559c1fcb7f3f4f238`  
		Last Modified: Mon, 24 Aug 2026 18:04:45 GMT  
		Size: 11.5 KB (11515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:df2dde8c88d977232694f24bcb2792ada3c464cc2d2e70b2302b97889616a0bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14421752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9a6103c79a5b96c660bd694427b6bb1ec687d5cd6626d088f39399f5cd2a3df`

```dockerfile
```

-	Layers:
	-	`sha256:602beca5070e9676f7ab4eeb253246b95746cf824999e756b09dd31e112fa5ef`  
		Last Modified: Mon, 24 Aug 2026 18:04:46 GMT  
		Size: 14.4 MB (14410041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b1409180960fc77252ee897320833937579c9550d41a01da085cc9bb37f74a64`  
		Last Modified: Mon, 24 Aug 2026 18:04:45 GMT  
		Size: 11.7 KB (11711 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-devel-20260830.0.582275`

**does not exist** (yet?)

## `archlinux:latest`

```console
$ docker pull archlinux@sha256:b860afd5823683f7ea389ba5f00d812f4fe55f6f286dea329d2abeefa535e309
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:latest` - linux; amd64

```console
$ docker pull archlinux@sha256:c9dc8b5d1b06d8d50ace6d42b2c93fbb1e34c9e1332d1a2102936e497d3187ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.2 MB (133235985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5450f1f6c02a03b7675390a41f7b082f6f24c8737f1c583d0d23c49c0f791efe`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 24 Aug 2026 18:03:15 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 24 Aug 2026 18:03:15 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 24 Aug 2026 18:03:15 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 24 Aug 2026 18:03:15 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 24 Aug 2026 18:03:15 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 24 Aug 2026 18:03:15 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 24 Aug 2026 18:03:15 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 24 Aug 2026 18:03:15 GMT
LABEL org.opencontainers.image.version=20260823.0.578598
# Mon, 24 Aug 2026 18:03:15 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 24 Aug 2026 18:03:15 GMT
LABEL org.opencontainers.image.created=2026-08-23T00:09:32+00:00
# Mon, 24 Aug 2026 18:03:15 GMT
COPY /rootfs/ / # buildkit
# Mon, 24 Aug 2026 18:03:17 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260823.0.578598' /etc/os-release # buildkit
# Mon, 24 Aug 2026 18:03:17 GMT
ENV LANG=C.UTF-8
# Mon, 24 Aug 2026 18:03:17 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:05e591f6b3b52daf1c0e620de8d54f3a20d677c697201db1b63ea0fb2f6e987a`  
		Last Modified: Mon, 24 Aug 2026 18:03:45 GMT  
		Size: 133.2 MB (133227249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ada71fd3f8d2dfdf01cf370dcc2620b38f19d166715947f813303998950424d8`  
		Last Modified: Mon, 24 Aug 2026 18:03:41 GMT  
		Size: 8.7 KB (8736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:latest` - unknown; unknown

```console
$ docker pull archlinux@sha256:d046aabf21e606d245118c3a193002e21f60bd202c63e00a0900e3b68bbfd8f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8212972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6e5b84a9384184dfc4756ed82d097623e8dbfbe6031bfcfdfbf55c38b559616`

```dockerfile
```

-	Layers:
	-	`sha256:a93bf1f023c0171f6e47ede56c076cdd13271f8ea25edc136914f0a1904864cb`  
		Last Modified: Mon, 24 Aug 2026 18:03:41 GMT  
		Size: 8.2 MB (8201043 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9462b8ae9ca306b41bd73d623efcd7ffef02312f1a0d964a2fd3a09daff0c37b`  
		Last Modified: Mon, 24 Aug 2026 18:03:41 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:multilib-devel`

```console
$ docker pull archlinux@sha256:f564adc93d9b319f3fb7c64bbf9f8210667786a4ef15b18b67030479bc03279c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:e494a05731d51a9a754ae58463191afccf9ad876b6c31dd222903986b9552ec0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.8 MB (329842586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55025ea99a2ad23df1abf0049ad6c43f859474c55fba266d7e6347a066082f6e`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 24 Aug 2026 18:04:04 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Mon, 24 Aug 2026 18:04:04 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 24 Aug 2026 18:04:04 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 24 Aug 2026 18:04:04 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 24 Aug 2026 18:04:04 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 24 Aug 2026 18:04:04 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 24 Aug 2026 18:04:04 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 24 Aug 2026 18:04:04 GMT
LABEL org.opencontainers.image.version=20260823.0.578598
# Mon, 24 Aug 2026 18:04:04 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 24 Aug 2026 18:04:04 GMT
LABEL org.opencontainers.image.created=2026-08-23T00:09:32+00:00
# Mon, 24 Aug 2026 18:04:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 24 Aug 2026 18:04:11 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260823.0.578598' /etc/os-release # buildkit
# Mon, 24 Aug 2026 18:04:11 GMT
ENV LANG=C.UTF-8
# Mon, 24 Aug 2026 18:04:11 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:b96df366e1095f47b8c32e2b9cdfa313d0fce3dde86af40cff37d16f76c492df`  
		Last Modified: Mon, 24 Aug 2026 18:05:14 GMT  
		Size: 329.8 MB (329829821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d44b7ac761aa8dc141c964df2d77e099db52f05f93e4b050904af88f4331c90`  
		Last Modified: Mon, 24 Aug 2026 18:05:07 GMT  
		Size: 12.8 KB (12765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:4ed8d483c131172f2b05ed13a393a69afe2d4d905fedd7d9d25cac5037ce0468
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14692897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5b93409af410ac8a8ae26b25203f9ed0e539362acaabe16cdf1e0a8a7bed639`

```dockerfile
```

-	Layers:
	-	`sha256:a0dab33fa905ae11fd6a97d3adbaf6245552262cc3a80079de14a34ceb65de7c`  
		Last Modified: Mon, 24 Aug 2026 18:05:08 GMT  
		Size: 14.7 MB (14681129 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4fd6f2bc6b5f7fe4e6168842cf628b8f37c09f54bc51021624f503c4884257c7`  
		Last Modified: Mon, 24 Aug 2026 18:05:06 GMT  
		Size: 11.8 KB (11768 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:multilib-devel-20260830.0.582275`

**does not exist** (yet?)
