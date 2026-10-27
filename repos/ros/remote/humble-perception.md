## `ros:humble-perception`

```console
$ docker pull ros@sha256:a1bbb1d95cdb6232962f7097ebf17cd3e507967b778783015398fa1102beea38
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-perception` - linux; amd64

```console
$ docker pull ros@sha256:1d652f0df4083b62ca7faf27a95c5a5416bf1239c8af8b37787a13922df9ed51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **956.3 MB (956341945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac53cf163c4fd8d66f8959846214177439510e96fc6b432fdd4ecac469edb9fe`
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
# Tue, 27 Oct 2026 00:32:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:11 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:13 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 01:19:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
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
	-	`sha256:54d581ea900ceb6693621366f3e4ad15f8cfa5ebc06fb63ad0dd33c47e04287a`  
		Last Modified: Tue, 27 Oct 2026 00:33:06 GMT  
		Size: 98.2 MB (98201683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78e634950ccd21abef8346472bffceb93eed9d6dd8b2ad003c1493d51a3cf85d`  
		Last Modified: Tue, 27 Oct 2026 00:33:03 GMT  
		Size: 373.2 KB (373171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37f158140efc278129a1c585ad8fef578e60059bcae7f4635fbef5704ab5b1e2`  
		Last Modified: Tue, 27 Oct 2026 00:33:03 GMT  
		Size: 2.7 KB (2673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38d5e69ddd26a1e16c66a615138131914575ee9518deb80b2cdba64981d64a40`  
		Last Modified: Tue, 27 Oct 2026 00:33:04 GMT  
		Size: 23.4 MB (23350209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9381342300200ea2790c83040870a21f9c5a8b7a6ff583c021f65966bb927d48`  
		Last Modified: Tue, 27 Oct 2026 01:21:31 GMT  
		Size: 692.2 MB (692169138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception` - unknown; unknown

```console
$ docker pull ros@sha256:7107c93f38835d53b19a3b641cbed41b94d0387d5754ec5b57726aa7e1ad1821
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.1 MB (59071704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59fb986a8559d8ecb533fe52d4c08e0aefcc2905829541651b65d39b23d90632`

```dockerfile
```

-	Layers:
	-	`sha256:2159c922a5061fd5448511d142f4983cf7d7dae66f575c514ccfbbc9840d95fe`  
		Last Modified: Tue, 27 Oct 2026 01:21:20 GMT  
		Size: 59.1 MB (59062352 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7fdfb77dfa1ba110e9001e11d486c25f5ab2234e77e0c4aa637e9f6b2510bddf`  
		Last Modified: Tue, 27 Oct 2026 01:21:18 GMT  
		Size: 9.4 KB (9352 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5e5f62513a4e5ac9626b5b01098b5e865f005b943367f33aacf8665f2e1a1bf4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **917.1 MB (917101969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02e935290d9e964839d3a446e16f4034d60bd0b0430882e0e1f65b250732da0a`
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
# Tue, 27 Oct 2026 00:31:53 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:31:57 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:31:58 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 01:19:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
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
	-	`sha256:b81ec55a55ff16642d94200d7ade2e5256036c4278690000a41b77e8b2b2af6e`  
		Last Modified: Tue, 27 Oct 2026 00:32:56 GMT  
		Size: 95.8 MB (95839077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9f39b1c0e8b3272b40fcbd7cdc9462fbcd07fc3d92583f9555e135c4fa3ae97`  
		Last Modified: Tue, 27 Oct 2026 00:32:53 GMT  
		Size: 373.2 KB (373169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:926940866d1ebe58931a7382de29ca6e0b84e47a8820b9bf2a2589062b7ee135`  
		Last Modified: Tue, 27 Oct 2026 00:32:53 GMT  
		Size: 2.7 KB (2652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0e603f1bf565e5ccf7bb218499081883979eb17303579b51a6fe6f84c6971e2`  
		Last Modified: Tue, 27 Oct 2026 00:32:55 GMT  
		Size: 22.8 MB (22754818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b57820bcc4df5503213066f26ca68921e33d5e331d892eccf39aad47df9da799`  
		Last Modified: Tue, 27 Oct 2026 01:22:33 GMT  
		Size: 660.2 MB (660188760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception` - unknown; unknown

```console
$ docker pull ros@sha256:e1e51479b9636f53a1f6e09f35696d933cfebed5b1ed5145827873527a3cd8b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.1 MB (59056109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b2bf530ae742c701d61e57850bf7e422068349c2d276aa473f88184bfd10f2a`

```dockerfile
```

-	Layers:
	-	`sha256:b347559487f0d8aa8f070601b8dda0d33473bb18729616f76341e92217f1359b`  
		Last Modified: Tue, 27 Oct 2026 01:22:23 GMT  
		Size: 59.0 MB (59046677 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa20f02b82b319d27409137da2f4f29703e16393a72004ca7cf8509dd7cbe015`  
		Last Modified: Tue, 27 Oct 2026 01:22:20 GMT  
		Size: 9.4 KB (9432 bytes)  
		MIME: application/vnd.in-toto+json
