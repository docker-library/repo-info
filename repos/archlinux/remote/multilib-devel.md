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
