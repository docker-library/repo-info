## `archlinux:multilib-devel`

```console
$ docker pull archlinux@sha256:c82eff9dbc25b4c24276e04e69662f585da769edd195af525276dc1efe7fc568
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:5b99891d2379f15b87c94fe061d52b5c1f9e74108d325879046afed1d2885e45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.2 MB (335170786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8feec9c9c4f5f8d8ea7c1e9ef7314bb4202946e12e1c50fb9d7661cc9dd66e69`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 18:24:29 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Mon, 23 Nov 2026 18:24:29 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 23 Nov 2026 18:24:29 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 23 Nov 2026 18:24:29 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 23 Nov 2026 18:24:29 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 23 Nov 2026 18:24:29 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 23 Nov 2026 18:24:29 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 23 Nov 2026 18:24:29 GMT
LABEL org.opencontainers.image.version=20261122.0.629543
# Mon, 23 Nov 2026 18:24:29 GMT
LABEL org.opencontainers.image.revision=d9f7a01562208910488140c54ffe402c3e7a231e
# Mon, 23 Nov 2026 18:24:29 GMT
LABEL org.opencontainers.image.created=2026-11-22T00:09:11+00:00
# Mon, 23 Nov 2026 18:24:29 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 18:24:37 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261122.0.629543' /etc/os-release # buildkit
# Mon, 23 Nov 2026 18:24:37 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 18:24:37 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:2e4d85deb079424cc440672f4a12b00b75fb2cd2cb9e98b73631e64da373b535`  
		Last Modified: Mon, 23 Nov 2026 18:25:33 GMT  
		Size: 335.2 MB (335158011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c323e6fbbaa20ace2d811477fc9feb089e87ce6e5c44e49320aa42c2903b5c31`  
		Last Modified: Mon, 23 Nov 2026 18:25:27 GMT  
		Size: 12.8 KB (12775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:39c0a98ca79f1432594fdca63737fe4bf91dddbb8484e5cf648b6492184f1d1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.8 MB (14845015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3e88778338b8ede3acb25a94ac2a801b961d51a9b5f69d0009675d769f1aeaa`

```dockerfile
```

-	Layers:
	-	`sha256:72b2a0784b504ee12dd58d822694e706ac6a7c7f585e6453e334f04a2231018c`  
		Last Modified: Mon, 23 Nov 2026 18:25:28 GMT  
		Size: 14.8 MB (14833247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11aa3d120b6655b1409d7801417ef6196de796962488b932987e1569c2aefcab`  
		Last Modified: Mon, 23 Nov 2026 18:25:27 GMT  
		Size: 11.8 KB (11768 bytes)  
		MIME: application/vnd.in-toto+json
