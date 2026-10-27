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
