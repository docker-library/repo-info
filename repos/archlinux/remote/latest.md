## `archlinux:latest`

```console
$ docker pull archlinux@sha256:204e91950fd364961088a01773eee9012243b7e965fed42b1d82d12416190782
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:latest` - linux; amd64

```console
$ docker pull archlinux@sha256:421f8732de4338c86c204a2af2d62d650f46e3a667744ab8dc5e88853481a4aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.5 MB (133533671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b50c3d168020f4524beddc8d20c1cb0ff7409bf55bd986e6f81aefcfc90760d`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 14 Sep 2026 19:04:27 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 14 Sep 2026 19:04:27 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 14 Sep 2026 19:04:27 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 14 Sep 2026 19:04:27 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 14 Sep 2026 19:04:27 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 14 Sep 2026 19:04:27 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 14 Sep 2026 19:04:27 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 14 Sep 2026 19:04:27 GMT
LABEL org.opencontainers.image.version=20260913.0.592969
# Mon, 14 Sep 2026 19:04:27 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 14 Sep 2026 19:04:27 GMT
LABEL org.opencontainers.image.created=2026-09-13T00:09:16+00:00
# Mon, 14 Sep 2026 19:04:27 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 19:04:29 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260913.0.592969' /etc/os-release # buildkit
# Mon, 14 Sep 2026 19:04:29 GMT
ENV LANG=C.UTF-8
# Mon, 14 Sep 2026 19:04:29 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:9b7a6195b886333e81c4b606533b61677f5799f0cf4b140c5a43e172ede2fad6`  
		Last Modified: Mon, 14 Sep 2026 19:04:57 GMT  
		Size: 133.5 MB (133524961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a29fb7ddc97dd288005e912426841b13fbbef272f5ba468fa7e10a321c1caabf`  
		Last Modified: Mon, 14 Sep 2026 19:04:54 GMT  
		Size: 8.7 KB (8710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:latest` - unknown; unknown

```console
$ docker pull archlinux@sha256:8619838b8f707a41f54cf086b06cb201a0ac75aa3c27b634ddab10da315c9347
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8221881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d10a0bf4353d28fbe83f8bc31e9c15c575cbf0b700a1dcdde138894185a0009`

```dockerfile
```

-	Layers:
	-	`sha256:e077b39e3d2988d267ac91d658a36f016d9c38cbf962ce4b4115496f9ebc5557`  
		Last Modified: Mon, 14 Sep 2026 19:04:54 GMT  
		Size: 8.2 MB (8209952 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e151a1b05cbea9c73cec8b55349eaed6509ddf7e8300a2d80a9773dc8454b854`  
		Last Modified: Mon, 14 Sep 2026 19:04:54 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json
