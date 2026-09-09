## `archlinux:base`

```console
$ docker pull archlinux@sha256:b944cc65c5f28665dfd5fdbf5ed2997c88f5bb4a0aefac7ee8a7ef01893e5ed9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base` - linux; amd64

```console
$ docker pull archlinux@sha256:522dd24e4a16f41afe71c7561febe519f7575404c291565e9f0be823d1794ca4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.4 MB (133432341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84e88cacd0e42ea6f23b45c9760c2942b05421cdd76ef33d3011c284bf29cf23`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Tue, 08 Sep 2026 19:08:50 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Tue, 08 Sep 2026 19:08:50 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Tue, 08 Sep 2026 19:08:50 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Tue, 08 Sep 2026 19:08:50 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Tue, 08 Sep 2026 19:08:50 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Tue, 08 Sep 2026 19:08:50 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Tue, 08 Sep 2026 19:08:50 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Tue, 08 Sep 2026 19:08:50 GMT
LABEL org.opencontainers.image.version=20260906.0.587075
# Tue, 08 Sep 2026 19:08:50 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Tue, 08 Sep 2026 19:08:50 GMT
LABEL org.opencontainers.image.created=2026-09-06T00:08:57+00:00
# Tue, 08 Sep 2026 19:08:50 GMT
COPY /rootfs/ / # buildkit
# Tue, 08 Sep 2026 19:08:52 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260906.0.587075' /etc/os-release # buildkit
# Tue, 08 Sep 2026 19:08:52 GMT
ENV LANG=C.UTF-8
# Tue, 08 Sep 2026 19:08:52 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:41e227706d01174e967aa6415b098211ad07b8105a39060e10c488b1dbf9b91b`  
		Last Modified: Tue, 08 Sep 2026 19:09:17 GMT  
		Size: 133.4 MB (133423600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:195e507860dfca001f27e54610f0c89d45cc7439939f7dd9f63a1a47b330a9c1`  
		Last Modified: Tue, 08 Sep 2026 19:09:13 GMT  
		Size: 8.7 KB (8741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base` - unknown; unknown

```console
$ docker pull archlinux@sha256:80d1f83016d3091b1dd39dffd87202ac3a0764f62fca66fa79bd58ca893ca4df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8212976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94bc1e4ef4ee494a080cb8f5bec3e05b4fa73b1c7c820dd728f64bc0011bb65d`

```dockerfile
```

-	Layers:
	-	`sha256:d034678286ad30a6f2da984b03b9faae09ea21571d0feeefdd78a2742e802e1f`  
		Last Modified: Tue, 08 Sep 2026 19:09:14 GMT  
		Size: 8.2 MB (8201048 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef0e7ffc7f5ee0aba539633fe2b1f07c8e2bed535701d1fe7ba81539eab7bb82`  
		Last Modified: Tue, 08 Sep 2026 19:09:13 GMT  
		Size: 11.9 KB (11928 bytes)  
		MIME: application/vnd.in-toto+json
