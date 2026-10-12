## `archlinux:multilib-devel-20261011.0.609700`

```console
$ docker pull archlinux@sha256:6378721c2bc81446a4a9ce087f3113c6f8489c9a4ed827f3723ed866aa62f212
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel-20261011.0.609700` - linux; amd64

```console
$ docker pull archlinux@sha256:46faaa57080c344fd24f1d728a54cb179c70ae8416822b01bc6c9291da3ce7af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.9 MB (330918873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daf4b719d2e21aee75743d230f985be7ad6118a049324f264d5225c7689fa64a`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 12 Oct 2026 17:57:33 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Mon, 12 Oct 2026 17:57:33 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 12 Oct 2026 17:57:33 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 12 Oct 2026 17:57:33 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 12 Oct 2026 17:57:33 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 12 Oct 2026 17:57:33 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 12 Oct 2026 17:57:33 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 12 Oct 2026 17:57:33 GMT
LABEL org.opencontainers.image.version=20261011.0.609700
# Mon, 12 Oct 2026 17:57:33 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 12 Oct 2026 17:57:33 GMT
LABEL org.opencontainers.image.created=2026-10-11T00:09:32+00:00
# Mon, 12 Oct 2026 17:57:33 GMT
COPY /rootfs/ / # buildkit
# Mon, 12 Oct 2026 17:57:40 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261011.0.609700' /etc/os-release # buildkit
# Mon, 12 Oct 2026 17:57:40 GMT
ENV LANG=C.UTF-8
# Mon, 12 Oct 2026 17:57:40 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:f0234eb2b8f00daea70988cbd593808d1af3dd73ce5f2e101a74190df16a3c98`  
		Last Modified: Mon, 12 Oct 2026 17:58:39 GMT  
		Size: 330.9 MB (330906145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20fbaa0553b95d123d7ad3dc971e9ce59f2f4ac0e6a54948eec5940ff708cfb5`  
		Last Modified: Mon, 12 Oct 2026 17:58:32 GMT  
		Size: 12.7 KB (12728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel-20261011.0.609700` - unknown; unknown

```console
$ docker pull archlinux@sha256:de21139ef9c8a0302edf91fff5bd0b79f0160cb756587e5627bb4b215c2f13c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14733622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87a74012a9868070728e39cc19cb0d369c8e3216c24f9d6c94e3e670a743dd7b`

```dockerfile
```

-	Layers:
	-	`sha256:ecb59ac2a800828230a3745b3a7bbbed10f89b2062e7d1d3bca221b8df08f15e`  
		Last Modified: Mon, 12 Oct 2026 17:58:33 GMT  
		Size: 14.7 MB (14721854 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b1f3b0c46160d898507c859f57624277aeb963dfeb52d8f624221c8a9db6fa68`  
		Last Modified: Mon, 12 Oct 2026 17:58:32 GMT  
		Size: 11.8 KB (11768 bytes)  
		MIME: application/vnd.in-toto+json
