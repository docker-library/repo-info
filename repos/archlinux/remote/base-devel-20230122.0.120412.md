## `archlinux:base-devel-20230122.0.120412`

```console
$ docker pull archlinux@sha256:bbb85acb5aad5bdd67916c8311409b1836c422cb93534f4baa286fd70f76cc80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `archlinux:base-devel-20230122.0.120412` - linux; amd64

```console
$ docker pull archlinux@sha256:e690019ae204ea3d59906824d1a2e91c958c54240002a4749c3f86f9cdb9b643
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.5 MB (243498241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10033d0771e34f14aeb9841eed35031e7b60f3fd1140bbd28686390584ea7acf`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 23 Jan 2023 19:21:16 GMT
COPY dir:769433abb8718aa6ac0bbd763d30f2652efa901f6828e72d818718b31cd034dc in / 
# Mon, 23 Jan 2023 19:21:19 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=TEMPLATE_VERSION_ID' /etc/os-release
# Mon, 23 Jan 2023 19:21:19 GMT
ENV LANG=C.UTF-8
# Mon, 23 Jan 2023 19:21:19 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:2aef46bd7a5d57e9aeb69494bb999acc26e242318fec87fb8d631dd4110caff3`  
		Last Modified: Mon, 23 Jan 2023 19:22:47 GMT  
		Size: 243.5 MB (243489600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241e89e1dec4b2619f10cc09e2b28595bb7a45901cb5dddfdd53b0b642330bb7`  
		Last Modified: Mon, 23 Jan 2023 19:22:12 GMT  
		Size: 8.6 KB (8641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
