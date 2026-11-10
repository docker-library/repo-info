## `archlinux:multilib-devel`

```console
$ docker pull archlinux@sha256:bb587308dbad9c6273a677aadaae2776117b9343292872a443066242c790ca3d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:a9406e268ab9bf7436d12713af4e57d77d1cceb35f183a78e617a4d3609df3bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.7 MB (331745633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8cdb4ec1721e9b5c5e213cd8df1dd723b89cd97d711b8c387f1064dbbd25e10`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 09 Nov 2026 22:25:27 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Mon, 09 Nov 2026 22:25:27 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 09 Nov 2026 22:25:27 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 09 Nov 2026 22:25:27 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 09 Nov 2026 22:25:27 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 09 Nov 2026 22:25:27 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 09 Nov 2026 22:25:27 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 09 Nov 2026 22:25:27 GMT
LABEL org.opencontainers.image.version=20261108.0.623074
# Mon, 09 Nov 2026 22:25:27 GMT
LABEL org.opencontainers.image.revision=d9f7a01562208910488140c54ffe402c3e7a231e
# Mon, 09 Nov 2026 22:25:27 GMT
LABEL org.opencontainers.image.created=2026-11-08T00:09:13+00:00
# Mon, 09 Nov 2026 22:25:27 GMT
COPY /rootfs/ / # buildkit
# Mon, 09 Nov 2026 22:25:35 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261108.0.623074' /etc/os-release # buildkit
# Mon, 09 Nov 2026 22:25:35 GMT
ENV LANG=C.UTF-8
# Mon, 09 Nov 2026 22:25:35 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:4f209e7718b075805cdfc9e0f03592250d2850dba9b2a710aaa5a57f10ef235e`  
		Last Modified: Mon, 09 Nov 2026 22:26:36 GMT  
		Size: 331.7 MB (331732838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f66dc16b81f5f03617bc11d360a5d421033ca14beeba52d261b012a2c3f4e13`  
		Last Modified: Mon, 09 Nov 2026 22:26:30 GMT  
		Size: 12.8 KB (12795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:4bb3f1cdebd26ac35d9df204e0a2d1813bca597b88904b0568e99e4c7d1ec9a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14747903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fce0703c6f9e61c9886875b9f4957a8e69f3edbadf02291a2747b6593d716f0a`

```dockerfile
```

-	Layers:
	-	`sha256:54cf0b3825e3a1c6c30de113d5351603031b5b30cd34db256e68e6d85af32c76`  
		Last Modified: Mon, 09 Nov 2026 22:26:30 GMT  
		Size: 14.7 MB (14736135 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:310b36135642125491d22d33df9a540a4a842df7d5dd59c32550e2fa8c25bb8f`  
		Last Modified: Mon, 09 Nov 2026 22:26:30 GMT  
		Size: 11.8 KB (11768 bytes)  
		MIME: application/vnd.in-toto+json
