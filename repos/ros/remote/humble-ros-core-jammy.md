## `ros:humble-ros-core-jammy`

```console
$ docker pull ros@sha256:def377f78b58f925e26a2f1f082708d5efed8a602ed43f66449c73618df349a9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-core-jammy` - linux; amd64

```console
$ docker pull ros@sha256:ddd4c8835556befc6e1bde97fdfb5e22cb1dc628db477bf9345e0fc4f5378e1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.2 MB (142245071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ac1207a54004e833b2a6c02b4f6e076b03d6e0e228111ecdd5a052b96c2d304`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:36:40 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:36:51 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:36:56 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:34 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:37:34 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:37:34 GMT
ENV ROS_DISTRO=humble
# Mon, 26 Oct 2026 23:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:34 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:37:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:37:34 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c549bd8910564860c05b397c2f5079977ba57866568b40512e6d5900b68aeb`  
		Last Modified: Mon, 26 Oct 2026 23:37:59 GMT  
		Size: 1.2 MB (1214909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bfff375d409607db61b9a6667d044f0aa46ef2a3cbda286ca842d32c46b7585`  
		Last Modified: Mon, 26 Oct 2026 23:37:59 GMT  
		Size: 6.0 MB (5952696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7bf074986f3f7f976da5bf6d04ad23e23c0d105c5b1d85507b458012a18cb42`  
		Last Modified: Mon, 26 Oct 2026 23:37:59 GMT  
		Size: 98.0 KB (97987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a320ee7e3c5c97109f846c3346550e5d4e1544684e3c000e7b7caca0919a9dca`  
		Last Modified: Mon, 26 Oct 2026 23:38:02 GMT  
		Size: 105.2 MB (105226794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cd06318cfa34d4e91cbbae490b31fb7b9517721281080dfd543af1ef53d32b2`  
		Last Modified: Mon, 26 Oct 2026 23:38:00 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:6ccd260a2a4dd25d63ab6a522498cfce48867d5018128a6afd373295254b3150
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17930908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcd0874319af712da78aeee671e979be4da50e1e4426ad3204ffbf0d256f4fc8`

```dockerfile
```

-	Layers:
	-	`sha256:4a36b5a779e8bdbc4627c8e5d6228ebdb3a5cb6a73883b16b9b1e04265ef4802`  
		Last Modified: Mon, 26 Oct 2026 23:38:00 GMT  
		Size: 17.9 MB (17916282 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5307f27ae5aa7bddbe3d880848682de0695ec02abffc9fdc20863966291979ce`  
		Last Modified: Mon, 26 Oct 2026 23:37:59 GMT  
		Size: 14.6 KB (14626 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-core-jammy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:671cc4b66150baccd8b86f47b9ed22f2fe175796daaa9d679537d65374988bc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.9 MB (137943493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c22718e0108026a0785e8d44b03696bbe093388b503f7d62a427da824135004`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:41:37 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:41:47 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:41:55 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:36 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:42:36 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:42:36 GMT
ENV ROS_DISTRO=humble
# Mon, 26 Oct 2026 23:42:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:36 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:42:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:42:36 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da37fb353ffb87fd003caaa960c312945767941120f9ce2189841d7f24081e5a`  
		Last Modified: Mon, 26 Oct 2026 23:43:03 GMT  
		Size: 1.2 MB (1214841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f416cf83b767c1b1a01ff9b5a3ddb56729adeb60429d2e2bf5da1b0fed06f885`  
		Last Modified: Mon, 26 Oct 2026 23:43:03 GMT  
		Size: 5.9 MB (5910350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f67f6955aef4a2ce18d0d8b4ca14c62442ff229e5595fa9148fcdaeb89ec8595`  
		Last Modified: Mon, 26 Oct 2026 23:43:02 GMT  
		Size: 97.9 KB (97890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0567f7869a8b715b76873763dd3d27a1b9f6408e24a510df2b1a5f1a417d230`  
		Last Modified: Mon, 26 Oct 2026 23:43:05 GMT  
		Size: 103.0 MB (103035608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b886f357f227f63716e5cdabc3949eec20ada2a1cf07fee8ae9c99f9de102648`  
		Last Modified: Mon, 26 Oct 2026 23:43:04 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:57f86f7e5e01d0ddbd11eca296ef0d5aad26a65788abf785c1a3e47f91521d29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17917378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c647d4dfdcb240055984f7ba62ac89745fbff3b765659841d9b3cb751b8026e4`

```dockerfile
```

-	Layers:
	-	`sha256:a6e12f413e44ddcb97c15349ac4c03bf5ea8b8c52eafa5ace7889b11869039c6`  
		Last Modified: Mon, 26 Oct 2026 23:43:03 GMT  
		Size: 17.9 MB (17902627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de8d442b41a824d08e190df729ac6d6879e831cb4ec85b58e07686d1d4726d38`  
		Last Modified: Mon, 26 Oct 2026 23:43:02 GMT  
		Size: 14.8 KB (14751 bytes)  
		MIME: application/vnd.in-toto+json
