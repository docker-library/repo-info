## `archlinux:base`

```console
$ docker pull archlinux@sha256:854f6ce171e899daf60dde2b7236a9b026a0ddfa516997055e49069eafdde2d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `archlinux:base` - linux; amd64

```console
$ docker pull archlinux@sha256:fa4c9f45c05281ea79fcde2684cae729ee13aa5764306fc56e7909ea224d0c36
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.9 MB (141913382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b457d2cc4d4c5d0f24cf1d4f88b0b0e6a037fa48733674b9bc590199038c8492`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 23 Jan 2023 19:20:14 GMT
COPY dir:f2f382c962a0f814c413ce5eddbfe935076c7ea31a756c8fdf8e0d72fb80c2ec in / 
# Mon, 23 Jan 2023 19:20:15 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=TEMPLATE_VERSION_ID' /etc/os-release
# Mon, 23 Jan 2023 19:20:15 GMT
ENV LANG=C.UTF-8
# Mon, 23 Jan 2023 19:20:15 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:7d7ad422c0b4887e885e1fc53b2c5e57b6e314383328cfb4025fe5683de89d3c`  
		Last Modified: Mon, 23 Jan 2023 19:22:01 GMT  
		Size: 141.9 MB (141905413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4685141777dffa60aae699f77f7adb5bfba7ff683f49594c4d53ec3422b45b4`  
		Last Modified: Mon, 23 Jan 2023 19:21:40 GMT  
		Size: 8.0 KB (7969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
