<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ros`

-	[`ros:humble`](#roshumble)
-	[`ros:humble-perception`](#roshumble-perception)
-	[`ros:humble-perception-jammy`](#roshumble-perception-jammy)
-	[`ros:humble-ros-base`](#roshumble-ros-base)
-	[`ros:humble-ros-base-jammy`](#roshumble-ros-base-jammy)
-	[`ros:humble-ros-core`](#roshumble-ros-core)
-	[`ros:humble-ros-core-jammy`](#roshumble-ros-core-jammy)
-	[`ros:jazzy`](#rosjazzy)
-	[`ros:jazzy-perception`](#rosjazzy-perception)
-	[`ros:jazzy-perception-noble`](#rosjazzy-perception-noble)
-	[`ros:jazzy-ros-base`](#rosjazzy-ros-base)
-	[`ros:jazzy-ros-base-noble`](#rosjazzy-ros-base-noble)
-	[`ros:jazzy-ros-core`](#rosjazzy-ros-core)
-	[`ros:jazzy-ros-core-noble`](#rosjazzy-ros-core-noble)
-	[`ros:kilted`](#roskilted)
-	[`ros:kilted-perception`](#roskilted-perception)
-	[`ros:kilted-perception-noble`](#roskilted-perception-noble)
-	[`ros:kilted-ros-base`](#roskilted-ros-base)
-	[`ros:kilted-ros-base-noble`](#roskilted-ros-base-noble)
-	[`ros:kilted-ros-core`](#roskilted-ros-core)
-	[`ros:kilted-ros-core-noble`](#roskilted-ros-core-noble)
-	[`ros:latest`](#roslatest)
-	[`ros:lyrical`](#roslyrical)
-	[`ros:lyrical-perception`](#roslyrical-perception)
-	[`ros:lyrical-perception-resolute`](#roslyrical-perception-resolute)
-	[`ros:lyrical-ros-base`](#roslyrical-ros-base)
-	[`ros:lyrical-ros-base-resolute`](#roslyrical-ros-base-resolute)
-	[`ros:lyrical-ros-core`](#roslyrical-ros-core)
-	[`ros:lyrical-ros-core-resolute`](#roslyrical-ros-core-resolute)
-	[`ros:rolling`](#rosrolling)
-	[`ros:rolling-perception`](#rosrolling-perception)
-	[`ros:rolling-perception-resolute`](#rosrolling-perception-resolute)
-	[`ros:rolling-ros-base`](#rosrolling-ros-base)
-	[`ros:rolling-ros-base-resolute`](#rosrolling-ros-base-resolute)
-	[`ros:rolling-ros-core`](#rosrolling-ros-core)
-	[`ros:rolling-ros-core-resolute`](#rosrolling-ros-core-resolute)

## `ros:humble`

```console
$ docker pull ros@sha256:d9bcf2e6f72df127fdee07048c2e87b1b4b9a59a74af0592f4489fc2844aa855
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble` - linux; amd64

```console
$ docker pull ros@sha256:a3f4de78e42cca693a543ece5798aedcf1cae0171fe71c334a047332cc72ef93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.2 MB (264172807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09e6091d967b82bee46d58dfaa1d14805a9e9c34736eea6aeda9b5a0a8bc8b7c`
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

### `ros:humble` - unknown; unknown

```console
$ docker pull ros@sha256:0af631e3bd2cb9e8a20326e46c825cb591abcd485d991ebd49eca23550e951d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23973807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53a796802952b088b5d2980211c109c591cc8672df7afcb9d449055268efce9a`

```dockerfile
```

-	Layers:
	-	`sha256:b41221a0c554074ce145f0326c608d28b979b078769012e944bcd4b0ad831602`  
		Last Modified: Tue, 27 Oct 2026 00:33:04 GMT  
		Size: 24.0 MB (23957459 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd17d9e941514dbe07608a6a7140cb52616df350595b6f8557af2dfc17caae72`  
		Last Modified: Tue, 27 Oct 2026 00:33:02 GMT  
		Size: 16.3 KB (16348 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:48435c01f2876ff519a0d07edf8dd3ab29a8106c907965c64385a14c76470d6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.9 MB (256913209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfda958c28a93231deaaf2dd44d8ba8b46e71ec0416fba38c5cb603f37df4b23`
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

### `ros:humble` - unknown; unknown

```console
$ docker pull ros@sha256:24f8687be8c76b829679e8bfaac03a1a30abb1def0da644a4bce8e676eb8be02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23986960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45b79afc9369a4d711fc3c0041fde5ba755b9cbaa68bbd8012582d2edfb77308`

```dockerfile
```

-	Layers:
	-	`sha256:0049db3c0a03aa65c2bf2f24171d73b3a5e29230bd4c9a3347696e3cc4f2f569`  
		Last Modified: Tue, 27 Oct 2026 00:32:54 GMT  
		Size: 24.0 MB (23970476 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d7bb03b231eb744d6b976b2e0b004afe99ff8c3933a35fbe579a6ec8e35bcdc`  
		Last Modified: Tue, 27 Oct 2026 00:32:53 GMT  
		Size: 16.5 KB (16484 bytes)  
		MIME: application/vnd.in-toto+json

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

## `ros:humble-perception-jammy`

```console
$ docker pull ros@sha256:a1bbb1d95cdb6232962f7097ebf17cd3e507967b778783015398fa1102beea38
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-perception-jammy` - linux; amd64

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

### `ros:humble-perception-jammy` - unknown; unknown

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

### `ros:humble-perception-jammy` - linux; arm64 variant v8

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

### `ros:humble-perception-jammy` - unknown; unknown

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

## `ros:humble-ros-base`

```console
$ docker pull ros@sha256:d9bcf2e6f72df127fdee07048c2e87b1b4b9a59a74af0592f4489fc2844aa855
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:a3f4de78e42cca693a543ece5798aedcf1cae0171fe71c334a047332cc72ef93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.2 MB (264172807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09e6091d967b82bee46d58dfaa1d14805a9e9c34736eea6aeda9b5a0a8bc8b7c`
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

### `ros:humble-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:0af631e3bd2cb9e8a20326e46c825cb591abcd485d991ebd49eca23550e951d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23973807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53a796802952b088b5d2980211c109c591cc8672df7afcb9d449055268efce9a`

```dockerfile
```

-	Layers:
	-	`sha256:b41221a0c554074ce145f0326c608d28b979b078769012e944bcd4b0ad831602`  
		Last Modified: Tue, 27 Oct 2026 00:33:04 GMT  
		Size: 24.0 MB (23957459 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd17d9e941514dbe07608a6a7140cb52616df350595b6f8557af2dfc17caae72`  
		Last Modified: Tue, 27 Oct 2026 00:33:02 GMT  
		Size: 16.3 KB (16348 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:48435c01f2876ff519a0d07edf8dd3ab29a8106c907965c64385a14c76470d6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.9 MB (256913209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfda958c28a93231deaaf2dd44d8ba8b46e71ec0416fba38c5cb603f37df4b23`
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

### `ros:humble-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:24f8687be8c76b829679e8bfaac03a1a30abb1def0da644a4bce8e676eb8be02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23986960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45b79afc9369a4d711fc3c0041fde5ba755b9cbaa68bbd8012582d2edfb77308`

```dockerfile
```

-	Layers:
	-	`sha256:0049db3c0a03aa65c2bf2f24171d73b3a5e29230bd4c9a3347696e3cc4f2f569`  
		Last Modified: Tue, 27 Oct 2026 00:32:54 GMT  
		Size: 24.0 MB (23970476 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d7bb03b231eb744d6b976b2e0b004afe99ff8c3933a35fbe579a6ec8e35bcdc`  
		Last Modified: Tue, 27 Oct 2026 00:32:53 GMT  
		Size: 16.5 KB (16484 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-ros-base-jammy`

```console
$ docker pull ros@sha256:d9bcf2e6f72df127fdee07048c2e87b1b4b9a59a74af0592f4489fc2844aa855
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-base-jammy` - linux; amd64

```console
$ docker pull ros@sha256:a3f4de78e42cca693a543ece5798aedcf1cae0171fe71c334a047332cc72ef93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.2 MB (264172807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09e6091d967b82bee46d58dfaa1d14805a9e9c34736eea6aeda9b5a0a8bc8b7c`
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

### `ros:humble-ros-base-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:0af631e3bd2cb9e8a20326e46c825cb591abcd485d991ebd49eca23550e951d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23973807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53a796802952b088b5d2980211c109c591cc8672df7afcb9d449055268efce9a`

```dockerfile
```

-	Layers:
	-	`sha256:b41221a0c554074ce145f0326c608d28b979b078769012e944bcd4b0ad831602`  
		Last Modified: Tue, 27 Oct 2026 00:33:04 GMT  
		Size: 24.0 MB (23957459 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd17d9e941514dbe07608a6a7140cb52616df350595b6f8557af2dfc17caae72`  
		Last Modified: Tue, 27 Oct 2026 00:33:02 GMT  
		Size: 16.3 KB (16348 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-base-jammy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:48435c01f2876ff519a0d07edf8dd3ab29a8106c907965c64385a14c76470d6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.9 MB (256913209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfda958c28a93231deaaf2dd44d8ba8b46e71ec0416fba38c5cb603f37df4b23`
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

### `ros:humble-ros-base-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:24f8687be8c76b829679e8bfaac03a1a30abb1def0da644a4bce8e676eb8be02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23986960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45b79afc9369a4d711fc3c0041fde5ba755b9cbaa68bbd8012582d2edfb77308`

```dockerfile
```

-	Layers:
	-	`sha256:0049db3c0a03aa65c2bf2f24171d73b3a5e29230bd4c9a3347696e3cc4f2f569`  
		Last Modified: Tue, 27 Oct 2026 00:32:54 GMT  
		Size: 24.0 MB (23970476 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d7bb03b231eb744d6b976b2e0b004afe99ff8c3933a35fbe579a6ec8e35bcdc`  
		Last Modified: Tue, 27 Oct 2026 00:32:53 GMT  
		Size: 16.5 KB (16484 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-ros-core`

```console
$ docker pull ros@sha256:def377f78b58f925e26a2f1f082708d5efed8a602ed43f66449c73618df349a9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-core` - linux; amd64

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

### `ros:humble-ros-core` - unknown; unknown

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

### `ros:humble-ros-core` - linux; arm64 variant v8

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

### `ros:humble-ros-core` - unknown; unknown

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

## `ros:jazzy`

```console
$ docker pull ros@sha256:8eed0a4669bbf43ee331878a4c39bd8ebddea8e3312a58b4fae8edb14526b617
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy` - linux; amd64

```console
$ docker pull ros@sha256:c26c86a28e1addf9d10a81232869791974a3f7907943d5634742b58b2f26e1a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.6 MB (296615261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e1ba97a2cda53301c6ba7e831e2c8506e54631f911c0bd26cfbc976479810c7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:36:39 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:36:48 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:36:53 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:36 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:37:36 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:37:36 GMT
ENV ROS_DISTRO=jazzy
# Mon, 26 Oct 2026 23:37:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:37 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:37:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:37:37 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:12 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:13 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a563a553564b1510eb1da413f4d5e92e5888c6a87f822ebbe809730cfb5104b6`  
		Last Modified: Mon, 26 Oct 2026 23:38:03 GMT  
		Size: 683.3 KB (683291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41da08f865bd6994f53683fec73c2f83622ae930868f433b48c23595ac48435e`  
		Last Modified: Mon, 26 Oct 2026 23:38:03 GMT  
		Size: 6.7 MB (6713059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3904cb8c14be5b5faaa29157fb51f8eab2fcbbac541b44f7f9f19b3ae78dd59b`  
		Last Modified: Mon, 26 Oct 2026 23:38:03 GMT  
		Size: 94.8 KB (94781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5f32aba4b6ff83fae2cd6006208b1a6d6d426a934bb0a14e107399934595e2c`  
		Last Modified: Mon, 26 Oct 2026 23:38:07 GMT  
		Size: 120.6 MB (120610063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cd06318cfa34d4e91cbbae490b31fb7b9517721281080dfd543af1ef53d32b2`  
		Last Modified: Mon, 26 Oct 2026 23:38:00 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dddf0f1685e37b326205d18350d31a1dbcf826e76ac450b0dc1828df685e597`  
		Last Modified: Tue, 27 Oct 2026 00:33:12 GMT  
		Size: 110.2 MB (110241195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe5ade736b6af1d1d760385e99491e533fae908de1059c7d86a952a665d2a9de`  
		Last Modified: Tue, 27 Oct 2026 00:33:08 GMT  
		Size: 408.5 KB (408548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2714f8b0c76eb24ade83cbc3e262948f211ed31c17d7a92419caaed2ba0a9926`  
		Last Modified: Tue, 27 Oct 2026 00:33:08 GMT  
		Size: 2.7 KB (2656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07b45dc2ee4fbd007fbef4cc8d5ffa2e1bbf411e13c1734616729811d8b4ea36`  
		Last Modified: Tue, 27 Oct 2026 00:33:10 GMT  
		Size: 28.1 MB (28093859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy` - unknown; unknown

```console
$ docker pull ros@sha256:1b5883ec912cb14021e3f0afb7cc4edc317da94995f43f3a58299e46a15a9d4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24937644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c58c24068c83070d9ae65d636167ad7014c99a9ca4ae2d13070cf2fe6625cb6`

```dockerfile
```

-	Layers:
	-	`sha256:5b16ea29e70bb63f4a1e950b7b92f21100b660f4e15ffd2c262646e026ac0026`  
		Last Modified: Tue, 27 Oct 2026 00:33:10 GMT  
		Size: 24.9 MB (24921316 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:823cde52152f2bcdfe4ea57368fd2c75e53e83e7e2c0979d732150fb50129453`  
		Last Modified: Tue, 27 Oct 2026 00:33:08 GMT  
		Size: 16.3 KB (16328 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:1db94fb5490d0a9c5485e27624c9cf26206c6ff4b26136291628ce8de14f7a6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.2 MB (285199471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c845161c2d72243187254d04b5dadc28b0fe733557d6d6dd43905d921bd7daa`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:41:44 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:41:55 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:01 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:46 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:42:46 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:42:46 GMT
ENV ROS_DISTRO=jazzy
# Mon, 26 Oct 2026 23:42:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:46 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:42:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:42:46 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:04 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:06 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77d5f74d0cbeb989159f47acf2e766f1417c3368fa9989500ffaacfafe3bff09`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 683.3 KB (683336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecf67b2933754455c165f3915aac25fb347452d7361e06b8f6981553076e666d`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 6.7 MB (6728488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:888ae0bb56aefa2ab99b414eefd44a035a3b216a159919afedfb0e588021ae29`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 94.8 KB (94791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cb4b969290c0571655510011fdc8193cebbd7bce0114c307a1489d31d5d5fe6`  
		Last Modified: Mon, 26 Oct 2026 23:43:18 GMT  
		Size: 115.5 MB (115462541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c19fc8240be993507be49739ed40621dfd4f89f4033dd6ca966babaea7ee37ca`  
		Last Modified: Mon, 26 Oct 2026 23:43:16 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80059d0c09ca36b7d774f9f3b2677a83174724206fe195952baca5ac13d9c8e8`  
		Last Modified: Tue, 27 Oct 2026 00:33:04 GMT  
		Size: 105.7 MB (105681338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f01a354372edeabd4605bb5b1cccbc55a840ad82732376c7200c173f8ded73c5`  
		Last Modified: Tue, 27 Oct 2026 00:33:00 GMT  
		Size: 408.6 KB (408558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41bc679c55c30c4a73c8276d552b96b460d3cc0c969267434cdb1ac42be48aac`  
		Last Modified: Tue, 27 Oct 2026 00:33:00 GMT  
		Size: 2.6 KB (2645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:533e19775e447b82811ad8f793d88f2f427d3de2ca806780ea83fc0246214c61`  
		Last Modified: Tue, 27 Oct 2026 00:33:02 GMT  
		Size: 27.2 MB (27197451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy` - unknown; unknown

```console
$ docker pull ros@sha256:142c6c83ce3b483aaf519e915746233e78a1309b77e55eeb23fe5907a046bfb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 MB (24960037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a9be0d9fd1ee1b0a13fa09df4a2e820a5a6389631afc7dba39505fbe07fdc16`

```dockerfile
```

-	Layers:
	-	`sha256:79d51b4e40454b8fe924fbad53e37c7f37d20ba823010545aaff42870a9e2fe8`  
		Last Modified: Tue, 27 Oct 2026 00:33:01 GMT  
		Size: 24.9 MB (24943571 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2584f3b3c6f7a7e1df2599cce565f5028b296e98f05d0296f554488798c37c2c`  
		Last Modified: Tue, 27 Oct 2026 00:33:00 GMT  
		Size: 16.5 KB (16466 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-perception`

```console
$ docker pull ros@sha256:7760ad68d95624ac082ad0ec75c6163059286bb016ff64ea18555f1880b4d08b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-perception` - linux; amd64

```console
$ docker pull ros@sha256:a1a441c35495bc71d8850df188308b17d4e7b5463886f0466e2619c1ff87c033
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1081588484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:980ad3bcebf08d2302bf518f135844c7288169d77fe0fe9a91dc5feddd46c217`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:36:39 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:36:48 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:36:53 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:36 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:37:36 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:37:36 GMT
ENV ROS_DISTRO=jazzy
# Mon, 26 Oct 2026 23:37:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:37 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:37:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:37:37 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:12 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:13 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 01:21:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a563a553564b1510eb1da413f4d5e92e5888c6a87f822ebbe809730cfb5104b6`  
		Last Modified: Mon, 26 Oct 2026 23:38:03 GMT  
		Size: 683.3 KB (683291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41da08f865bd6994f53683fec73c2f83622ae930868f433b48c23595ac48435e`  
		Last Modified: Mon, 26 Oct 2026 23:38:03 GMT  
		Size: 6.7 MB (6713059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3904cb8c14be5b5faaa29157fb51f8eab2fcbbac541b44f7f9f19b3ae78dd59b`  
		Last Modified: Mon, 26 Oct 2026 23:38:03 GMT  
		Size: 94.8 KB (94781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5f32aba4b6ff83fae2cd6006208b1a6d6d426a934bb0a14e107399934595e2c`  
		Last Modified: Mon, 26 Oct 2026 23:38:07 GMT  
		Size: 120.6 MB (120610063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cd06318cfa34d4e91cbbae490b31fb7b9517721281080dfd543af1ef53d32b2`  
		Last Modified: Mon, 26 Oct 2026 23:38:00 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dddf0f1685e37b326205d18350d31a1dbcf826e76ac450b0dc1828df685e597`  
		Last Modified: Tue, 27 Oct 2026 00:33:12 GMT  
		Size: 110.2 MB (110241195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe5ade736b6af1d1d760385e99491e533fae908de1059c7d86a952a665d2a9de`  
		Last Modified: Tue, 27 Oct 2026 00:33:08 GMT  
		Size: 408.5 KB (408548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2714f8b0c76eb24ade83cbc3e262948f211ed31c17d7a92419caaed2ba0a9926`  
		Last Modified: Tue, 27 Oct 2026 00:33:08 GMT  
		Size: 2.7 KB (2656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07b45dc2ee4fbd007fbef4cc8d5ffa2e1bbf411e13c1734616729811d8b4ea36`  
		Last Modified: Tue, 27 Oct 2026 00:33:10 GMT  
		Size: 28.1 MB (28093859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c68b00d52c35d7052ef32a20952ec1b79c5f4d44dfb3f39e137508383ce86b54`  
		Last Modified: Tue, 27 Oct 2026 01:24:01 GMT  
		Size: 785.0 MB (784973223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception` - unknown; unknown

```console
$ docker pull ros@sha256:1a2551307a0caf6eff3cff6acfed7ae6ad17ec23d70800998d4f5f3b8cf0ef7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61113933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4c67a5392911dd9ef92036e4c67dba347fffc24aa7ca3f0ba38f896e0207f89`

```dockerfile
```

-	Layers:
	-	`sha256:621c34aa8684c0333560b3d005dc4392b0576e93ce078e9a2b4be72739b90b10`  
		Last Modified: Tue, 27 Oct 2026 01:23:48 GMT  
		Size: 61.1 MB (61104594 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a16863f22663b301cf2c1e24e1cedf0aa2c77152275d5e1fcf4de2b16e5b83f5`  
		Last Modified: Tue, 27 Oct 2026 01:23:45 GMT  
		Size: 9.3 KB (9339 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:cd85b73703e5a303c76bd544d5350b58fe8cdaee6ce768024757370a6675ce95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **984.3 MB (984304151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e8af2c60e31f718a94d02de23991be80988b6bd0516bee5ac940439ce6c35e2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:41:44 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:41:55 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:01 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:46 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:42:46 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:42:46 GMT
ENV ROS_DISTRO=jazzy
# Mon, 26 Oct 2026 23:42:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:46 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:42:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:42:46 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:04 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:06 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 01:19:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77d5f74d0cbeb989159f47acf2e766f1417c3368fa9989500ffaacfafe3bff09`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 683.3 KB (683336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecf67b2933754455c165f3915aac25fb347452d7361e06b8f6981553076e666d`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 6.7 MB (6728488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:888ae0bb56aefa2ab99b414eefd44a035a3b216a159919afedfb0e588021ae29`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 94.8 KB (94791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cb4b969290c0571655510011fdc8193cebbd7bce0114c307a1489d31d5d5fe6`  
		Last Modified: Mon, 26 Oct 2026 23:43:18 GMT  
		Size: 115.5 MB (115462541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c19fc8240be993507be49739ed40621dfd4f89f4033dd6ca966babaea7ee37ca`  
		Last Modified: Mon, 26 Oct 2026 23:43:16 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80059d0c09ca36b7d774f9f3b2677a83174724206fe195952baca5ac13d9c8e8`  
		Last Modified: Tue, 27 Oct 2026 00:33:04 GMT  
		Size: 105.7 MB (105681338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f01a354372edeabd4605bb5b1cccbc55a840ad82732376c7200c173f8ded73c5`  
		Last Modified: Tue, 27 Oct 2026 00:33:00 GMT  
		Size: 408.6 KB (408558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41bc679c55c30c4a73c8276d552b96b460d3cc0c969267434cdb1ac42be48aac`  
		Last Modified: Tue, 27 Oct 2026 00:33:00 GMT  
		Size: 2.6 KB (2645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:533e19775e447b82811ad8f793d88f2f427d3de2ca806780ea83fc0246214c61`  
		Last Modified: Tue, 27 Oct 2026 00:33:02 GMT  
		Size: 27.2 MB (27197451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8ddb1d1b8bafb216cd3d8bfe52ae2af2b67e0d5db0192aa02f0d5e71ce74e2b`  
		Last Modified: Tue, 27 Oct 2026 01:22:21 GMT  
		Size: 699.1 MB (699104680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception` - unknown; unknown

```console
$ docker pull ros@sha256:63ee075c7a430369b8876da4c5b9789e009154b9fc0579dec957ddfad9c2cef4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61044532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d091d0e09609f53e46c33c5df6dd0fed66c225000a247547e78e9c3262d09aca`

```dockerfile
```

-	Layers:
	-	`sha256:58392efefb939e30a46541c510772752b5eb345e71675de969ad16bf6ff60a3c`  
		Last Modified: Tue, 27 Oct 2026 01:22:09 GMT  
		Size: 61.0 MB (61035113 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d089dc5f7f97634edc64e74e9bc574bcab6538cb2a90914a118fa00dc6a9d367`  
		Last Modified: Tue, 27 Oct 2026 01:22:07 GMT  
		Size: 9.4 KB (9419 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-perception-noble`

```console
$ docker pull ros@sha256:7760ad68d95624ac082ad0ec75c6163059286bb016ff64ea18555f1880b4d08b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-perception-noble` - linux; amd64

```console
$ docker pull ros@sha256:a1a441c35495bc71d8850df188308b17d4e7b5463886f0466e2619c1ff87c033
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1081588484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:980ad3bcebf08d2302bf518f135844c7288169d77fe0fe9a91dc5feddd46c217`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:36:39 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:36:48 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:36:53 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:36 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:37:36 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:37:36 GMT
ENV ROS_DISTRO=jazzy
# Mon, 26 Oct 2026 23:37:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:37 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:37:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:37:37 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:12 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:13 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 01:21:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a563a553564b1510eb1da413f4d5e92e5888c6a87f822ebbe809730cfb5104b6`  
		Last Modified: Mon, 26 Oct 2026 23:38:03 GMT  
		Size: 683.3 KB (683291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41da08f865bd6994f53683fec73c2f83622ae930868f433b48c23595ac48435e`  
		Last Modified: Mon, 26 Oct 2026 23:38:03 GMT  
		Size: 6.7 MB (6713059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3904cb8c14be5b5faaa29157fb51f8eab2fcbbac541b44f7f9f19b3ae78dd59b`  
		Last Modified: Mon, 26 Oct 2026 23:38:03 GMT  
		Size: 94.8 KB (94781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5f32aba4b6ff83fae2cd6006208b1a6d6d426a934bb0a14e107399934595e2c`  
		Last Modified: Mon, 26 Oct 2026 23:38:07 GMT  
		Size: 120.6 MB (120610063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cd06318cfa34d4e91cbbae490b31fb7b9517721281080dfd543af1ef53d32b2`  
		Last Modified: Mon, 26 Oct 2026 23:38:00 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dddf0f1685e37b326205d18350d31a1dbcf826e76ac450b0dc1828df685e597`  
		Last Modified: Tue, 27 Oct 2026 00:33:12 GMT  
		Size: 110.2 MB (110241195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe5ade736b6af1d1d760385e99491e533fae908de1059c7d86a952a665d2a9de`  
		Last Modified: Tue, 27 Oct 2026 00:33:08 GMT  
		Size: 408.5 KB (408548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2714f8b0c76eb24ade83cbc3e262948f211ed31c17d7a92419caaed2ba0a9926`  
		Last Modified: Tue, 27 Oct 2026 00:33:08 GMT  
		Size: 2.7 KB (2656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07b45dc2ee4fbd007fbef4cc8d5ffa2e1bbf411e13c1734616729811d8b4ea36`  
		Last Modified: Tue, 27 Oct 2026 00:33:10 GMT  
		Size: 28.1 MB (28093859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c68b00d52c35d7052ef32a20952ec1b79c5f4d44dfb3f39e137508383ce86b54`  
		Last Modified: Tue, 27 Oct 2026 01:24:01 GMT  
		Size: 785.0 MB (784973223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:1a2551307a0caf6eff3cff6acfed7ae6ad17ec23d70800998d4f5f3b8cf0ef7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61113933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4c67a5392911dd9ef92036e4c67dba347fffc24aa7ca3f0ba38f896e0207f89`

```dockerfile
```

-	Layers:
	-	`sha256:621c34aa8684c0333560b3d005dc4392b0576e93ce078e9a2b4be72739b90b10`  
		Last Modified: Tue, 27 Oct 2026 01:23:48 GMT  
		Size: 61.1 MB (61104594 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a16863f22663b301cf2c1e24e1cedf0aa2c77152275d5e1fcf4de2b16e5b83f5`  
		Last Modified: Tue, 27 Oct 2026 01:23:45 GMT  
		Size: 9.3 KB (9339 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-perception-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:cd85b73703e5a303c76bd544d5350b58fe8cdaee6ce768024757370a6675ce95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **984.3 MB (984304151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e8af2c60e31f718a94d02de23991be80988b6bd0516bee5ac940439ce6c35e2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:41:44 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:41:55 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:01 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:46 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:42:46 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:42:46 GMT
ENV ROS_DISTRO=jazzy
# Mon, 26 Oct 2026 23:42:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:46 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:42:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:42:46 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:04 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:06 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 01:19:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77d5f74d0cbeb989159f47acf2e766f1417c3368fa9989500ffaacfafe3bff09`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 683.3 KB (683336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecf67b2933754455c165f3915aac25fb347452d7361e06b8f6981553076e666d`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 6.7 MB (6728488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:888ae0bb56aefa2ab99b414eefd44a035a3b216a159919afedfb0e588021ae29`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 94.8 KB (94791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cb4b969290c0571655510011fdc8193cebbd7bce0114c307a1489d31d5d5fe6`  
		Last Modified: Mon, 26 Oct 2026 23:43:18 GMT  
		Size: 115.5 MB (115462541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c19fc8240be993507be49739ed40621dfd4f89f4033dd6ca966babaea7ee37ca`  
		Last Modified: Mon, 26 Oct 2026 23:43:16 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80059d0c09ca36b7d774f9f3b2677a83174724206fe195952baca5ac13d9c8e8`  
		Last Modified: Tue, 27 Oct 2026 00:33:04 GMT  
		Size: 105.7 MB (105681338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f01a354372edeabd4605bb5b1cccbc55a840ad82732376c7200c173f8ded73c5`  
		Last Modified: Tue, 27 Oct 2026 00:33:00 GMT  
		Size: 408.6 KB (408558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41bc679c55c30c4a73c8276d552b96b460d3cc0c969267434cdb1ac42be48aac`  
		Last Modified: Tue, 27 Oct 2026 00:33:00 GMT  
		Size: 2.6 KB (2645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:533e19775e447b82811ad8f793d88f2f427d3de2ca806780ea83fc0246214c61`  
		Last Modified: Tue, 27 Oct 2026 00:33:02 GMT  
		Size: 27.2 MB (27197451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8ddb1d1b8bafb216cd3d8bfe52ae2af2b67e0d5db0192aa02f0d5e71ce74e2b`  
		Last Modified: Tue, 27 Oct 2026 01:22:21 GMT  
		Size: 699.1 MB (699104680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:63ee075c7a430369b8876da4c5b9789e009154b9fc0579dec957ddfad9c2cef4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61044532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d091d0e09609f53e46c33c5df6dd0fed66c225000a247547e78e9c3262d09aca`

```dockerfile
```

-	Layers:
	-	`sha256:58392efefb939e30a46541c510772752b5eb345e71675de969ad16bf6ff60a3c`  
		Last Modified: Tue, 27 Oct 2026 01:22:09 GMT  
		Size: 61.0 MB (61035113 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d089dc5f7f97634edc64e74e9bc574bcab6538cb2a90914a118fa00dc6a9d367`  
		Last Modified: Tue, 27 Oct 2026 01:22:07 GMT  
		Size: 9.4 KB (9419 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-ros-base`

```console
$ docker pull ros@sha256:8eed0a4669bbf43ee331878a4c39bd8ebddea8e3312a58b4fae8edb14526b617
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:c26c86a28e1addf9d10a81232869791974a3f7907943d5634742b58b2f26e1a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.6 MB (296615261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e1ba97a2cda53301c6ba7e831e2c8506e54631f911c0bd26cfbc976479810c7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:36:39 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:36:48 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:36:53 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:36 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:37:36 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:37:36 GMT
ENV ROS_DISTRO=jazzy
# Mon, 26 Oct 2026 23:37:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:37 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:37:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:37:37 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:12 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:13 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a563a553564b1510eb1da413f4d5e92e5888c6a87f822ebbe809730cfb5104b6`  
		Last Modified: Mon, 26 Oct 2026 23:38:03 GMT  
		Size: 683.3 KB (683291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41da08f865bd6994f53683fec73c2f83622ae930868f433b48c23595ac48435e`  
		Last Modified: Mon, 26 Oct 2026 23:38:03 GMT  
		Size: 6.7 MB (6713059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3904cb8c14be5b5faaa29157fb51f8eab2fcbbac541b44f7f9f19b3ae78dd59b`  
		Last Modified: Mon, 26 Oct 2026 23:38:03 GMT  
		Size: 94.8 KB (94781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5f32aba4b6ff83fae2cd6006208b1a6d6d426a934bb0a14e107399934595e2c`  
		Last Modified: Mon, 26 Oct 2026 23:38:07 GMT  
		Size: 120.6 MB (120610063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cd06318cfa34d4e91cbbae490b31fb7b9517721281080dfd543af1ef53d32b2`  
		Last Modified: Mon, 26 Oct 2026 23:38:00 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dddf0f1685e37b326205d18350d31a1dbcf826e76ac450b0dc1828df685e597`  
		Last Modified: Tue, 27 Oct 2026 00:33:12 GMT  
		Size: 110.2 MB (110241195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe5ade736b6af1d1d760385e99491e533fae908de1059c7d86a952a665d2a9de`  
		Last Modified: Tue, 27 Oct 2026 00:33:08 GMT  
		Size: 408.5 KB (408548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2714f8b0c76eb24ade83cbc3e262948f211ed31c17d7a92419caaed2ba0a9926`  
		Last Modified: Tue, 27 Oct 2026 00:33:08 GMT  
		Size: 2.7 KB (2656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07b45dc2ee4fbd007fbef4cc8d5ffa2e1bbf411e13c1734616729811d8b4ea36`  
		Last Modified: Tue, 27 Oct 2026 00:33:10 GMT  
		Size: 28.1 MB (28093859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:1b5883ec912cb14021e3f0afb7cc4edc317da94995f43f3a58299e46a15a9d4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24937644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c58c24068c83070d9ae65d636167ad7014c99a9ca4ae2d13070cf2fe6625cb6`

```dockerfile
```

-	Layers:
	-	`sha256:5b16ea29e70bb63f4a1e950b7b92f21100b660f4e15ffd2c262646e026ac0026`  
		Last Modified: Tue, 27 Oct 2026 00:33:10 GMT  
		Size: 24.9 MB (24921316 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:823cde52152f2bcdfe4ea57368fd2c75e53e83e7e2c0979d732150fb50129453`  
		Last Modified: Tue, 27 Oct 2026 00:33:08 GMT  
		Size: 16.3 KB (16328 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:1db94fb5490d0a9c5485e27624c9cf26206c6ff4b26136291628ce8de14f7a6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.2 MB (285199471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c845161c2d72243187254d04b5dadc28b0fe733557d6d6dd43905d921bd7daa`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:41:44 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:41:55 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:01 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:46 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:42:46 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:42:46 GMT
ENV ROS_DISTRO=jazzy
# Mon, 26 Oct 2026 23:42:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:46 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:42:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:42:46 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:04 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:06 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77d5f74d0cbeb989159f47acf2e766f1417c3368fa9989500ffaacfafe3bff09`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 683.3 KB (683336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecf67b2933754455c165f3915aac25fb347452d7361e06b8f6981553076e666d`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 6.7 MB (6728488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:888ae0bb56aefa2ab99b414eefd44a035a3b216a159919afedfb0e588021ae29`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 94.8 KB (94791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cb4b969290c0571655510011fdc8193cebbd7bce0114c307a1489d31d5d5fe6`  
		Last Modified: Mon, 26 Oct 2026 23:43:18 GMT  
		Size: 115.5 MB (115462541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c19fc8240be993507be49739ed40621dfd4f89f4033dd6ca966babaea7ee37ca`  
		Last Modified: Mon, 26 Oct 2026 23:43:16 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80059d0c09ca36b7d774f9f3b2677a83174724206fe195952baca5ac13d9c8e8`  
		Last Modified: Tue, 27 Oct 2026 00:33:04 GMT  
		Size: 105.7 MB (105681338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f01a354372edeabd4605bb5b1cccbc55a840ad82732376c7200c173f8ded73c5`  
		Last Modified: Tue, 27 Oct 2026 00:33:00 GMT  
		Size: 408.6 KB (408558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41bc679c55c30c4a73c8276d552b96b460d3cc0c969267434cdb1ac42be48aac`  
		Last Modified: Tue, 27 Oct 2026 00:33:00 GMT  
		Size: 2.6 KB (2645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:533e19775e447b82811ad8f793d88f2f427d3de2ca806780ea83fc0246214c61`  
		Last Modified: Tue, 27 Oct 2026 00:33:02 GMT  
		Size: 27.2 MB (27197451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:142c6c83ce3b483aaf519e915746233e78a1309b77e55eeb23fe5907a046bfb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 MB (24960037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a9be0d9fd1ee1b0a13fa09df4a2e820a5a6389631afc7dba39505fbe07fdc16`

```dockerfile
```

-	Layers:
	-	`sha256:79d51b4e40454b8fe924fbad53e37c7f37d20ba823010545aaff42870a9e2fe8`  
		Last Modified: Tue, 27 Oct 2026 00:33:01 GMT  
		Size: 24.9 MB (24943571 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2584f3b3c6f7a7e1df2599cce565f5028b296e98f05d0296f554488798c37c2c`  
		Last Modified: Tue, 27 Oct 2026 00:33:00 GMT  
		Size: 16.5 KB (16466 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-ros-base-noble`

```console
$ docker pull ros@sha256:8eed0a4669bbf43ee331878a4c39bd8ebddea8e3312a58b4fae8edb14526b617
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-base-noble` - linux; amd64

```console
$ docker pull ros@sha256:c26c86a28e1addf9d10a81232869791974a3f7907943d5634742b58b2f26e1a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.6 MB (296615261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e1ba97a2cda53301c6ba7e831e2c8506e54631f911c0bd26cfbc976479810c7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:36:39 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:36:48 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:36:53 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:36 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:37:36 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:37:36 GMT
ENV ROS_DISTRO=jazzy
# Mon, 26 Oct 2026 23:37:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:37 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:37:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:37:37 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:12 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:13 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a563a553564b1510eb1da413f4d5e92e5888c6a87f822ebbe809730cfb5104b6`  
		Last Modified: Mon, 26 Oct 2026 23:38:03 GMT  
		Size: 683.3 KB (683291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41da08f865bd6994f53683fec73c2f83622ae930868f433b48c23595ac48435e`  
		Last Modified: Mon, 26 Oct 2026 23:38:03 GMT  
		Size: 6.7 MB (6713059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3904cb8c14be5b5faaa29157fb51f8eab2fcbbac541b44f7f9f19b3ae78dd59b`  
		Last Modified: Mon, 26 Oct 2026 23:38:03 GMT  
		Size: 94.8 KB (94781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5f32aba4b6ff83fae2cd6006208b1a6d6d426a934bb0a14e107399934595e2c`  
		Last Modified: Mon, 26 Oct 2026 23:38:07 GMT  
		Size: 120.6 MB (120610063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cd06318cfa34d4e91cbbae490b31fb7b9517721281080dfd543af1ef53d32b2`  
		Last Modified: Mon, 26 Oct 2026 23:38:00 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dddf0f1685e37b326205d18350d31a1dbcf826e76ac450b0dc1828df685e597`  
		Last Modified: Tue, 27 Oct 2026 00:33:12 GMT  
		Size: 110.2 MB (110241195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe5ade736b6af1d1d760385e99491e533fae908de1059c7d86a952a665d2a9de`  
		Last Modified: Tue, 27 Oct 2026 00:33:08 GMT  
		Size: 408.5 KB (408548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2714f8b0c76eb24ade83cbc3e262948f211ed31c17d7a92419caaed2ba0a9926`  
		Last Modified: Tue, 27 Oct 2026 00:33:08 GMT  
		Size: 2.7 KB (2656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07b45dc2ee4fbd007fbef4cc8d5ffa2e1bbf411e13c1734616729811d8b4ea36`  
		Last Modified: Tue, 27 Oct 2026 00:33:10 GMT  
		Size: 28.1 MB (28093859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:1b5883ec912cb14021e3f0afb7cc4edc317da94995f43f3a58299e46a15a9d4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24937644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c58c24068c83070d9ae65d636167ad7014c99a9ca4ae2d13070cf2fe6625cb6`

```dockerfile
```

-	Layers:
	-	`sha256:5b16ea29e70bb63f4a1e950b7b92f21100b660f4e15ffd2c262646e026ac0026`  
		Last Modified: Tue, 27 Oct 2026 00:33:10 GMT  
		Size: 24.9 MB (24921316 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:823cde52152f2bcdfe4ea57368fd2c75e53e83e7e2c0979d732150fb50129453`  
		Last Modified: Tue, 27 Oct 2026 00:33:08 GMT  
		Size: 16.3 KB (16328 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-base-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:1db94fb5490d0a9c5485e27624c9cf26206c6ff4b26136291628ce8de14f7a6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.2 MB (285199471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c845161c2d72243187254d04b5dadc28b0fe733557d6d6dd43905d921bd7daa`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:41:44 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:41:55 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:01 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:46 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:42:46 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:42:46 GMT
ENV ROS_DISTRO=jazzy
# Mon, 26 Oct 2026 23:42:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:46 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:42:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:42:46 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:04 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:06 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77d5f74d0cbeb989159f47acf2e766f1417c3368fa9989500ffaacfafe3bff09`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 683.3 KB (683336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecf67b2933754455c165f3915aac25fb347452d7361e06b8f6981553076e666d`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 6.7 MB (6728488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:888ae0bb56aefa2ab99b414eefd44a035a3b216a159919afedfb0e588021ae29`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 94.8 KB (94791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cb4b969290c0571655510011fdc8193cebbd7bce0114c307a1489d31d5d5fe6`  
		Last Modified: Mon, 26 Oct 2026 23:43:18 GMT  
		Size: 115.5 MB (115462541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c19fc8240be993507be49739ed40621dfd4f89f4033dd6ca966babaea7ee37ca`  
		Last Modified: Mon, 26 Oct 2026 23:43:16 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80059d0c09ca36b7d774f9f3b2677a83174724206fe195952baca5ac13d9c8e8`  
		Last Modified: Tue, 27 Oct 2026 00:33:04 GMT  
		Size: 105.7 MB (105681338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f01a354372edeabd4605bb5b1cccbc55a840ad82732376c7200c173f8ded73c5`  
		Last Modified: Tue, 27 Oct 2026 00:33:00 GMT  
		Size: 408.6 KB (408558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41bc679c55c30c4a73c8276d552b96b460d3cc0c969267434cdb1ac42be48aac`  
		Last Modified: Tue, 27 Oct 2026 00:33:00 GMT  
		Size: 2.6 KB (2645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:533e19775e447b82811ad8f793d88f2f427d3de2ca806780ea83fc0246214c61`  
		Last Modified: Tue, 27 Oct 2026 00:33:02 GMT  
		Size: 27.2 MB (27197451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:142c6c83ce3b483aaf519e915746233e78a1309b77e55eeb23fe5907a046bfb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 MB (24960037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a9be0d9fd1ee1b0a13fa09df4a2e820a5a6389631afc7dba39505fbe07fdc16`

```dockerfile
```

-	Layers:
	-	`sha256:79d51b4e40454b8fe924fbad53e37c7f37d20ba823010545aaff42870a9e2fe8`  
		Last Modified: Tue, 27 Oct 2026 00:33:01 GMT  
		Size: 24.9 MB (24943571 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2584f3b3c6f7a7e1df2599cce565f5028b296e98f05d0296f554488798c37c2c`  
		Last Modified: Tue, 27 Oct 2026 00:33:00 GMT  
		Size: 16.5 KB (16466 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-ros-core`

```console
$ docker pull ros@sha256:e4b2124bfa4d2021d50f094391d369349189bf090e25d904ff013ec5093ac565
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:16199f356ab7dbde1e06d9898e4f07bfed7e01294284d1dea7c878c1e5d40eb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.9 MB (157869003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6ef28d8193c4912c413ebacd946819db27a77114140915e860bb8e06ec6d19a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:36:39 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:36:48 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:36:53 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:36 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:37:36 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:37:36 GMT
ENV ROS_DISTRO=jazzy
# Mon, 26 Oct 2026 23:37:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:37 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:37:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:37:37 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a563a553564b1510eb1da413f4d5e92e5888c6a87f822ebbe809730cfb5104b6`  
		Last Modified: Mon, 26 Oct 2026 23:38:03 GMT  
		Size: 683.3 KB (683291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41da08f865bd6994f53683fec73c2f83622ae930868f433b48c23595ac48435e`  
		Last Modified: Mon, 26 Oct 2026 23:38:03 GMT  
		Size: 6.7 MB (6713059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3904cb8c14be5b5faaa29157fb51f8eab2fcbbac541b44f7f9f19b3ae78dd59b`  
		Last Modified: Mon, 26 Oct 2026 23:38:03 GMT  
		Size: 94.8 KB (94781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5f32aba4b6ff83fae2cd6006208b1a6d6d426a934bb0a14e107399934595e2c`  
		Last Modified: Mon, 26 Oct 2026 23:38:07 GMT  
		Size: 120.6 MB (120610063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cd06318cfa34d4e91cbbae490b31fb7b9517721281080dfd543af1ef53d32b2`  
		Last Modified: Mon, 26 Oct 2026 23:38:00 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:423af58ea76571c50333d2973748b0c01ac50e7529493cce9a1c97380f288734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18622149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6a78837b82a41947dde55c8684c89cbe5de1816f852ed70a20b9cd359dddaea`

```dockerfile
```

-	Layers:
	-	`sha256:7db99588a597f1ce7aedef22d093969b0cae453da46fc907cf33ad6af86a1488`  
		Last Modified: Mon, 26 Oct 2026 23:38:04 GMT  
		Size: 18.6 MB (18607541 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f11e896bae501f91d561a7460bdab54f3c2456199893e1d4a6fed5dfe7c4480d`  
		Last Modified: Mon, 26 Oct 2026 23:38:03 GMT  
		Size: 14.6 KB (14608 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:8bd60d9590fc2f17281b9f8812cd9a6f54b8f82e3d19fb91469e1e9239d77dd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.9 MB (151909479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6e85b79834c6d87951a4583dd9507d01f71dc78c51f4674b2ae0eeb366024e7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:41:44 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:41:55 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:01 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:46 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:42:46 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:42:46 GMT
ENV ROS_DISTRO=jazzy
# Mon, 26 Oct 2026 23:42:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:46 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:42:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:42:46 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77d5f74d0cbeb989159f47acf2e766f1417c3368fa9989500ffaacfafe3bff09`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 683.3 KB (683336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecf67b2933754455c165f3915aac25fb347452d7361e06b8f6981553076e666d`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 6.7 MB (6728488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:888ae0bb56aefa2ab99b414eefd44a035a3b216a159919afedfb0e588021ae29`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 94.8 KB (94791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cb4b969290c0571655510011fdc8193cebbd7bce0114c307a1489d31d5d5fe6`  
		Last Modified: Mon, 26 Oct 2026 23:43:18 GMT  
		Size: 115.5 MB (115462541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c19fc8240be993507be49739ed40621dfd4f89f4033dd6ca966babaea7ee37ca`  
		Last Modified: Mon, 26 Oct 2026 23:43:16 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:5abb31d31094a540c4e9cc6c017708f42ebf1be287cb75b3c2754c8ff0ecb89e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18596280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e9ca137c15241033604a1e28bd5eee7ec7089e384f5033a1b69b89b22b6b452`

```dockerfile
```

-	Layers:
	-	`sha256:e47419f3cf7015ee1f3706fc85b554be2fc110fcfe3a3f5b9858fa93a2c1e21c`  
		Last Modified: Mon, 26 Oct 2026 23:43:16 GMT  
		Size: 18.6 MB (18581547 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f8ca88467052d4c4abb2d793fdb82d8407ed9e2c1cc68225cdf7174b28b38d6`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 14.7 KB (14733 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-ros-core-noble`

```console
$ docker pull ros@sha256:e4b2124bfa4d2021d50f094391d369349189bf090e25d904ff013ec5093ac565
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-core-noble` - linux; amd64

```console
$ docker pull ros@sha256:16199f356ab7dbde1e06d9898e4f07bfed7e01294284d1dea7c878c1e5d40eb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.9 MB (157869003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6ef28d8193c4912c413ebacd946819db27a77114140915e860bb8e06ec6d19a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:36:39 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:36:48 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:36:53 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:36 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:37:36 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:37:36 GMT
ENV ROS_DISTRO=jazzy
# Mon, 26 Oct 2026 23:37:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:37 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:37:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:37:37 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a563a553564b1510eb1da413f4d5e92e5888c6a87f822ebbe809730cfb5104b6`  
		Last Modified: Mon, 26 Oct 2026 23:38:03 GMT  
		Size: 683.3 KB (683291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41da08f865bd6994f53683fec73c2f83622ae930868f433b48c23595ac48435e`  
		Last Modified: Mon, 26 Oct 2026 23:38:03 GMT  
		Size: 6.7 MB (6713059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3904cb8c14be5b5faaa29157fb51f8eab2fcbbac541b44f7f9f19b3ae78dd59b`  
		Last Modified: Mon, 26 Oct 2026 23:38:03 GMT  
		Size: 94.8 KB (94781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5f32aba4b6ff83fae2cd6006208b1a6d6d426a934bb0a14e107399934595e2c`  
		Last Modified: Mon, 26 Oct 2026 23:38:07 GMT  
		Size: 120.6 MB (120610063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cd06318cfa34d4e91cbbae490b31fb7b9517721281080dfd543af1ef53d32b2`  
		Last Modified: Mon, 26 Oct 2026 23:38:00 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:423af58ea76571c50333d2973748b0c01ac50e7529493cce9a1c97380f288734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18622149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6a78837b82a41947dde55c8684c89cbe5de1816f852ed70a20b9cd359dddaea`

```dockerfile
```

-	Layers:
	-	`sha256:7db99588a597f1ce7aedef22d093969b0cae453da46fc907cf33ad6af86a1488`  
		Last Modified: Mon, 26 Oct 2026 23:38:04 GMT  
		Size: 18.6 MB (18607541 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f11e896bae501f91d561a7460bdab54f3c2456199893e1d4a6fed5dfe7c4480d`  
		Last Modified: Mon, 26 Oct 2026 23:38:03 GMT  
		Size: 14.6 KB (14608 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-core-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:8bd60d9590fc2f17281b9f8812cd9a6f54b8f82e3d19fb91469e1e9239d77dd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.9 MB (151909479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6e85b79834c6d87951a4583dd9507d01f71dc78c51f4674b2ae0eeb366024e7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:41:44 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:41:55 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:01 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:46 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:42:46 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:42:46 GMT
ENV ROS_DISTRO=jazzy
# Mon, 26 Oct 2026 23:42:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:46 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:42:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:42:46 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77d5f74d0cbeb989159f47acf2e766f1417c3368fa9989500ffaacfafe3bff09`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 683.3 KB (683336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecf67b2933754455c165f3915aac25fb347452d7361e06b8f6981553076e666d`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 6.7 MB (6728488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:888ae0bb56aefa2ab99b414eefd44a035a3b216a159919afedfb0e588021ae29`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 94.8 KB (94791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cb4b969290c0571655510011fdc8193cebbd7bce0114c307a1489d31d5d5fe6`  
		Last Modified: Mon, 26 Oct 2026 23:43:18 GMT  
		Size: 115.5 MB (115462541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c19fc8240be993507be49739ed40621dfd4f89f4033dd6ca966babaea7ee37ca`  
		Last Modified: Mon, 26 Oct 2026 23:43:16 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:5abb31d31094a540c4e9cc6c017708f42ebf1be287cb75b3c2754c8ff0ecb89e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18596280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e9ca137c15241033604a1e28bd5eee7ec7089e384f5033a1b69b89b22b6b452`

```dockerfile
```

-	Layers:
	-	`sha256:e47419f3cf7015ee1f3706fc85b554be2fc110fcfe3a3f5b9858fa93a2c1e21c`  
		Last Modified: Mon, 26 Oct 2026 23:43:16 GMT  
		Size: 18.6 MB (18581547 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f8ca88467052d4c4abb2d793fdb82d8407ed9e2c1cc68225cdf7174b28b38d6`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 14.7 KB (14733 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted`

```console
$ docker pull ros@sha256:ead7117130ebf582faf4b75eaf8128d598df9de705d53ee40bffe020a04ac0a6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted` - linux; amd64

```console
$ docker pull ros@sha256:eaa91e036ab9ac65f591d9c59ed2ee792c579555246d7ee41765db92dcb133c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.1 MB (297063620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef3e08407fd29c136e5df8dffcae76adf0970b8c8c4d9744ecb46a6396163bf6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:36:56 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:06 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:11 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:57 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:37:57 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:37:57 GMT
ENV ROS_DISTRO=kilted
# Mon, 26 Oct 2026 23:37:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:57 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:37:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:37:57 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:25 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:26 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6dc83cfb54c100abefe0c5789c9596dd735fb6060b478c3278783aeaf09f70`  
		Last Modified: Mon, 26 Oct 2026 23:38:24 GMT  
		Size: 683.3 KB (683286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:484f700f32ef995c460ab129f09891f4ddfb743874c91194da67f67b5fcf93b0`  
		Last Modified: Mon, 26 Oct 2026 23:38:24 GMT  
		Size: 6.7 MB (6713060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e061d3532c880b6e507c66169b2eec7e7ee08595efd66710447bb606a5fc8587`  
		Last Modified: Mon, 26 Oct 2026 23:38:24 GMT  
		Size: 94.8 KB (94779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f7ed945075418a4426d3520ac44b679147116e608399b6482235a742f223fbe`  
		Last Modified: Mon, 26 Oct 2026 23:38:27 GMT  
		Size: 121.3 MB (121282392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc2c98b6e4e76afde314b4a1bc4751e0a9d406e5caf149acdc0c835164c8107b`  
		Last Modified: Mon, 26 Oct 2026 23:38:25 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c4476a4c64a0f1c1d6abc81390584d3d6c247024aaffba8abcd92fed66f6f46`  
		Last Modified: Tue, 27 Oct 2026 00:33:23 GMT  
		Size: 110.2 MB (110243705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80198ea7ac609bf3193290363fd38990ec51568626d7d449854606f09e28b44c`  
		Last Modified: Tue, 27 Oct 2026 00:33:19 GMT  
		Size: 356.7 KB (356749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764782835e18f6f0bef0195b6f25d833b4cc386c2e7fb56e08a68fb2095685db`  
		Last Modified: Tue, 27 Oct 2026 00:33:19 GMT  
		Size: 2.7 KB (2668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:991297366c9de3a3788174b417a297a89fbc701088899f26b1d7767e6444f584`  
		Last Modified: Tue, 27 Oct 2026 00:33:21 GMT  
		Size: 27.9 MB (27919173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted` - unknown; unknown

```console
$ docker pull ros@sha256:9ea4f294ac450f081ffc63704e7dc409c9ed867c320e014766576edb90abd2c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24891871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2c5ae16a1668162442b7c4b4af8ebe0dadb5cfd5ce4b034ea1627e35ae1bb06`

```dockerfile
```

-	Layers:
	-	`sha256:0bf06ac3ca096897be8de5bbf9108d133f956e79c12924994aa9e3ee511278ad`  
		Last Modified: Tue, 27 Oct 2026 00:33:21 GMT  
		Size: 24.9 MB (24875524 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd2df90cf4d30b03c60e45450edbcab71c20f94f2e9cd933138e4a256bd5ee61`  
		Last Modified: Tue, 27 Oct 2026 00:33:19 GMT  
		Size: 16.3 KB (16347 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ea44927d6f747bec1dbc3dad4ae7a1fe7a7e6f11b79e144220885691bced99f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.6 MB (285608025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3069486ad2e9ed4f336b593c1568cd2fb881bc0dec1cffb48b25319d4717a204`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:41:44 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:41:56 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:04 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:47 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:42:47 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:42:47 GMT
ENV ROS_DISTRO=kilted
# Mon, 26 Oct 2026 23:42:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:47 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:42:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:42:47 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:10 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:12 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7570ccd68d909595ef92f220097d912ad01d622534fd1553f91849e874b2d32`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 683.3 KB (683339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28c2268257e3a997d95076d921c2fd6e74693709412a133f1160c4192c09aa82`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 6.7 MB (6728544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80492cfaa373ae7f08e6653a0cd8d6b94437d5c5a166334e2b1809778e2d5f0e`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 94.8 KB (94791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aad910f55a0ac69c6d6b4818c1ffa257dc9b05971620fb7a642d1f8da572158c`  
		Last Modified: Mon, 26 Oct 2026 23:43:18 GMT  
		Size: 116.1 MB (116086429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2327ed85048e49e3eee3efa95d5fe25c8e2f1447d34de8d92a62fc70f0400f87`  
		Last Modified: Mon, 26 Oct 2026 23:43:16 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:894fffd64402f351c47ddc303da8f675d7f45e012830f4ba82dce785ca467d8b`  
		Last Modified: Tue, 27 Oct 2026 00:33:09 GMT  
		Size: 105.7 MB (105684772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d512f1b36f32be80d750f62345b6d8b45918fd1fea66be87cf5cac268d50359`  
		Last Modified: Tue, 27 Oct 2026 00:33:06 GMT  
		Size: 356.8 KB (356750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:907dd0999e0d0d0a15d4e8b46e8c7c4bf70441d7d35ac93ad10c545051ab37e5`  
		Last Modified: Tue, 27 Oct 2026 00:33:06 GMT  
		Size: 2.7 KB (2655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:771d890e56a5560ee6ab256a68955083c1743d24fa1b4704e70db430d02c8fc1`  
		Last Modified: Tue, 27 Oct 2026 00:33:07 GMT  
		Size: 27.0 MB (27030421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted` - unknown; unknown

```console
$ docker pull ros@sha256:fa8bf7a258dee2f641bb1d7fa88d72df2851461de8528c4469be8ff5025fc438
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24914267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0e59682e9f9fb53f32d1deeeef28e59145c5aa7ca85a178e3c972eb81d22933`

```dockerfile
```

-	Layers:
	-	`sha256:315fbd5f0dd9df2c786852315f09c59aba1d6889a6da8bac3a0d424ee7f92c35`  
		Last Modified: Tue, 27 Oct 2026 00:33:07 GMT  
		Size: 24.9 MB (24897784 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a77f0fab0eac387903e3a98e3666d9c72f5aea530006f04aeefc8640c83960d0`  
		Last Modified: Tue, 27 Oct 2026 00:33:05 GMT  
		Size: 16.5 KB (16483 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-perception`

```console
$ docker pull ros@sha256:7d9a4bea1659158e55f497dba8a0c67e70ce14caf413a8c62d3fa80a1ec7864d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-perception` - linux; amd64

```console
$ docker pull ros@sha256:267172c46351ced727ef371f780a39f8e33b392a10571211effbaa2a3be8759d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1082051645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34931a99abfdfd4266e17622bafb59235f6b831f5529b481da2767629214adaf`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:36:56 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:06 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:11 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:57 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:37:57 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:37:57 GMT
ENV ROS_DISTRO=kilted
# Mon, 26 Oct 2026 23:37:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:57 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:37:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:37:57 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:25 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:26 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 01:21:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6dc83cfb54c100abefe0c5789c9596dd735fb6060b478c3278783aeaf09f70`  
		Last Modified: Mon, 26 Oct 2026 23:38:24 GMT  
		Size: 683.3 KB (683286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:484f700f32ef995c460ab129f09891f4ddfb743874c91194da67f67b5fcf93b0`  
		Last Modified: Mon, 26 Oct 2026 23:38:24 GMT  
		Size: 6.7 MB (6713060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e061d3532c880b6e507c66169b2eec7e7ee08595efd66710447bb606a5fc8587`  
		Last Modified: Mon, 26 Oct 2026 23:38:24 GMT  
		Size: 94.8 KB (94779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f7ed945075418a4426d3520ac44b679147116e608399b6482235a742f223fbe`  
		Last Modified: Mon, 26 Oct 2026 23:38:27 GMT  
		Size: 121.3 MB (121282392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc2c98b6e4e76afde314b4a1bc4751e0a9d406e5caf149acdc0c835164c8107b`  
		Last Modified: Mon, 26 Oct 2026 23:38:25 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c4476a4c64a0f1c1d6abc81390584d3d6c247024aaffba8abcd92fed66f6f46`  
		Last Modified: Tue, 27 Oct 2026 00:33:23 GMT  
		Size: 110.2 MB (110243705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80198ea7ac609bf3193290363fd38990ec51568626d7d449854606f09e28b44c`  
		Last Modified: Tue, 27 Oct 2026 00:33:19 GMT  
		Size: 356.7 KB (356749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764782835e18f6f0bef0195b6f25d833b4cc386c2e7fb56e08a68fb2095685db`  
		Last Modified: Tue, 27 Oct 2026 00:33:19 GMT  
		Size: 2.7 KB (2668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:991297366c9de3a3788174b417a297a89fbc701088899f26b1d7767e6444f584`  
		Last Modified: Tue, 27 Oct 2026 00:33:21 GMT  
		Size: 27.9 MB (27919173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01c6a650e5f70956d3ffd3c3fa1d8ba7d0af04249371a305ada5d1562a06685d`  
		Last Modified: Tue, 27 Oct 2026 01:24:40 GMT  
		Size: 785.0 MB (784988025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception` - unknown; unknown

```console
$ docker pull ros@sha256:de8d6190708aac61123944c1e290609c1326851521345fcc4f985f9b1e161f0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61072798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b64a98039062f3308f71e854681842447f411b5ec661720038acab3bc8f5c360`

```dockerfile
```

-	Layers:
	-	`sha256:a8d129ace6bf464140c59aa4c95796f61eb379961e71352d1dd0ebda1641fe45`  
		Last Modified: Tue, 27 Oct 2026 01:24:28 GMT  
		Size: 61.1 MB (61063446 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4627a558c9ca7a8da07b0d22c5f138a0157d755c90cc0dc7f27c2ab3ad8c197`  
		Last Modified: Tue, 27 Oct 2026 01:24:25 GMT  
		Size: 9.4 KB (9352 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:4899ddc8b6bccf7bf9a3aa449ead1af20b245931b4d4995c4ff4e0f48d567078
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **984.7 MB (984732583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e793aaece88dd90f63923b136c4e229d32297e9442ff3f18e834387eb26955a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:41:44 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:41:56 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:04 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:47 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:42:47 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:42:47 GMT
ENV ROS_DISTRO=kilted
# Mon, 26 Oct 2026 23:42:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:47 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:42:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:42:47 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:10 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:12 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 01:19:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7570ccd68d909595ef92f220097d912ad01d622534fd1553f91849e874b2d32`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 683.3 KB (683339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28c2268257e3a997d95076d921c2fd6e74693709412a133f1160c4192c09aa82`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 6.7 MB (6728544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80492cfaa373ae7f08e6653a0cd8d6b94437d5c5a166334e2b1809778e2d5f0e`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 94.8 KB (94791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aad910f55a0ac69c6d6b4818c1ffa257dc9b05971620fb7a642d1f8da572158c`  
		Last Modified: Mon, 26 Oct 2026 23:43:18 GMT  
		Size: 116.1 MB (116086429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2327ed85048e49e3eee3efa95d5fe25c8e2f1447d34de8d92a62fc70f0400f87`  
		Last Modified: Mon, 26 Oct 2026 23:43:16 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:894fffd64402f351c47ddc303da8f675d7f45e012830f4ba82dce785ca467d8b`  
		Last Modified: Tue, 27 Oct 2026 00:33:09 GMT  
		Size: 105.7 MB (105684772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d512f1b36f32be80d750f62345b6d8b45918fd1fea66be87cf5cac268d50359`  
		Last Modified: Tue, 27 Oct 2026 00:33:06 GMT  
		Size: 356.8 KB (356750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:907dd0999e0d0d0a15d4e8b46e8c7c4bf70441d7d35ac93ad10c545051ab37e5`  
		Last Modified: Tue, 27 Oct 2026 00:33:06 GMT  
		Size: 2.7 KB (2655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:771d890e56a5560ee6ab256a68955083c1743d24fa1b4704e70db430d02c8fc1`  
		Last Modified: Tue, 27 Oct 2026 00:33:07 GMT  
		Size: 27.0 MB (27030421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fc32024a0a4ab5b1379a38f2347f2ea1057a95f3fedb320973f95a8e91e5238`  
		Last Modified: Tue, 27 Oct 2026 01:22:51 GMT  
		Size: 699.1 MB (699124558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception` - unknown; unknown

```console
$ docker pull ros@sha256:ba6c042eb7a8344b6aeb5860336d676bb32fdcada05b21f45872ef0cec2298f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61003402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85fc2212a779f66bc5baae7488330c14f7ac2af851182433971a7b108af2a426`

```dockerfile
```

-	Layers:
	-	`sha256:89b6a3fa5657c77bfab7a958e3ada1a189f18d3de225cbc221510ce5d4e414a6`  
		Last Modified: Tue, 27 Oct 2026 01:22:40 GMT  
		Size: 61.0 MB (60993970 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e247fcd6a7460f556f9a67be9aef22f1e5842ffda988e2fb07227bbda03a3d4`  
		Last Modified: Tue, 27 Oct 2026 01:22:38 GMT  
		Size: 9.4 KB (9432 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-perception-noble`

```console
$ docker pull ros@sha256:7d9a4bea1659158e55f497dba8a0c67e70ce14caf413a8c62d3fa80a1ec7864d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-perception-noble` - linux; amd64

```console
$ docker pull ros@sha256:267172c46351ced727ef371f780a39f8e33b392a10571211effbaa2a3be8759d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1082051645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34931a99abfdfd4266e17622bafb59235f6b831f5529b481da2767629214adaf`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:36:56 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:06 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:11 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:57 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:37:57 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:37:57 GMT
ENV ROS_DISTRO=kilted
# Mon, 26 Oct 2026 23:37:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:57 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:37:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:37:57 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:25 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:26 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 01:21:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6dc83cfb54c100abefe0c5789c9596dd735fb6060b478c3278783aeaf09f70`  
		Last Modified: Mon, 26 Oct 2026 23:38:24 GMT  
		Size: 683.3 KB (683286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:484f700f32ef995c460ab129f09891f4ddfb743874c91194da67f67b5fcf93b0`  
		Last Modified: Mon, 26 Oct 2026 23:38:24 GMT  
		Size: 6.7 MB (6713060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e061d3532c880b6e507c66169b2eec7e7ee08595efd66710447bb606a5fc8587`  
		Last Modified: Mon, 26 Oct 2026 23:38:24 GMT  
		Size: 94.8 KB (94779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f7ed945075418a4426d3520ac44b679147116e608399b6482235a742f223fbe`  
		Last Modified: Mon, 26 Oct 2026 23:38:27 GMT  
		Size: 121.3 MB (121282392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc2c98b6e4e76afde314b4a1bc4751e0a9d406e5caf149acdc0c835164c8107b`  
		Last Modified: Mon, 26 Oct 2026 23:38:25 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c4476a4c64a0f1c1d6abc81390584d3d6c247024aaffba8abcd92fed66f6f46`  
		Last Modified: Tue, 27 Oct 2026 00:33:23 GMT  
		Size: 110.2 MB (110243705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80198ea7ac609bf3193290363fd38990ec51568626d7d449854606f09e28b44c`  
		Last Modified: Tue, 27 Oct 2026 00:33:19 GMT  
		Size: 356.7 KB (356749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764782835e18f6f0bef0195b6f25d833b4cc386c2e7fb56e08a68fb2095685db`  
		Last Modified: Tue, 27 Oct 2026 00:33:19 GMT  
		Size: 2.7 KB (2668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:991297366c9de3a3788174b417a297a89fbc701088899f26b1d7767e6444f584`  
		Last Modified: Tue, 27 Oct 2026 00:33:21 GMT  
		Size: 27.9 MB (27919173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01c6a650e5f70956d3ffd3c3fa1d8ba7d0af04249371a305ada5d1562a06685d`  
		Last Modified: Tue, 27 Oct 2026 01:24:40 GMT  
		Size: 785.0 MB (784988025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:de8d6190708aac61123944c1e290609c1326851521345fcc4f985f9b1e161f0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61072798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b64a98039062f3308f71e854681842447f411b5ec661720038acab3bc8f5c360`

```dockerfile
```

-	Layers:
	-	`sha256:a8d129ace6bf464140c59aa4c95796f61eb379961e71352d1dd0ebda1641fe45`  
		Last Modified: Tue, 27 Oct 2026 01:24:28 GMT  
		Size: 61.1 MB (61063446 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4627a558c9ca7a8da07b0d22c5f138a0157d755c90cc0dc7f27c2ab3ad8c197`  
		Last Modified: Tue, 27 Oct 2026 01:24:25 GMT  
		Size: 9.4 KB (9352 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-perception-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:4899ddc8b6bccf7bf9a3aa449ead1af20b245931b4d4995c4ff4e0f48d567078
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **984.7 MB (984732583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e793aaece88dd90f63923b136c4e229d32297e9442ff3f18e834387eb26955a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:41:44 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:41:56 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:04 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:47 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:42:47 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:42:47 GMT
ENV ROS_DISTRO=kilted
# Mon, 26 Oct 2026 23:42:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:47 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:42:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:42:47 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:10 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:12 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 01:19:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7570ccd68d909595ef92f220097d912ad01d622534fd1553f91849e874b2d32`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 683.3 KB (683339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28c2268257e3a997d95076d921c2fd6e74693709412a133f1160c4192c09aa82`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 6.7 MB (6728544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80492cfaa373ae7f08e6653a0cd8d6b94437d5c5a166334e2b1809778e2d5f0e`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 94.8 KB (94791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aad910f55a0ac69c6d6b4818c1ffa257dc9b05971620fb7a642d1f8da572158c`  
		Last Modified: Mon, 26 Oct 2026 23:43:18 GMT  
		Size: 116.1 MB (116086429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2327ed85048e49e3eee3efa95d5fe25c8e2f1447d34de8d92a62fc70f0400f87`  
		Last Modified: Mon, 26 Oct 2026 23:43:16 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:894fffd64402f351c47ddc303da8f675d7f45e012830f4ba82dce785ca467d8b`  
		Last Modified: Tue, 27 Oct 2026 00:33:09 GMT  
		Size: 105.7 MB (105684772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d512f1b36f32be80d750f62345b6d8b45918fd1fea66be87cf5cac268d50359`  
		Last Modified: Tue, 27 Oct 2026 00:33:06 GMT  
		Size: 356.8 KB (356750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:907dd0999e0d0d0a15d4e8b46e8c7c4bf70441d7d35ac93ad10c545051ab37e5`  
		Last Modified: Tue, 27 Oct 2026 00:33:06 GMT  
		Size: 2.7 KB (2655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:771d890e56a5560ee6ab256a68955083c1743d24fa1b4704e70db430d02c8fc1`  
		Last Modified: Tue, 27 Oct 2026 00:33:07 GMT  
		Size: 27.0 MB (27030421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fc32024a0a4ab5b1379a38f2347f2ea1057a95f3fedb320973f95a8e91e5238`  
		Last Modified: Tue, 27 Oct 2026 01:22:51 GMT  
		Size: 699.1 MB (699124558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:ba6c042eb7a8344b6aeb5860336d676bb32fdcada05b21f45872ef0cec2298f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61003402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85fc2212a779f66bc5baae7488330c14f7ac2af851182433971a7b108af2a426`

```dockerfile
```

-	Layers:
	-	`sha256:89b6a3fa5657c77bfab7a958e3ada1a189f18d3de225cbc221510ce5d4e414a6`  
		Last Modified: Tue, 27 Oct 2026 01:22:40 GMT  
		Size: 61.0 MB (60993970 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e247fcd6a7460f556f9a67be9aef22f1e5842ffda988e2fb07227bbda03a3d4`  
		Last Modified: Tue, 27 Oct 2026 01:22:38 GMT  
		Size: 9.4 KB (9432 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-ros-base`

```console
$ docker pull ros@sha256:ead7117130ebf582faf4b75eaf8128d598df9de705d53ee40bffe020a04ac0a6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:eaa91e036ab9ac65f591d9c59ed2ee792c579555246d7ee41765db92dcb133c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.1 MB (297063620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef3e08407fd29c136e5df8dffcae76adf0970b8c8c4d9744ecb46a6396163bf6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:36:56 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:06 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:11 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:57 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:37:57 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:37:57 GMT
ENV ROS_DISTRO=kilted
# Mon, 26 Oct 2026 23:37:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:57 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:37:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:37:57 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:25 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:26 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6dc83cfb54c100abefe0c5789c9596dd735fb6060b478c3278783aeaf09f70`  
		Last Modified: Mon, 26 Oct 2026 23:38:24 GMT  
		Size: 683.3 KB (683286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:484f700f32ef995c460ab129f09891f4ddfb743874c91194da67f67b5fcf93b0`  
		Last Modified: Mon, 26 Oct 2026 23:38:24 GMT  
		Size: 6.7 MB (6713060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e061d3532c880b6e507c66169b2eec7e7ee08595efd66710447bb606a5fc8587`  
		Last Modified: Mon, 26 Oct 2026 23:38:24 GMT  
		Size: 94.8 KB (94779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f7ed945075418a4426d3520ac44b679147116e608399b6482235a742f223fbe`  
		Last Modified: Mon, 26 Oct 2026 23:38:27 GMT  
		Size: 121.3 MB (121282392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc2c98b6e4e76afde314b4a1bc4751e0a9d406e5caf149acdc0c835164c8107b`  
		Last Modified: Mon, 26 Oct 2026 23:38:25 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c4476a4c64a0f1c1d6abc81390584d3d6c247024aaffba8abcd92fed66f6f46`  
		Last Modified: Tue, 27 Oct 2026 00:33:23 GMT  
		Size: 110.2 MB (110243705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80198ea7ac609bf3193290363fd38990ec51568626d7d449854606f09e28b44c`  
		Last Modified: Tue, 27 Oct 2026 00:33:19 GMT  
		Size: 356.7 KB (356749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764782835e18f6f0bef0195b6f25d833b4cc386c2e7fb56e08a68fb2095685db`  
		Last Modified: Tue, 27 Oct 2026 00:33:19 GMT  
		Size: 2.7 KB (2668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:991297366c9de3a3788174b417a297a89fbc701088899f26b1d7767e6444f584`  
		Last Modified: Tue, 27 Oct 2026 00:33:21 GMT  
		Size: 27.9 MB (27919173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:9ea4f294ac450f081ffc63704e7dc409c9ed867c320e014766576edb90abd2c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24891871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2c5ae16a1668162442b7c4b4af8ebe0dadb5cfd5ce4b034ea1627e35ae1bb06`

```dockerfile
```

-	Layers:
	-	`sha256:0bf06ac3ca096897be8de5bbf9108d133f956e79c12924994aa9e3ee511278ad`  
		Last Modified: Tue, 27 Oct 2026 00:33:21 GMT  
		Size: 24.9 MB (24875524 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd2df90cf4d30b03c60e45450edbcab71c20f94f2e9cd933138e4a256bd5ee61`  
		Last Modified: Tue, 27 Oct 2026 00:33:19 GMT  
		Size: 16.3 KB (16347 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ea44927d6f747bec1dbc3dad4ae7a1fe7a7e6f11b79e144220885691bced99f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.6 MB (285608025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3069486ad2e9ed4f336b593c1568cd2fb881bc0dec1cffb48b25319d4717a204`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:41:44 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:41:56 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:04 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:47 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:42:47 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:42:47 GMT
ENV ROS_DISTRO=kilted
# Mon, 26 Oct 2026 23:42:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:47 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:42:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:42:47 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:10 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:12 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7570ccd68d909595ef92f220097d912ad01d622534fd1553f91849e874b2d32`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 683.3 KB (683339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28c2268257e3a997d95076d921c2fd6e74693709412a133f1160c4192c09aa82`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 6.7 MB (6728544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80492cfaa373ae7f08e6653a0cd8d6b94437d5c5a166334e2b1809778e2d5f0e`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 94.8 KB (94791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aad910f55a0ac69c6d6b4818c1ffa257dc9b05971620fb7a642d1f8da572158c`  
		Last Modified: Mon, 26 Oct 2026 23:43:18 GMT  
		Size: 116.1 MB (116086429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2327ed85048e49e3eee3efa95d5fe25c8e2f1447d34de8d92a62fc70f0400f87`  
		Last Modified: Mon, 26 Oct 2026 23:43:16 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:894fffd64402f351c47ddc303da8f675d7f45e012830f4ba82dce785ca467d8b`  
		Last Modified: Tue, 27 Oct 2026 00:33:09 GMT  
		Size: 105.7 MB (105684772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d512f1b36f32be80d750f62345b6d8b45918fd1fea66be87cf5cac268d50359`  
		Last Modified: Tue, 27 Oct 2026 00:33:06 GMT  
		Size: 356.8 KB (356750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:907dd0999e0d0d0a15d4e8b46e8c7c4bf70441d7d35ac93ad10c545051ab37e5`  
		Last Modified: Tue, 27 Oct 2026 00:33:06 GMT  
		Size: 2.7 KB (2655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:771d890e56a5560ee6ab256a68955083c1743d24fa1b4704e70db430d02c8fc1`  
		Last Modified: Tue, 27 Oct 2026 00:33:07 GMT  
		Size: 27.0 MB (27030421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:fa8bf7a258dee2f641bb1d7fa88d72df2851461de8528c4469be8ff5025fc438
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24914267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0e59682e9f9fb53f32d1deeeef28e59145c5aa7ca85a178e3c972eb81d22933`

```dockerfile
```

-	Layers:
	-	`sha256:315fbd5f0dd9df2c786852315f09c59aba1d6889a6da8bac3a0d424ee7f92c35`  
		Last Modified: Tue, 27 Oct 2026 00:33:07 GMT  
		Size: 24.9 MB (24897784 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a77f0fab0eac387903e3a98e3666d9c72f5aea530006f04aeefc8640c83960d0`  
		Last Modified: Tue, 27 Oct 2026 00:33:05 GMT  
		Size: 16.5 KB (16483 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-ros-base-noble`

```console
$ docker pull ros@sha256:ead7117130ebf582faf4b75eaf8128d598df9de705d53ee40bffe020a04ac0a6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-base-noble` - linux; amd64

```console
$ docker pull ros@sha256:eaa91e036ab9ac65f591d9c59ed2ee792c579555246d7ee41765db92dcb133c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.1 MB (297063620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef3e08407fd29c136e5df8dffcae76adf0970b8c8c4d9744ecb46a6396163bf6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:36:56 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:06 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:11 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:57 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:37:57 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:37:57 GMT
ENV ROS_DISTRO=kilted
# Mon, 26 Oct 2026 23:37:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:57 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:37:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:37:57 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:25 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:26 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6dc83cfb54c100abefe0c5789c9596dd735fb6060b478c3278783aeaf09f70`  
		Last Modified: Mon, 26 Oct 2026 23:38:24 GMT  
		Size: 683.3 KB (683286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:484f700f32ef995c460ab129f09891f4ddfb743874c91194da67f67b5fcf93b0`  
		Last Modified: Mon, 26 Oct 2026 23:38:24 GMT  
		Size: 6.7 MB (6713060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e061d3532c880b6e507c66169b2eec7e7ee08595efd66710447bb606a5fc8587`  
		Last Modified: Mon, 26 Oct 2026 23:38:24 GMT  
		Size: 94.8 KB (94779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f7ed945075418a4426d3520ac44b679147116e608399b6482235a742f223fbe`  
		Last Modified: Mon, 26 Oct 2026 23:38:27 GMT  
		Size: 121.3 MB (121282392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc2c98b6e4e76afde314b4a1bc4751e0a9d406e5caf149acdc0c835164c8107b`  
		Last Modified: Mon, 26 Oct 2026 23:38:25 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c4476a4c64a0f1c1d6abc81390584d3d6c247024aaffba8abcd92fed66f6f46`  
		Last Modified: Tue, 27 Oct 2026 00:33:23 GMT  
		Size: 110.2 MB (110243705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80198ea7ac609bf3193290363fd38990ec51568626d7d449854606f09e28b44c`  
		Last Modified: Tue, 27 Oct 2026 00:33:19 GMT  
		Size: 356.7 KB (356749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764782835e18f6f0bef0195b6f25d833b4cc386c2e7fb56e08a68fb2095685db`  
		Last Modified: Tue, 27 Oct 2026 00:33:19 GMT  
		Size: 2.7 KB (2668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:991297366c9de3a3788174b417a297a89fbc701088899f26b1d7767e6444f584`  
		Last Modified: Tue, 27 Oct 2026 00:33:21 GMT  
		Size: 27.9 MB (27919173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:9ea4f294ac450f081ffc63704e7dc409c9ed867c320e014766576edb90abd2c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24891871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2c5ae16a1668162442b7c4b4af8ebe0dadb5cfd5ce4b034ea1627e35ae1bb06`

```dockerfile
```

-	Layers:
	-	`sha256:0bf06ac3ca096897be8de5bbf9108d133f956e79c12924994aa9e3ee511278ad`  
		Last Modified: Tue, 27 Oct 2026 00:33:21 GMT  
		Size: 24.9 MB (24875524 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd2df90cf4d30b03c60e45450edbcab71c20f94f2e9cd933138e4a256bd5ee61`  
		Last Modified: Tue, 27 Oct 2026 00:33:19 GMT  
		Size: 16.3 KB (16347 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-base-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ea44927d6f747bec1dbc3dad4ae7a1fe7a7e6f11b79e144220885691bced99f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.6 MB (285608025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3069486ad2e9ed4f336b593c1568cd2fb881bc0dec1cffb48b25319d4717a204`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:41:44 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:41:56 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:04 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:47 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:42:47 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:42:47 GMT
ENV ROS_DISTRO=kilted
# Mon, 26 Oct 2026 23:42:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:47 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:42:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:42:47 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:10 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:12 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7570ccd68d909595ef92f220097d912ad01d622534fd1553f91849e874b2d32`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 683.3 KB (683339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28c2268257e3a997d95076d921c2fd6e74693709412a133f1160c4192c09aa82`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 6.7 MB (6728544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80492cfaa373ae7f08e6653a0cd8d6b94437d5c5a166334e2b1809778e2d5f0e`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 94.8 KB (94791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aad910f55a0ac69c6d6b4818c1ffa257dc9b05971620fb7a642d1f8da572158c`  
		Last Modified: Mon, 26 Oct 2026 23:43:18 GMT  
		Size: 116.1 MB (116086429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2327ed85048e49e3eee3efa95d5fe25c8e2f1447d34de8d92a62fc70f0400f87`  
		Last Modified: Mon, 26 Oct 2026 23:43:16 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:894fffd64402f351c47ddc303da8f675d7f45e012830f4ba82dce785ca467d8b`  
		Last Modified: Tue, 27 Oct 2026 00:33:09 GMT  
		Size: 105.7 MB (105684772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d512f1b36f32be80d750f62345b6d8b45918fd1fea66be87cf5cac268d50359`  
		Last Modified: Tue, 27 Oct 2026 00:33:06 GMT  
		Size: 356.8 KB (356750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:907dd0999e0d0d0a15d4e8b46e8c7c4bf70441d7d35ac93ad10c545051ab37e5`  
		Last Modified: Tue, 27 Oct 2026 00:33:06 GMT  
		Size: 2.7 KB (2655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:771d890e56a5560ee6ab256a68955083c1743d24fa1b4704e70db430d02c8fc1`  
		Last Modified: Tue, 27 Oct 2026 00:33:07 GMT  
		Size: 27.0 MB (27030421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:fa8bf7a258dee2f641bb1d7fa88d72df2851461de8528c4469be8ff5025fc438
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24914267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0e59682e9f9fb53f32d1deeeef28e59145c5aa7ca85a178e3c972eb81d22933`

```dockerfile
```

-	Layers:
	-	`sha256:315fbd5f0dd9df2c786852315f09c59aba1d6889a6da8bac3a0d424ee7f92c35`  
		Last Modified: Tue, 27 Oct 2026 00:33:07 GMT  
		Size: 24.9 MB (24897784 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a77f0fab0eac387903e3a98e3666d9c72f5aea530006f04aeefc8640c83960d0`  
		Last Modified: Tue, 27 Oct 2026 00:33:05 GMT  
		Size: 16.5 KB (16483 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-ros-core`

```console
$ docker pull ros@sha256:ab5505f66c9deb24e97a1f43ee37dd91fd7d3546bdfa0e7b5b2e660eaa39f903
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:9ecbe38edd4e939037328c22586a54374aaff593f3f6bdd9a0d0b33dca1efea3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.5 MB (158541325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:425f84761ca350c09caa40973e7a1c3195e0bfbf54f968f92b0d7eca3f624be6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:36:56 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:06 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:11 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:57 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:37:57 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:37:57 GMT
ENV ROS_DISTRO=kilted
# Mon, 26 Oct 2026 23:37:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:57 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:37:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:37:57 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6dc83cfb54c100abefe0c5789c9596dd735fb6060b478c3278783aeaf09f70`  
		Last Modified: Mon, 26 Oct 2026 23:38:24 GMT  
		Size: 683.3 KB (683286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:484f700f32ef995c460ab129f09891f4ddfb743874c91194da67f67b5fcf93b0`  
		Last Modified: Mon, 26 Oct 2026 23:38:24 GMT  
		Size: 6.7 MB (6713060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e061d3532c880b6e507c66169b2eec7e7ee08595efd66710447bb606a5fc8587`  
		Last Modified: Mon, 26 Oct 2026 23:38:24 GMT  
		Size: 94.8 KB (94779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f7ed945075418a4426d3520ac44b679147116e608399b6482235a742f223fbe`  
		Last Modified: Mon, 26 Oct 2026 23:38:27 GMT  
		Size: 121.3 MB (121282392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc2c98b6e4e76afde314b4a1bc4751e0a9d406e5caf149acdc0c835164c8107b`  
		Last Modified: Mon, 26 Oct 2026 23:38:25 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:b41833685e10ac4a9094bd829f31c73c28fa9b042b17103dccf5169645bc0c04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18630455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a95027f15340d406824f70e25e98733fe02a16698f075b4582fdd644630586f`

```dockerfile
```

-	Layers:
	-	`sha256:2ed4eaf5a8dde5a3c42e3f83b870ccc0267eb06eac20aa351cdc555f8dcee9ed`  
		Last Modified: Mon, 26 Oct 2026 23:38:25 GMT  
		Size: 18.6 MB (18615834 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4808fbc3d13f0b88b0b122f76dad851ab10d10c94e6ace4af783eaee69773c4f`  
		Last Modified: Mon, 26 Oct 2026 23:38:24 GMT  
		Size: 14.6 KB (14621 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:36a56ec4dab5faf68b673541a6f2626e11d9ddb150c41d6bb3727399aacf624b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.5 MB (152533427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea314365650321ac9b09dba6cc8c8085204e7591f203a10181ec51b11289aaf0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:41:44 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:41:56 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:04 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:47 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:42:47 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:42:47 GMT
ENV ROS_DISTRO=kilted
# Mon, 26 Oct 2026 23:42:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:47 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:42:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:42:47 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7570ccd68d909595ef92f220097d912ad01d622534fd1553f91849e874b2d32`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 683.3 KB (683339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28c2268257e3a997d95076d921c2fd6e74693709412a133f1160c4192c09aa82`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 6.7 MB (6728544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80492cfaa373ae7f08e6653a0cd8d6b94437d5c5a166334e2b1809778e2d5f0e`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 94.8 KB (94791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aad910f55a0ac69c6d6b4818c1ffa257dc9b05971620fb7a642d1f8da572158c`  
		Last Modified: Mon, 26 Oct 2026 23:43:18 GMT  
		Size: 116.1 MB (116086429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2327ed85048e49e3eee3efa95d5fe25c8e2f1447d34de8d92a62fc70f0400f87`  
		Last Modified: Mon, 26 Oct 2026 23:43:16 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:8844b180b98fc2dd59b87cce25ec5adeea0903e3997c721f8ca0a5fbf6ce3ed2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18604591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7bf704bab19fb4b6c2d9b8fc72be1f7e871f40a50b70c41237ee27814b69a57`

```dockerfile
```

-	Layers:
	-	`sha256:5a3c46e0927f26996fea1c3e2ae3ada4d0a5bdac12e3ab3219e50d3e8befc4b3`  
		Last Modified: Mon, 26 Oct 2026 23:43:16 GMT  
		Size: 18.6 MB (18589845 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c7de174b8cf816ed3349d30ff18603595716d513d18f8a505470177a38ca959`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 14.7 KB (14746 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-ros-core-noble`

```console
$ docker pull ros@sha256:ab5505f66c9deb24e97a1f43ee37dd91fd7d3546bdfa0e7b5b2e660eaa39f903
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-core-noble` - linux; amd64

```console
$ docker pull ros@sha256:9ecbe38edd4e939037328c22586a54374aaff593f3f6bdd9a0d0b33dca1efea3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.5 MB (158541325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:425f84761ca350c09caa40973e7a1c3195e0bfbf54f968f92b0d7eca3f624be6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:36:56 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:06 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:11 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:57 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:37:57 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:37:57 GMT
ENV ROS_DISTRO=kilted
# Mon, 26 Oct 2026 23:37:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:57 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:37:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:37:57 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6dc83cfb54c100abefe0c5789c9596dd735fb6060b478c3278783aeaf09f70`  
		Last Modified: Mon, 26 Oct 2026 23:38:24 GMT  
		Size: 683.3 KB (683286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:484f700f32ef995c460ab129f09891f4ddfb743874c91194da67f67b5fcf93b0`  
		Last Modified: Mon, 26 Oct 2026 23:38:24 GMT  
		Size: 6.7 MB (6713060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e061d3532c880b6e507c66169b2eec7e7ee08595efd66710447bb606a5fc8587`  
		Last Modified: Mon, 26 Oct 2026 23:38:24 GMT  
		Size: 94.8 KB (94779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f7ed945075418a4426d3520ac44b679147116e608399b6482235a742f223fbe`  
		Last Modified: Mon, 26 Oct 2026 23:38:27 GMT  
		Size: 121.3 MB (121282392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc2c98b6e4e76afde314b4a1bc4751e0a9d406e5caf149acdc0c835164c8107b`  
		Last Modified: Mon, 26 Oct 2026 23:38:25 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:b41833685e10ac4a9094bd829f31c73c28fa9b042b17103dccf5169645bc0c04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18630455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a95027f15340d406824f70e25e98733fe02a16698f075b4582fdd644630586f`

```dockerfile
```

-	Layers:
	-	`sha256:2ed4eaf5a8dde5a3c42e3f83b870ccc0267eb06eac20aa351cdc555f8dcee9ed`  
		Last Modified: Mon, 26 Oct 2026 23:38:25 GMT  
		Size: 18.6 MB (18615834 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4808fbc3d13f0b88b0b122f76dad851ab10d10c94e6ace4af783eaee69773c4f`  
		Last Modified: Mon, 26 Oct 2026 23:38:24 GMT  
		Size: 14.6 KB (14621 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-core-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:36a56ec4dab5faf68b673541a6f2626e11d9ddb150c41d6bb3727399aacf624b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.5 MB (152533427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea314365650321ac9b09dba6cc8c8085204e7591f203a10181ec51b11289aaf0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:41:44 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:41:56 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:04 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:47 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:42:47 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:42:47 GMT
ENV ROS_DISTRO=kilted
# Mon, 26 Oct 2026 23:42:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:47 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:42:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:42:47 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7570ccd68d909595ef92f220097d912ad01d622534fd1553f91849e874b2d32`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 683.3 KB (683339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28c2268257e3a997d95076d921c2fd6e74693709412a133f1160c4192c09aa82`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 6.7 MB (6728544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80492cfaa373ae7f08e6653a0cd8d6b94437d5c5a166334e2b1809778e2d5f0e`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 94.8 KB (94791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aad910f55a0ac69c6d6b4818c1ffa257dc9b05971620fb7a642d1f8da572158c`  
		Last Modified: Mon, 26 Oct 2026 23:43:18 GMT  
		Size: 116.1 MB (116086429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2327ed85048e49e3eee3efa95d5fe25c8e2f1447d34de8d92a62fc70f0400f87`  
		Last Modified: Mon, 26 Oct 2026 23:43:16 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:8844b180b98fc2dd59b87cce25ec5adeea0903e3997c721f8ca0a5fbf6ce3ed2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18604591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7bf704bab19fb4b6c2d9b8fc72be1f7e871f40a50b70c41237ee27814b69a57`

```dockerfile
```

-	Layers:
	-	`sha256:5a3c46e0927f26996fea1c3e2ae3ada4d0a5bdac12e3ab3219e50d3e8befc4b3`  
		Last Modified: Mon, 26 Oct 2026 23:43:16 GMT  
		Size: 18.6 MB (18589845 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c7de174b8cf816ed3349d30ff18603595716d513d18f8a505470177a38ca959`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 14.7 KB (14746 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:latest`

```console
$ docker pull ros@sha256:3224ee150cb02eb89a5e0811bc267b57ed3a91b9c10191df57810726a7e916d7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:latest` - linux; amd64

```console
$ docker pull ros@sha256:4e129b13f5c72d1630b03513af404353b44b30c793fd6d99b362f29ca7a15f50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.1 MB (341056668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3d5a3c4848ccd9628f04fe609c4046d0af59d88decca121f98b23eff97f38c1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9587.tar --tag 26.04
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:26:07.538865+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:26:07.538865+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9587.tar
# Mon, 26 Oct 2026 23:36:59 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:14 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:19 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:38:18 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:38:18 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:38:18 GMT
ENV ROS_DISTRO=lyrical
# Mon, 26 Oct 2026 23:38:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:38:18 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:38:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:38:18 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:22 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:24 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:edafa32f5d9e4d9629f0dbc6c01e63c79ff08133c01cfb7d3363aa8bd8a614cf`  
		Last Modified: Sun, 25 Oct 2026 13:21:15 GMT  
		Size: 42.1 MB (42139920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3f25b84a7d74315d94ee4108231f8f5e0cd2a44725a7204d5dd6ce91c151697`  
		Last Modified: Sun, 25 Oct 2026 13:21:18 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d2dbe9d0d314d1bfe0cd73bae0adba2dadd956e1608250977f598fb867e3a93`  
		Last Modified: Mon, 26 Oct 2026 23:38:58 GMT  
		Size: 741.3 KB (741301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a41a2a0d6e677f90bd0fa355d70b4f2711e8f8e6c4f1d1c66075a8d7af061ae`  
		Last Modified: Mon, 26 Oct 2026 23:38:59 GMT  
		Size: 9.8 MB (9785393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a983173e71ab036c5a58dc8c2e916ebaa0a05f72f8494f02920f3978d0acd865`  
		Last Modified: Mon, 26 Oct 2026 23:38:58 GMT  
		Size: 91.6 KB (91603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7ff07ea0b312b7b25b56e88763f69a3706f13de5272e269be66423ff570d727`  
		Last Modified: Mon, 26 Oct 2026 23:39:02 GMT  
		Size: 137.1 MB (137070595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f4e3a493d64b9e1b7421f33e96c7112065538405f9fe33f6e14d7f5f81e886c`  
		Last Modified: Mon, 26 Oct 2026 23:39:00 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1831ebfd6789d5571d1b51fe3007a9f23e23a7c88b5b9dd9462fa17680ac4ce0`  
		Last Modified: Tue, 27 Oct 2026 00:33:43 GMT  
		Size: 124.9 MB (124904993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a7cf84c2565566184ca6bd3003185007dee7f0fdd899bd871d99a92ab3282a`  
		Last Modified: Tue, 27 Oct 2026 00:33:39 GMT  
		Size: 387.2 KB (387236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:649636a805497d8532b32d46b7edf5f3bfc0ce6763ef64ae3065c1656dbf7085`  
		Last Modified: Tue, 27 Oct 2026 00:33:39 GMT  
		Size: 130.9 KB (130889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42512d8c3235513bab08d362daa6d76b14a07986a2df422717931bc552ff46e1`  
		Last Modified: Tue, 27 Oct 2026 00:33:41 GMT  
		Size: 25.8 MB (25804150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:latest` - unknown; unknown

```console
$ docker pull ros@sha256:5c82444ea7921e9c5e4544070401bc0bcf05afddc316d3c6238a13a09f156cd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29192489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaf14396f817c50a76708a0cd12bf33fe5517dcf952ae108ab7de2d26cf7c0ca`

```dockerfile
```

-	Layers:
	-	`sha256:2e5be385a8e3f4eba8d7eb4f427c0626369be09357d18ad0d52e8c8b11a3948c`  
		Last Modified: Tue, 27 Oct 2026 00:33:41 GMT  
		Size: 29.2 MB (29175039 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f674ae065ebdc59a2d321ad3792815945e9cea9012fcdab5cfa7801e02ded978`  
		Last Modified: Tue, 27 Oct 2026 00:33:39 GMT  
		Size: 17.4 KB (17450 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:latest` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:67dd23cbd6c2dc5a06c6ab4152f917e4686320d90267fb4d33adeeca16bcb469
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.6 MB (325573055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:367e4fbc21c778ec9f73f366b1bd7929ac0d6523c7d2b5a7959af22e6cd78085`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 10:30:31 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9649.tar --tag 26.04
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:30:32.309136+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:30:32.309136+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9649.tar
# Mon, 26 Oct 2026 23:42:16 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:32 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:39 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:43:37 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:43:37 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:43:37 GMT
ENV ROS_DISTRO=lyrical
# Mon, 26 Oct 2026 23:43:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:43:38 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:43:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:43:38 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:17 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:18 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:afa7f7d582de8ee3433df193ede10fc2c50d3398de31c14d329b643e7a69b852`  
		Last Modified: Sun, 25 Oct 2026 13:21:25 GMT  
		Size: 41.1 MB (41122308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f01cc7d6fb3d703f324d1ccddfddeaa2e8c97cf4b5d6936a66396eaf4089d99`  
		Last Modified: Sun, 25 Oct 2026 13:21:28 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c6d174ad62b98a10bdcc2e5fdd4b2c3d1e89caa68aa60e7e7be3f3b501141f4`  
		Last Modified: Mon, 26 Oct 2026 23:44:17 GMT  
		Size: 741.8 KB (741778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdbd00d6583bc95914bd1cf18813fdffb110b69316632d834a5ced65f1ee298b`  
		Last Modified: Mon, 26 Oct 2026 23:44:17 GMT  
		Size: 9.6 MB (9610059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:102aa0b5a2d5952048b7f2995c7940123d06f921b29cb4b3bad990ff8dd09374`  
		Last Modified: Mon, 26 Oct 2026 23:44:17 GMT  
		Size: 92.2 KB (92187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c42ae2e1422836cc5eecb27de617f02db89b64719ed358da64e30a4f2fd7cd77`  
		Last Modified: Mon, 26 Oct 2026 23:44:20 GMT  
		Size: 130.4 MB (130421760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8c398aa1aa8fcd5305f8b1b6c8599f305a7648811d8f503f3ebea31264f5475`  
		Last Modified: Mon, 26 Oct 2026 23:44:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8774051d047a4cfeb77c33bce57ee0e0f9bd1466d15a980917ea93011bf26f6`  
		Last Modified: Tue, 27 Oct 2026 00:33:31 GMT  
		Size: 118.3 MB (118322287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d434e31ebded43fba2a188eb5fce8afc95b0c99c029189dcb103dc90e84f0190`  
		Last Modified: Tue, 27 Oct 2026 00:33:28 GMT  
		Size: 387.2 KB (387243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bdd532a4b2813fff0a0e23541712ddeb34f81253c5a1ac68e5d220741ab726c`  
		Last Modified: Tue, 27 Oct 2026 00:33:28 GMT  
		Size: 130.9 KB (130882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:681f5911d3b538042707e88a2d81fd9411f89ae999dd72f0454c411fbbd20b8c`  
		Last Modified: Tue, 27 Oct 2026 00:33:29 GMT  
		Size: 24.7 MB (24743967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:latest` - unknown; unknown

```console
$ docker pull ros@sha256:ec6f9dd9a0eadc3f37a5e9029595e403d5c5d0c5f2e7b22af6bcc4e7c745207e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29257270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fc762095d764d98038a1bfcccffc35a8ce4db8c45814bf903265431571bb11c`

```dockerfile
```

-	Layers:
	-	`sha256:3b04639c582c07371c30d49d1dbb5bbe5cd0cf0ec25aaeedcd1be241a911d3a9`  
		Last Modified: Tue, 27 Oct 2026 00:33:29 GMT  
		Size: 29.2 MB (29239671 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1f57a55282fd7882bcb37bf701de67e984ab2ec77ffd248140e0d9ec7883c18`  
		Last Modified: Tue, 27 Oct 2026 00:33:28 GMT  
		Size: 17.6 KB (17599 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical`

```console
$ docker pull ros@sha256:3224ee150cb02eb89a5e0811bc267b57ed3a91b9c10191df57810726a7e916d7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical` - linux; amd64

```console
$ docker pull ros@sha256:4e129b13f5c72d1630b03513af404353b44b30c793fd6d99b362f29ca7a15f50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.1 MB (341056668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3d5a3c4848ccd9628f04fe609c4046d0af59d88decca121f98b23eff97f38c1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9587.tar --tag 26.04
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:26:07.538865+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:26:07.538865+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9587.tar
# Mon, 26 Oct 2026 23:36:59 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:14 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:19 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:38:18 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:38:18 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:38:18 GMT
ENV ROS_DISTRO=lyrical
# Mon, 26 Oct 2026 23:38:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:38:18 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:38:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:38:18 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:22 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:24 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:edafa32f5d9e4d9629f0dbc6c01e63c79ff08133c01cfb7d3363aa8bd8a614cf`  
		Last Modified: Sun, 25 Oct 2026 13:21:15 GMT  
		Size: 42.1 MB (42139920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3f25b84a7d74315d94ee4108231f8f5e0cd2a44725a7204d5dd6ce91c151697`  
		Last Modified: Sun, 25 Oct 2026 13:21:18 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d2dbe9d0d314d1bfe0cd73bae0adba2dadd956e1608250977f598fb867e3a93`  
		Last Modified: Mon, 26 Oct 2026 23:38:58 GMT  
		Size: 741.3 KB (741301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a41a2a0d6e677f90bd0fa355d70b4f2711e8f8e6c4f1d1c66075a8d7af061ae`  
		Last Modified: Mon, 26 Oct 2026 23:38:59 GMT  
		Size: 9.8 MB (9785393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a983173e71ab036c5a58dc8c2e916ebaa0a05f72f8494f02920f3978d0acd865`  
		Last Modified: Mon, 26 Oct 2026 23:38:58 GMT  
		Size: 91.6 KB (91603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7ff07ea0b312b7b25b56e88763f69a3706f13de5272e269be66423ff570d727`  
		Last Modified: Mon, 26 Oct 2026 23:39:02 GMT  
		Size: 137.1 MB (137070595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f4e3a493d64b9e1b7421f33e96c7112065538405f9fe33f6e14d7f5f81e886c`  
		Last Modified: Mon, 26 Oct 2026 23:39:00 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1831ebfd6789d5571d1b51fe3007a9f23e23a7c88b5b9dd9462fa17680ac4ce0`  
		Last Modified: Tue, 27 Oct 2026 00:33:43 GMT  
		Size: 124.9 MB (124904993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a7cf84c2565566184ca6bd3003185007dee7f0fdd899bd871d99a92ab3282a`  
		Last Modified: Tue, 27 Oct 2026 00:33:39 GMT  
		Size: 387.2 KB (387236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:649636a805497d8532b32d46b7edf5f3bfc0ce6763ef64ae3065c1656dbf7085`  
		Last Modified: Tue, 27 Oct 2026 00:33:39 GMT  
		Size: 130.9 KB (130889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42512d8c3235513bab08d362daa6d76b14a07986a2df422717931bc552ff46e1`  
		Last Modified: Tue, 27 Oct 2026 00:33:41 GMT  
		Size: 25.8 MB (25804150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical` - unknown; unknown

```console
$ docker pull ros@sha256:5c82444ea7921e9c5e4544070401bc0bcf05afddc316d3c6238a13a09f156cd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29192489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaf14396f817c50a76708a0cd12bf33fe5517dcf952ae108ab7de2d26cf7c0ca`

```dockerfile
```

-	Layers:
	-	`sha256:2e5be385a8e3f4eba8d7eb4f427c0626369be09357d18ad0d52e8c8b11a3948c`  
		Last Modified: Tue, 27 Oct 2026 00:33:41 GMT  
		Size: 29.2 MB (29175039 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f674ae065ebdc59a2d321ad3792815945e9cea9012fcdab5cfa7801e02ded978`  
		Last Modified: Tue, 27 Oct 2026 00:33:39 GMT  
		Size: 17.4 KB (17450 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:67dd23cbd6c2dc5a06c6ab4152f917e4686320d90267fb4d33adeeca16bcb469
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.6 MB (325573055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:367e4fbc21c778ec9f73f366b1bd7929ac0d6523c7d2b5a7959af22e6cd78085`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 10:30:31 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9649.tar --tag 26.04
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:30:32.309136+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:30:32.309136+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9649.tar
# Mon, 26 Oct 2026 23:42:16 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:32 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:39 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:43:37 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:43:37 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:43:37 GMT
ENV ROS_DISTRO=lyrical
# Mon, 26 Oct 2026 23:43:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:43:38 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:43:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:43:38 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:17 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:18 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:afa7f7d582de8ee3433df193ede10fc2c50d3398de31c14d329b643e7a69b852`  
		Last Modified: Sun, 25 Oct 2026 13:21:25 GMT  
		Size: 41.1 MB (41122308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f01cc7d6fb3d703f324d1ccddfddeaa2e8c97cf4b5d6936a66396eaf4089d99`  
		Last Modified: Sun, 25 Oct 2026 13:21:28 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c6d174ad62b98a10bdcc2e5fdd4b2c3d1e89caa68aa60e7e7be3f3b501141f4`  
		Last Modified: Mon, 26 Oct 2026 23:44:17 GMT  
		Size: 741.8 KB (741778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdbd00d6583bc95914bd1cf18813fdffb110b69316632d834a5ced65f1ee298b`  
		Last Modified: Mon, 26 Oct 2026 23:44:17 GMT  
		Size: 9.6 MB (9610059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:102aa0b5a2d5952048b7f2995c7940123d06f921b29cb4b3bad990ff8dd09374`  
		Last Modified: Mon, 26 Oct 2026 23:44:17 GMT  
		Size: 92.2 KB (92187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c42ae2e1422836cc5eecb27de617f02db89b64719ed358da64e30a4f2fd7cd77`  
		Last Modified: Mon, 26 Oct 2026 23:44:20 GMT  
		Size: 130.4 MB (130421760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8c398aa1aa8fcd5305f8b1b6c8599f305a7648811d8f503f3ebea31264f5475`  
		Last Modified: Mon, 26 Oct 2026 23:44:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8774051d047a4cfeb77c33bce57ee0e0f9bd1466d15a980917ea93011bf26f6`  
		Last Modified: Tue, 27 Oct 2026 00:33:31 GMT  
		Size: 118.3 MB (118322287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d434e31ebded43fba2a188eb5fce8afc95b0c99c029189dcb103dc90e84f0190`  
		Last Modified: Tue, 27 Oct 2026 00:33:28 GMT  
		Size: 387.2 KB (387243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bdd532a4b2813fff0a0e23541712ddeb34f81253c5a1ac68e5d220741ab726c`  
		Last Modified: Tue, 27 Oct 2026 00:33:28 GMT  
		Size: 130.9 KB (130882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:681f5911d3b538042707e88a2d81fd9411f89ae999dd72f0454c411fbbd20b8c`  
		Last Modified: Tue, 27 Oct 2026 00:33:29 GMT  
		Size: 24.7 MB (24743967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical` - unknown; unknown

```console
$ docker pull ros@sha256:ec6f9dd9a0eadc3f37a5e9029595e403d5c5d0c5f2e7b22af6bcc4e7c745207e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29257270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fc762095d764d98038a1bfcccffc35a8ce4db8c45814bf903265431571bb11c`

```dockerfile
```

-	Layers:
	-	`sha256:3b04639c582c07371c30d49d1dbb5bbe5cd0cf0ec25aaeedcd1be241a911d3a9`  
		Last Modified: Tue, 27 Oct 2026 00:33:29 GMT  
		Size: 29.2 MB (29239671 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1f57a55282fd7882bcb37bf701de67e984ab2ec77ffd248140e0d9ec7883c18`  
		Last Modified: Tue, 27 Oct 2026 00:33:28 GMT  
		Size: 17.6 KB (17599 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-perception`

```console
$ docker pull ros@sha256:913bb01eaf273358ac96343fa6d2ac5da3bd369b8fe8a48fb82b7022052cf5b2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-perception` - linux; amd64

```console
$ docker pull ros@sha256:8c7ceff3e15b20ba466549437f42626dbbdff4dfc2848a044f110d49a8be72df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1529678559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc90a7f6f0fd7be5ecf7ebb9439b3c9f8aad49924e5e40d0359d6f0092c0406a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9587.tar --tag 26.04
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:26:07.538865+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:26:07.538865+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9587.tar
# Mon, 26 Oct 2026 23:36:59 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:14 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:19 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:38:18 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:38:18 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:38:18 GMT
ENV ROS_DISTRO=lyrical
# Mon, 26 Oct 2026 23:38:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:38:18 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:38:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:38:18 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:22 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:24 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 01:21:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:edafa32f5d9e4d9629f0dbc6c01e63c79ff08133c01cfb7d3363aa8bd8a614cf`  
		Last Modified: Sun, 25 Oct 2026 13:21:15 GMT  
		Size: 42.1 MB (42139920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3f25b84a7d74315d94ee4108231f8f5e0cd2a44725a7204d5dd6ce91c151697`  
		Last Modified: Sun, 25 Oct 2026 13:21:18 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d2dbe9d0d314d1bfe0cd73bae0adba2dadd956e1608250977f598fb867e3a93`  
		Last Modified: Mon, 26 Oct 2026 23:38:58 GMT  
		Size: 741.3 KB (741301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a41a2a0d6e677f90bd0fa355d70b4f2711e8f8e6c4f1d1c66075a8d7af061ae`  
		Last Modified: Mon, 26 Oct 2026 23:38:59 GMT  
		Size: 9.8 MB (9785393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a983173e71ab036c5a58dc8c2e916ebaa0a05f72f8494f02920f3978d0acd865`  
		Last Modified: Mon, 26 Oct 2026 23:38:58 GMT  
		Size: 91.6 KB (91603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7ff07ea0b312b7b25b56e88763f69a3706f13de5272e269be66423ff570d727`  
		Last Modified: Mon, 26 Oct 2026 23:39:02 GMT  
		Size: 137.1 MB (137070595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f4e3a493d64b9e1b7421f33e96c7112065538405f9fe33f6e14d7f5f81e886c`  
		Last Modified: Mon, 26 Oct 2026 23:39:00 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1831ebfd6789d5571d1b51fe3007a9f23e23a7c88b5b9dd9462fa17680ac4ce0`  
		Last Modified: Tue, 27 Oct 2026 00:33:43 GMT  
		Size: 124.9 MB (124904993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a7cf84c2565566184ca6bd3003185007dee7f0fdd899bd871d99a92ab3282a`  
		Last Modified: Tue, 27 Oct 2026 00:33:39 GMT  
		Size: 387.2 KB (387236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:649636a805497d8532b32d46b7edf5f3bfc0ce6763ef64ae3065c1656dbf7085`  
		Last Modified: Tue, 27 Oct 2026 00:33:39 GMT  
		Size: 130.9 KB (130889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42512d8c3235513bab08d362daa6d76b14a07986a2df422717931bc552ff46e1`  
		Last Modified: Tue, 27 Oct 2026 00:33:41 GMT  
		Size: 25.8 MB (25804150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca32eaa8e0febd853c40e81bc6f7cba07e74b03d7a2c41b28497db6bc097fc2a`  
		Last Modified: Tue, 27 Oct 2026 01:25:19 GMT  
		Size: 1.2 GB (1188621891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception` - unknown; unknown

```console
$ docker pull ros@sha256:d01c6331af0ae7ec898c678e75a0895a1a38709491ace9222d0b3ee5738f89e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64394971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a94ed1b2d7d6666298f9977df35b6cc3b47a51a36437801cb9bac5abbf63048`

```dockerfile
```

-	Layers:
	-	`sha256:574d8c44fbe8c1eadebb4c670d8ef0a574cc1ab2c91c1ba2b8f1871cb1134728`  
		Last Modified: Tue, 27 Oct 2026 01:24:58 GMT  
		Size: 64.4 MB (64385279 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2dc08d329e0e39397e88dd724bea5ab700990b1933f9f08984dd3c08b2d0cde8`  
		Last Modified: Tue, 27 Oct 2026 01:24:55 GMT  
		Size: 9.7 KB (9692 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:38593a05a4d631ffa98396dcef3528ccb7c9f19c832a912c191907e949a46d83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1472782188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea1861dee94847e3770147817739473cc3e1a63b0141388c9cfcd831964376b2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 10:30:31 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9649.tar --tag 26.04
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:30:32.309136+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:30:32.309136+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9649.tar
# Mon, 26 Oct 2026 23:42:16 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:32 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:39 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:43:37 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:43:37 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:43:37 GMT
ENV ROS_DISTRO=lyrical
# Mon, 26 Oct 2026 23:43:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:43:38 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:43:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:43:38 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:17 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:18 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 01:20:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:afa7f7d582de8ee3433df193ede10fc2c50d3398de31c14d329b643e7a69b852`  
		Last Modified: Sun, 25 Oct 2026 13:21:25 GMT  
		Size: 41.1 MB (41122308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f01cc7d6fb3d703f324d1ccddfddeaa2e8c97cf4b5d6936a66396eaf4089d99`  
		Last Modified: Sun, 25 Oct 2026 13:21:28 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c6d174ad62b98a10bdcc2e5fdd4b2c3d1e89caa68aa60e7e7be3f3b501141f4`  
		Last Modified: Mon, 26 Oct 2026 23:44:17 GMT  
		Size: 741.8 KB (741778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdbd00d6583bc95914bd1cf18813fdffb110b69316632d834a5ced65f1ee298b`  
		Last Modified: Mon, 26 Oct 2026 23:44:17 GMT  
		Size: 9.6 MB (9610059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:102aa0b5a2d5952048b7f2995c7940123d06f921b29cb4b3bad990ff8dd09374`  
		Last Modified: Mon, 26 Oct 2026 23:44:17 GMT  
		Size: 92.2 KB (92187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c42ae2e1422836cc5eecb27de617f02db89b64719ed358da64e30a4f2fd7cd77`  
		Last Modified: Mon, 26 Oct 2026 23:44:20 GMT  
		Size: 130.4 MB (130421760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8c398aa1aa8fcd5305f8b1b6c8599f305a7648811d8f503f3ebea31264f5475`  
		Last Modified: Mon, 26 Oct 2026 23:44:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8774051d047a4cfeb77c33bce57ee0e0f9bd1466d15a980917ea93011bf26f6`  
		Last Modified: Tue, 27 Oct 2026 00:33:31 GMT  
		Size: 118.3 MB (118322287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d434e31ebded43fba2a188eb5fce8afc95b0c99c029189dcb103dc90e84f0190`  
		Last Modified: Tue, 27 Oct 2026 00:33:28 GMT  
		Size: 387.2 KB (387243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bdd532a4b2813fff0a0e23541712ddeb34f81253c5a1ac68e5d220741ab726c`  
		Last Modified: Tue, 27 Oct 2026 00:33:28 GMT  
		Size: 130.9 KB (130882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:681f5911d3b538042707e88a2d81fd9411f89ae999dd72f0454c411fbbd20b8c`  
		Last Modified: Tue, 27 Oct 2026 00:33:29 GMT  
		Size: 24.7 MB (24743967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13fc7fde54861fa32f94d1902aa7616743d8da15cd0436b91a6710cceb5ea2eb`  
		Last Modified: Tue, 27 Oct 2026 01:25:28 GMT  
		Size: 1.1 GB (1147209133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception` - unknown; unknown

```console
$ docker pull ros@sha256:647f8aba4d760f80f5f3f60bbad3df5315e57776b9ca1f16debbded10b65cc64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64309270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfca1ffcb24fb06076a6ce1f83b6a254fcb11938f04ae15380cf990fd55d8b15`

```dockerfile
```

-	Layers:
	-	`sha256:9bee7fabfc73402258025df9492ab91959387b1855fb62d931c2ce5d6f21e127`  
		Last Modified: Tue, 27 Oct 2026 01:25:00 GMT  
		Size: 64.3 MB (64299497 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca9d0d72877d755a246140482a17d6823ec8caf0853ea134519c4ef4a7e666fd`  
		Last Modified: Tue, 27 Oct 2026 01:24:58 GMT  
		Size: 9.8 KB (9773 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-perception-resolute`

```console
$ docker pull ros@sha256:913bb01eaf273358ac96343fa6d2ac5da3bd369b8fe8a48fb82b7022052cf5b2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-perception-resolute` - linux; amd64

```console
$ docker pull ros@sha256:8c7ceff3e15b20ba466549437f42626dbbdff4dfc2848a044f110d49a8be72df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1529678559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc90a7f6f0fd7be5ecf7ebb9439b3c9f8aad49924e5e40d0359d6f0092c0406a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9587.tar --tag 26.04
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:26:07.538865+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:26:07.538865+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9587.tar
# Mon, 26 Oct 2026 23:36:59 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:14 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:19 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:38:18 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:38:18 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:38:18 GMT
ENV ROS_DISTRO=lyrical
# Mon, 26 Oct 2026 23:38:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:38:18 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:38:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:38:18 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:22 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:24 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 01:21:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:edafa32f5d9e4d9629f0dbc6c01e63c79ff08133c01cfb7d3363aa8bd8a614cf`  
		Last Modified: Sun, 25 Oct 2026 13:21:15 GMT  
		Size: 42.1 MB (42139920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3f25b84a7d74315d94ee4108231f8f5e0cd2a44725a7204d5dd6ce91c151697`  
		Last Modified: Sun, 25 Oct 2026 13:21:18 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d2dbe9d0d314d1bfe0cd73bae0adba2dadd956e1608250977f598fb867e3a93`  
		Last Modified: Mon, 26 Oct 2026 23:38:58 GMT  
		Size: 741.3 KB (741301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a41a2a0d6e677f90bd0fa355d70b4f2711e8f8e6c4f1d1c66075a8d7af061ae`  
		Last Modified: Mon, 26 Oct 2026 23:38:59 GMT  
		Size: 9.8 MB (9785393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a983173e71ab036c5a58dc8c2e916ebaa0a05f72f8494f02920f3978d0acd865`  
		Last Modified: Mon, 26 Oct 2026 23:38:58 GMT  
		Size: 91.6 KB (91603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7ff07ea0b312b7b25b56e88763f69a3706f13de5272e269be66423ff570d727`  
		Last Modified: Mon, 26 Oct 2026 23:39:02 GMT  
		Size: 137.1 MB (137070595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f4e3a493d64b9e1b7421f33e96c7112065538405f9fe33f6e14d7f5f81e886c`  
		Last Modified: Mon, 26 Oct 2026 23:39:00 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1831ebfd6789d5571d1b51fe3007a9f23e23a7c88b5b9dd9462fa17680ac4ce0`  
		Last Modified: Tue, 27 Oct 2026 00:33:43 GMT  
		Size: 124.9 MB (124904993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a7cf84c2565566184ca6bd3003185007dee7f0fdd899bd871d99a92ab3282a`  
		Last Modified: Tue, 27 Oct 2026 00:33:39 GMT  
		Size: 387.2 KB (387236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:649636a805497d8532b32d46b7edf5f3bfc0ce6763ef64ae3065c1656dbf7085`  
		Last Modified: Tue, 27 Oct 2026 00:33:39 GMT  
		Size: 130.9 KB (130889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42512d8c3235513bab08d362daa6d76b14a07986a2df422717931bc552ff46e1`  
		Last Modified: Tue, 27 Oct 2026 00:33:41 GMT  
		Size: 25.8 MB (25804150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca32eaa8e0febd853c40e81bc6f7cba07e74b03d7a2c41b28497db6bc097fc2a`  
		Last Modified: Tue, 27 Oct 2026 01:25:19 GMT  
		Size: 1.2 GB (1188621891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:d01c6331af0ae7ec898c678e75a0895a1a38709491ace9222d0b3ee5738f89e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64394971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a94ed1b2d7d6666298f9977df35b6cc3b47a51a36437801cb9bac5abbf63048`

```dockerfile
```

-	Layers:
	-	`sha256:574d8c44fbe8c1eadebb4c670d8ef0a574cc1ab2c91c1ba2b8f1871cb1134728`  
		Last Modified: Tue, 27 Oct 2026 01:24:58 GMT  
		Size: 64.4 MB (64385279 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2dc08d329e0e39397e88dd724bea5ab700990b1933f9f08984dd3c08b2d0cde8`  
		Last Modified: Tue, 27 Oct 2026 01:24:55 GMT  
		Size: 9.7 KB (9692 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-perception-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:38593a05a4d631ffa98396dcef3528ccb7c9f19c832a912c191907e949a46d83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1472782188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea1861dee94847e3770147817739473cc3e1a63b0141388c9cfcd831964376b2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 10:30:31 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9649.tar --tag 26.04
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:30:32.309136+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:30:32.309136+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9649.tar
# Mon, 26 Oct 2026 23:42:16 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:32 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:39 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:43:37 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:43:37 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:43:37 GMT
ENV ROS_DISTRO=lyrical
# Mon, 26 Oct 2026 23:43:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:43:38 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:43:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:43:38 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:17 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:18 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 01:20:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:afa7f7d582de8ee3433df193ede10fc2c50d3398de31c14d329b643e7a69b852`  
		Last Modified: Sun, 25 Oct 2026 13:21:25 GMT  
		Size: 41.1 MB (41122308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f01cc7d6fb3d703f324d1ccddfddeaa2e8c97cf4b5d6936a66396eaf4089d99`  
		Last Modified: Sun, 25 Oct 2026 13:21:28 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c6d174ad62b98a10bdcc2e5fdd4b2c3d1e89caa68aa60e7e7be3f3b501141f4`  
		Last Modified: Mon, 26 Oct 2026 23:44:17 GMT  
		Size: 741.8 KB (741778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdbd00d6583bc95914bd1cf18813fdffb110b69316632d834a5ced65f1ee298b`  
		Last Modified: Mon, 26 Oct 2026 23:44:17 GMT  
		Size: 9.6 MB (9610059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:102aa0b5a2d5952048b7f2995c7940123d06f921b29cb4b3bad990ff8dd09374`  
		Last Modified: Mon, 26 Oct 2026 23:44:17 GMT  
		Size: 92.2 KB (92187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c42ae2e1422836cc5eecb27de617f02db89b64719ed358da64e30a4f2fd7cd77`  
		Last Modified: Mon, 26 Oct 2026 23:44:20 GMT  
		Size: 130.4 MB (130421760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8c398aa1aa8fcd5305f8b1b6c8599f305a7648811d8f503f3ebea31264f5475`  
		Last Modified: Mon, 26 Oct 2026 23:44:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8774051d047a4cfeb77c33bce57ee0e0f9bd1466d15a980917ea93011bf26f6`  
		Last Modified: Tue, 27 Oct 2026 00:33:31 GMT  
		Size: 118.3 MB (118322287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d434e31ebded43fba2a188eb5fce8afc95b0c99c029189dcb103dc90e84f0190`  
		Last Modified: Tue, 27 Oct 2026 00:33:28 GMT  
		Size: 387.2 KB (387243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bdd532a4b2813fff0a0e23541712ddeb34f81253c5a1ac68e5d220741ab726c`  
		Last Modified: Tue, 27 Oct 2026 00:33:28 GMT  
		Size: 130.9 KB (130882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:681f5911d3b538042707e88a2d81fd9411f89ae999dd72f0454c411fbbd20b8c`  
		Last Modified: Tue, 27 Oct 2026 00:33:29 GMT  
		Size: 24.7 MB (24743967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13fc7fde54861fa32f94d1902aa7616743d8da15cd0436b91a6710cceb5ea2eb`  
		Last Modified: Tue, 27 Oct 2026 01:25:28 GMT  
		Size: 1.1 GB (1147209133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:647f8aba4d760f80f5f3f60bbad3df5315e57776b9ca1f16debbded10b65cc64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64309270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfca1ffcb24fb06076a6ce1f83b6a254fcb11938f04ae15380cf990fd55d8b15`

```dockerfile
```

-	Layers:
	-	`sha256:9bee7fabfc73402258025df9492ab91959387b1855fb62d931c2ce5d6f21e127`  
		Last Modified: Tue, 27 Oct 2026 01:25:00 GMT  
		Size: 64.3 MB (64299497 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca9d0d72877d755a246140482a17d6823ec8caf0853ea134519c4ef4a7e666fd`  
		Last Modified: Tue, 27 Oct 2026 01:24:58 GMT  
		Size: 9.8 KB (9773 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-ros-base`

```console
$ docker pull ros@sha256:3224ee150cb02eb89a5e0811bc267b57ed3a91b9c10191df57810726a7e916d7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:4e129b13f5c72d1630b03513af404353b44b30c793fd6d99b362f29ca7a15f50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.1 MB (341056668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3d5a3c4848ccd9628f04fe609c4046d0af59d88decca121f98b23eff97f38c1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9587.tar --tag 26.04
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:26:07.538865+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:26:07.538865+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9587.tar
# Mon, 26 Oct 2026 23:36:59 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:14 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:19 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:38:18 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:38:18 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:38:18 GMT
ENV ROS_DISTRO=lyrical
# Mon, 26 Oct 2026 23:38:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:38:18 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:38:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:38:18 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:22 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:24 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:edafa32f5d9e4d9629f0dbc6c01e63c79ff08133c01cfb7d3363aa8bd8a614cf`  
		Last Modified: Sun, 25 Oct 2026 13:21:15 GMT  
		Size: 42.1 MB (42139920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3f25b84a7d74315d94ee4108231f8f5e0cd2a44725a7204d5dd6ce91c151697`  
		Last Modified: Sun, 25 Oct 2026 13:21:18 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d2dbe9d0d314d1bfe0cd73bae0adba2dadd956e1608250977f598fb867e3a93`  
		Last Modified: Mon, 26 Oct 2026 23:38:58 GMT  
		Size: 741.3 KB (741301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a41a2a0d6e677f90bd0fa355d70b4f2711e8f8e6c4f1d1c66075a8d7af061ae`  
		Last Modified: Mon, 26 Oct 2026 23:38:59 GMT  
		Size: 9.8 MB (9785393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a983173e71ab036c5a58dc8c2e916ebaa0a05f72f8494f02920f3978d0acd865`  
		Last Modified: Mon, 26 Oct 2026 23:38:58 GMT  
		Size: 91.6 KB (91603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7ff07ea0b312b7b25b56e88763f69a3706f13de5272e269be66423ff570d727`  
		Last Modified: Mon, 26 Oct 2026 23:39:02 GMT  
		Size: 137.1 MB (137070595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f4e3a493d64b9e1b7421f33e96c7112065538405f9fe33f6e14d7f5f81e886c`  
		Last Modified: Mon, 26 Oct 2026 23:39:00 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1831ebfd6789d5571d1b51fe3007a9f23e23a7c88b5b9dd9462fa17680ac4ce0`  
		Last Modified: Tue, 27 Oct 2026 00:33:43 GMT  
		Size: 124.9 MB (124904993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a7cf84c2565566184ca6bd3003185007dee7f0fdd899bd871d99a92ab3282a`  
		Last Modified: Tue, 27 Oct 2026 00:33:39 GMT  
		Size: 387.2 KB (387236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:649636a805497d8532b32d46b7edf5f3bfc0ce6763ef64ae3065c1656dbf7085`  
		Last Modified: Tue, 27 Oct 2026 00:33:39 GMT  
		Size: 130.9 KB (130889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42512d8c3235513bab08d362daa6d76b14a07986a2df422717931bc552ff46e1`  
		Last Modified: Tue, 27 Oct 2026 00:33:41 GMT  
		Size: 25.8 MB (25804150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:5c82444ea7921e9c5e4544070401bc0bcf05afddc316d3c6238a13a09f156cd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29192489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaf14396f817c50a76708a0cd12bf33fe5517dcf952ae108ab7de2d26cf7c0ca`

```dockerfile
```

-	Layers:
	-	`sha256:2e5be385a8e3f4eba8d7eb4f427c0626369be09357d18ad0d52e8c8b11a3948c`  
		Last Modified: Tue, 27 Oct 2026 00:33:41 GMT  
		Size: 29.2 MB (29175039 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f674ae065ebdc59a2d321ad3792815945e9cea9012fcdab5cfa7801e02ded978`  
		Last Modified: Tue, 27 Oct 2026 00:33:39 GMT  
		Size: 17.4 KB (17450 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:67dd23cbd6c2dc5a06c6ab4152f917e4686320d90267fb4d33adeeca16bcb469
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.6 MB (325573055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:367e4fbc21c778ec9f73f366b1bd7929ac0d6523c7d2b5a7959af22e6cd78085`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 10:30:31 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9649.tar --tag 26.04
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:30:32.309136+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:30:32.309136+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9649.tar
# Mon, 26 Oct 2026 23:42:16 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:32 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:39 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:43:37 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:43:37 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:43:37 GMT
ENV ROS_DISTRO=lyrical
# Mon, 26 Oct 2026 23:43:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:43:38 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:43:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:43:38 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:17 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:18 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:afa7f7d582de8ee3433df193ede10fc2c50d3398de31c14d329b643e7a69b852`  
		Last Modified: Sun, 25 Oct 2026 13:21:25 GMT  
		Size: 41.1 MB (41122308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f01cc7d6fb3d703f324d1ccddfddeaa2e8c97cf4b5d6936a66396eaf4089d99`  
		Last Modified: Sun, 25 Oct 2026 13:21:28 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c6d174ad62b98a10bdcc2e5fdd4b2c3d1e89caa68aa60e7e7be3f3b501141f4`  
		Last Modified: Mon, 26 Oct 2026 23:44:17 GMT  
		Size: 741.8 KB (741778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdbd00d6583bc95914bd1cf18813fdffb110b69316632d834a5ced65f1ee298b`  
		Last Modified: Mon, 26 Oct 2026 23:44:17 GMT  
		Size: 9.6 MB (9610059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:102aa0b5a2d5952048b7f2995c7940123d06f921b29cb4b3bad990ff8dd09374`  
		Last Modified: Mon, 26 Oct 2026 23:44:17 GMT  
		Size: 92.2 KB (92187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c42ae2e1422836cc5eecb27de617f02db89b64719ed358da64e30a4f2fd7cd77`  
		Last Modified: Mon, 26 Oct 2026 23:44:20 GMT  
		Size: 130.4 MB (130421760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8c398aa1aa8fcd5305f8b1b6c8599f305a7648811d8f503f3ebea31264f5475`  
		Last Modified: Mon, 26 Oct 2026 23:44:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8774051d047a4cfeb77c33bce57ee0e0f9bd1466d15a980917ea93011bf26f6`  
		Last Modified: Tue, 27 Oct 2026 00:33:31 GMT  
		Size: 118.3 MB (118322287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d434e31ebded43fba2a188eb5fce8afc95b0c99c029189dcb103dc90e84f0190`  
		Last Modified: Tue, 27 Oct 2026 00:33:28 GMT  
		Size: 387.2 KB (387243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bdd532a4b2813fff0a0e23541712ddeb34f81253c5a1ac68e5d220741ab726c`  
		Last Modified: Tue, 27 Oct 2026 00:33:28 GMT  
		Size: 130.9 KB (130882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:681f5911d3b538042707e88a2d81fd9411f89ae999dd72f0454c411fbbd20b8c`  
		Last Modified: Tue, 27 Oct 2026 00:33:29 GMT  
		Size: 24.7 MB (24743967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:ec6f9dd9a0eadc3f37a5e9029595e403d5c5d0c5f2e7b22af6bcc4e7c745207e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29257270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fc762095d764d98038a1bfcccffc35a8ce4db8c45814bf903265431571bb11c`

```dockerfile
```

-	Layers:
	-	`sha256:3b04639c582c07371c30d49d1dbb5bbe5cd0cf0ec25aaeedcd1be241a911d3a9`  
		Last Modified: Tue, 27 Oct 2026 00:33:29 GMT  
		Size: 29.2 MB (29239671 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1f57a55282fd7882bcb37bf701de67e984ab2ec77ffd248140e0d9ec7883c18`  
		Last Modified: Tue, 27 Oct 2026 00:33:28 GMT  
		Size: 17.6 KB (17599 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-ros-base-resolute`

```console
$ docker pull ros@sha256:3224ee150cb02eb89a5e0811bc267b57ed3a91b9c10191df57810726a7e916d7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-base-resolute` - linux; amd64

```console
$ docker pull ros@sha256:4e129b13f5c72d1630b03513af404353b44b30c793fd6d99b362f29ca7a15f50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.1 MB (341056668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3d5a3c4848ccd9628f04fe609c4046d0af59d88decca121f98b23eff97f38c1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9587.tar --tag 26.04
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:26:07.538865+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:26:07.538865+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9587.tar
# Mon, 26 Oct 2026 23:36:59 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:14 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:19 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:38:18 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:38:18 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:38:18 GMT
ENV ROS_DISTRO=lyrical
# Mon, 26 Oct 2026 23:38:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:38:18 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:38:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:38:18 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:22 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:24 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:edafa32f5d9e4d9629f0dbc6c01e63c79ff08133c01cfb7d3363aa8bd8a614cf`  
		Last Modified: Sun, 25 Oct 2026 13:21:15 GMT  
		Size: 42.1 MB (42139920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3f25b84a7d74315d94ee4108231f8f5e0cd2a44725a7204d5dd6ce91c151697`  
		Last Modified: Sun, 25 Oct 2026 13:21:18 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d2dbe9d0d314d1bfe0cd73bae0adba2dadd956e1608250977f598fb867e3a93`  
		Last Modified: Mon, 26 Oct 2026 23:38:58 GMT  
		Size: 741.3 KB (741301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a41a2a0d6e677f90bd0fa355d70b4f2711e8f8e6c4f1d1c66075a8d7af061ae`  
		Last Modified: Mon, 26 Oct 2026 23:38:59 GMT  
		Size: 9.8 MB (9785393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a983173e71ab036c5a58dc8c2e916ebaa0a05f72f8494f02920f3978d0acd865`  
		Last Modified: Mon, 26 Oct 2026 23:38:58 GMT  
		Size: 91.6 KB (91603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7ff07ea0b312b7b25b56e88763f69a3706f13de5272e269be66423ff570d727`  
		Last Modified: Mon, 26 Oct 2026 23:39:02 GMT  
		Size: 137.1 MB (137070595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f4e3a493d64b9e1b7421f33e96c7112065538405f9fe33f6e14d7f5f81e886c`  
		Last Modified: Mon, 26 Oct 2026 23:39:00 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1831ebfd6789d5571d1b51fe3007a9f23e23a7c88b5b9dd9462fa17680ac4ce0`  
		Last Modified: Tue, 27 Oct 2026 00:33:43 GMT  
		Size: 124.9 MB (124904993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a7cf84c2565566184ca6bd3003185007dee7f0fdd899bd871d99a92ab3282a`  
		Last Modified: Tue, 27 Oct 2026 00:33:39 GMT  
		Size: 387.2 KB (387236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:649636a805497d8532b32d46b7edf5f3bfc0ce6763ef64ae3065c1656dbf7085`  
		Last Modified: Tue, 27 Oct 2026 00:33:39 GMT  
		Size: 130.9 KB (130889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42512d8c3235513bab08d362daa6d76b14a07986a2df422717931bc552ff46e1`  
		Last Modified: Tue, 27 Oct 2026 00:33:41 GMT  
		Size: 25.8 MB (25804150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:5c82444ea7921e9c5e4544070401bc0bcf05afddc316d3c6238a13a09f156cd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29192489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaf14396f817c50a76708a0cd12bf33fe5517dcf952ae108ab7de2d26cf7c0ca`

```dockerfile
```

-	Layers:
	-	`sha256:2e5be385a8e3f4eba8d7eb4f427c0626369be09357d18ad0d52e8c8b11a3948c`  
		Last Modified: Tue, 27 Oct 2026 00:33:41 GMT  
		Size: 29.2 MB (29175039 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f674ae065ebdc59a2d321ad3792815945e9cea9012fcdab5cfa7801e02ded978`  
		Last Modified: Tue, 27 Oct 2026 00:33:39 GMT  
		Size: 17.4 KB (17450 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-ros-base-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:67dd23cbd6c2dc5a06c6ab4152f917e4686320d90267fb4d33adeeca16bcb469
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.6 MB (325573055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:367e4fbc21c778ec9f73f366b1bd7929ac0d6523c7d2b5a7959af22e6cd78085`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 10:30:31 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9649.tar --tag 26.04
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:30:32.309136+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:30:32.309136+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9649.tar
# Mon, 26 Oct 2026 23:42:16 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:32 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:39 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:43:37 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:43:37 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:43:37 GMT
ENV ROS_DISTRO=lyrical
# Mon, 26 Oct 2026 23:43:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:43:38 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:43:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:43:38 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:17 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:18 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:afa7f7d582de8ee3433df193ede10fc2c50d3398de31c14d329b643e7a69b852`  
		Last Modified: Sun, 25 Oct 2026 13:21:25 GMT  
		Size: 41.1 MB (41122308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f01cc7d6fb3d703f324d1ccddfddeaa2e8c97cf4b5d6936a66396eaf4089d99`  
		Last Modified: Sun, 25 Oct 2026 13:21:28 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c6d174ad62b98a10bdcc2e5fdd4b2c3d1e89caa68aa60e7e7be3f3b501141f4`  
		Last Modified: Mon, 26 Oct 2026 23:44:17 GMT  
		Size: 741.8 KB (741778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdbd00d6583bc95914bd1cf18813fdffb110b69316632d834a5ced65f1ee298b`  
		Last Modified: Mon, 26 Oct 2026 23:44:17 GMT  
		Size: 9.6 MB (9610059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:102aa0b5a2d5952048b7f2995c7940123d06f921b29cb4b3bad990ff8dd09374`  
		Last Modified: Mon, 26 Oct 2026 23:44:17 GMT  
		Size: 92.2 KB (92187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c42ae2e1422836cc5eecb27de617f02db89b64719ed358da64e30a4f2fd7cd77`  
		Last Modified: Mon, 26 Oct 2026 23:44:20 GMT  
		Size: 130.4 MB (130421760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8c398aa1aa8fcd5305f8b1b6c8599f305a7648811d8f503f3ebea31264f5475`  
		Last Modified: Mon, 26 Oct 2026 23:44:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8774051d047a4cfeb77c33bce57ee0e0f9bd1466d15a980917ea93011bf26f6`  
		Last Modified: Tue, 27 Oct 2026 00:33:31 GMT  
		Size: 118.3 MB (118322287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d434e31ebded43fba2a188eb5fce8afc95b0c99c029189dcb103dc90e84f0190`  
		Last Modified: Tue, 27 Oct 2026 00:33:28 GMT  
		Size: 387.2 KB (387243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bdd532a4b2813fff0a0e23541712ddeb34f81253c5a1ac68e5d220741ab726c`  
		Last Modified: Tue, 27 Oct 2026 00:33:28 GMT  
		Size: 130.9 KB (130882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:681f5911d3b538042707e88a2d81fd9411f89ae999dd72f0454c411fbbd20b8c`  
		Last Modified: Tue, 27 Oct 2026 00:33:29 GMT  
		Size: 24.7 MB (24743967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:ec6f9dd9a0eadc3f37a5e9029595e403d5c5d0c5f2e7b22af6bcc4e7c745207e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29257270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fc762095d764d98038a1bfcccffc35a8ce4db8c45814bf903265431571bb11c`

```dockerfile
```

-	Layers:
	-	`sha256:3b04639c582c07371c30d49d1dbb5bbe5cd0cf0ec25aaeedcd1be241a911d3a9`  
		Last Modified: Tue, 27 Oct 2026 00:33:29 GMT  
		Size: 29.2 MB (29239671 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1f57a55282fd7882bcb37bf701de67e984ab2ec77ffd248140e0d9ec7883c18`  
		Last Modified: Tue, 27 Oct 2026 00:33:28 GMT  
		Size: 17.6 KB (17599 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-ros-core`

```console
$ docker pull ros@sha256:9401a1727b686a34b6775b43365f3805d47472840a4041dcf0f0ee3601992047
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:bb9505717ac530f8d8ba658cc0e4c62e285c8d5f129fcdab6bd8bf232728cccb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.8 MB (189829400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30ccb560bb8605ffbd80d73e34e199b8b38cd9ebb52e2beacfff39c31eb62b8b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9587.tar --tag 26.04
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:26:07.538865+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:26:07.538865+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9587.tar
# Mon, 26 Oct 2026 23:36:59 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:14 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:19 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:38:18 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:38:18 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:38:18 GMT
ENV ROS_DISTRO=lyrical
# Mon, 26 Oct 2026 23:38:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:38:18 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:38:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:38:18 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:edafa32f5d9e4d9629f0dbc6c01e63c79ff08133c01cfb7d3363aa8bd8a614cf`  
		Last Modified: Sun, 25 Oct 2026 13:21:15 GMT  
		Size: 42.1 MB (42139920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3f25b84a7d74315d94ee4108231f8f5e0cd2a44725a7204d5dd6ce91c151697`  
		Last Modified: Sun, 25 Oct 2026 13:21:18 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d2dbe9d0d314d1bfe0cd73bae0adba2dadd956e1608250977f598fb867e3a93`  
		Last Modified: Mon, 26 Oct 2026 23:38:58 GMT  
		Size: 741.3 KB (741301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a41a2a0d6e677f90bd0fa355d70b4f2711e8f8e6c4f1d1c66075a8d7af061ae`  
		Last Modified: Mon, 26 Oct 2026 23:38:59 GMT  
		Size: 9.8 MB (9785393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a983173e71ab036c5a58dc8c2e916ebaa0a05f72f8494f02920f3978d0acd865`  
		Last Modified: Mon, 26 Oct 2026 23:38:58 GMT  
		Size: 91.6 KB (91603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7ff07ea0b312b7b25b56e88763f69a3706f13de5272e269be66423ff570d727`  
		Last Modified: Mon, 26 Oct 2026 23:39:02 GMT  
		Size: 137.1 MB (137070595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f4e3a493d64b9e1b7421f33e96c7112065538405f9fe33f6e14d7f5f81e886c`  
		Last Modified: Mon, 26 Oct 2026 23:39:00 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:811b18ea2fb5950a1e8eb35334b6b6ca5058bb211ffa500b522fd2f59688e8fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22789126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cadfe35bd13d06dadee66981c17592374dd394f48662d6cc00c49e11931fda8d`

```dockerfile
```

-	Layers:
	-	`sha256:d61e4e8780f43823113b327425d38cb950f6a80910b53d1806f5e8527522e251`  
		Last Modified: Mon, 26 Oct 2026 23:38:59 GMT  
		Size: 22.8 MB (22773545 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82a14ed0b7f3eea74082068c42c9a8bf34dba98eab3c30ac7015b3fcb5787304`  
		Last Modified: Mon, 26 Oct 2026 23:38:58 GMT  
		Size: 15.6 KB (15581 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:1d7b8e19e163626ff4e1a727422c92b92101d9fd16f9b72c75e5a334a14130f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.0 MB (181988676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ef62896ffa51eade82bca3dc52f29887ccb2091e0f7c126490c0f7988a17472`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 10:30:31 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9649.tar --tag 26.04
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:30:32.309136+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:30:32.309136+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9649.tar
# Mon, 26 Oct 2026 23:42:16 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:32 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:39 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:43:37 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:43:37 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:43:37 GMT
ENV ROS_DISTRO=lyrical
# Mon, 26 Oct 2026 23:43:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:43:38 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:43:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:43:38 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:afa7f7d582de8ee3433df193ede10fc2c50d3398de31c14d329b643e7a69b852`  
		Last Modified: Sun, 25 Oct 2026 13:21:25 GMT  
		Size: 41.1 MB (41122308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f01cc7d6fb3d703f324d1ccddfddeaa2e8c97cf4b5d6936a66396eaf4089d99`  
		Last Modified: Sun, 25 Oct 2026 13:21:28 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c6d174ad62b98a10bdcc2e5fdd4b2c3d1e89caa68aa60e7e7be3f3b501141f4`  
		Last Modified: Mon, 26 Oct 2026 23:44:17 GMT  
		Size: 741.8 KB (741778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdbd00d6583bc95914bd1cf18813fdffb110b69316632d834a5ced65f1ee298b`  
		Last Modified: Mon, 26 Oct 2026 23:44:17 GMT  
		Size: 9.6 MB (9610059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:102aa0b5a2d5952048b7f2995c7940123d06f921b29cb4b3bad990ff8dd09374`  
		Last Modified: Mon, 26 Oct 2026 23:44:17 GMT  
		Size: 92.2 KB (92187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c42ae2e1422836cc5eecb27de617f02db89b64719ed358da64e30a4f2fd7cd77`  
		Last Modified: Mon, 26 Oct 2026 23:44:20 GMT  
		Size: 130.4 MB (130421760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8c398aa1aa8fcd5305f8b1b6c8599f305a7648811d8f503f3ebea31264f5475`  
		Last Modified: Mon, 26 Oct 2026 23:44:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:ea01d8f3d55eb69cc5bc03e06859b5625bdf3b0a083ea6db72d86c89bc834b49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22761945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa3f9e928b6c69c3ce24e7a3b1c7e0e20dbba9c58793de58dda850f13b870711`

```dockerfile
```

-	Layers:
	-	`sha256:33435cc311dec686c85470ee6caad7d4506e0b3dcf0407262c405b6414680b09`  
		Last Modified: Mon, 26 Oct 2026 23:44:18 GMT  
		Size: 22.7 MB (22746237 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14675df32b0a575523b37256604a36a0d6f24a54dc548f1f93e64172d875c111`  
		Last Modified: Mon, 26 Oct 2026 23:44:17 GMT  
		Size: 15.7 KB (15708 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-ros-core-resolute`

```console
$ docker pull ros@sha256:9401a1727b686a34b6775b43365f3805d47472840a4041dcf0f0ee3601992047
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-core-resolute` - linux; amd64

```console
$ docker pull ros@sha256:bb9505717ac530f8d8ba658cc0e4c62e285c8d5f129fcdab6bd8bf232728cccb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.8 MB (189829400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30ccb560bb8605ffbd80d73e34e199b8b38cd9ebb52e2beacfff39c31eb62b8b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9587.tar --tag 26.04
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:26:07.538865+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:26:07.538865+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9587.tar
# Mon, 26 Oct 2026 23:36:59 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:14 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:19 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:38:18 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:38:18 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:38:18 GMT
ENV ROS_DISTRO=lyrical
# Mon, 26 Oct 2026 23:38:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:38:18 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:38:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:38:18 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:edafa32f5d9e4d9629f0dbc6c01e63c79ff08133c01cfb7d3363aa8bd8a614cf`  
		Last Modified: Sun, 25 Oct 2026 13:21:15 GMT  
		Size: 42.1 MB (42139920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3f25b84a7d74315d94ee4108231f8f5e0cd2a44725a7204d5dd6ce91c151697`  
		Last Modified: Sun, 25 Oct 2026 13:21:18 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d2dbe9d0d314d1bfe0cd73bae0adba2dadd956e1608250977f598fb867e3a93`  
		Last Modified: Mon, 26 Oct 2026 23:38:58 GMT  
		Size: 741.3 KB (741301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a41a2a0d6e677f90bd0fa355d70b4f2711e8f8e6c4f1d1c66075a8d7af061ae`  
		Last Modified: Mon, 26 Oct 2026 23:38:59 GMT  
		Size: 9.8 MB (9785393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a983173e71ab036c5a58dc8c2e916ebaa0a05f72f8494f02920f3978d0acd865`  
		Last Modified: Mon, 26 Oct 2026 23:38:58 GMT  
		Size: 91.6 KB (91603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7ff07ea0b312b7b25b56e88763f69a3706f13de5272e269be66423ff570d727`  
		Last Modified: Mon, 26 Oct 2026 23:39:02 GMT  
		Size: 137.1 MB (137070595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f4e3a493d64b9e1b7421f33e96c7112065538405f9fe33f6e14d7f5f81e886c`  
		Last Modified: Mon, 26 Oct 2026 23:39:00 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:811b18ea2fb5950a1e8eb35334b6b6ca5058bb211ffa500b522fd2f59688e8fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22789126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cadfe35bd13d06dadee66981c17592374dd394f48662d6cc00c49e11931fda8d`

```dockerfile
```

-	Layers:
	-	`sha256:d61e4e8780f43823113b327425d38cb950f6a80910b53d1806f5e8527522e251`  
		Last Modified: Mon, 26 Oct 2026 23:38:59 GMT  
		Size: 22.8 MB (22773545 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82a14ed0b7f3eea74082068c42c9a8bf34dba98eab3c30ac7015b3fcb5787304`  
		Last Modified: Mon, 26 Oct 2026 23:38:58 GMT  
		Size: 15.6 KB (15581 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-ros-core-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:1d7b8e19e163626ff4e1a727422c92b92101d9fd16f9b72c75e5a334a14130f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.0 MB (181988676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ef62896ffa51eade82bca3dc52f29887ccb2091e0f7c126490c0f7988a17472`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 10:30:31 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9649.tar --tag 26.04
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:30:32.309136+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:30:32.309136+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9649.tar
# Mon, 26 Oct 2026 23:42:16 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:32 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:39 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:43:37 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:43:37 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:43:37 GMT
ENV ROS_DISTRO=lyrical
# Mon, 26 Oct 2026 23:43:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:43:38 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:43:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:43:38 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:afa7f7d582de8ee3433df193ede10fc2c50d3398de31c14d329b643e7a69b852`  
		Last Modified: Sun, 25 Oct 2026 13:21:25 GMT  
		Size: 41.1 MB (41122308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f01cc7d6fb3d703f324d1ccddfddeaa2e8c97cf4b5d6936a66396eaf4089d99`  
		Last Modified: Sun, 25 Oct 2026 13:21:28 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c6d174ad62b98a10bdcc2e5fdd4b2c3d1e89caa68aa60e7e7be3f3b501141f4`  
		Last Modified: Mon, 26 Oct 2026 23:44:17 GMT  
		Size: 741.8 KB (741778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdbd00d6583bc95914bd1cf18813fdffb110b69316632d834a5ced65f1ee298b`  
		Last Modified: Mon, 26 Oct 2026 23:44:17 GMT  
		Size: 9.6 MB (9610059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:102aa0b5a2d5952048b7f2995c7940123d06f921b29cb4b3bad990ff8dd09374`  
		Last Modified: Mon, 26 Oct 2026 23:44:17 GMT  
		Size: 92.2 KB (92187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c42ae2e1422836cc5eecb27de617f02db89b64719ed358da64e30a4f2fd7cd77`  
		Last Modified: Mon, 26 Oct 2026 23:44:20 GMT  
		Size: 130.4 MB (130421760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8c398aa1aa8fcd5305f8b1b6c8599f305a7648811d8f503f3ebea31264f5475`  
		Last Modified: Mon, 26 Oct 2026 23:44:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:ea01d8f3d55eb69cc5bc03e06859b5625bdf3b0a083ea6db72d86c89bc834b49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22761945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa3f9e928b6c69c3ce24e7a3b1c7e0e20dbba9c58793de58dda850f13b870711`

```dockerfile
```

-	Layers:
	-	`sha256:33435cc311dec686c85470ee6caad7d4506e0b3dcf0407262c405b6414680b09`  
		Last Modified: Mon, 26 Oct 2026 23:44:18 GMT  
		Size: 22.7 MB (22746237 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14675df32b0a575523b37256604a36a0d6f24a54dc548f1f93e64172d875c111`  
		Last Modified: Mon, 26 Oct 2026 23:44:17 GMT  
		Size: 15.7 KB (15708 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling`

```console
$ docker pull ros@sha256:fd1a2cf7995148ad54d29fbf452b9084b9b8a386ee36ee8241495410903a58cf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling` - linux; amd64

```console
$ docker pull ros@sha256:e1169629f7bba0a9306d834ea1b485108811b50f927704147697596af8b5bc67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.2 MB (341182571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8fc6c82cb444776de90796cf2a645abf708d64bba4c1d46791824e4497ed8e6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9587.tar --tag 26.04
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:26:07.538865+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:26:07.538865+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9587.tar
# Mon, 26 Oct 2026 23:37:12 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:25 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:31 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:38:25 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:38:25 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:38:25 GMT
ENV ROS_DISTRO=rolling
# Mon, 26 Oct 2026 23:38:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:38:25 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:38:25 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:38:25 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:26 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:28 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:30 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:edafa32f5d9e4d9629f0dbc6c01e63c79ff08133c01cfb7d3363aa8bd8a614cf`  
		Last Modified: Sun, 25 Oct 2026 13:21:15 GMT  
		Size: 42.1 MB (42139920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3f25b84a7d74315d94ee4108231f8f5e0cd2a44725a7204d5dd6ce91c151697`  
		Last Modified: Sun, 25 Oct 2026 13:21:18 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a14660459e36819afb4f42c3b562f2fb94add0a25afaee3257ba5d6e53e77790`  
		Last Modified: Mon, 26 Oct 2026 23:39:05 GMT  
		Size: 741.3 KB (741293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15a69eee9681333a4efaf3d0d0a3076fd6e279270ac3ea1ef1ba75694686a998`  
		Last Modified: Mon, 26 Oct 2026 23:39:06 GMT  
		Size: 9.8 MB (9785466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c69a06624fa4c3b4f144480f53ccac9ddcd3c8b51065efcbe7d6e686dbb6633`  
		Last Modified: Mon, 26 Oct 2026 23:39:05 GMT  
		Size: 91.6 KB (91604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8849a5919917964cb06cf40f7199e0242c7384d3ba4943d792839378254c6d0a`  
		Last Modified: Mon, 26 Oct 2026 23:39:08 GMT  
		Size: 137.1 MB (137147923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc2c9144426177e7e2a237be2a53ad8d3c8f32e6994e6a9b8b67858a3d0e2eb7`  
		Last Modified: Mon, 26 Oct 2026 23:39:06 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9ed7a179974459052c511757f0bd59a8d16a5509fdf691f2bb48c76b2bef229`  
		Last Modified: Tue, 27 Oct 2026 00:33:43 GMT  
		Size: 124.9 MB (124904643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:252d4f78782eb8b220e0945af7f8f3e33b26bfb5f50ae89f0b3c6ab928373bf0`  
		Last Modified: Tue, 27 Oct 2026 00:33:40 GMT  
		Size: 369.0 KB (368965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efd83114e35e696de0c8cb2b3986936072525b11e9e34ca77f2f59ded1110a7a`  
		Last Modified: Tue, 27 Oct 2026 00:33:40 GMT  
		Size: 130.9 KB (130914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd1557c9c61cd6aade629a6aec07ece42d4a0e2dd557c02687abebd6a8d999c3`  
		Last Modified: Tue, 27 Oct 2026 00:33:41 GMT  
		Size: 25.9 MB (25871254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling` - unknown; unknown

```console
$ docker pull ros@sha256:d0636348624aa3b5a84d1c6457d58a8ea70b6307bdc3b4aa9e02e2ae735dff3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29248362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:217cba709fcb43c112784d6702491313f827c35543bd6e350ef1e11d20c5099f`

```dockerfile
```

-	Layers:
	-	`sha256:110ea622c35b7fb8f84bc20acc04413dce93a993d37d601a23c5eace8e89b25c`  
		Last Modified: Tue, 27 Oct 2026 00:33:41 GMT  
		Size: 29.2 MB (29231204 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66810ece0301aebd3b4848d72ab8ba642a6e9622c871de3c98889a2b99a49797`  
		Last Modified: Tue, 27 Oct 2026 00:33:40 GMT  
		Size: 17.2 KB (17158 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:738ae99d64665fa9528c344cdd05bd879dcd9a4cd3af286e49056ccdf0dd5c8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.7 MB (325720958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7683d303efa386e6cb122deb60b676b9f8592748fdc8aa7271eb5b22058d93be`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 10:30:31 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9649.tar --tag 26.04
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:30:32.309136+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:30:32.309136+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9649.tar
# Mon, 26 Oct 2026 23:42:14 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:25 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:33 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:43:29 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:43:29 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:43:29 GMT
ENV ROS_DISTRO=rolling
# Mon, 26 Oct 2026 23:43:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:43:29 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:43:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:43:29 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:18 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:19 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:afa7f7d582de8ee3433df193ede10fc2c50d3398de31c14d329b643e7a69b852`  
		Last Modified: Sun, 25 Oct 2026 13:21:25 GMT  
		Size: 41.1 MB (41122308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f01cc7d6fb3d703f324d1ccddfddeaa2e8c97cf4b5d6936a66396eaf4089d99`  
		Last Modified: Sun, 25 Oct 2026 13:21:28 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f790d3a8fccccad8c467b7611b292cb39e7d81daa7262a55cdf299d65670ac3d`  
		Last Modified: Mon, 26 Oct 2026 23:44:09 GMT  
		Size: 741.8 KB (741780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd345fd1808e70a19f54f03da15bb2e6d50f7cdafa9163b09ef7f6857f204277`  
		Last Modified: Mon, 26 Oct 2026 23:44:10 GMT  
		Size: 9.6 MB (9610100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8006730f2e96e614b51248f7b69191e200b7e4a3f8177b90475107fb9abdd84d`  
		Last Modified: Mon, 26 Oct 2026 23:44:09 GMT  
		Size: 92.2 KB (92210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51312d6be673ce69bdd971e586875798647667e03a5a4356cef8c9901adba89f`  
		Last Modified: Mon, 26 Oct 2026 23:44:12 GMT  
		Size: 130.5 MB (130533794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8c398aa1aa8fcd5305f8b1b6c8599f305a7648811d8f503f3ebea31264f5475`  
		Last Modified: Mon, 26 Oct 2026 23:44:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18930bcaeb48b2384ec342370be3733979c112642e7dd420ff5984dd638a3439`  
		Last Modified: Tue, 27 Oct 2026 00:33:34 GMT  
		Size: 118.3 MB (118323370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b89d405af3c70c832373867ce4c5b3f1baf88fc8e61827956a186c7f7d38ce6a`  
		Last Modified: Tue, 27 Oct 2026 00:33:31 GMT  
		Size: 369.0 KB (368965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f203046fa2b5ede5846fbf8aa17fe2ca117c1712c41160049355889d4fb9565d`  
		Last Modified: Tue, 27 Oct 2026 00:33:31 GMT  
		Size: 130.9 KB (130888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb49ee439281413efa55c8c72fb0d1605fabdfbb07edd4d9a780e4a25303c4ad`  
		Last Modified: Tue, 27 Oct 2026 00:33:32 GMT  
		Size: 24.8 MB (24796959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling` - unknown; unknown

```console
$ docker pull ros@sha256:0d9422ae614845d70d12f2e34ad018d3ca1712927998f8dfccc9deffd84afeda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29313118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c895198a3e23b158e89ff95bba212f4774ba4828f555f27e88757a05835e945d`

```dockerfile
```

-	Layers:
	-	`sha256:7c0137c5b7a7b708670f6e7c35fa6d0c5ab246c7d43cce448c7b29ed4c7cb741`  
		Last Modified: Tue, 27 Oct 2026 00:33:32 GMT  
		Size: 29.3 MB (29295824 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c6b82499956d5056e9db974240d1208e1e8e806c8cb58fe4fb3c1b471bdeef9`  
		Last Modified: Tue, 27 Oct 2026 00:33:30 GMT  
		Size: 17.3 KB (17294 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-perception`

```console
$ docker pull ros@sha256:094d3ddb12b918d390cc41f5f7ff343778e69a56eb35d7bbf6c12ed3d3aec4d4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-perception` - linux; amd64

```console
$ docker pull ros@sha256:fbcc074181d1f52e3e4fbd6f67b3a82e2c2041b1c92ace331c93b5329faeab41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1529713078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b50d55ffad8d943dc2148e56eb1fea1ef43f507cc8d253ac77c246f96687379`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9587.tar --tag 26.04
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:26:07.538865+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:26:07.538865+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9587.tar
# Mon, 26 Oct 2026 23:37:12 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:25 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:31 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:38:25 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:38:25 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:38:25 GMT
ENV ROS_DISTRO=rolling
# Mon, 26 Oct 2026 23:38:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:38:25 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:38:25 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:38:25 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:26 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:28 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:30 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 01:21:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:edafa32f5d9e4d9629f0dbc6c01e63c79ff08133c01cfb7d3363aa8bd8a614cf`  
		Last Modified: Sun, 25 Oct 2026 13:21:15 GMT  
		Size: 42.1 MB (42139920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3f25b84a7d74315d94ee4108231f8f5e0cd2a44725a7204d5dd6ce91c151697`  
		Last Modified: Sun, 25 Oct 2026 13:21:18 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a14660459e36819afb4f42c3b562f2fb94add0a25afaee3257ba5d6e53e77790`  
		Last Modified: Mon, 26 Oct 2026 23:39:05 GMT  
		Size: 741.3 KB (741293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15a69eee9681333a4efaf3d0d0a3076fd6e279270ac3ea1ef1ba75694686a998`  
		Last Modified: Mon, 26 Oct 2026 23:39:06 GMT  
		Size: 9.8 MB (9785466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c69a06624fa4c3b4f144480f53ccac9ddcd3c8b51065efcbe7d6e686dbb6633`  
		Last Modified: Mon, 26 Oct 2026 23:39:05 GMT  
		Size: 91.6 KB (91604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8849a5919917964cb06cf40f7199e0242c7384d3ba4943d792839378254c6d0a`  
		Last Modified: Mon, 26 Oct 2026 23:39:08 GMT  
		Size: 137.1 MB (137147923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc2c9144426177e7e2a237be2a53ad8d3c8f32e6994e6a9b8b67858a3d0e2eb7`  
		Last Modified: Mon, 26 Oct 2026 23:39:06 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9ed7a179974459052c511757f0bd59a8d16a5509fdf691f2bb48c76b2bef229`  
		Last Modified: Tue, 27 Oct 2026 00:33:43 GMT  
		Size: 124.9 MB (124904643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:252d4f78782eb8b220e0945af7f8f3e33b26bfb5f50ae89f0b3c6ab928373bf0`  
		Last Modified: Tue, 27 Oct 2026 00:33:40 GMT  
		Size: 369.0 KB (368965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efd83114e35e696de0c8cb2b3986936072525b11e9e34ca77f2f59ded1110a7a`  
		Last Modified: Tue, 27 Oct 2026 00:33:40 GMT  
		Size: 130.9 KB (130914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd1557c9c61cd6aade629a6aec07ece42d4a0e2dd557c02687abebd6a8d999c3`  
		Last Modified: Tue, 27 Oct 2026 00:33:41 GMT  
		Size: 25.9 MB (25871254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4f102a243d3bc7b3bd1645908775c38335b1e3489276c1659f4ee2ea4deb7fa`  
		Last Modified: Tue, 27 Oct 2026 01:25:51 GMT  
		Size: 1.2 GB (1188530507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-perception` - unknown; unknown

```console
$ docker pull ros@sha256:e338727faee39ff09202de210b90a3016ad1fbf129f4f5aeb1aa8401d2544865
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.5 MB (64452774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9f36bf1f28249bdf8df6f9ed0da5da4159b1e7f5c98e637542f202e749cb36d`

```dockerfile
```

-	Layers:
	-	`sha256:6b281297ceded011592f0eb2917d87440c6a51fdcea88ffbdc170d14642d763f`  
		Last Modified: Tue, 27 Oct 2026 01:25:31 GMT  
		Size: 64.4 MB (64443081 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:deb0216983fd5b7778a76e779fd206978ffc24f79123b95fd5cc73b91a9a34b2`  
		Last Modified: Tue, 27 Oct 2026 01:25:29 GMT  
		Size: 9.7 KB (9693 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6a89f22db4c5da961b54b060f01058a6fe62cf8e2413e84626d188c80abcadef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1472868950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d91416ef5386bd3e6cc60823165aa8b0fc1706bb2dec90f472cbc65483d8cae`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 10:30:31 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9649.tar --tag 26.04
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:30:32.309136+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:30:32.309136+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9649.tar
# Mon, 26 Oct 2026 23:42:14 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:25 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:33 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:43:29 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:43:29 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:43:29 GMT
ENV ROS_DISTRO=rolling
# Mon, 26 Oct 2026 23:43:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:43:29 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:43:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:43:29 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:18 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:19 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 01:19:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:afa7f7d582de8ee3433df193ede10fc2c50d3398de31c14d329b643e7a69b852`  
		Last Modified: Sun, 25 Oct 2026 13:21:25 GMT  
		Size: 41.1 MB (41122308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f01cc7d6fb3d703f324d1ccddfddeaa2e8c97cf4b5d6936a66396eaf4089d99`  
		Last Modified: Sun, 25 Oct 2026 13:21:28 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f790d3a8fccccad8c467b7611b292cb39e7d81daa7262a55cdf299d65670ac3d`  
		Last Modified: Mon, 26 Oct 2026 23:44:09 GMT  
		Size: 741.8 KB (741780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd345fd1808e70a19f54f03da15bb2e6d50f7cdafa9163b09ef7f6857f204277`  
		Last Modified: Mon, 26 Oct 2026 23:44:10 GMT  
		Size: 9.6 MB (9610100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8006730f2e96e614b51248f7b69191e200b7e4a3f8177b90475107fb9abdd84d`  
		Last Modified: Mon, 26 Oct 2026 23:44:09 GMT  
		Size: 92.2 KB (92210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51312d6be673ce69bdd971e586875798647667e03a5a4356cef8c9901adba89f`  
		Last Modified: Mon, 26 Oct 2026 23:44:12 GMT  
		Size: 130.5 MB (130533794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8c398aa1aa8fcd5305f8b1b6c8599f305a7648811d8f503f3ebea31264f5475`  
		Last Modified: Mon, 26 Oct 2026 23:44:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18930bcaeb48b2384ec342370be3733979c112642e7dd420ff5984dd638a3439`  
		Last Modified: Tue, 27 Oct 2026 00:33:34 GMT  
		Size: 118.3 MB (118323370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b89d405af3c70c832373867ce4c5b3f1baf88fc8e61827956a186c7f7d38ce6a`  
		Last Modified: Tue, 27 Oct 2026 00:33:31 GMT  
		Size: 369.0 KB (368965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f203046fa2b5ede5846fbf8aa17fe2ca117c1712c41160049355889d4fb9565d`  
		Last Modified: Tue, 27 Oct 2026 00:33:31 GMT  
		Size: 130.9 KB (130888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb49ee439281413efa55c8c72fb0d1605fabdfbb07edd4d9a780e4a25303c4ad`  
		Last Modified: Tue, 27 Oct 2026 00:33:32 GMT  
		Size: 24.8 MB (24796959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f8df855a2626eaddac00fd219d4c7a0c7fa715b55a0e8c810b14282e938bf85`  
		Last Modified: Tue, 27 Oct 2026 01:24:10 GMT  
		Size: 1.1 GB (1147147992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-perception` - unknown; unknown

```console
$ docker pull ros@sha256:5b88d0bc06b6f24b8ecc3550dc0e0aa7cc10051ac738db9a059f87f59a31ace8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64367072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae9cb319265669d0437baf02a9c455aca1ff15ffefd0993dd5a32ddff35b46cd`

```dockerfile
```

-	Layers:
	-	`sha256:635b7321b49a6bcdc0f1abaafc06b7e3c0414b3f68c834d5efc37a7f53d6df28`  
		Last Modified: Tue, 27 Oct 2026 01:23:51 GMT  
		Size: 64.4 MB (64357299 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3230c58ba74b4b1b4ebd3850f6956864c37585eb816c44a0051d242ae504da6`  
		Last Modified: Tue, 27 Oct 2026 01:23:48 GMT  
		Size: 9.8 KB (9773 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-perception-resolute`

```console
$ docker pull ros@sha256:094d3ddb12b918d390cc41f5f7ff343778e69a56eb35d7bbf6c12ed3d3aec4d4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-perception-resolute` - linux; amd64

```console
$ docker pull ros@sha256:fbcc074181d1f52e3e4fbd6f67b3a82e2c2041b1c92ace331c93b5329faeab41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1529713078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b50d55ffad8d943dc2148e56eb1fea1ef43f507cc8d253ac77c246f96687379`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9587.tar --tag 26.04
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:26:07.538865+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:26:07.538865+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9587.tar
# Mon, 26 Oct 2026 23:37:12 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:25 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:31 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:38:25 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:38:25 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:38:25 GMT
ENV ROS_DISTRO=rolling
# Mon, 26 Oct 2026 23:38:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:38:25 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:38:25 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:38:25 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:26 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:28 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:30 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 01:21:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:edafa32f5d9e4d9629f0dbc6c01e63c79ff08133c01cfb7d3363aa8bd8a614cf`  
		Last Modified: Sun, 25 Oct 2026 13:21:15 GMT  
		Size: 42.1 MB (42139920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3f25b84a7d74315d94ee4108231f8f5e0cd2a44725a7204d5dd6ce91c151697`  
		Last Modified: Sun, 25 Oct 2026 13:21:18 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a14660459e36819afb4f42c3b562f2fb94add0a25afaee3257ba5d6e53e77790`  
		Last Modified: Mon, 26 Oct 2026 23:39:05 GMT  
		Size: 741.3 KB (741293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15a69eee9681333a4efaf3d0d0a3076fd6e279270ac3ea1ef1ba75694686a998`  
		Last Modified: Mon, 26 Oct 2026 23:39:06 GMT  
		Size: 9.8 MB (9785466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c69a06624fa4c3b4f144480f53ccac9ddcd3c8b51065efcbe7d6e686dbb6633`  
		Last Modified: Mon, 26 Oct 2026 23:39:05 GMT  
		Size: 91.6 KB (91604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8849a5919917964cb06cf40f7199e0242c7384d3ba4943d792839378254c6d0a`  
		Last Modified: Mon, 26 Oct 2026 23:39:08 GMT  
		Size: 137.1 MB (137147923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc2c9144426177e7e2a237be2a53ad8d3c8f32e6994e6a9b8b67858a3d0e2eb7`  
		Last Modified: Mon, 26 Oct 2026 23:39:06 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9ed7a179974459052c511757f0bd59a8d16a5509fdf691f2bb48c76b2bef229`  
		Last Modified: Tue, 27 Oct 2026 00:33:43 GMT  
		Size: 124.9 MB (124904643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:252d4f78782eb8b220e0945af7f8f3e33b26bfb5f50ae89f0b3c6ab928373bf0`  
		Last Modified: Tue, 27 Oct 2026 00:33:40 GMT  
		Size: 369.0 KB (368965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efd83114e35e696de0c8cb2b3986936072525b11e9e34ca77f2f59ded1110a7a`  
		Last Modified: Tue, 27 Oct 2026 00:33:40 GMT  
		Size: 130.9 KB (130914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd1557c9c61cd6aade629a6aec07ece42d4a0e2dd557c02687abebd6a8d999c3`  
		Last Modified: Tue, 27 Oct 2026 00:33:41 GMT  
		Size: 25.9 MB (25871254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4f102a243d3bc7b3bd1645908775c38335b1e3489276c1659f4ee2ea4deb7fa`  
		Last Modified: Tue, 27 Oct 2026 01:25:51 GMT  
		Size: 1.2 GB (1188530507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:e338727faee39ff09202de210b90a3016ad1fbf129f4f5aeb1aa8401d2544865
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.5 MB (64452774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9f36bf1f28249bdf8df6f9ed0da5da4159b1e7f5c98e637542f202e749cb36d`

```dockerfile
```

-	Layers:
	-	`sha256:6b281297ceded011592f0eb2917d87440c6a51fdcea88ffbdc170d14642d763f`  
		Last Modified: Tue, 27 Oct 2026 01:25:31 GMT  
		Size: 64.4 MB (64443081 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:deb0216983fd5b7778a76e779fd206978ffc24f79123b95fd5cc73b91a9a34b2`  
		Last Modified: Tue, 27 Oct 2026 01:25:29 GMT  
		Size: 9.7 KB (9693 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-perception-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6a89f22db4c5da961b54b060f01058a6fe62cf8e2413e84626d188c80abcadef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1472868950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d91416ef5386bd3e6cc60823165aa8b0fc1706bb2dec90f472cbc65483d8cae`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 10:30:31 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9649.tar --tag 26.04
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:30:32.309136+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:30:32.309136+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9649.tar
# Mon, 26 Oct 2026 23:42:14 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:25 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:33 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:43:29 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:43:29 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:43:29 GMT
ENV ROS_DISTRO=rolling
# Mon, 26 Oct 2026 23:43:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:43:29 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:43:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:43:29 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:18 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:19 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 01:19:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:afa7f7d582de8ee3433df193ede10fc2c50d3398de31c14d329b643e7a69b852`  
		Last Modified: Sun, 25 Oct 2026 13:21:25 GMT  
		Size: 41.1 MB (41122308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f01cc7d6fb3d703f324d1ccddfddeaa2e8c97cf4b5d6936a66396eaf4089d99`  
		Last Modified: Sun, 25 Oct 2026 13:21:28 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f790d3a8fccccad8c467b7611b292cb39e7d81daa7262a55cdf299d65670ac3d`  
		Last Modified: Mon, 26 Oct 2026 23:44:09 GMT  
		Size: 741.8 KB (741780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd345fd1808e70a19f54f03da15bb2e6d50f7cdafa9163b09ef7f6857f204277`  
		Last Modified: Mon, 26 Oct 2026 23:44:10 GMT  
		Size: 9.6 MB (9610100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8006730f2e96e614b51248f7b69191e200b7e4a3f8177b90475107fb9abdd84d`  
		Last Modified: Mon, 26 Oct 2026 23:44:09 GMT  
		Size: 92.2 KB (92210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51312d6be673ce69bdd971e586875798647667e03a5a4356cef8c9901adba89f`  
		Last Modified: Mon, 26 Oct 2026 23:44:12 GMT  
		Size: 130.5 MB (130533794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8c398aa1aa8fcd5305f8b1b6c8599f305a7648811d8f503f3ebea31264f5475`  
		Last Modified: Mon, 26 Oct 2026 23:44:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18930bcaeb48b2384ec342370be3733979c112642e7dd420ff5984dd638a3439`  
		Last Modified: Tue, 27 Oct 2026 00:33:34 GMT  
		Size: 118.3 MB (118323370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b89d405af3c70c832373867ce4c5b3f1baf88fc8e61827956a186c7f7d38ce6a`  
		Last Modified: Tue, 27 Oct 2026 00:33:31 GMT  
		Size: 369.0 KB (368965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f203046fa2b5ede5846fbf8aa17fe2ca117c1712c41160049355889d4fb9565d`  
		Last Modified: Tue, 27 Oct 2026 00:33:31 GMT  
		Size: 130.9 KB (130888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb49ee439281413efa55c8c72fb0d1605fabdfbb07edd4d9a780e4a25303c4ad`  
		Last Modified: Tue, 27 Oct 2026 00:33:32 GMT  
		Size: 24.8 MB (24796959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f8df855a2626eaddac00fd219d4c7a0c7fa715b55a0e8c810b14282e938bf85`  
		Last Modified: Tue, 27 Oct 2026 01:24:10 GMT  
		Size: 1.1 GB (1147147992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:5b88d0bc06b6f24b8ecc3550dc0e0aa7cc10051ac738db9a059f87f59a31ace8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64367072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae9cb319265669d0437baf02a9c455aca1ff15ffefd0993dd5a32ddff35b46cd`

```dockerfile
```

-	Layers:
	-	`sha256:635b7321b49a6bcdc0f1abaafc06b7e3c0414b3f68c834d5efc37a7f53d6df28`  
		Last Modified: Tue, 27 Oct 2026 01:23:51 GMT  
		Size: 64.4 MB (64357299 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3230c58ba74b4b1b4ebd3850f6956864c37585eb816c44a0051d242ae504da6`  
		Last Modified: Tue, 27 Oct 2026 01:23:48 GMT  
		Size: 9.8 KB (9773 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-ros-base`

```console
$ docker pull ros@sha256:fd1a2cf7995148ad54d29fbf452b9084b9b8a386ee36ee8241495410903a58cf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:e1169629f7bba0a9306d834ea1b485108811b50f927704147697596af8b5bc67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.2 MB (341182571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8fc6c82cb444776de90796cf2a645abf708d64bba4c1d46791824e4497ed8e6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9587.tar --tag 26.04
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:26:07.538865+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:26:07.538865+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9587.tar
# Mon, 26 Oct 2026 23:37:12 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:25 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:31 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:38:25 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:38:25 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:38:25 GMT
ENV ROS_DISTRO=rolling
# Mon, 26 Oct 2026 23:38:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:38:25 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:38:25 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:38:25 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:26 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:28 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:30 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:edafa32f5d9e4d9629f0dbc6c01e63c79ff08133c01cfb7d3363aa8bd8a614cf`  
		Last Modified: Sun, 25 Oct 2026 13:21:15 GMT  
		Size: 42.1 MB (42139920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3f25b84a7d74315d94ee4108231f8f5e0cd2a44725a7204d5dd6ce91c151697`  
		Last Modified: Sun, 25 Oct 2026 13:21:18 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a14660459e36819afb4f42c3b562f2fb94add0a25afaee3257ba5d6e53e77790`  
		Last Modified: Mon, 26 Oct 2026 23:39:05 GMT  
		Size: 741.3 KB (741293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15a69eee9681333a4efaf3d0d0a3076fd6e279270ac3ea1ef1ba75694686a998`  
		Last Modified: Mon, 26 Oct 2026 23:39:06 GMT  
		Size: 9.8 MB (9785466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c69a06624fa4c3b4f144480f53ccac9ddcd3c8b51065efcbe7d6e686dbb6633`  
		Last Modified: Mon, 26 Oct 2026 23:39:05 GMT  
		Size: 91.6 KB (91604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8849a5919917964cb06cf40f7199e0242c7384d3ba4943d792839378254c6d0a`  
		Last Modified: Mon, 26 Oct 2026 23:39:08 GMT  
		Size: 137.1 MB (137147923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc2c9144426177e7e2a237be2a53ad8d3c8f32e6994e6a9b8b67858a3d0e2eb7`  
		Last Modified: Mon, 26 Oct 2026 23:39:06 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9ed7a179974459052c511757f0bd59a8d16a5509fdf691f2bb48c76b2bef229`  
		Last Modified: Tue, 27 Oct 2026 00:33:43 GMT  
		Size: 124.9 MB (124904643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:252d4f78782eb8b220e0945af7f8f3e33b26bfb5f50ae89f0b3c6ab928373bf0`  
		Last Modified: Tue, 27 Oct 2026 00:33:40 GMT  
		Size: 369.0 KB (368965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efd83114e35e696de0c8cb2b3986936072525b11e9e34ca77f2f59ded1110a7a`  
		Last Modified: Tue, 27 Oct 2026 00:33:40 GMT  
		Size: 130.9 KB (130914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd1557c9c61cd6aade629a6aec07ece42d4a0e2dd557c02687abebd6a8d999c3`  
		Last Modified: Tue, 27 Oct 2026 00:33:41 GMT  
		Size: 25.9 MB (25871254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:d0636348624aa3b5a84d1c6457d58a8ea70b6307bdc3b4aa9e02e2ae735dff3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29248362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:217cba709fcb43c112784d6702491313f827c35543bd6e350ef1e11d20c5099f`

```dockerfile
```

-	Layers:
	-	`sha256:110ea622c35b7fb8f84bc20acc04413dce93a993d37d601a23c5eace8e89b25c`  
		Last Modified: Tue, 27 Oct 2026 00:33:41 GMT  
		Size: 29.2 MB (29231204 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66810ece0301aebd3b4848d72ab8ba642a6e9622c871de3c98889a2b99a49797`  
		Last Modified: Tue, 27 Oct 2026 00:33:40 GMT  
		Size: 17.2 KB (17158 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:738ae99d64665fa9528c344cdd05bd879dcd9a4cd3af286e49056ccdf0dd5c8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.7 MB (325720958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7683d303efa386e6cb122deb60b676b9f8592748fdc8aa7271eb5b22058d93be`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 10:30:31 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9649.tar --tag 26.04
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:30:32.309136+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:30:32.309136+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9649.tar
# Mon, 26 Oct 2026 23:42:14 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:25 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:33 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:43:29 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:43:29 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:43:29 GMT
ENV ROS_DISTRO=rolling
# Mon, 26 Oct 2026 23:43:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:43:29 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:43:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:43:29 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:18 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:19 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:afa7f7d582de8ee3433df193ede10fc2c50d3398de31c14d329b643e7a69b852`  
		Last Modified: Sun, 25 Oct 2026 13:21:25 GMT  
		Size: 41.1 MB (41122308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f01cc7d6fb3d703f324d1ccddfddeaa2e8c97cf4b5d6936a66396eaf4089d99`  
		Last Modified: Sun, 25 Oct 2026 13:21:28 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f790d3a8fccccad8c467b7611b292cb39e7d81daa7262a55cdf299d65670ac3d`  
		Last Modified: Mon, 26 Oct 2026 23:44:09 GMT  
		Size: 741.8 KB (741780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd345fd1808e70a19f54f03da15bb2e6d50f7cdafa9163b09ef7f6857f204277`  
		Last Modified: Mon, 26 Oct 2026 23:44:10 GMT  
		Size: 9.6 MB (9610100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8006730f2e96e614b51248f7b69191e200b7e4a3f8177b90475107fb9abdd84d`  
		Last Modified: Mon, 26 Oct 2026 23:44:09 GMT  
		Size: 92.2 KB (92210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51312d6be673ce69bdd971e586875798647667e03a5a4356cef8c9901adba89f`  
		Last Modified: Mon, 26 Oct 2026 23:44:12 GMT  
		Size: 130.5 MB (130533794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8c398aa1aa8fcd5305f8b1b6c8599f305a7648811d8f503f3ebea31264f5475`  
		Last Modified: Mon, 26 Oct 2026 23:44:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18930bcaeb48b2384ec342370be3733979c112642e7dd420ff5984dd638a3439`  
		Last Modified: Tue, 27 Oct 2026 00:33:34 GMT  
		Size: 118.3 MB (118323370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b89d405af3c70c832373867ce4c5b3f1baf88fc8e61827956a186c7f7d38ce6a`  
		Last Modified: Tue, 27 Oct 2026 00:33:31 GMT  
		Size: 369.0 KB (368965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f203046fa2b5ede5846fbf8aa17fe2ca117c1712c41160049355889d4fb9565d`  
		Last Modified: Tue, 27 Oct 2026 00:33:31 GMT  
		Size: 130.9 KB (130888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb49ee439281413efa55c8c72fb0d1605fabdfbb07edd4d9a780e4a25303c4ad`  
		Last Modified: Tue, 27 Oct 2026 00:33:32 GMT  
		Size: 24.8 MB (24796959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:0d9422ae614845d70d12f2e34ad018d3ca1712927998f8dfccc9deffd84afeda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29313118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c895198a3e23b158e89ff95bba212f4774ba4828f555f27e88757a05835e945d`

```dockerfile
```

-	Layers:
	-	`sha256:7c0137c5b7a7b708670f6e7c35fa6d0c5ab246c7d43cce448c7b29ed4c7cb741`  
		Last Modified: Tue, 27 Oct 2026 00:33:32 GMT  
		Size: 29.3 MB (29295824 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c6b82499956d5056e9db974240d1208e1e8e806c8cb58fe4fb3c1b471bdeef9`  
		Last Modified: Tue, 27 Oct 2026 00:33:30 GMT  
		Size: 17.3 KB (17294 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-ros-base-resolute`

```console
$ docker pull ros@sha256:fd1a2cf7995148ad54d29fbf452b9084b9b8a386ee36ee8241495410903a58cf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-base-resolute` - linux; amd64

```console
$ docker pull ros@sha256:e1169629f7bba0a9306d834ea1b485108811b50f927704147697596af8b5bc67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.2 MB (341182571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8fc6c82cb444776de90796cf2a645abf708d64bba4c1d46791824e4497ed8e6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9587.tar --tag 26.04
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:26:07.538865+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:26:07.538865+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9587.tar
# Mon, 26 Oct 2026 23:37:12 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:25 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:31 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:38:25 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:38:25 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:38:25 GMT
ENV ROS_DISTRO=rolling
# Mon, 26 Oct 2026 23:38:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:38:25 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:38:25 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:38:25 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:26 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:28 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:30 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:edafa32f5d9e4d9629f0dbc6c01e63c79ff08133c01cfb7d3363aa8bd8a614cf`  
		Last Modified: Sun, 25 Oct 2026 13:21:15 GMT  
		Size: 42.1 MB (42139920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3f25b84a7d74315d94ee4108231f8f5e0cd2a44725a7204d5dd6ce91c151697`  
		Last Modified: Sun, 25 Oct 2026 13:21:18 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a14660459e36819afb4f42c3b562f2fb94add0a25afaee3257ba5d6e53e77790`  
		Last Modified: Mon, 26 Oct 2026 23:39:05 GMT  
		Size: 741.3 KB (741293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15a69eee9681333a4efaf3d0d0a3076fd6e279270ac3ea1ef1ba75694686a998`  
		Last Modified: Mon, 26 Oct 2026 23:39:06 GMT  
		Size: 9.8 MB (9785466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c69a06624fa4c3b4f144480f53ccac9ddcd3c8b51065efcbe7d6e686dbb6633`  
		Last Modified: Mon, 26 Oct 2026 23:39:05 GMT  
		Size: 91.6 KB (91604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8849a5919917964cb06cf40f7199e0242c7384d3ba4943d792839378254c6d0a`  
		Last Modified: Mon, 26 Oct 2026 23:39:08 GMT  
		Size: 137.1 MB (137147923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc2c9144426177e7e2a237be2a53ad8d3c8f32e6994e6a9b8b67858a3d0e2eb7`  
		Last Modified: Mon, 26 Oct 2026 23:39:06 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9ed7a179974459052c511757f0bd59a8d16a5509fdf691f2bb48c76b2bef229`  
		Last Modified: Tue, 27 Oct 2026 00:33:43 GMT  
		Size: 124.9 MB (124904643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:252d4f78782eb8b220e0945af7f8f3e33b26bfb5f50ae89f0b3c6ab928373bf0`  
		Last Modified: Tue, 27 Oct 2026 00:33:40 GMT  
		Size: 369.0 KB (368965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efd83114e35e696de0c8cb2b3986936072525b11e9e34ca77f2f59ded1110a7a`  
		Last Modified: Tue, 27 Oct 2026 00:33:40 GMT  
		Size: 130.9 KB (130914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd1557c9c61cd6aade629a6aec07ece42d4a0e2dd557c02687abebd6a8d999c3`  
		Last Modified: Tue, 27 Oct 2026 00:33:41 GMT  
		Size: 25.9 MB (25871254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:d0636348624aa3b5a84d1c6457d58a8ea70b6307bdc3b4aa9e02e2ae735dff3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29248362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:217cba709fcb43c112784d6702491313f827c35543bd6e350ef1e11d20c5099f`

```dockerfile
```

-	Layers:
	-	`sha256:110ea622c35b7fb8f84bc20acc04413dce93a993d37d601a23c5eace8e89b25c`  
		Last Modified: Tue, 27 Oct 2026 00:33:41 GMT  
		Size: 29.2 MB (29231204 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66810ece0301aebd3b4848d72ab8ba642a6e9622c871de3c98889a2b99a49797`  
		Last Modified: Tue, 27 Oct 2026 00:33:40 GMT  
		Size: 17.2 KB (17158 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-base-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:738ae99d64665fa9528c344cdd05bd879dcd9a4cd3af286e49056ccdf0dd5c8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.7 MB (325720958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7683d303efa386e6cb122deb60b676b9f8592748fdc8aa7271eb5b22058d93be`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 10:30:31 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9649.tar --tag 26.04
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:30:32.309136+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:30:32.309136+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9649.tar
# Mon, 26 Oct 2026 23:42:14 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:25 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:33 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:43:29 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:43:29 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:43:29 GMT
ENV ROS_DISTRO=rolling
# Mon, 26 Oct 2026 23:43:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:43:29 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:43:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:43:29 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:18 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:19 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:afa7f7d582de8ee3433df193ede10fc2c50d3398de31c14d329b643e7a69b852`  
		Last Modified: Sun, 25 Oct 2026 13:21:25 GMT  
		Size: 41.1 MB (41122308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f01cc7d6fb3d703f324d1ccddfddeaa2e8c97cf4b5d6936a66396eaf4089d99`  
		Last Modified: Sun, 25 Oct 2026 13:21:28 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f790d3a8fccccad8c467b7611b292cb39e7d81daa7262a55cdf299d65670ac3d`  
		Last Modified: Mon, 26 Oct 2026 23:44:09 GMT  
		Size: 741.8 KB (741780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd345fd1808e70a19f54f03da15bb2e6d50f7cdafa9163b09ef7f6857f204277`  
		Last Modified: Mon, 26 Oct 2026 23:44:10 GMT  
		Size: 9.6 MB (9610100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8006730f2e96e614b51248f7b69191e200b7e4a3f8177b90475107fb9abdd84d`  
		Last Modified: Mon, 26 Oct 2026 23:44:09 GMT  
		Size: 92.2 KB (92210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51312d6be673ce69bdd971e586875798647667e03a5a4356cef8c9901adba89f`  
		Last Modified: Mon, 26 Oct 2026 23:44:12 GMT  
		Size: 130.5 MB (130533794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8c398aa1aa8fcd5305f8b1b6c8599f305a7648811d8f503f3ebea31264f5475`  
		Last Modified: Mon, 26 Oct 2026 23:44:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18930bcaeb48b2384ec342370be3733979c112642e7dd420ff5984dd638a3439`  
		Last Modified: Tue, 27 Oct 2026 00:33:34 GMT  
		Size: 118.3 MB (118323370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b89d405af3c70c832373867ce4c5b3f1baf88fc8e61827956a186c7f7d38ce6a`  
		Last Modified: Tue, 27 Oct 2026 00:33:31 GMT  
		Size: 369.0 KB (368965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f203046fa2b5ede5846fbf8aa17fe2ca117c1712c41160049355889d4fb9565d`  
		Last Modified: Tue, 27 Oct 2026 00:33:31 GMT  
		Size: 130.9 KB (130888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb49ee439281413efa55c8c72fb0d1605fabdfbb07edd4d9a780e4a25303c4ad`  
		Last Modified: Tue, 27 Oct 2026 00:33:32 GMT  
		Size: 24.8 MB (24796959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:0d9422ae614845d70d12f2e34ad018d3ca1712927998f8dfccc9deffd84afeda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29313118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c895198a3e23b158e89ff95bba212f4774ba4828f555f27e88757a05835e945d`

```dockerfile
```

-	Layers:
	-	`sha256:7c0137c5b7a7b708670f6e7c35fa6d0c5ab246c7d43cce448c7b29ed4c7cb741`  
		Last Modified: Tue, 27 Oct 2026 00:33:32 GMT  
		Size: 29.3 MB (29295824 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c6b82499956d5056e9db974240d1208e1e8e806c8cb58fe4fb3c1b471bdeef9`  
		Last Modified: Tue, 27 Oct 2026 00:33:30 GMT  
		Size: 17.3 KB (17294 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-ros-core`

```console
$ docker pull ros@sha256:d34ac398901b96a8c503f78fed65be47d6a5082946529d0af7c4ab2e275bc10b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:ceeb5e42854e75621d4063b2014b1a81b1668eb0f8afc5f1a8f111b29d2e7371
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.9 MB (189906795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8a4267a218c9f4e1c71af1f4be26f9b7d3eaf93c5efd08c706686afdda82557`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9587.tar --tag 26.04
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:26:07.538865+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:26:07.538865+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9587.tar
# Mon, 26 Oct 2026 23:37:12 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:25 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:31 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:38:25 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:38:25 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:38:25 GMT
ENV ROS_DISTRO=rolling
# Mon, 26 Oct 2026 23:38:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:38:25 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:38:25 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:38:25 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:edafa32f5d9e4d9629f0dbc6c01e63c79ff08133c01cfb7d3363aa8bd8a614cf`  
		Last Modified: Sun, 25 Oct 2026 13:21:15 GMT  
		Size: 42.1 MB (42139920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3f25b84a7d74315d94ee4108231f8f5e0cd2a44725a7204d5dd6ce91c151697`  
		Last Modified: Sun, 25 Oct 2026 13:21:18 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a14660459e36819afb4f42c3b562f2fb94add0a25afaee3257ba5d6e53e77790`  
		Last Modified: Mon, 26 Oct 2026 23:39:05 GMT  
		Size: 741.3 KB (741293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15a69eee9681333a4efaf3d0d0a3076fd6e279270ac3ea1ef1ba75694686a998`  
		Last Modified: Mon, 26 Oct 2026 23:39:06 GMT  
		Size: 9.8 MB (9785466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c69a06624fa4c3b4f144480f53ccac9ddcd3c8b51065efcbe7d6e686dbb6633`  
		Last Modified: Mon, 26 Oct 2026 23:39:05 GMT  
		Size: 91.6 KB (91604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8849a5919917964cb06cf40f7199e0242c7384d3ba4943d792839378254c6d0a`  
		Last Modified: Mon, 26 Oct 2026 23:39:08 GMT  
		Size: 137.1 MB (137147923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc2c9144426177e7e2a237be2a53ad8d3c8f32e6994e6a9b8b67858a3d0e2eb7`  
		Last Modified: Mon, 26 Oct 2026 23:39:06 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:2faa62794d78d85f93a2357c99492670181246b65a852878334bfe9e3eb6f5aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22820080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee0064e4505dda547c2d4d492ebeadeab8e2aa599e764f62fc8e1428804c448e`

```dockerfile
```

-	Layers:
	-	`sha256:b005226360d958f53cb0e7e2ea7bde27e04ee9e9abc5df5992499b75c8184c16`  
		Last Modified: Mon, 26 Oct 2026 23:39:06 GMT  
		Size: 22.8 MB (22804402 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d9c1baf7c91046299447a14359f544b981a63841fc04d82baa111178d2eb80a0`  
		Last Modified: Mon, 26 Oct 2026 23:39:05 GMT  
		Size: 15.7 KB (15678 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:13089c16ebe36ee2c7acc0b79480df323c6c3c1945e99a768c1673088b9ffc35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.1 MB (182100776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20e264dacdca27c3384e0c4479d2efe631fc03d55d2b2b2341fbdbb210239cdd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 10:30:31 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9649.tar --tag 26.04
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:30:32.309136+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:30:32.309136+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9649.tar
# Mon, 26 Oct 2026 23:42:14 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:25 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:33 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:43:29 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:43:29 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:43:29 GMT
ENV ROS_DISTRO=rolling
# Mon, 26 Oct 2026 23:43:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:43:29 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:43:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:43:29 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:afa7f7d582de8ee3433df193ede10fc2c50d3398de31c14d329b643e7a69b852`  
		Last Modified: Sun, 25 Oct 2026 13:21:25 GMT  
		Size: 41.1 MB (41122308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f01cc7d6fb3d703f324d1ccddfddeaa2e8c97cf4b5d6936a66396eaf4089d99`  
		Last Modified: Sun, 25 Oct 2026 13:21:28 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f790d3a8fccccad8c467b7611b292cb39e7d81daa7262a55cdf299d65670ac3d`  
		Last Modified: Mon, 26 Oct 2026 23:44:09 GMT  
		Size: 741.8 KB (741780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd345fd1808e70a19f54f03da15bb2e6d50f7cdafa9163b09ef7f6857f204277`  
		Last Modified: Mon, 26 Oct 2026 23:44:10 GMT  
		Size: 9.6 MB (9610100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8006730f2e96e614b51248f7b69191e200b7e4a3f8177b90475107fb9abdd84d`  
		Last Modified: Mon, 26 Oct 2026 23:44:09 GMT  
		Size: 92.2 KB (92210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51312d6be673ce69bdd971e586875798647667e03a5a4356cef8c9901adba89f`  
		Last Modified: Mon, 26 Oct 2026 23:44:12 GMT  
		Size: 130.5 MB (130533794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8c398aa1aa8fcd5305f8b1b6c8599f305a7648811d8f503f3ebea31264f5475`  
		Last Modified: Mon, 26 Oct 2026 23:44:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:ea993ab2493c523552d5ab62a9d058056fe754263b9817725b7c04585fb4fcfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22792897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:531a6d4899255dc24b47e0c5fd440c0f1be1be362419a8d26ee6f700540cb140`

```dockerfile
```

-	Layers:
	-	`sha256:978af227d2ff906db517ea9a30b2cbb51659c479f0573155aeed7b3ef6a46fee`  
		Last Modified: Mon, 26 Oct 2026 23:44:10 GMT  
		Size: 22.8 MB (22777094 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:983bed305b65358b619e7b2227ebc187fa85b0ce53b85c843f4cb65d32a61eca`  
		Last Modified: Mon, 26 Oct 2026 23:44:09 GMT  
		Size: 15.8 KB (15803 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-ros-core-resolute`

```console
$ docker pull ros@sha256:d34ac398901b96a8c503f78fed65be47d6a5082946529d0af7c4ab2e275bc10b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-core-resolute` - linux; amd64

```console
$ docker pull ros@sha256:ceeb5e42854e75621d4063b2014b1a81b1668eb0f8afc5f1a8f111b29d2e7371
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.9 MB (189906795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8a4267a218c9f4e1c71af1f4be26f9b7d3eaf93c5efd08c706686afdda82557`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9587.tar --tag 26.04
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:26:07.538865+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:26:07.538865+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9587.tar
# Mon, 26 Oct 2026 23:37:12 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:25 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:31 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:38:25 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:38:25 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:38:25 GMT
ENV ROS_DISTRO=rolling
# Mon, 26 Oct 2026 23:38:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:38:25 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:38:25 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:38:25 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:edafa32f5d9e4d9629f0dbc6c01e63c79ff08133c01cfb7d3363aa8bd8a614cf`  
		Last Modified: Sun, 25 Oct 2026 13:21:15 GMT  
		Size: 42.1 MB (42139920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3f25b84a7d74315d94ee4108231f8f5e0cd2a44725a7204d5dd6ce91c151697`  
		Last Modified: Sun, 25 Oct 2026 13:21:18 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a14660459e36819afb4f42c3b562f2fb94add0a25afaee3257ba5d6e53e77790`  
		Last Modified: Mon, 26 Oct 2026 23:39:05 GMT  
		Size: 741.3 KB (741293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15a69eee9681333a4efaf3d0d0a3076fd6e279270ac3ea1ef1ba75694686a998`  
		Last Modified: Mon, 26 Oct 2026 23:39:06 GMT  
		Size: 9.8 MB (9785466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c69a06624fa4c3b4f144480f53ccac9ddcd3c8b51065efcbe7d6e686dbb6633`  
		Last Modified: Mon, 26 Oct 2026 23:39:05 GMT  
		Size: 91.6 KB (91604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8849a5919917964cb06cf40f7199e0242c7384d3ba4943d792839378254c6d0a`  
		Last Modified: Mon, 26 Oct 2026 23:39:08 GMT  
		Size: 137.1 MB (137147923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc2c9144426177e7e2a237be2a53ad8d3c8f32e6994e6a9b8b67858a3d0e2eb7`  
		Last Modified: Mon, 26 Oct 2026 23:39:06 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:2faa62794d78d85f93a2357c99492670181246b65a852878334bfe9e3eb6f5aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22820080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee0064e4505dda547c2d4d492ebeadeab8e2aa599e764f62fc8e1428804c448e`

```dockerfile
```

-	Layers:
	-	`sha256:b005226360d958f53cb0e7e2ea7bde27e04ee9e9abc5df5992499b75c8184c16`  
		Last Modified: Mon, 26 Oct 2026 23:39:06 GMT  
		Size: 22.8 MB (22804402 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d9c1baf7c91046299447a14359f544b981a63841fc04d82baa111178d2eb80a0`  
		Last Modified: Mon, 26 Oct 2026 23:39:05 GMT  
		Size: 15.7 KB (15678 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-core-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:13089c16ebe36ee2c7acc0b79480df323c6c3c1945e99a768c1673088b9ffc35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.1 MB (182100776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20e264dacdca27c3384e0c4479d2efe631fc03d55d2b2b2341fbdbb210239cdd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 10:30:31 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9649.tar --tag 26.04
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:30:32.309136+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:30:32.309136+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9649.tar
# Mon, 26 Oct 2026 23:42:14 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:25 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:33 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:43:29 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:43:29 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:43:29 GMT
ENV ROS_DISTRO=rolling
# Mon, 26 Oct 2026 23:43:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:43:29 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:43:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:43:29 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:afa7f7d582de8ee3433df193ede10fc2c50d3398de31c14d329b643e7a69b852`  
		Last Modified: Sun, 25 Oct 2026 13:21:25 GMT  
		Size: 41.1 MB (41122308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f01cc7d6fb3d703f324d1ccddfddeaa2e8c97cf4b5d6936a66396eaf4089d99`  
		Last Modified: Sun, 25 Oct 2026 13:21:28 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f790d3a8fccccad8c467b7611b292cb39e7d81daa7262a55cdf299d65670ac3d`  
		Last Modified: Mon, 26 Oct 2026 23:44:09 GMT  
		Size: 741.8 KB (741780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd345fd1808e70a19f54f03da15bb2e6d50f7cdafa9163b09ef7f6857f204277`  
		Last Modified: Mon, 26 Oct 2026 23:44:10 GMT  
		Size: 9.6 MB (9610100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8006730f2e96e614b51248f7b69191e200b7e4a3f8177b90475107fb9abdd84d`  
		Last Modified: Mon, 26 Oct 2026 23:44:09 GMT  
		Size: 92.2 KB (92210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51312d6be673ce69bdd971e586875798647667e03a5a4356cef8c9901adba89f`  
		Last Modified: Mon, 26 Oct 2026 23:44:12 GMT  
		Size: 130.5 MB (130533794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8c398aa1aa8fcd5305f8b1b6c8599f305a7648811d8f503f3ebea31264f5475`  
		Last Modified: Mon, 26 Oct 2026 23:44:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:ea993ab2493c523552d5ab62a9d058056fe754263b9817725b7c04585fb4fcfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22792897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:531a6d4899255dc24b47e0c5fd440c0f1be1be362419a8d26ee6f700540cb140`

```dockerfile
```

-	Layers:
	-	`sha256:978af227d2ff906db517ea9a30b2cbb51659c479f0573155aeed7b3ef6a46fee`  
		Last Modified: Mon, 26 Oct 2026 23:44:10 GMT  
		Size: 22.8 MB (22777094 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:983bed305b65358b619e7b2227ebc187fa85b0ce53b85c843f4cb65d32a61eca`  
		Last Modified: Mon, 26 Oct 2026 23:44:09 GMT  
		Size: 15.8 KB (15803 bytes)  
		MIME: application/vnd.in-toto+json
