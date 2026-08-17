## `archlinux:multilib-devel`

```console
$ docker pull archlinux@sha256:58bce6f113dec4c642172a8ce7239f29da461bcf3c91228498c6131dd64553e2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:001dd393fb22c06e5c2b5314ee11ff854dc9850d77b290ed329ef7fb97b49669
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.6 MB (329605399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54b36277a423bd75f5af8e26889e16f7483d18839360f35137278bb4c9d40183`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 17 Aug 2026 17:21:22 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Mon, 17 Aug 2026 17:21:22 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 17 Aug 2026 17:21:22 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 17 Aug 2026 17:21:22 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 17 Aug 2026 17:21:22 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 17 Aug 2026 17:21:22 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 17 Aug 2026 17:21:22 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 17 Aug 2026 17:21:22 GMT
LABEL org.opencontainers.image.version=20260816.0.574111
# Mon, 17 Aug 2026 17:21:22 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 17 Aug 2026 17:21:22 GMT
LABEL org.opencontainers.image.created=2026-08-16T00:10:28+00:00
# Mon, 17 Aug 2026 17:21:22 GMT
COPY /rootfs/ / # buildkit
# Mon, 17 Aug 2026 17:21:30 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260816.0.574111' /etc/os-release # buildkit
# Mon, 17 Aug 2026 17:21:30 GMT
ENV LANG=C.UTF-8
# Mon, 17 Aug 2026 17:21:30 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:dc8515cf51ae9b459ae3704b660adb9ac4e6ad15b5100c1e0aa89ee2bc3bb8c7`  
		Last Modified: Mon, 17 Aug 2026 17:22:31 GMT  
		Size: 329.6 MB (329592724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27e242c629e0def490319feca556c9e691bcb8c3a60590f8ccc0a86bbbcb74d3`  
		Last Modified: Mon, 17 Aug 2026 17:22:25 GMT  
		Size: 12.7 KB (12675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:f649b425d0e8fcf4bbca719018abfbd6f671671ef7236f724d4ab411d9afa540
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14697443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:addb608280415e8dc27b4eef0c08f26cf1d442831160e4d93423a70056ecce1e`

```dockerfile
```

-	Layers:
	-	`sha256:a2b52d36911e6cffb172562a4a1da81c43dc64cacfa0a9df3f80439b930f9017`  
		Last Modified: Mon, 17 Aug 2026 17:22:26 GMT  
		Size: 14.7 MB (14685676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86ed0cd305ba950c210f66ceb25991fba962072013a4e073526895f4d85ea802`  
		Last Modified: Mon, 17 Aug 2026 17:22:25 GMT  
		Size: 11.8 KB (11767 bytes)  
		MIME: application/vnd.in-toto+json
