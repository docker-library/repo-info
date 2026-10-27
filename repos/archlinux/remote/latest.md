## `archlinux:latest`

```console
$ docker pull archlinux@sha256:e82623936fa1a69700b48e98b058df6eaab18b737c27473a7234a40fdecb9413
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:latest` - linux; amd64

```console
$ docker pull archlinux@sha256:dfc5be7be44cf1acf3d9b3b902e3e9c8a29f97ed41e35631823cdc9c97e5d4f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.2 MB (134226363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf2533a05fd2eeef8f3d1f60fe73649d4ee099b1594868af7b588f268763cbb9`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 16:31:05 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Tue, 27 Oct 2026 16:31:05 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Tue, 27 Oct 2026 16:31:05 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Tue, 27 Oct 2026 16:31:05 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Tue, 27 Oct 2026 16:31:05 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Tue, 27 Oct 2026 16:31:05 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Tue, 27 Oct 2026 16:31:05 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Tue, 27 Oct 2026 16:31:05 GMT
LABEL org.opencontainers.image.version=20261025.0.616225
# Tue, 27 Oct 2026 16:31:05 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Tue, 27 Oct 2026 16:31:05 GMT
LABEL org.opencontainers.image.created=2026-10-25T00:09:13+00:00
# Tue, 27 Oct 2026 16:31:05 GMT
COPY /rootfs/ / # buildkit
# Tue, 27 Oct 2026 16:31:08 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261025.0.616225' /etc/os-release # buildkit
# Tue, 27 Oct 2026 16:31:08 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:31:08 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:1dfa7afed57d42ac3f3367b3b4bc34cd7615a6f71e3fb82c485df5eb8861dce9`  
		Last Modified: Tue, 27 Oct 2026 16:31:33 GMT  
		Size: 134.2 MB (134217647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd3cbebbced26e950ae9020b3867106f352a384b33417a401ad041f4790c62f1`  
		Last Modified: Tue, 27 Oct 2026 16:31:29 GMT  
		Size: 8.7 KB (8716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:latest` - unknown; unknown

```console
$ docker pull archlinux@sha256:50d56cf2f30064994623d99a71c6687e1c01a8905fc2aac6f051114b302af2ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8254492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66dc7b16994eeacffcb26cd288ac8069fa5b48aaef5b93b40190bf3f828e2d28`

```dockerfile
```

-	Layers:
	-	`sha256:70611aef9d39895890252403199ba40b85e83016333f523280fd518b53a51ec0`  
		Last Modified: Tue, 27 Oct 2026 16:31:30 GMT  
		Size: 8.2 MB (8242563 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:72f885365a8d695285da94d0a95cf973f8f274e3dcd4282b139430df3d6746b2`  
		Last Modified: Tue, 27 Oct 2026 16:31:29 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json
