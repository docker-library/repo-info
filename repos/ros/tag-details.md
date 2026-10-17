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
$ docker pull ros@sha256:566b87e6dfc48392189a9c32e594e84060fa9948de93b04e536f39475a1f6963
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble` - linux; amd64

```console
$ docker pull ros@sha256:fea7dd1577580a53209dc2e9456cd8d6ef13704a09a8f12914e0867f6861ea9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.2 MB (264190629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df3ea285f9dc4eff629099bcd971c78050ae5ac402af213c6bb5d97066c7e36c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:33:58 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:10 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:16 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:55 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:34:55 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:34:55 GMT
ENV ROS_DISTRO=humble
# Sat, 17 Oct 2026 00:34:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:56 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:34:56 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:34:56 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:32:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:32:04 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:32:08 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:32:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9904ab127ba78ee4b30d5200b16e4e42d280cf6d50e42d8ae7a5f71e0e863819`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 1.2 MB (1214871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78c70217b3fe739a40e2f7040e541415fc34c7318e3aae1381b41e527ddce2b5`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 6.0 MB (5952779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc4b2c880f02ab1e8612794519cffee9954689b26cd90371cbe03ac0c720e91e`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 97.9 KB (97910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6d6d419bae97b3f51d6a4bc9002c4d6498ab6092cbcc5f3c1776fc60fb43c7b`  
		Last Modified: Sat, 17 Oct 2026 00:35:23 GMT  
		Size: 105.2 MB (105226949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cffab2e723c86dec0fa9e46219df1614cf6db43823cfe6687af16f9abd79197d`  
		Last Modified: Sat, 17 Oct 2026 00:35:22 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00a4c143b725e7f104760f165954304740b2f20df0a04a04657774ee17fdb5b3`  
		Last Modified: Sat, 17 Oct 2026 01:32:58 GMT  
		Size: 98.2 MB (98200466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2af1b1b2c77286e0cd12ad50c5abda043ecbb72d9d95b608428db5ee0403800`  
		Last Modified: Sat, 17 Oct 2026 01:32:55 GMT  
		Size: 392.6 KB (392618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffc6e1132ce87f4563e5f29f3b8306e2f8468f6b3ecd3c53d31324f57d6b09b3`  
		Last Modified: Sat, 17 Oct 2026 01:32:55 GMT  
		Size: 2.7 KB (2693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:893f6ba9f8e798baf64f716e675663994855d41a093dd2d4dd8d0f7c397ba40d`  
		Last Modified: Sat, 17 Oct 2026 01:32:56 GMT  
		Size: 23.3 MB (23349670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble` - unknown; unknown

```console
$ docker pull ros@sha256:166f957a0485385fa82c1d834ef27ed0b9d6d59448f471c8407675be5d54c3fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23974427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3939196747b78a43a1ef7f8a8d11b814ccc96cc9afaa3377d78acc708cf00290`

```dockerfile
```

-	Layers:
	-	`sha256:04c9cfe2705256785383ab463592c849e4343e1877166e66546e7549f7d39f68`  
		Last Modified: Sat, 17 Oct 2026 01:32:56 GMT  
		Size: 24.0 MB (23958079 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b62e8978cf46bfe9d80f7c30e37022cc446d3760785ea5e3be610f9002918dde`  
		Last Modified: Sat, 17 Oct 2026 01:32:55 GMT  
		Size: 16.3 KB (16348 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:49472ce5ac155365329a6366ea332610efcdb613de73c802299ac7bc6cd4454d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.9 MB (256935557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92977455d9a06ab4f5957369610f87d43901f418948a799bb41d036f2f1be1dc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:33:49 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:00 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:07 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:49 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:34:49 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:34:49 GMT
ENV ROS_DISTRO=humble
# Sat, 17 Oct 2026 00:34:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:50 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:34:50 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:34:50 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:32:59 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:33:03 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:33:05 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:33:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade8b0f02839ba9ff322ac84eef7adc86edaa48ede77cf7208c2232db8f75033`  
		Last Modified: Sat, 17 Oct 2026 00:35:15 GMT  
		Size: 1.2 MB (1214927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d018904a4a6301015a0eaedd3eba643bfabc578e649d522b2e0d71a33c479e4b`  
		Last Modified: Sat, 17 Oct 2026 00:35:16 GMT  
		Size: 5.9 MB (5912740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb3045688293f0dfe1281c9a23307a570058ad90223852811eca6af5a0cdac36`  
		Last Modified: Sat, 17 Oct 2026 00:35:15 GMT  
		Size: 98.0 KB (97982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d48401550df9f6fb751752a283dae32886ef4178173e1c4e4c9d5787df7c8b0`  
		Last Modified: Sat, 17 Oct 2026 00:35:19 GMT  
		Size: 103.0 MB (103035736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:113b50c487bbd3f2794cb35423fbfe39a273708fe612fc4f0ee0dd649ac9df30`  
		Last Modified: Sat, 17 Oct 2026 00:35:17 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b2f3ee9bb9f63be959c20771457b01abd2cfb572346ea6908c6390ccad5c8df`  
		Last Modified: Sat, 17 Oct 2026 01:34:34 GMT  
		Size: 95.8 MB (95839149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c95136dccec446e226591ee2bad2c4a31846663aadafa9977419858b58d722f6`  
		Last Modified: Sat, 17 Oct 2026 01:34:00 GMT  
		Size: 392.6 KB (392616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdf1eafcc3fc662c1c61b6ef4d88e2c858d044cbadc96069aa5bda355eea200c`  
		Last Modified: Sat, 17 Oct 2026 01:33:59 GMT  
		Size: 2.7 KB (2687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1da8a308b537eb93d4c5bce7518c606f6fd558db5fd28e3c0151d2036f06ac7`  
		Last Modified: Sat, 17 Oct 2026 01:34:10 GMT  
		Size: 22.8 MB (22754801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble` - unknown; unknown

```console
$ docker pull ros@sha256:f90f8595b54eef8968163f228067b9a9b7e2ff927641e7353f3eebd890661408
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23987581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f2b109b94c33ab942f4585eb6d17f763a28cc04872150163ad3af41ecca93a8`

```dockerfile
```

-	Layers:
	-	`sha256:c78e949efafc272d3afba067d5d86265375e07411d159479d3c1a859e6a8602b`  
		Last Modified: Sat, 17 Oct 2026 01:34:09 GMT  
		Size: 24.0 MB (23971096 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61037ca638a73bd3244287fb51b3cc1b271728400c686960d11c91b39885bc3f`  
		Last Modified: Sat, 17 Oct 2026 01:33:59 GMT  
		Size: 16.5 KB (16485 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-perception`

```console
$ docker pull ros@sha256:f27dab3fde9d7e242c79533f48040d859ea636307a39144a4e7827fa9fd6b6dd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-perception` - linux; amd64

```console
$ docker pull ros@sha256:fcc425862f95d4f485f648e8c81762a5c0d71e34deb1f20e36504bdc2280715f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **956.7 MB (956731350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68e9f9a5634c179be07fbaa1d1c45be40af0edfe6c26c340b3f178caa2eb0579`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:33:58 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:10 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:16 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:55 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:34:55 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:34:55 GMT
ENV ROS_DISTRO=humble
# Sat, 17 Oct 2026 00:34:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:56 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:34:56 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:34:56 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:32:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:32:04 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:32:08 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:32:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:22:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9904ab127ba78ee4b30d5200b16e4e42d280cf6d50e42d8ae7a5f71e0e863819`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 1.2 MB (1214871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78c70217b3fe739a40e2f7040e541415fc34c7318e3aae1381b41e527ddce2b5`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 6.0 MB (5952779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc4b2c880f02ab1e8612794519cffee9954689b26cd90371cbe03ac0c720e91e`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 97.9 KB (97910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6d6d419bae97b3f51d6a4bc9002c4d6498ab6092cbcc5f3c1776fc60fb43c7b`  
		Last Modified: Sat, 17 Oct 2026 00:35:23 GMT  
		Size: 105.2 MB (105226949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cffab2e723c86dec0fa9e46219df1614cf6db43823cfe6687af16f9abd79197d`  
		Last Modified: Sat, 17 Oct 2026 00:35:22 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00a4c143b725e7f104760f165954304740b2f20df0a04a04657774ee17fdb5b3`  
		Last Modified: Sat, 17 Oct 2026 01:32:58 GMT  
		Size: 98.2 MB (98200466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2af1b1b2c77286e0cd12ad50c5abda043ecbb72d9d95b608428db5ee0403800`  
		Last Modified: Sat, 17 Oct 2026 01:32:55 GMT  
		Size: 392.6 KB (392618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffc6e1132ce87f4563e5f29f3b8306e2f8468f6b3ecd3c53d31324f57d6b09b3`  
		Last Modified: Sat, 17 Oct 2026 01:32:55 GMT  
		Size: 2.7 KB (2693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:893f6ba9f8e798baf64f716e675663994855d41a093dd2d4dd8d0f7c397ba40d`  
		Last Modified: Sat, 17 Oct 2026 01:32:56 GMT  
		Size: 23.3 MB (23349670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9ed1f51228997d2bb6aae1d8017b5b476a0a53fddad6aa8fca68ccf114d21f7`  
		Last Modified: Sat, 17 Oct 2026 02:25:24 GMT  
		Size: 692.5 MB (692540721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception` - unknown; unknown

```console
$ docker pull ros@sha256:bd9aacfe355329bf068a186e5a4306a29ecb21a1030f72519e5eb9449a586690
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.1 MB (59073462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdf105d95e7e5823705a937d115c51b17ec6f9bfe7018fbd254cb3a7b106763a`

```dockerfile
```

-	Layers:
	-	`sha256:6abbe18b0faf606af8c9966845ef41372164984827ed75d1d6ad9ab8c8ee23c5`  
		Last Modified: Sat, 17 Oct 2026 02:25:13 GMT  
		Size: 59.1 MB (59064111 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4dc09a282897df0bda941fbe224f5e5f81de9a29de055dc67100cc3279d1b098`  
		Last Modified: Sat, 17 Oct 2026 02:25:11 GMT  
		Size: 9.4 KB (9351 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:694ed367611d611b5f96b0e449aa6a3bc454b0730b1784521fbe462101215c64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **917.5 MB (917464769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd90764d10e34cf981187724be1657f61a52d8ff32f8a75c54b0f041cf6c66f7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:33:49 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:00 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:07 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:49 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:34:49 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:34:49 GMT
ENV ROS_DISTRO=humble
# Sat, 17 Oct 2026 00:34:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:50 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:34:50 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:34:50 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:32:59 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:33:03 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:33:05 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:33:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:21:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade8b0f02839ba9ff322ac84eef7adc86edaa48ede77cf7208c2232db8f75033`  
		Last Modified: Sat, 17 Oct 2026 00:35:15 GMT  
		Size: 1.2 MB (1214927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d018904a4a6301015a0eaedd3eba643bfabc578e649d522b2e0d71a33c479e4b`  
		Last Modified: Sat, 17 Oct 2026 00:35:16 GMT  
		Size: 5.9 MB (5912740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb3045688293f0dfe1281c9a23307a570058ad90223852811eca6af5a0cdac36`  
		Last Modified: Sat, 17 Oct 2026 00:35:15 GMT  
		Size: 98.0 KB (97982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d48401550df9f6fb751752a283dae32886ef4178173e1c4e4c9d5787df7c8b0`  
		Last Modified: Sat, 17 Oct 2026 00:35:19 GMT  
		Size: 103.0 MB (103035736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:113b50c487bbd3f2794cb35423fbfe39a273708fe612fc4f0ee0dd649ac9df30`  
		Last Modified: Sat, 17 Oct 2026 00:35:17 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b2f3ee9bb9f63be959c20771457b01abd2cfb572346ea6908c6390ccad5c8df`  
		Last Modified: Sat, 17 Oct 2026 01:34:34 GMT  
		Size: 95.8 MB (95839149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c95136dccec446e226591ee2bad2c4a31846663aadafa9977419858b58d722f6`  
		Last Modified: Sat, 17 Oct 2026 01:34:00 GMT  
		Size: 392.6 KB (392616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdf1eafcc3fc662c1c61b6ef4d88e2c858d044cbadc96069aa5bda355eea200c`  
		Last Modified: Sat, 17 Oct 2026 01:33:59 GMT  
		Size: 2.7 KB (2687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1da8a308b537eb93d4c5bce7518c606f6fd558db5fd28e3c0151d2036f06ac7`  
		Last Modified: Sat, 17 Oct 2026 01:34:10 GMT  
		Size: 22.8 MB (22754801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b64a8bc65d176168987b836de05d1aac9770d3980717c0d388d8e2c6f0f478ac`  
		Last Modified: Sat, 17 Oct 2026 02:24:17 GMT  
		Size: 660.5 MB (660529212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception` - unknown; unknown

```console
$ docker pull ros@sha256:5779cfa4cfb1c87938469853df51cba5a533564122862f57d7e53fccc97449c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.1 MB (59057868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a02ad8d1e4c2f7d66cb9952fe7e1edf4dad84d7f27e1ee2cc58e527bc04b54e7`

```dockerfile
```

-	Layers:
	-	`sha256:4c6cfe80d9e41a2345ed39cba9f7c08101eefd1ae94881155acd835ac32a10b3`  
		Last Modified: Sat, 17 Oct 2026 02:24:06 GMT  
		Size: 59.0 MB (59048436 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:effb67fa02853b03f07f637edb93831e73f89e250466c16337b66949c3365a2a`  
		Last Modified: Sat, 17 Oct 2026 02:24:03 GMT  
		Size: 9.4 KB (9432 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-perception-jammy`

```console
$ docker pull ros@sha256:f27dab3fde9d7e242c79533f48040d859ea636307a39144a4e7827fa9fd6b6dd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-perception-jammy` - linux; amd64

```console
$ docker pull ros@sha256:fcc425862f95d4f485f648e8c81762a5c0d71e34deb1f20e36504bdc2280715f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **956.7 MB (956731350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68e9f9a5634c179be07fbaa1d1c45be40af0edfe6c26c340b3f178caa2eb0579`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:33:58 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:10 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:16 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:55 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:34:55 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:34:55 GMT
ENV ROS_DISTRO=humble
# Sat, 17 Oct 2026 00:34:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:56 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:34:56 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:34:56 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:32:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:32:04 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:32:08 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:32:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:22:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9904ab127ba78ee4b30d5200b16e4e42d280cf6d50e42d8ae7a5f71e0e863819`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 1.2 MB (1214871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78c70217b3fe739a40e2f7040e541415fc34c7318e3aae1381b41e527ddce2b5`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 6.0 MB (5952779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc4b2c880f02ab1e8612794519cffee9954689b26cd90371cbe03ac0c720e91e`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 97.9 KB (97910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6d6d419bae97b3f51d6a4bc9002c4d6498ab6092cbcc5f3c1776fc60fb43c7b`  
		Last Modified: Sat, 17 Oct 2026 00:35:23 GMT  
		Size: 105.2 MB (105226949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cffab2e723c86dec0fa9e46219df1614cf6db43823cfe6687af16f9abd79197d`  
		Last Modified: Sat, 17 Oct 2026 00:35:22 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00a4c143b725e7f104760f165954304740b2f20df0a04a04657774ee17fdb5b3`  
		Last Modified: Sat, 17 Oct 2026 01:32:58 GMT  
		Size: 98.2 MB (98200466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2af1b1b2c77286e0cd12ad50c5abda043ecbb72d9d95b608428db5ee0403800`  
		Last Modified: Sat, 17 Oct 2026 01:32:55 GMT  
		Size: 392.6 KB (392618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffc6e1132ce87f4563e5f29f3b8306e2f8468f6b3ecd3c53d31324f57d6b09b3`  
		Last Modified: Sat, 17 Oct 2026 01:32:55 GMT  
		Size: 2.7 KB (2693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:893f6ba9f8e798baf64f716e675663994855d41a093dd2d4dd8d0f7c397ba40d`  
		Last Modified: Sat, 17 Oct 2026 01:32:56 GMT  
		Size: 23.3 MB (23349670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9ed1f51228997d2bb6aae1d8017b5b476a0a53fddad6aa8fca68ccf114d21f7`  
		Last Modified: Sat, 17 Oct 2026 02:25:24 GMT  
		Size: 692.5 MB (692540721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:bd9aacfe355329bf068a186e5a4306a29ecb21a1030f72519e5eb9449a586690
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.1 MB (59073462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdf105d95e7e5823705a937d115c51b17ec6f9bfe7018fbd254cb3a7b106763a`

```dockerfile
```

-	Layers:
	-	`sha256:6abbe18b0faf606af8c9966845ef41372164984827ed75d1d6ad9ab8c8ee23c5`  
		Last Modified: Sat, 17 Oct 2026 02:25:13 GMT  
		Size: 59.1 MB (59064111 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4dc09a282897df0bda941fbe224f5e5f81de9a29de055dc67100cc3279d1b098`  
		Last Modified: Sat, 17 Oct 2026 02:25:11 GMT  
		Size: 9.4 KB (9351 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-perception-jammy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:694ed367611d611b5f96b0e449aa6a3bc454b0730b1784521fbe462101215c64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **917.5 MB (917464769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd90764d10e34cf981187724be1657f61a52d8ff32f8a75c54b0f041cf6c66f7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:33:49 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:00 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:07 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:49 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:34:49 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:34:49 GMT
ENV ROS_DISTRO=humble
# Sat, 17 Oct 2026 00:34:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:50 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:34:50 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:34:50 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:32:59 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:33:03 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:33:05 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:33:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:21:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade8b0f02839ba9ff322ac84eef7adc86edaa48ede77cf7208c2232db8f75033`  
		Last Modified: Sat, 17 Oct 2026 00:35:15 GMT  
		Size: 1.2 MB (1214927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d018904a4a6301015a0eaedd3eba643bfabc578e649d522b2e0d71a33c479e4b`  
		Last Modified: Sat, 17 Oct 2026 00:35:16 GMT  
		Size: 5.9 MB (5912740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb3045688293f0dfe1281c9a23307a570058ad90223852811eca6af5a0cdac36`  
		Last Modified: Sat, 17 Oct 2026 00:35:15 GMT  
		Size: 98.0 KB (97982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d48401550df9f6fb751752a283dae32886ef4178173e1c4e4c9d5787df7c8b0`  
		Last Modified: Sat, 17 Oct 2026 00:35:19 GMT  
		Size: 103.0 MB (103035736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:113b50c487bbd3f2794cb35423fbfe39a273708fe612fc4f0ee0dd649ac9df30`  
		Last Modified: Sat, 17 Oct 2026 00:35:17 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b2f3ee9bb9f63be959c20771457b01abd2cfb572346ea6908c6390ccad5c8df`  
		Last Modified: Sat, 17 Oct 2026 01:34:34 GMT  
		Size: 95.8 MB (95839149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c95136dccec446e226591ee2bad2c4a31846663aadafa9977419858b58d722f6`  
		Last Modified: Sat, 17 Oct 2026 01:34:00 GMT  
		Size: 392.6 KB (392616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdf1eafcc3fc662c1c61b6ef4d88e2c858d044cbadc96069aa5bda355eea200c`  
		Last Modified: Sat, 17 Oct 2026 01:33:59 GMT  
		Size: 2.7 KB (2687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1da8a308b537eb93d4c5bce7518c606f6fd558db5fd28e3c0151d2036f06ac7`  
		Last Modified: Sat, 17 Oct 2026 01:34:10 GMT  
		Size: 22.8 MB (22754801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b64a8bc65d176168987b836de05d1aac9770d3980717c0d388d8e2c6f0f478ac`  
		Last Modified: Sat, 17 Oct 2026 02:24:17 GMT  
		Size: 660.5 MB (660529212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:5779cfa4cfb1c87938469853df51cba5a533564122862f57d7e53fccc97449c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.1 MB (59057868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a02ad8d1e4c2f7d66cb9952fe7e1edf4dad84d7f27e1ee2cc58e527bc04b54e7`

```dockerfile
```

-	Layers:
	-	`sha256:4c6cfe80d9e41a2345ed39cba9f7c08101eefd1ae94881155acd835ac32a10b3`  
		Last Modified: Sat, 17 Oct 2026 02:24:06 GMT  
		Size: 59.0 MB (59048436 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:effb67fa02853b03f07f637edb93831e73f89e250466c16337b66949c3365a2a`  
		Last Modified: Sat, 17 Oct 2026 02:24:03 GMT  
		Size: 9.4 KB (9432 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-ros-base`

```console
$ docker pull ros@sha256:566b87e6dfc48392189a9c32e594e84060fa9948de93b04e536f39475a1f6963
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:fea7dd1577580a53209dc2e9456cd8d6ef13704a09a8f12914e0867f6861ea9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.2 MB (264190629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df3ea285f9dc4eff629099bcd971c78050ae5ac402af213c6bb5d97066c7e36c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:33:58 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:10 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:16 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:55 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:34:55 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:34:55 GMT
ENV ROS_DISTRO=humble
# Sat, 17 Oct 2026 00:34:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:56 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:34:56 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:34:56 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:32:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:32:04 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:32:08 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:32:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9904ab127ba78ee4b30d5200b16e4e42d280cf6d50e42d8ae7a5f71e0e863819`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 1.2 MB (1214871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78c70217b3fe739a40e2f7040e541415fc34c7318e3aae1381b41e527ddce2b5`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 6.0 MB (5952779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc4b2c880f02ab1e8612794519cffee9954689b26cd90371cbe03ac0c720e91e`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 97.9 KB (97910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6d6d419bae97b3f51d6a4bc9002c4d6498ab6092cbcc5f3c1776fc60fb43c7b`  
		Last Modified: Sat, 17 Oct 2026 00:35:23 GMT  
		Size: 105.2 MB (105226949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cffab2e723c86dec0fa9e46219df1614cf6db43823cfe6687af16f9abd79197d`  
		Last Modified: Sat, 17 Oct 2026 00:35:22 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00a4c143b725e7f104760f165954304740b2f20df0a04a04657774ee17fdb5b3`  
		Last Modified: Sat, 17 Oct 2026 01:32:58 GMT  
		Size: 98.2 MB (98200466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2af1b1b2c77286e0cd12ad50c5abda043ecbb72d9d95b608428db5ee0403800`  
		Last Modified: Sat, 17 Oct 2026 01:32:55 GMT  
		Size: 392.6 KB (392618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffc6e1132ce87f4563e5f29f3b8306e2f8468f6b3ecd3c53d31324f57d6b09b3`  
		Last Modified: Sat, 17 Oct 2026 01:32:55 GMT  
		Size: 2.7 KB (2693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:893f6ba9f8e798baf64f716e675663994855d41a093dd2d4dd8d0f7c397ba40d`  
		Last Modified: Sat, 17 Oct 2026 01:32:56 GMT  
		Size: 23.3 MB (23349670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:166f957a0485385fa82c1d834ef27ed0b9d6d59448f471c8407675be5d54c3fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23974427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3939196747b78a43a1ef7f8a8d11b814ccc96cc9afaa3377d78acc708cf00290`

```dockerfile
```

-	Layers:
	-	`sha256:04c9cfe2705256785383ab463592c849e4343e1877166e66546e7549f7d39f68`  
		Last Modified: Sat, 17 Oct 2026 01:32:56 GMT  
		Size: 24.0 MB (23958079 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b62e8978cf46bfe9d80f7c30e37022cc446d3760785ea5e3be610f9002918dde`  
		Last Modified: Sat, 17 Oct 2026 01:32:55 GMT  
		Size: 16.3 KB (16348 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:49472ce5ac155365329a6366ea332610efcdb613de73c802299ac7bc6cd4454d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.9 MB (256935557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92977455d9a06ab4f5957369610f87d43901f418948a799bb41d036f2f1be1dc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:33:49 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:00 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:07 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:49 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:34:49 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:34:49 GMT
ENV ROS_DISTRO=humble
# Sat, 17 Oct 2026 00:34:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:50 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:34:50 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:34:50 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:32:59 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:33:03 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:33:05 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:33:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade8b0f02839ba9ff322ac84eef7adc86edaa48ede77cf7208c2232db8f75033`  
		Last Modified: Sat, 17 Oct 2026 00:35:15 GMT  
		Size: 1.2 MB (1214927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d018904a4a6301015a0eaedd3eba643bfabc578e649d522b2e0d71a33c479e4b`  
		Last Modified: Sat, 17 Oct 2026 00:35:16 GMT  
		Size: 5.9 MB (5912740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb3045688293f0dfe1281c9a23307a570058ad90223852811eca6af5a0cdac36`  
		Last Modified: Sat, 17 Oct 2026 00:35:15 GMT  
		Size: 98.0 KB (97982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d48401550df9f6fb751752a283dae32886ef4178173e1c4e4c9d5787df7c8b0`  
		Last Modified: Sat, 17 Oct 2026 00:35:19 GMT  
		Size: 103.0 MB (103035736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:113b50c487bbd3f2794cb35423fbfe39a273708fe612fc4f0ee0dd649ac9df30`  
		Last Modified: Sat, 17 Oct 2026 00:35:17 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b2f3ee9bb9f63be959c20771457b01abd2cfb572346ea6908c6390ccad5c8df`  
		Last Modified: Sat, 17 Oct 2026 01:34:34 GMT  
		Size: 95.8 MB (95839149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c95136dccec446e226591ee2bad2c4a31846663aadafa9977419858b58d722f6`  
		Last Modified: Sat, 17 Oct 2026 01:34:00 GMT  
		Size: 392.6 KB (392616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdf1eafcc3fc662c1c61b6ef4d88e2c858d044cbadc96069aa5bda355eea200c`  
		Last Modified: Sat, 17 Oct 2026 01:33:59 GMT  
		Size: 2.7 KB (2687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1da8a308b537eb93d4c5bce7518c606f6fd558db5fd28e3c0151d2036f06ac7`  
		Last Modified: Sat, 17 Oct 2026 01:34:10 GMT  
		Size: 22.8 MB (22754801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:f90f8595b54eef8968163f228067b9a9b7e2ff927641e7353f3eebd890661408
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23987581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f2b109b94c33ab942f4585eb6d17f763a28cc04872150163ad3af41ecca93a8`

```dockerfile
```

-	Layers:
	-	`sha256:c78e949efafc272d3afba067d5d86265375e07411d159479d3c1a859e6a8602b`  
		Last Modified: Sat, 17 Oct 2026 01:34:09 GMT  
		Size: 24.0 MB (23971096 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61037ca638a73bd3244287fb51b3cc1b271728400c686960d11c91b39885bc3f`  
		Last Modified: Sat, 17 Oct 2026 01:33:59 GMT  
		Size: 16.5 KB (16485 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-ros-base-jammy`

```console
$ docker pull ros@sha256:566b87e6dfc48392189a9c32e594e84060fa9948de93b04e536f39475a1f6963
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-base-jammy` - linux; amd64

```console
$ docker pull ros@sha256:fea7dd1577580a53209dc2e9456cd8d6ef13704a09a8f12914e0867f6861ea9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.2 MB (264190629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df3ea285f9dc4eff629099bcd971c78050ae5ac402af213c6bb5d97066c7e36c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:33:58 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:10 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:16 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:55 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:34:55 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:34:55 GMT
ENV ROS_DISTRO=humble
# Sat, 17 Oct 2026 00:34:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:56 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:34:56 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:34:56 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:32:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:32:04 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:32:08 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:32:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9904ab127ba78ee4b30d5200b16e4e42d280cf6d50e42d8ae7a5f71e0e863819`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 1.2 MB (1214871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78c70217b3fe739a40e2f7040e541415fc34c7318e3aae1381b41e527ddce2b5`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 6.0 MB (5952779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc4b2c880f02ab1e8612794519cffee9954689b26cd90371cbe03ac0c720e91e`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 97.9 KB (97910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6d6d419bae97b3f51d6a4bc9002c4d6498ab6092cbcc5f3c1776fc60fb43c7b`  
		Last Modified: Sat, 17 Oct 2026 00:35:23 GMT  
		Size: 105.2 MB (105226949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cffab2e723c86dec0fa9e46219df1614cf6db43823cfe6687af16f9abd79197d`  
		Last Modified: Sat, 17 Oct 2026 00:35:22 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00a4c143b725e7f104760f165954304740b2f20df0a04a04657774ee17fdb5b3`  
		Last Modified: Sat, 17 Oct 2026 01:32:58 GMT  
		Size: 98.2 MB (98200466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2af1b1b2c77286e0cd12ad50c5abda043ecbb72d9d95b608428db5ee0403800`  
		Last Modified: Sat, 17 Oct 2026 01:32:55 GMT  
		Size: 392.6 KB (392618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffc6e1132ce87f4563e5f29f3b8306e2f8468f6b3ecd3c53d31324f57d6b09b3`  
		Last Modified: Sat, 17 Oct 2026 01:32:55 GMT  
		Size: 2.7 KB (2693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:893f6ba9f8e798baf64f716e675663994855d41a093dd2d4dd8d0f7c397ba40d`  
		Last Modified: Sat, 17 Oct 2026 01:32:56 GMT  
		Size: 23.3 MB (23349670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-base-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:166f957a0485385fa82c1d834ef27ed0b9d6d59448f471c8407675be5d54c3fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23974427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3939196747b78a43a1ef7f8a8d11b814ccc96cc9afaa3377d78acc708cf00290`

```dockerfile
```

-	Layers:
	-	`sha256:04c9cfe2705256785383ab463592c849e4343e1877166e66546e7549f7d39f68`  
		Last Modified: Sat, 17 Oct 2026 01:32:56 GMT  
		Size: 24.0 MB (23958079 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b62e8978cf46bfe9d80f7c30e37022cc446d3760785ea5e3be610f9002918dde`  
		Last Modified: Sat, 17 Oct 2026 01:32:55 GMT  
		Size: 16.3 KB (16348 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-base-jammy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:49472ce5ac155365329a6366ea332610efcdb613de73c802299ac7bc6cd4454d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.9 MB (256935557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92977455d9a06ab4f5957369610f87d43901f418948a799bb41d036f2f1be1dc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:33:49 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:00 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:07 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:49 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:34:49 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:34:49 GMT
ENV ROS_DISTRO=humble
# Sat, 17 Oct 2026 00:34:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:50 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:34:50 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:34:50 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:32:59 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:33:03 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:33:05 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:33:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade8b0f02839ba9ff322ac84eef7adc86edaa48ede77cf7208c2232db8f75033`  
		Last Modified: Sat, 17 Oct 2026 00:35:15 GMT  
		Size: 1.2 MB (1214927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d018904a4a6301015a0eaedd3eba643bfabc578e649d522b2e0d71a33c479e4b`  
		Last Modified: Sat, 17 Oct 2026 00:35:16 GMT  
		Size: 5.9 MB (5912740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb3045688293f0dfe1281c9a23307a570058ad90223852811eca6af5a0cdac36`  
		Last Modified: Sat, 17 Oct 2026 00:35:15 GMT  
		Size: 98.0 KB (97982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d48401550df9f6fb751752a283dae32886ef4178173e1c4e4c9d5787df7c8b0`  
		Last Modified: Sat, 17 Oct 2026 00:35:19 GMT  
		Size: 103.0 MB (103035736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:113b50c487bbd3f2794cb35423fbfe39a273708fe612fc4f0ee0dd649ac9df30`  
		Last Modified: Sat, 17 Oct 2026 00:35:17 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b2f3ee9bb9f63be959c20771457b01abd2cfb572346ea6908c6390ccad5c8df`  
		Last Modified: Sat, 17 Oct 2026 01:34:34 GMT  
		Size: 95.8 MB (95839149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c95136dccec446e226591ee2bad2c4a31846663aadafa9977419858b58d722f6`  
		Last Modified: Sat, 17 Oct 2026 01:34:00 GMT  
		Size: 392.6 KB (392616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdf1eafcc3fc662c1c61b6ef4d88e2c858d044cbadc96069aa5bda355eea200c`  
		Last Modified: Sat, 17 Oct 2026 01:33:59 GMT  
		Size: 2.7 KB (2687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1da8a308b537eb93d4c5bce7518c606f6fd558db5fd28e3c0151d2036f06ac7`  
		Last Modified: Sat, 17 Oct 2026 01:34:10 GMT  
		Size: 22.8 MB (22754801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-base-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:f90f8595b54eef8968163f228067b9a9b7e2ff927641e7353f3eebd890661408
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23987581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f2b109b94c33ab942f4585eb6d17f763a28cc04872150163ad3af41ecca93a8`

```dockerfile
```

-	Layers:
	-	`sha256:c78e949efafc272d3afba067d5d86265375e07411d159479d3c1a859e6a8602b`  
		Last Modified: Sat, 17 Oct 2026 01:34:09 GMT  
		Size: 24.0 MB (23971096 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61037ca638a73bd3244287fb51b3cc1b271728400c686960d11c91b39885bc3f`  
		Last Modified: Sat, 17 Oct 2026 01:33:59 GMT  
		Size: 16.5 KB (16485 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-ros-core`

```console
$ docker pull ros@sha256:5180d76c096cf07b09da94de0f16897d706a093122f02401a23409c4b7368cec
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:87c589c17fb652967d8005b2bad5baf19642b2a35547c207187d29e56f2b703e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.2 MB (142245182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80f2e0e33e2257d066f0f08ddad23e618bad53a612d676162ab1d726f786d855`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:33:58 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:10 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:16 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:55 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:34:55 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:34:55 GMT
ENV ROS_DISTRO=humble
# Sat, 17 Oct 2026 00:34:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:56 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:34:56 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:34:56 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9904ab127ba78ee4b30d5200b16e4e42d280cf6d50e42d8ae7a5f71e0e863819`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 1.2 MB (1214871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78c70217b3fe739a40e2f7040e541415fc34c7318e3aae1381b41e527ddce2b5`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 6.0 MB (5952779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc4b2c880f02ab1e8612794519cffee9954689b26cd90371cbe03ac0c720e91e`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 97.9 KB (97910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6d6d419bae97b3f51d6a4bc9002c4d6498ab6092cbcc5f3c1776fc60fb43c7b`  
		Last Modified: Sat, 17 Oct 2026 00:35:23 GMT  
		Size: 105.2 MB (105226949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cffab2e723c86dec0fa9e46219df1614cf6db43823cfe6687af16f9abd79197d`  
		Last Modified: Sat, 17 Oct 2026 00:35:22 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:5e6b780162ca01f6f9698adc5d5af57b3f729ed3209aa298357b222d501f170c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17931528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ed0c510c83193e2627b33b63830c481bab68269928a09223b386dedbefc605e`

```dockerfile
```

-	Layers:
	-	`sha256:342233ed97a3001d5a0fc3da0d627cc062e544f06fde191357c2a7799be7d8dd`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 17.9 MB (17916902 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55a51d9891f9b20bccf5f8c9d46dde7ece614cbad427c793cfc2c8ec7199aff6`  
		Last Modified: Sat, 17 Oct 2026 00:35:20 GMT  
		Size: 14.6 KB (14626 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:676e187e8e5cdb7d4a9325cee86c72bb337ffa1c4cfcd13b5732b3da47006937
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.9 MB (137946304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96934ce68effc42bc47fbff930c20fc5db85784b874f77af1c1ba5cf4b763bd5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:33:49 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:00 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:07 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:49 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:34:49 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:34:49 GMT
ENV ROS_DISTRO=humble
# Sat, 17 Oct 2026 00:34:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:50 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:34:50 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:34:50 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade8b0f02839ba9ff322ac84eef7adc86edaa48ede77cf7208c2232db8f75033`  
		Last Modified: Sat, 17 Oct 2026 00:35:15 GMT  
		Size: 1.2 MB (1214927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d018904a4a6301015a0eaedd3eba643bfabc578e649d522b2e0d71a33c479e4b`  
		Last Modified: Sat, 17 Oct 2026 00:35:16 GMT  
		Size: 5.9 MB (5912740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb3045688293f0dfe1281c9a23307a570058ad90223852811eca6af5a0cdac36`  
		Last Modified: Sat, 17 Oct 2026 00:35:15 GMT  
		Size: 98.0 KB (97982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d48401550df9f6fb751752a283dae32886ef4178173e1c4e4c9d5787df7c8b0`  
		Last Modified: Sat, 17 Oct 2026 00:35:19 GMT  
		Size: 103.0 MB (103035736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:113b50c487bbd3f2794cb35423fbfe39a273708fe612fc4f0ee0dd649ac9df30`  
		Last Modified: Sat, 17 Oct 2026 00:35:17 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:014cb071c44732261929b13c6ada215fa1da0ba2d3204a7e4f9da4241ce77226
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17917998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00a40b4fcec342213fee3953fc9a195787d4fc1557d05fd6a845fb4d1780510e`

```dockerfile
```

-	Layers:
	-	`sha256:0788ed2776440a5b09c22a94a999bd9403051a7b74f667c203ec578f58c0aa4b`  
		Last Modified: Sat, 17 Oct 2026 00:35:16 GMT  
		Size: 17.9 MB (17903247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34427405df332b44b7a0de9e5955fb39a211de5923272c3cd53cc72dac23b47b`  
		Last Modified: Sat, 17 Oct 2026 00:35:15 GMT  
		Size: 14.8 KB (14751 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-ros-core-jammy`

```console
$ docker pull ros@sha256:5180d76c096cf07b09da94de0f16897d706a093122f02401a23409c4b7368cec
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-core-jammy` - linux; amd64

```console
$ docker pull ros@sha256:87c589c17fb652967d8005b2bad5baf19642b2a35547c207187d29e56f2b703e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.2 MB (142245182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80f2e0e33e2257d066f0f08ddad23e618bad53a612d676162ab1d726f786d855`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:33:58 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:10 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:16 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:55 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:34:55 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:34:55 GMT
ENV ROS_DISTRO=humble
# Sat, 17 Oct 2026 00:34:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:56 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:34:56 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:34:56 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9904ab127ba78ee4b30d5200b16e4e42d280cf6d50e42d8ae7a5f71e0e863819`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 1.2 MB (1214871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78c70217b3fe739a40e2f7040e541415fc34c7318e3aae1381b41e527ddce2b5`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 6.0 MB (5952779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc4b2c880f02ab1e8612794519cffee9954689b26cd90371cbe03ac0c720e91e`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 97.9 KB (97910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6d6d419bae97b3f51d6a4bc9002c4d6498ab6092cbcc5f3c1776fc60fb43c7b`  
		Last Modified: Sat, 17 Oct 2026 00:35:23 GMT  
		Size: 105.2 MB (105226949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cffab2e723c86dec0fa9e46219df1614cf6db43823cfe6687af16f9abd79197d`  
		Last Modified: Sat, 17 Oct 2026 00:35:22 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:5e6b780162ca01f6f9698adc5d5af57b3f729ed3209aa298357b222d501f170c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17931528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ed0c510c83193e2627b33b63830c481bab68269928a09223b386dedbefc605e`

```dockerfile
```

-	Layers:
	-	`sha256:342233ed97a3001d5a0fc3da0d627cc062e544f06fde191357c2a7799be7d8dd`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 17.9 MB (17916902 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55a51d9891f9b20bccf5f8c9d46dde7ece614cbad427c793cfc2c8ec7199aff6`  
		Last Modified: Sat, 17 Oct 2026 00:35:20 GMT  
		Size: 14.6 KB (14626 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-core-jammy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:676e187e8e5cdb7d4a9325cee86c72bb337ffa1c4cfcd13b5732b3da47006937
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.9 MB (137946304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96934ce68effc42bc47fbff930c20fc5db85784b874f77af1c1ba5cf4b763bd5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:33:49 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:00 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:07 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:49 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:34:49 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:34:49 GMT
ENV ROS_DISTRO=humble
# Sat, 17 Oct 2026 00:34:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:50 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:34:50 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:34:50 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade8b0f02839ba9ff322ac84eef7adc86edaa48ede77cf7208c2232db8f75033`  
		Last Modified: Sat, 17 Oct 2026 00:35:15 GMT  
		Size: 1.2 MB (1214927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d018904a4a6301015a0eaedd3eba643bfabc578e649d522b2e0d71a33c479e4b`  
		Last Modified: Sat, 17 Oct 2026 00:35:16 GMT  
		Size: 5.9 MB (5912740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb3045688293f0dfe1281c9a23307a570058ad90223852811eca6af5a0cdac36`  
		Last Modified: Sat, 17 Oct 2026 00:35:15 GMT  
		Size: 98.0 KB (97982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d48401550df9f6fb751752a283dae32886ef4178173e1c4e4c9d5787df7c8b0`  
		Last Modified: Sat, 17 Oct 2026 00:35:19 GMT  
		Size: 103.0 MB (103035736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:113b50c487bbd3f2794cb35423fbfe39a273708fe612fc4f0ee0dd649ac9df30`  
		Last Modified: Sat, 17 Oct 2026 00:35:17 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:014cb071c44732261929b13c6ada215fa1da0ba2d3204a7e4f9da4241ce77226
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17917998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00a40b4fcec342213fee3953fc9a195787d4fc1557d05fd6a845fb4d1780510e`

```dockerfile
```

-	Layers:
	-	`sha256:0788ed2776440a5b09c22a94a999bd9403051a7b74f667c203ec578f58c0aa4b`  
		Last Modified: Sat, 17 Oct 2026 00:35:16 GMT  
		Size: 17.9 MB (17903247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34427405df332b44b7a0de9e5955fb39a211de5923272c3cd53cc72dac23b47b`  
		Last Modified: Sat, 17 Oct 2026 00:35:15 GMT  
		Size: 14.8 KB (14751 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy`

```console
$ docker pull ros@sha256:103b6c417973394659af6804d4917cd489b91e5ed22eb7bef263025a3bed2410
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy` - linux; amd64

```console
$ docker pull ros@sha256:5d90c49a855d75d2a5de6b8836ca49ac2248746b0748d66da79dcaf006225d63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.6 MB (296635433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e1b6c0171a4d26fdedcb8bbe930e5e68b355e0a101d0b23391bb3fcb2d58e7a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:34:10 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:21 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:28 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:11 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:35:11 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:35:11 GMT
ENV ROS_DISTRO=jazzy
# Sat, 17 Oct 2026 00:35:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:11 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:35:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:35:11 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:32:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:32:09 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:32:10 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:32:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fe3d0ea28d12cca4d8ddbcb7e545cf13835d777347524ad7ec323d0ead33aa5`  
		Last Modified: Sat, 17 Oct 2026 00:35:39 GMT  
		Size: 683.4 KB (683350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a1810ec4780c877c0022a38ae1ac696e6b030ad4d7c1211185b3873b25817a9`  
		Last Modified: Sat, 17 Oct 2026 00:35:40 GMT  
		Size: 6.7 MB (6714668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd8cd2eed5870dedf232a97c423a8633fcb288c6c8d21a7369b566ab88820ece`  
		Last Modified: Sat, 17 Oct 2026 00:35:39 GMT  
		Size: 94.8 KB (94842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b143ee18098ca15a9e619921336601b05fafd8f5ab49648d401e935b9486325f`  
		Last Modified: Sat, 17 Oct 2026 00:35:43 GMT  
		Size: 120.6 MB (120609860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61a53dd41c64c7be3ac4b97d131346ff1ab0066a5e3bdc07854e2b2fce57cce3`  
		Last Modified: Sat, 17 Oct 2026 00:35:41 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9afc0ff0362d5e3e751425fdf9c603cacb57d994c66582cf0aa72a475910f2c7`  
		Last Modified: Sat, 17 Oct 2026 01:33:04 GMT  
		Size: 110.2 MB (110242546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56672d6b3ac7eae2f3c3f02aca74b1b956b27a2b2a047ec4d24b82ae5deafe36`  
		Last Modified: Sat, 17 Oct 2026 01:33:01 GMT  
		Size: 427.8 KB (427784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7a3377a7dea55876e7ce549b192b1923e331b99cc101c2623f12acfe44874c1`  
		Last Modified: Sat, 17 Oct 2026 01:33:00 GMT  
		Size: 2.6 KB (2649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:587715b38052330e5cc804641d0e3007c93f431eabc30ea39d9f3446a4b7e886`  
		Last Modified: Sat, 17 Oct 2026 01:33:02 GMT  
		Size: 28.1 MB (28093779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy` - unknown; unknown

```console
$ docker pull ros@sha256:d1594358d98d6e2d18991a3f666080782dcc96e453aa4c8066723ae803033061
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24938273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d8bf9e7b6bcf369ccdfb4296b1cae2d042893a2e915349371ec918109a0f8e5`

```dockerfile
```

-	Layers:
	-	`sha256:bc35af461a5ba433deedd03802fa79f4f061d430febfd0c005f78f585959925d`  
		Last Modified: Sat, 17 Oct 2026 01:33:01 GMT  
		Size: 24.9 MB (24921944 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:692eef8860a0930cb8817439f1460cc5e9eea0ccd13d1da52eae9c15cace275f`  
		Last Modified: Sat, 17 Oct 2026 01:33:00 GMT  
		Size: 16.3 KB (16329 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d02ae40522e8eb671547efef8ab97c326a62c9efd3a25e48ff3cbe506972edd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.2 MB (285216897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89669eb1e1e01d02dc25c3d66b8a2bce06dddbd5e887301d38f75c50f31b9a54`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:33:51 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:04 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:09 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:53 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:34:53 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:34:53 GMT
ENV ROS_DISTRO=jazzy
# Sat, 17 Oct 2026 00:34:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:53 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:34:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:34:53 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:33:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:33:05 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:33:06 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:33:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12153b342ceead746bbe50685ff004c9ec3b6b20c9135205ad4f9c0e19e93365`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 683.4 KB (683375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3b6f8ad81ef0422e7a885e9a52b57c46e0382e99fb30d22f94b2e808ac2ed1`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 6.7 MB (6728019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e1ea12dff15230242b2514499e71c0a60e79871606efba0741d0361647a484`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 94.8 KB (94826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e8428ffcd1fbb2c2e7f9104a098102f63e5207f0bd231fc830de99ad54fa90c`  
		Last Modified: Sat, 17 Oct 2026 00:35:24 GMT  
		Size: 115.5 MB (115462339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ed18ba17b7f68f77a7ddadd18550416defa11dbe8591248a4cc5d1bf0f77f7b`  
		Last Modified: Sat, 17 Oct 2026 00:35:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeedd8a53fd711e3c611f5643728dca8bed17b9a1ba4ac7dcf9f438c445ff0d8`  
		Last Modified: Sat, 17 Oct 2026 01:34:03 GMT  
		Size: 105.7 MB (105680504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91ec4760a20f5d69e5b13a8458f3d0322de7a7a07ce46633f027a87250c1d599`  
		Last Modified: Sat, 17 Oct 2026 01:33:58 GMT  
		Size: 427.8 KB (427795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:725daec52231c59cb146ab29b525f0673712adb4b48a12f06cb2d70d051333f9`  
		Last Modified: Sat, 17 Oct 2026 01:33:58 GMT  
		Size: 2.6 KB (2648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc808237653c26e5f065c2638c62cc96918047d5285f94dd3809ddfcf416a46d`  
		Last Modified: Sat, 17 Oct 2026 01:34:00 GMT  
		Size: 27.2 MB (27197435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy` - unknown; unknown

```console
$ docker pull ros@sha256:619ce06659661ba7f892c76d689a1bc7790a6bc342fd5b2bf6c07890d0ff58db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 MB (24960665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:069a9a39deab3cb0b27dfff86f6d30f3a6412729ab6e72140234fa7d703745ed`

```dockerfile
```

-	Layers:
	-	`sha256:c1230b31b6932030c98d28ba994861b078c4d57c38ca97d4c5154fd368d327ab`  
		Last Modified: Sat, 17 Oct 2026 01:34:00 GMT  
		Size: 24.9 MB (24944199 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e271ef9e7db8df2585db606c2bd81fb7eadf01134151bc9b90ace84a1e45b6df`  
		Last Modified: Sat, 17 Oct 2026 01:33:58 GMT  
		Size: 16.5 KB (16466 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-perception`

```console
$ docker pull ros@sha256:9495f96fd2d14e43c57193a36e80f015ad7ad05b8d4c4fd046bc9dbfbc40c960
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-perception` - linux; amd64

```console
$ docker pull ros@sha256:443f258cd26448b5dd0c7aed63c445de8f0db7fde84fd65d5201a098f13292b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1082272431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea68a5f3f65a0dbbea668d4d526d3ddb4b01de98e84ece1b15940cf1bb8340af`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:34:10 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:21 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:28 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:11 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:35:11 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:35:11 GMT
ENV ROS_DISTRO=jazzy
# Sat, 17 Oct 2026 00:35:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:11 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:35:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:35:11 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:32:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:32:09 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:32:10 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:32:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:22:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fe3d0ea28d12cca4d8ddbcb7e545cf13835d777347524ad7ec323d0ead33aa5`  
		Last Modified: Sat, 17 Oct 2026 00:35:39 GMT  
		Size: 683.4 KB (683350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a1810ec4780c877c0022a38ae1ac696e6b030ad4d7c1211185b3873b25817a9`  
		Last Modified: Sat, 17 Oct 2026 00:35:40 GMT  
		Size: 6.7 MB (6714668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd8cd2eed5870dedf232a97c423a8633fcb288c6c8d21a7369b566ab88820ece`  
		Last Modified: Sat, 17 Oct 2026 00:35:39 GMT  
		Size: 94.8 KB (94842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b143ee18098ca15a9e619921336601b05fafd8f5ab49648d401e935b9486325f`  
		Last Modified: Sat, 17 Oct 2026 00:35:43 GMT  
		Size: 120.6 MB (120609860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61a53dd41c64c7be3ac4b97d131346ff1ab0066a5e3bdc07854e2b2fce57cce3`  
		Last Modified: Sat, 17 Oct 2026 00:35:41 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9afc0ff0362d5e3e751425fdf9c603cacb57d994c66582cf0aa72a475910f2c7`  
		Last Modified: Sat, 17 Oct 2026 01:33:04 GMT  
		Size: 110.2 MB (110242546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56672d6b3ac7eae2f3c3f02aca74b1b956b27a2b2a047ec4d24b82ae5deafe36`  
		Last Modified: Sat, 17 Oct 2026 01:33:01 GMT  
		Size: 427.8 KB (427784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7a3377a7dea55876e7ce549b192b1923e331b99cc101c2623f12acfe44874c1`  
		Last Modified: Sat, 17 Oct 2026 01:33:00 GMT  
		Size: 2.6 KB (2649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:587715b38052330e5cc804641d0e3007c93f431eabc30ea39d9f3446a4b7e886`  
		Last Modified: Sat, 17 Oct 2026 01:33:02 GMT  
		Size: 28.1 MB (28093779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92746b13577e62264c48d987d993fab190d779242b25cfc808bb3094634bee78`  
		Last Modified: Sat, 17 Oct 2026 02:25:14 GMT  
		Size: 785.6 MB (785636998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception` - unknown; unknown

```console
$ docker pull ros@sha256:03d9150e88c7c04abdb1dd0dd4dd8ea5e55500456e3228dfc2d54ba7a4669a29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61114543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ee3d949bd1094b17baee5d012567c042a577e33c46f6743185bd5add15baa0e`

```dockerfile
```

-	Layers:
	-	`sha256:743a92bd1374fa38999b93889802e7120b0b2d15131ff13f608c3cb4a752ec4b`  
		Last Modified: Sat, 17 Oct 2026 02:25:01 GMT  
		Size: 61.1 MB (61105204 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b75bb797d6742f897fbedf92d5201ca64a9fcf39ddeee7ff9110fbad7b73dc5`  
		Last Modified: Sat, 17 Oct 2026 02:24:58 GMT  
		Size: 9.3 KB (9339 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:14c3fcbc4eaf0995b4c753933226029cf97319d85b3a307f5df0f27975189d80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **985.0 MB (985007052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52e636e2d4c2f2547463ca6215fb74f7976d2ada8700ab14721cb990ea4d00fc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:33:51 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:04 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:09 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:53 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:34:53 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:34:53 GMT
ENV ROS_DISTRO=jazzy
# Sat, 17 Oct 2026 00:34:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:53 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:34:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:34:53 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:33:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:33:05 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:33:06 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:33:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12153b342ceead746bbe50685ff004c9ec3b6b20c9135205ad4f9c0e19e93365`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 683.4 KB (683375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3b6f8ad81ef0422e7a885e9a52b57c46e0382e99fb30d22f94b2e808ac2ed1`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 6.7 MB (6728019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e1ea12dff15230242b2514499e71c0a60e79871606efba0741d0361647a484`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 94.8 KB (94826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e8428ffcd1fbb2c2e7f9104a098102f63e5207f0bd231fc830de99ad54fa90c`  
		Last Modified: Sat, 17 Oct 2026 00:35:24 GMT  
		Size: 115.5 MB (115462339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ed18ba17b7f68f77a7ddadd18550416defa11dbe8591248a4cc5d1bf0f77f7b`  
		Last Modified: Sat, 17 Oct 2026 00:35:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeedd8a53fd711e3c611f5643728dca8bed17b9a1ba4ac7dcf9f438c445ff0d8`  
		Last Modified: Sat, 17 Oct 2026 01:34:03 GMT  
		Size: 105.7 MB (105680504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91ec4760a20f5d69e5b13a8458f3d0322de7a7a07ce46633f027a87250c1d599`  
		Last Modified: Sat, 17 Oct 2026 01:33:58 GMT  
		Size: 427.8 KB (427795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:725daec52231c59cb146ab29b525f0673712adb4b48a12f06cb2d70d051333f9`  
		Last Modified: Sat, 17 Oct 2026 01:33:58 GMT  
		Size: 2.6 KB (2648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc808237653c26e5f065c2638c62cc96918047d5285f94dd3809ddfcf416a46d`  
		Last Modified: Sat, 17 Oct 2026 01:34:00 GMT  
		Size: 27.2 MB (27197435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84e3486c37483f7f2d683ea17e36f85d3a5af05c0d097041b0010fc63647ace1`  
		Last Modified: Sat, 17 Oct 2026 02:25:01 GMT  
		Size: 699.8 MB (699790155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception` - unknown; unknown

```console
$ docker pull ros@sha256:031d4239cb4751803b63bacd36de6076dc3df02ee352c7a9581abe37120a590d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61045141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21a98e55e8acfbb8a00f64d5cdea388c6a4445e3cf2c1c38ec38a45ae436084a`

```dockerfile
```

-	Layers:
	-	`sha256:95509a7a20897dcd2f0f1f4c95015088ac6e0c38e294c1bc3af735ab9e4d21bb`  
		Last Modified: Sat, 17 Oct 2026 02:24:38 GMT  
		Size: 61.0 MB (61035723 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bea201fc43f5e11a240f55ceb5ab4c312616f5845fbc5741e8a94da60455ccc2`  
		Last Modified: Sat, 17 Oct 2026 02:24:35 GMT  
		Size: 9.4 KB (9418 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-perception-noble`

```console
$ docker pull ros@sha256:9495f96fd2d14e43c57193a36e80f015ad7ad05b8d4c4fd046bc9dbfbc40c960
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-perception-noble` - linux; amd64

```console
$ docker pull ros@sha256:443f258cd26448b5dd0c7aed63c445de8f0db7fde84fd65d5201a098f13292b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1082272431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea68a5f3f65a0dbbea668d4d526d3ddb4b01de98e84ece1b15940cf1bb8340af`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:34:10 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:21 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:28 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:11 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:35:11 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:35:11 GMT
ENV ROS_DISTRO=jazzy
# Sat, 17 Oct 2026 00:35:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:11 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:35:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:35:11 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:32:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:32:09 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:32:10 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:32:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:22:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fe3d0ea28d12cca4d8ddbcb7e545cf13835d777347524ad7ec323d0ead33aa5`  
		Last Modified: Sat, 17 Oct 2026 00:35:39 GMT  
		Size: 683.4 KB (683350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a1810ec4780c877c0022a38ae1ac696e6b030ad4d7c1211185b3873b25817a9`  
		Last Modified: Sat, 17 Oct 2026 00:35:40 GMT  
		Size: 6.7 MB (6714668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd8cd2eed5870dedf232a97c423a8633fcb288c6c8d21a7369b566ab88820ece`  
		Last Modified: Sat, 17 Oct 2026 00:35:39 GMT  
		Size: 94.8 KB (94842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b143ee18098ca15a9e619921336601b05fafd8f5ab49648d401e935b9486325f`  
		Last Modified: Sat, 17 Oct 2026 00:35:43 GMT  
		Size: 120.6 MB (120609860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61a53dd41c64c7be3ac4b97d131346ff1ab0066a5e3bdc07854e2b2fce57cce3`  
		Last Modified: Sat, 17 Oct 2026 00:35:41 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9afc0ff0362d5e3e751425fdf9c603cacb57d994c66582cf0aa72a475910f2c7`  
		Last Modified: Sat, 17 Oct 2026 01:33:04 GMT  
		Size: 110.2 MB (110242546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56672d6b3ac7eae2f3c3f02aca74b1b956b27a2b2a047ec4d24b82ae5deafe36`  
		Last Modified: Sat, 17 Oct 2026 01:33:01 GMT  
		Size: 427.8 KB (427784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7a3377a7dea55876e7ce549b192b1923e331b99cc101c2623f12acfe44874c1`  
		Last Modified: Sat, 17 Oct 2026 01:33:00 GMT  
		Size: 2.6 KB (2649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:587715b38052330e5cc804641d0e3007c93f431eabc30ea39d9f3446a4b7e886`  
		Last Modified: Sat, 17 Oct 2026 01:33:02 GMT  
		Size: 28.1 MB (28093779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92746b13577e62264c48d987d993fab190d779242b25cfc808bb3094634bee78`  
		Last Modified: Sat, 17 Oct 2026 02:25:14 GMT  
		Size: 785.6 MB (785636998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:03d9150e88c7c04abdb1dd0dd4dd8ea5e55500456e3228dfc2d54ba7a4669a29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61114543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ee3d949bd1094b17baee5d012567c042a577e33c46f6743185bd5add15baa0e`

```dockerfile
```

-	Layers:
	-	`sha256:743a92bd1374fa38999b93889802e7120b0b2d15131ff13f608c3cb4a752ec4b`  
		Last Modified: Sat, 17 Oct 2026 02:25:01 GMT  
		Size: 61.1 MB (61105204 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b75bb797d6742f897fbedf92d5201ca64a9fcf39ddeee7ff9110fbad7b73dc5`  
		Last Modified: Sat, 17 Oct 2026 02:24:58 GMT  
		Size: 9.3 KB (9339 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-perception-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:14c3fcbc4eaf0995b4c753933226029cf97319d85b3a307f5df0f27975189d80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **985.0 MB (985007052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52e636e2d4c2f2547463ca6215fb74f7976d2ada8700ab14721cb990ea4d00fc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:33:51 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:04 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:09 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:53 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:34:53 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:34:53 GMT
ENV ROS_DISTRO=jazzy
# Sat, 17 Oct 2026 00:34:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:53 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:34:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:34:53 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:33:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:33:05 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:33:06 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:33:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12153b342ceead746bbe50685ff004c9ec3b6b20c9135205ad4f9c0e19e93365`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 683.4 KB (683375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3b6f8ad81ef0422e7a885e9a52b57c46e0382e99fb30d22f94b2e808ac2ed1`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 6.7 MB (6728019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e1ea12dff15230242b2514499e71c0a60e79871606efba0741d0361647a484`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 94.8 KB (94826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e8428ffcd1fbb2c2e7f9104a098102f63e5207f0bd231fc830de99ad54fa90c`  
		Last Modified: Sat, 17 Oct 2026 00:35:24 GMT  
		Size: 115.5 MB (115462339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ed18ba17b7f68f77a7ddadd18550416defa11dbe8591248a4cc5d1bf0f77f7b`  
		Last Modified: Sat, 17 Oct 2026 00:35:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeedd8a53fd711e3c611f5643728dca8bed17b9a1ba4ac7dcf9f438c445ff0d8`  
		Last Modified: Sat, 17 Oct 2026 01:34:03 GMT  
		Size: 105.7 MB (105680504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91ec4760a20f5d69e5b13a8458f3d0322de7a7a07ce46633f027a87250c1d599`  
		Last Modified: Sat, 17 Oct 2026 01:33:58 GMT  
		Size: 427.8 KB (427795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:725daec52231c59cb146ab29b525f0673712adb4b48a12f06cb2d70d051333f9`  
		Last Modified: Sat, 17 Oct 2026 01:33:58 GMT  
		Size: 2.6 KB (2648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc808237653c26e5f065c2638c62cc96918047d5285f94dd3809ddfcf416a46d`  
		Last Modified: Sat, 17 Oct 2026 01:34:00 GMT  
		Size: 27.2 MB (27197435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84e3486c37483f7f2d683ea17e36f85d3a5af05c0d097041b0010fc63647ace1`  
		Last Modified: Sat, 17 Oct 2026 02:25:01 GMT  
		Size: 699.8 MB (699790155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:031d4239cb4751803b63bacd36de6076dc3df02ee352c7a9581abe37120a590d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61045141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21a98e55e8acfbb8a00f64d5cdea388c6a4445e3cf2c1c38ec38a45ae436084a`

```dockerfile
```

-	Layers:
	-	`sha256:95509a7a20897dcd2f0f1f4c95015088ac6e0c38e294c1bc3af735ab9e4d21bb`  
		Last Modified: Sat, 17 Oct 2026 02:24:38 GMT  
		Size: 61.0 MB (61035723 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bea201fc43f5e11a240f55ceb5ab4c312616f5845fbc5741e8a94da60455ccc2`  
		Last Modified: Sat, 17 Oct 2026 02:24:35 GMT  
		Size: 9.4 KB (9418 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-ros-base`

```console
$ docker pull ros@sha256:103b6c417973394659af6804d4917cd489b91e5ed22eb7bef263025a3bed2410
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:5d90c49a855d75d2a5de6b8836ca49ac2248746b0748d66da79dcaf006225d63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.6 MB (296635433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e1b6c0171a4d26fdedcb8bbe930e5e68b355e0a101d0b23391bb3fcb2d58e7a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:34:10 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:21 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:28 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:11 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:35:11 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:35:11 GMT
ENV ROS_DISTRO=jazzy
# Sat, 17 Oct 2026 00:35:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:11 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:35:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:35:11 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:32:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:32:09 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:32:10 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:32:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fe3d0ea28d12cca4d8ddbcb7e545cf13835d777347524ad7ec323d0ead33aa5`  
		Last Modified: Sat, 17 Oct 2026 00:35:39 GMT  
		Size: 683.4 KB (683350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a1810ec4780c877c0022a38ae1ac696e6b030ad4d7c1211185b3873b25817a9`  
		Last Modified: Sat, 17 Oct 2026 00:35:40 GMT  
		Size: 6.7 MB (6714668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd8cd2eed5870dedf232a97c423a8633fcb288c6c8d21a7369b566ab88820ece`  
		Last Modified: Sat, 17 Oct 2026 00:35:39 GMT  
		Size: 94.8 KB (94842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b143ee18098ca15a9e619921336601b05fafd8f5ab49648d401e935b9486325f`  
		Last Modified: Sat, 17 Oct 2026 00:35:43 GMT  
		Size: 120.6 MB (120609860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61a53dd41c64c7be3ac4b97d131346ff1ab0066a5e3bdc07854e2b2fce57cce3`  
		Last Modified: Sat, 17 Oct 2026 00:35:41 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9afc0ff0362d5e3e751425fdf9c603cacb57d994c66582cf0aa72a475910f2c7`  
		Last Modified: Sat, 17 Oct 2026 01:33:04 GMT  
		Size: 110.2 MB (110242546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56672d6b3ac7eae2f3c3f02aca74b1b956b27a2b2a047ec4d24b82ae5deafe36`  
		Last Modified: Sat, 17 Oct 2026 01:33:01 GMT  
		Size: 427.8 KB (427784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7a3377a7dea55876e7ce549b192b1923e331b99cc101c2623f12acfe44874c1`  
		Last Modified: Sat, 17 Oct 2026 01:33:00 GMT  
		Size: 2.6 KB (2649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:587715b38052330e5cc804641d0e3007c93f431eabc30ea39d9f3446a4b7e886`  
		Last Modified: Sat, 17 Oct 2026 01:33:02 GMT  
		Size: 28.1 MB (28093779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:d1594358d98d6e2d18991a3f666080782dcc96e453aa4c8066723ae803033061
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24938273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d8bf9e7b6bcf369ccdfb4296b1cae2d042893a2e915349371ec918109a0f8e5`

```dockerfile
```

-	Layers:
	-	`sha256:bc35af461a5ba433deedd03802fa79f4f061d430febfd0c005f78f585959925d`  
		Last Modified: Sat, 17 Oct 2026 01:33:01 GMT  
		Size: 24.9 MB (24921944 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:692eef8860a0930cb8817439f1460cc5e9eea0ccd13d1da52eae9c15cace275f`  
		Last Modified: Sat, 17 Oct 2026 01:33:00 GMT  
		Size: 16.3 KB (16329 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d02ae40522e8eb671547efef8ab97c326a62c9efd3a25e48ff3cbe506972edd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.2 MB (285216897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89669eb1e1e01d02dc25c3d66b8a2bce06dddbd5e887301d38f75c50f31b9a54`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:33:51 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:04 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:09 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:53 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:34:53 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:34:53 GMT
ENV ROS_DISTRO=jazzy
# Sat, 17 Oct 2026 00:34:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:53 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:34:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:34:53 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:33:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:33:05 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:33:06 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:33:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12153b342ceead746bbe50685ff004c9ec3b6b20c9135205ad4f9c0e19e93365`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 683.4 KB (683375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3b6f8ad81ef0422e7a885e9a52b57c46e0382e99fb30d22f94b2e808ac2ed1`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 6.7 MB (6728019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e1ea12dff15230242b2514499e71c0a60e79871606efba0741d0361647a484`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 94.8 KB (94826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e8428ffcd1fbb2c2e7f9104a098102f63e5207f0bd231fc830de99ad54fa90c`  
		Last Modified: Sat, 17 Oct 2026 00:35:24 GMT  
		Size: 115.5 MB (115462339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ed18ba17b7f68f77a7ddadd18550416defa11dbe8591248a4cc5d1bf0f77f7b`  
		Last Modified: Sat, 17 Oct 2026 00:35:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeedd8a53fd711e3c611f5643728dca8bed17b9a1ba4ac7dcf9f438c445ff0d8`  
		Last Modified: Sat, 17 Oct 2026 01:34:03 GMT  
		Size: 105.7 MB (105680504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91ec4760a20f5d69e5b13a8458f3d0322de7a7a07ce46633f027a87250c1d599`  
		Last Modified: Sat, 17 Oct 2026 01:33:58 GMT  
		Size: 427.8 KB (427795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:725daec52231c59cb146ab29b525f0673712adb4b48a12f06cb2d70d051333f9`  
		Last Modified: Sat, 17 Oct 2026 01:33:58 GMT  
		Size: 2.6 KB (2648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc808237653c26e5f065c2638c62cc96918047d5285f94dd3809ddfcf416a46d`  
		Last Modified: Sat, 17 Oct 2026 01:34:00 GMT  
		Size: 27.2 MB (27197435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:619ce06659661ba7f892c76d689a1bc7790a6bc342fd5b2bf6c07890d0ff58db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 MB (24960665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:069a9a39deab3cb0b27dfff86f6d30f3a6412729ab6e72140234fa7d703745ed`

```dockerfile
```

-	Layers:
	-	`sha256:c1230b31b6932030c98d28ba994861b078c4d57c38ca97d4c5154fd368d327ab`  
		Last Modified: Sat, 17 Oct 2026 01:34:00 GMT  
		Size: 24.9 MB (24944199 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e271ef9e7db8df2585db606c2bd81fb7eadf01134151bc9b90ace84a1e45b6df`  
		Last Modified: Sat, 17 Oct 2026 01:33:58 GMT  
		Size: 16.5 KB (16466 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-ros-base-noble`

```console
$ docker pull ros@sha256:103b6c417973394659af6804d4917cd489b91e5ed22eb7bef263025a3bed2410
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-base-noble` - linux; amd64

```console
$ docker pull ros@sha256:5d90c49a855d75d2a5de6b8836ca49ac2248746b0748d66da79dcaf006225d63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.6 MB (296635433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e1b6c0171a4d26fdedcb8bbe930e5e68b355e0a101d0b23391bb3fcb2d58e7a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:34:10 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:21 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:28 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:11 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:35:11 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:35:11 GMT
ENV ROS_DISTRO=jazzy
# Sat, 17 Oct 2026 00:35:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:11 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:35:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:35:11 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:32:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:32:09 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:32:10 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:32:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fe3d0ea28d12cca4d8ddbcb7e545cf13835d777347524ad7ec323d0ead33aa5`  
		Last Modified: Sat, 17 Oct 2026 00:35:39 GMT  
		Size: 683.4 KB (683350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a1810ec4780c877c0022a38ae1ac696e6b030ad4d7c1211185b3873b25817a9`  
		Last Modified: Sat, 17 Oct 2026 00:35:40 GMT  
		Size: 6.7 MB (6714668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd8cd2eed5870dedf232a97c423a8633fcb288c6c8d21a7369b566ab88820ece`  
		Last Modified: Sat, 17 Oct 2026 00:35:39 GMT  
		Size: 94.8 KB (94842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b143ee18098ca15a9e619921336601b05fafd8f5ab49648d401e935b9486325f`  
		Last Modified: Sat, 17 Oct 2026 00:35:43 GMT  
		Size: 120.6 MB (120609860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61a53dd41c64c7be3ac4b97d131346ff1ab0066a5e3bdc07854e2b2fce57cce3`  
		Last Modified: Sat, 17 Oct 2026 00:35:41 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9afc0ff0362d5e3e751425fdf9c603cacb57d994c66582cf0aa72a475910f2c7`  
		Last Modified: Sat, 17 Oct 2026 01:33:04 GMT  
		Size: 110.2 MB (110242546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56672d6b3ac7eae2f3c3f02aca74b1b956b27a2b2a047ec4d24b82ae5deafe36`  
		Last Modified: Sat, 17 Oct 2026 01:33:01 GMT  
		Size: 427.8 KB (427784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7a3377a7dea55876e7ce549b192b1923e331b99cc101c2623f12acfe44874c1`  
		Last Modified: Sat, 17 Oct 2026 01:33:00 GMT  
		Size: 2.6 KB (2649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:587715b38052330e5cc804641d0e3007c93f431eabc30ea39d9f3446a4b7e886`  
		Last Modified: Sat, 17 Oct 2026 01:33:02 GMT  
		Size: 28.1 MB (28093779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:d1594358d98d6e2d18991a3f666080782dcc96e453aa4c8066723ae803033061
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24938273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d8bf9e7b6bcf369ccdfb4296b1cae2d042893a2e915349371ec918109a0f8e5`

```dockerfile
```

-	Layers:
	-	`sha256:bc35af461a5ba433deedd03802fa79f4f061d430febfd0c005f78f585959925d`  
		Last Modified: Sat, 17 Oct 2026 01:33:01 GMT  
		Size: 24.9 MB (24921944 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:692eef8860a0930cb8817439f1460cc5e9eea0ccd13d1da52eae9c15cace275f`  
		Last Modified: Sat, 17 Oct 2026 01:33:00 GMT  
		Size: 16.3 KB (16329 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-base-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d02ae40522e8eb671547efef8ab97c326a62c9efd3a25e48ff3cbe506972edd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.2 MB (285216897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89669eb1e1e01d02dc25c3d66b8a2bce06dddbd5e887301d38f75c50f31b9a54`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:33:51 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:04 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:09 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:53 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:34:53 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:34:53 GMT
ENV ROS_DISTRO=jazzy
# Sat, 17 Oct 2026 00:34:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:53 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:34:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:34:53 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:33:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:33:05 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:33:06 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:33:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12153b342ceead746bbe50685ff004c9ec3b6b20c9135205ad4f9c0e19e93365`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 683.4 KB (683375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3b6f8ad81ef0422e7a885e9a52b57c46e0382e99fb30d22f94b2e808ac2ed1`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 6.7 MB (6728019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e1ea12dff15230242b2514499e71c0a60e79871606efba0741d0361647a484`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 94.8 KB (94826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e8428ffcd1fbb2c2e7f9104a098102f63e5207f0bd231fc830de99ad54fa90c`  
		Last Modified: Sat, 17 Oct 2026 00:35:24 GMT  
		Size: 115.5 MB (115462339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ed18ba17b7f68f77a7ddadd18550416defa11dbe8591248a4cc5d1bf0f77f7b`  
		Last Modified: Sat, 17 Oct 2026 00:35:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeedd8a53fd711e3c611f5643728dca8bed17b9a1ba4ac7dcf9f438c445ff0d8`  
		Last Modified: Sat, 17 Oct 2026 01:34:03 GMT  
		Size: 105.7 MB (105680504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91ec4760a20f5d69e5b13a8458f3d0322de7a7a07ce46633f027a87250c1d599`  
		Last Modified: Sat, 17 Oct 2026 01:33:58 GMT  
		Size: 427.8 KB (427795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:725daec52231c59cb146ab29b525f0673712adb4b48a12f06cb2d70d051333f9`  
		Last Modified: Sat, 17 Oct 2026 01:33:58 GMT  
		Size: 2.6 KB (2648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc808237653c26e5f065c2638c62cc96918047d5285f94dd3809ddfcf416a46d`  
		Last Modified: Sat, 17 Oct 2026 01:34:00 GMT  
		Size: 27.2 MB (27197435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:619ce06659661ba7f892c76d689a1bc7790a6bc342fd5b2bf6c07890d0ff58db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 MB (24960665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:069a9a39deab3cb0b27dfff86f6d30f3a6412729ab6e72140234fa7d703745ed`

```dockerfile
```

-	Layers:
	-	`sha256:c1230b31b6932030c98d28ba994861b078c4d57c38ca97d4c5154fd368d327ab`  
		Last Modified: Sat, 17 Oct 2026 01:34:00 GMT  
		Size: 24.9 MB (24944199 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e271ef9e7db8df2585db606c2bd81fb7eadf01134151bc9b90ace84a1e45b6df`  
		Last Modified: Sat, 17 Oct 2026 01:33:58 GMT  
		Size: 16.5 KB (16466 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-ros-core`

```console
$ docker pull ros@sha256:422ce4f534bfe208b5b008c0d02b58012a92adaa31eafa81a767c26e488ba667
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:edf1e8faadbcceb6473eb45a9b7765443f9bb13de2af1847ffcc9d4b1868c372
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.9 MB (157868675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2ef8f466d9b3e272daef57cade67445f064e5b8be6731f9d5ca889b5b13ba55`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:34:10 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:21 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:28 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:11 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:35:11 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:35:11 GMT
ENV ROS_DISTRO=jazzy
# Sat, 17 Oct 2026 00:35:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:11 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:35:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:35:11 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fe3d0ea28d12cca4d8ddbcb7e545cf13835d777347524ad7ec323d0ead33aa5`  
		Last Modified: Sat, 17 Oct 2026 00:35:39 GMT  
		Size: 683.4 KB (683350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a1810ec4780c877c0022a38ae1ac696e6b030ad4d7c1211185b3873b25817a9`  
		Last Modified: Sat, 17 Oct 2026 00:35:40 GMT  
		Size: 6.7 MB (6714668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd8cd2eed5870dedf232a97c423a8633fcb288c6c8d21a7369b566ab88820ece`  
		Last Modified: Sat, 17 Oct 2026 00:35:39 GMT  
		Size: 94.8 KB (94842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b143ee18098ca15a9e619921336601b05fafd8f5ab49648d401e935b9486325f`  
		Last Modified: Sat, 17 Oct 2026 00:35:43 GMT  
		Size: 120.6 MB (120609860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61a53dd41c64c7be3ac4b97d131346ff1ab0066a5e3bdc07854e2b2fce57cce3`  
		Last Modified: Sat, 17 Oct 2026 00:35:41 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:d90f40b117800dd84e1653af5620443f0b788a6694eed5a33936cefea2f8f1cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18622780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60fb8d236f2225bb7481fd507387430c28154a0b341cbd0cd976da42cf5aa8d8`

```dockerfile
```

-	Layers:
	-	`sha256:734cd8e6ac431b63e9e75ff50626bfd13ae72163bdf559cd8eeb8ecbb2e155f4`  
		Last Modified: Sat, 17 Oct 2026 00:35:40 GMT  
		Size: 18.6 MB (18608173 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88524993aa32ced569b77a1f0402bc741b6b8f81866a9b2b0aea453be6ed4cec`  
		Last Modified: Sat, 17 Oct 2026 00:35:39 GMT  
		Size: 14.6 KB (14607 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7ebff333371416040751b15978a89f7d4348090c88f6f798feecf961567e2210
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.9 MB (151908515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e71d47ffab5fafd7efe8f53aca4da0a619a205b4fd2716cb1290bb4b920ece5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:33:51 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:04 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:09 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:53 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:34:53 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:34:53 GMT
ENV ROS_DISTRO=jazzy
# Sat, 17 Oct 2026 00:34:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:53 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:34:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:34:53 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12153b342ceead746bbe50685ff004c9ec3b6b20c9135205ad4f9c0e19e93365`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 683.4 KB (683375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3b6f8ad81ef0422e7a885e9a52b57c46e0382e99fb30d22f94b2e808ac2ed1`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 6.7 MB (6728019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e1ea12dff15230242b2514499e71c0a60e79871606efba0741d0361647a484`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 94.8 KB (94826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e8428ffcd1fbb2c2e7f9104a098102f63e5207f0bd231fc830de99ad54fa90c`  
		Last Modified: Sat, 17 Oct 2026 00:35:24 GMT  
		Size: 115.5 MB (115462339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ed18ba17b7f68f77a7ddadd18550416defa11dbe8591248a4cc5d1bf0f77f7b`  
		Last Modified: Sat, 17 Oct 2026 00:35:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:c92d5c8f0e21aa881a1fe6b81405cd93d4591d8b4661cda41a6d57630f547dd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18596912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9113a91c892911cb76745f92e3d926de0ffe7237f4a0f3b115072df2260ef704`

```dockerfile
```

-	Layers:
	-	`sha256:3a01171328c7c23bb3e33d13fd05029775f425c668462518289d05dd1041af4e`  
		Last Modified: Sat, 17 Oct 2026 00:35:22 GMT  
		Size: 18.6 MB (18582179 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f88385211eb313642e23858769f3e4f566768c622fde7431a611976e6d76a20`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 14.7 KB (14733 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-ros-core-noble`

```console
$ docker pull ros@sha256:422ce4f534bfe208b5b008c0d02b58012a92adaa31eafa81a767c26e488ba667
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-core-noble` - linux; amd64

```console
$ docker pull ros@sha256:edf1e8faadbcceb6473eb45a9b7765443f9bb13de2af1847ffcc9d4b1868c372
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.9 MB (157868675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2ef8f466d9b3e272daef57cade67445f064e5b8be6731f9d5ca889b5b13ba55`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:34:10 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:21 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:28 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:11 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:35:11 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:35:11 GMT
ENV ROS_DISTRO=jazzy
# Sat, 17 Oct 2026 00:35:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:11 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:35:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:35:11 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fe3d0ea28d12cca4d8ddbcb7e545cf13835d777347524ad7ec323d0ead33aa5`  
		Last Modified: Sat, 17 Oct 2026 00:35:39 GMT  
		Size: 683.4 KB (683350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a1810ec4780c877c0022a38ae1ac696e6b030ad4d7c1211185b3873b25817a9`  
		Last Modified: Sat, 17 Oct 2026 00:35:40 GMT  
		Size: 6.7 MB (6714668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd8cd2eed5870dedf232a97c423a8633fcb288c6c8d21a7369b566ab88820ece`  
		Last Modified: Sat, 17 Oct 2026 00:35:39 GMT  
		Size: 94.8 KB (94842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b143ee18098ca15a9e619921336601b05fafd8f5ab49648d401e935b9486325f`  
		Last Modified: Sat, 17 Oct 2026 00:35:43 GMT  
		Size: 120.6 MB (120609860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61a53dd41c64c7be3ac4b97d131346ff1ab0066a5e3bdc07854e2b2fce57cce3`  
		Last Modified: Sat, 17 Oct 2026 00:35:41 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:d90f40b117800dd84e1653af5620443f0b788a6694eed5a33936cefea2f8f1cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18622780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60fb8d236f2225bb7481fd507387430c28154a0b341cbd0cd976da42cf5aa8d8`

```dockerfile
```

-	Layers:
	-	`sha256:734cd8e6ac431b63e9e75ff50626bfd13ae72163bdf559cd8eeb8ecbb2e155f4`  
		Last Modified: Sat, 17 Oct 2026 00:35:40 GMT  
		Size: 18.6 MB (18608173 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88524993aa32ced569b77a1f0402bc741b6b8f81866a9b2b0aea453be6ed4cec`  
		Last Modified: Sat, 17 Oct 2026 00:35:39 GMT  
		Size: 14.6 KB (14607 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-core-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7ebff333371416040751b15978a89f7d4348090c88f6f798feecf961567e2210
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.9 MB (151908515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e71d47ffab5fafd7efe8f53aca4da0a619a205b4fd2716cb1290bb4b920ece5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:33:51 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:04 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:09 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:53 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:34:53 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:34:53 GMT
ENV ROS_DISTRO=jazzy
# Sat, 17 Oct 2026 00:34:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:53 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:34:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:34:53 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12153b342ceead746bbe50685ff004c9ec3b6b20c9135205ad4f9c0e19e93365`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 683.4 KB (683375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3b6f8ad81ef0422e7a885e9a52b57c46e0382e99fb30d22f94b2e808ac2ed1`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 6.7 MB (6728019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e1ea12dff15230242b2514499e71c0a60e79871606efba0741d0361647a484`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 94.8 KB (94826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e8428ffcd1fbb2c2e7f9104a098102f63e5207f0bd231fc830de99ad54fa90c`  
		Last Modified: Sat, 17 Oct 2026 00:35:24 GMT  
		Size: 115.5 MB (115462339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ed18ba17b7f68f77a7ddadd18550416defa11dbe8591248a4cc5d1bf0f77f7b`  
		Last Modified: Sat, 17 Oct 2026 00:35:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:c92d5c8f0e21aa881a1fe6b81405cd93d4591d8b4661cda41a6d57630f547dd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18596912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9113a91c892911cb76745f92e3d926de0ffe7237f4a0f3b115072df2260ef704`

```dockerfile
```

-	Layers:
	-	`sha256:3a01171328c7c23bb3e33d13fd05029775f425c668462518289d05dd1041af4e`  
		Last Modified: Sat, 17 Oct 2026 00:35:22 GMT  
		Size: 18.6 MB (18582179 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f88385211eb313642e23858769f3e4f566768c622fde7431a611976e6d76a20`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 14.7 KB (14733 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted`

```console
$ docker pull ros@sha256:b22b776bb18f5eb78dbf456fdb5a5c199ec04316fb3a2cf6b654ab954abd3e62
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted` - linux; amd64

```console
$ docker pull ros@sha256:753e7237f147a7dd92198b31d1ef6ab81924295657c8c9bdc96645bb3b817041
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.1 MB (297084645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e20025e1ca44c4974ea555b9f609483b2398598a94690e24658aa0d0d83d03e2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:35:36 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:49 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:54 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:37 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:36:37 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:36:37 GMT
ENV ROS_DISTRO=kilted
# Sat, 17 Oct 2026 00:36:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:37 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:36:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:36:37 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:32:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:32:10 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:32:11 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:32:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85a337d31c79741a4661670680a0b56a340802c38b18c77ec15cbb84c8594e35`  
		Last Modified: Sat, 17 Oct 2026 00:37:06 GMT  
		Size: 683.3 KB (683348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c96b6de7c46dc05b25dae282950258830073dc7f538ec5f03b1dfe250d3434d`  
		Last Modified: Sat, 17 Oct 2026 00:37:07 GMT  
		Size: 6.7 MB (6714649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28c4771d37ad474b48d49089c0b8604cee5c1b3965b9dccaca17734eb7f696d9`  
		Last Modified: Sat, 17 Oct 2026 00:37:06 GMT  
		Size: 94.8 KB (94840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c4549e3e21d70a39e6f28f29a155263b031358fa53b52b739fcd0b311f78636`  
		Last Modified: Sat, 17 Oct 2026 00:37:09 GMT  
		Size: 121.3 MB (121282474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03d8042b47d90dcfdfd644fdc464cae915c8392e57cfa1e767de8d3bf4ffb87a`  
		Last Modified: Sat, 17 Oct 2026 00:37:07 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3467b7eb48ac5e207a916dcd5cad43d8666d0f93d82251994e847927b28258f`  
		Last Modified: Sat, 17 Oct 2026 01:33:08 GMT  
		Size: 110.2 MB (110244871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69e19f82e5eef6cc8a0c9e7d7221ce1bad9093f0cfcf1dfa13650a03bf463d3a`  
		Last Modified: Sat, 17 Oct 2026 01:33:04 GMT  
		Size: 376.5 KB (376543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec0053ea58ce0b615b9e0b29d1f587c6bf945efebb990be629a9623724771ad8`  
		Last Modified: Sat, 17 Oct 2026 01:33:04 GMT  
		Size: 2.7 KB (2653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d93637ad175eee43176a9895349933246108eb040a6767fe2a21b6b6185e0d9`  
		Last Modified: Sat, 17 Oct 2026 01:33:06 GMT  
		Size: 27.9 MB (27919312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted` - unknown; unknown

```console
$ docker pull ros@sha256:6e82425f1854e096e09e2bb3c216e7fedb5660523054207580a0b4f5ce202c96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24892499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d029fd1994c1fff9fdebfc96cfb63d3ff27e138238bbfd8a99786450c28b23e`

```dockerfile
```

-	Layers:
	-	`sha256:41cb8e2a52d7b02fbd537930a6b03f3d8d33f8c1482710268065db06b43890be`  
		Last Modified: Sat, 17 Oct 2026 01:33:05 GMT  
		Size: 24.9 MB (24876152 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c74693121f3566dc09e626c1eae37a1477184758c9ea5b8afcd88e7448619ad`  
		Last Modified: Sat, 17 Oct 2026 01:33:04 GMT  
		Size: 16.3 KB (16347 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ca69df12b7e943cd29d404d04ade6d8461b428a42fac4a822c68954ee645538b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.6 MB (285626368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd3da329cb6665ed92814213ac9b81e036c9968ddba39aa138eebd45b514a999`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:35:33 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:47 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:53 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:34 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:36:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:36:34 GMT
ENV ROS_DISTRO=kilted
# Sat, 17 Oct 2026 00:36:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:34 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:36:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:36:34 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:33:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:33:04 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:33:06 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:33:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6983dce44d120ca4754e630afd57ed67e897b660e6d7e1f5451ade3a48cc277d`  
		Last Modified: Sat, 17 Oct 2026 00:37:02 GMT  
		Size: 683.4 KB (683371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1d0ed6dafa169bfecd6daef25e560b6a20efae522bb1040013634825ec5d165`  
		Last Modified: Sat, 17 Oct 2026 00:37:03 GMT  
		Size: 6.7 MB (6727981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecb6154191c3cd235cf72bfe670dedfff7cc9bc0a77dc9faf7c46052f5741193`  
		Last Modified: Sat, 17 Oct 2026 00:37:02 GMT  
		Size: 94.8 KB (94821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d0a375abab3473c5b108989d23f88b7ac73a52ef8874ed1f6b7cdbbc45979cb`  
		Last Modified: Sat, 17 Oct 2026 00:37:05 GMT  
		Size: 116.1 MB (116086563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4149001be590298e2fecc783d3aaf115d80d9a7b91b581278b45dcea4c7b8b0a`  
		Last Modified: Sat, 17 Oct 2026 00:37:04 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2094ed40d2c6f1fa54a64c9a49ef581948fb26aaefbc6638f35247916ff26fd3`  
		Last Modified: Sat, 17 Oct 2026 01:34:03 GMT  
		Size: 105.7 MB (105684021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5d7e2078f86fdec64a24aefb4e922db9b887224edc7807f168d2f4818d404d9`  
		Last Modified: Sat, 17 Oct 2026 01:34:00 GMT  
		Size: 376.6 KB (376550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:235401bde3a2a29a8be807bdb3a2b0d2011d787d04f24751a9f527657767c53e`  
		Last Modified: Sat, 17 Oct 2026 01:34:00 GMT  
		Size: 2.6 KB (2642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70c4f5921dac312b5602729793e01e28e441a351bc20209ea4967ac2a015bdeb`  
		Last Modified: Sat, 17 Oct 2026 01:34:01 GMT  
		Size: 27.0 MB (27030461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted` - unknown; unknown

```console
$ docker pull ros@sha256:80992a442f79ac4b805f6ccb420bc8c91ab60758a1a24552635833a8313028f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24914896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36f088b138f83787f9ef4fa8b659fcf1b76ab976b402ce59e240d267d9a45ca5`

```dockerfile
```

-	Layers:
	-	`sha256:884e960d5ed061f0c3652971975e9139bbba67769e6d0442494df3896815dc37`  
		Last Modified: Sat, 17 Oct 2026 01:34:01 GMT  
		Size: 24.9 MB (24898412 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd9a4f4e557794fe7d00bec0433f6d5559aa773ee71a5ba4218ad7fff8eb1904`  
		Last Modified: Sat, 17 Oct 2026 01:33:59 GMT  
		Size: 16.5 KB (16484 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-perception`

```console
$ docker pull ros@sha256:5f0135752911361b7d0ef477fd272e528f258c42f0569068392fab196ea84ff8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-perception` - linux; amd64

```console
$ docker pull ros@sha256:5d746acd6536266f81daacf79fdaf0701ae6e169dbf166ac467811a48d4a37a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1082745251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c83a809775f47deacd4a3d41450bb94fc86b4e6f89452e1c7e18d0381394dd81`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:35:36 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:49 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:54 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:37 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:36:37 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:36:37 GMT
ENV ROS_DISTRO=kilted
# Sat, 17 Oct 2026 00:36:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:37 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:36:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:36:37 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:32:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:32:10 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:32:11 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:32:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:22:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85a337d31c79741a4661670680a0b56a340802c38b18c77ec15cbb84c8594e35`  
		Last Modified: Sat, 17 Oct 2026 00:37:06 GMT  
		Size: 683.3 KB (683348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c96b6de7c46dc05b25dae282950258830073dc7f538ec5f03b1dfe250d3434d`  
		Last Modified: Sat, 17 Oct 2026 00:37:07 GMT  
		Size: 6.7 MB (6714649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28c4771d37ad474b48d49089c0b8604cee5c1b3965b9dccaca17734eb7f696d9`  
		Last Modified: Sat, 17 Oct 2026 00:37:06 GMT  
		Size: 94.8 KB (94840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c4549e3e21d70a39e6f28f29a155263b031358fa53b52b739fcd0b311f78636`  
		Last Modified: Sat, 17 Oct 2026 00:37:09 GMT  
		Size: 121.3 MB (121282474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03d8042b47d90dcfdfd644fdc464cae915c8392e57cfa1e767de8d3bf4ffb87a`  
		Last Modified: Sat, 17 Oct 2026 00:37:07 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3467b7eb48ac5e207a916dcd5cad43d8666d0f93d82251994e847927b28258f`  
		Last Modified: Sat, 17 Oct 2026 01:33:08 GMT  
		Size: 110.2 MB (110244871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69e19f82e5eef6cc8a0c9e7d7221ce1bad9093f0cfcf1dfa13650a03bf463d3a`  
		Last Modified: Sat, 17 Oct 2026 01:33:04 GMT  
		Size: 376.5 KB (376543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec0053ea58ce0b615b9e0b29d1f587c6bf945efebb990be629a9623724771ad8`  
		Last Modified: Sat, 17 Oct 2026 01:33:04 GMT  
		Size: 2.7 KB (2653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d93637ad175eee43176a9895349933246108eb040a6767fe2a21b6b6185e0d9`  
		Last Modified: Sat, 17 Oct 2026 01:33:06 GMT  
		Size: 27.9 MB (27919312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed2bd92219fa23e18f51fb85d9ee608998073231d572b1232a8302413a035ae9`  
		Last Modified: Sat, 17 Oct 2026 02:24:48 GMT  
		Size: 785.7 MB (785660606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception` - unknown; unknown

```console
$ docker pull ros@sha256:587fc5c335122e3871d069ada757569014170a13f3e6f8d36f2a4d117f6d3845
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61073408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f522c4fbd7e6f744571643e092333d4b423ebb8e7c42825ffdb517ccd5b6a6a`

```dockerfile
```

-	Layers:
	-	`sha256:a9f7aed573c4fa91d247d974d1f9c0b9767ba6fa0efc68a1c62ae4c288937f24`  
		Last Modified: Sat, 17 Oct 2026 02:24:37 GMT  
		Size: 61.1 MB (61064056 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e08103149ba7ca6c854b784254a28e53a1c4fcf27cee34ee51ee9db8825b75f8`  
		Last Modified: Sat, 17 Oct 2026 02:24:34 GMT  
		Size: 9.4 KB (9352 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:aed65b3d1fabeb81abaf1bc68277f5d31f8d0e89e501e7ff3740fdc1fd9f72c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **985.4 MB (985428839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75b979ac917c4a9643d23a6f76d00f0ef28fb2ee9d4ebe2256f78f0ecb1b8b9f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:35:33 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:47 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:53 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:34 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:36:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:36:34 GMT
ENV ROS_DISTRO=kilted
# Sat, 17 Oct 2026 00:36:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:34 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:36:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:36:34 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:33:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:33:04 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:33:06 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:33:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:21:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6983dce44d120ca4754e630afd57ed67e897b660e6d7e1f5451ade3a48cc277d`  
		Last Modified: Sat, 17 Oct 2026 00:37:02 GMT  
		Size: 683.4 KB (683371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1d0ed6dafa169bfecd6daef25e560b6a20efae522bb1040013634825ec5d165`  
		Last Modified: Sat, 17 Oct 2026 00:37:03 GMT  
		Size: 6.7 MB (6727981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecb6154191c3cd235cf72bfe670dedfff7cc9bc0a77dc9faf7c46052f5741193`  
		Last Modified: Sat, 17 Oct 2026 00:37:02 GMT  
		Size: 94.8 KB (94821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d0a375abab3473c5b108989d23f88b7ac73a52ef8874ed1f6b7cdbbc45979cb`  
		Last Modified: Sat, 17 Oct 2026 00:37:05 GMT  
		Size: 116.1 MB (116086563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4149001be590298e2fecc783d3aaf115d80d9a7b91b581278b45dcea4c7b8b0a`  
		Last Modified: Sat, 17 Oct 2026 00:37:04 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2094ed40d2c6f1fa54a64c9a49ef581948fb26aaefbc6638f35247916ff26fd3`  
		Last Modified: Sat, 17 Oct 2026 01:34:03 GMT  
		Size: 105.7 MB (105684021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5d7e2078f86fdec64a24aefb4e922db9b887224edc7807f168d2f4818d404d9`  
		Last Modified: Sat, 17 Oct 2026 01:34:00 GMT  
		Size: 376.6 KB (376550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:235401bde3a2a29a8be807bdb3a2b0d2011d787d04f24751a9f527657767c53e`  
		Last Modified: Sat, 17 Oct 2026 01:34:00 GMT  
		Size: 2.6 KB (2642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70c4f5921dac312b5602729793e01e28e441a351bc20209ea4967ac2a015bdeb`  
		Last Modified: Sat, 17 Oct 2026 01:34:01 GMT  
		Size: 27.0 MB (27030461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62df37ec46bae6321e323c64b746b1daf97f37e7d6402358e1dc42ab96ec7089`  
		Last Modified: Sat, 17 Oct 2026 02:24:53 GMT  
		Size: 699.8 MB (699802471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception` - unknown; unknown

```console
$ docker pull ros@sha256:29cf15abb35482938dc0d495512352d85f5de8f8f571b44c23aa17984acdf775
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61004011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6039dd00bda9fcff62212523bb090b0f8587b8994beadca53ccca15dceea9c77`

```dockerfile
```

-	Layers:
	-	`sha256:3fb3c6a1bdbf00d6060eb4f59eba096c4d3115b06c9ef51c6608817bbaa0ca6d`  
		Last Modified: Sat, 17 Oct 2026 02:24:44 GMT  
		Size: 61.0 MB (60994580 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:939e8776ab8def00db67832efbee797ace0156d5b62132b935997e1d994e0447`  
		Last Modified: Sat, 17 Oct 2026 02:24:42 GMT  
		Size: 9.4 KB (9431 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-perception-noble`

```console
$ docker pull ros@sha256:5f0135752911361b7d0ef477fd272e528f258c42f0569068392fab196ea84ff8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-perception-noble` - linux; amd64

```console
$ docker pull ros@sha256:5d746acd6536266f81daacf79fdaf0701ae6e169dbf166ac467811a48d4a37a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1082745251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c83a809775f47deacd4a3d41450bb94fc86b4e6f89452e1c7e18d0381394dd81`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:35:36 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:49 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:54 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:37 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:36:37 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:36:37 GMT
ENV ROS_DISTRO=kilted
# Sat, 17 Oct 2026 00:36:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:37 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:36:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:36:37 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:32:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:32:10 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:32:11 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:32:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:22:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85a337d31c79741a4661670680a0b56a340802c38b18c77ec15cbb84c8594e35`  
		Last Modified: Sat, 17 Oct 2026 00:37:06 GMT  
		Size: 683.3 KB (683348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c96b6de7c46dc05b25dae282950258830073dc7f538ec5f03b1dfe250d3434d`  
		Last Modified: Sat, 17 Oct 2026 00:37:07 GMT  
		Size: 6.7 MB (6714649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28c4771d37ad474b48d49089c0b8604cee5c1b3965b9dccaca17734eb7f696d9`  
		Last Modified: Sat, 17 Oct 2026 00:37:06 GMT  
		Size: 94.8 KB (94840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c4549e3e21d70a39e6f28f29a155263b031358fa53b52b739fcd0b311f78636`  
		Last Modified: Sat, 17 Oct 2026 00:37:09 GMT  
		Size: 121.3 MB (121282474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03d8042b47d90dcfdfd644fdc464cae915c8392e57cfa1e767de8d3bf4ffb87a`  
		Last Modified: Sat, 17 Oct 2026 00:37:07 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3467b7eb48ac5e207a916dcd5cad43d8666d0f93d82251994e847927b28258f`  
		Last Modified: Sat, 17 Oct 2026 01:33:08 GMT  
		Size: 110.2 MB (110244871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69e19f82e5eef6cc8a0c9e7d7221ce1bad9093f0cfcf1dfa13650a03bf463d3a`  
		Last Modified: Sat, 17 Oct 2026 01:33:04 GMT  
		Size: 376.5 KB (376543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec0053ea58ce0b615b9e0b29d1f587c6bf945efebb990be629a9623724771ad8`  
		Last Modified: Sat, 17 Oct 2026 01:33:04 GMT  
		Size: 2.7 KB (2653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d93637ad175eee43176a9895349933246108eb040a6767fe2a21b6b6185e0d9`  
		Last Modified: Sat, 17 Oct 2026 01:33:06 GMT  
		Size: 27.9 MB (27919312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed2bd92219fa23e18f51fb85d9ee608998073231d572b1232a8302413a035ae9`  
		Last Modified: Sat, 17 Oct 2026 02:24:48 GMT  
		Size: 785.7 MB (785660606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:587fc5c335122e3871d069ada757569014170a13f3e6f8d36f2a4d117f6d3845
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61073408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f522c4fbd7e6f744571643e092333d4b423ebb8e7c42825ffdb517ccd5b6a6a`

```dockerfile
```

-	Layers:
	-	`sha256:a9f7aed573c4fa91d247d974d1f9c0b9767ba6fa0efc68a1c62ae4c288937f24`  
		Last Modified: Sat, 17 Oct 2026 02:24:37 GMT  
		Size: 61.1 MB (61064056 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e08103149ba7ca6c854b784254a28e53a1c4fcf27cee34ee51ee9db8825b75f8`  
		Last Modified: Sat, 17 Oct 2026 02:24:34 GMT  
		Size: 9.4 KB (9352 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-perception-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:aed65b3d1fabeb81abaf1bc68277f5d31f8d0e89e501e7ff3740fdc1fd9f72c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **985.4 MB (985428839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75b979ac917c4a9643d23a6f76d00f0ef28fb2ee9d4ebe2256f78f0ecb1b8b9f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:35:33 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:47 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:53 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:34 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:36:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:36:34 GMT
ENV ROS_DISTRO=kilted
# Sat, 17 Oct 2026 00:36:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:34 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:36:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:36:34 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:33:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:33:04 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:33:06 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:33:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:21:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6983dce44d120ca4754e630afd57ed67e897b660e6d7e1f5451ade3a48cc277d`  
		Last Modified: Sat, 17 Oct 2026 00:37:02 GMT  
		Size: 683.4 KB (683371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1d0ed6dafa169bfecd6daef25e560b6a20efae522bb1040013634825ec5d165`  
		Last Modified: Sat, 17 Oct 2026 00:37:03 GMT  
		Size: 6.7 MB (6727981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecb6154191c3cd235cf72bfe670dedfff7cc9bc0a77dc9faf7c46052f5741193`  
		Last Modified: Sat, 17 Oct 2026 00:37:02 GMT  
		Size: 94.8 KB (94821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d0a375abab3473c5b108989d23f88b7ac73a52ef8874ed1f6b7cdbbc45979cb`  
		Last Modified: Sat, 17 Oct 2026 00:37:05 GMT  
		Size: 116.1 MB (116086563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4149001be590298e2fecc783d3aaf115d80d9a7b91b581278b45dcea4c7b8b0a`  
		Last Modified: Sat, 17 Oct 2026 00:37:04 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2094ed40d2c6f1fa54a64c9a49ef581948fb26aaefbc6638f35247916ff26fd3`  
		Last Modified: Sat, 17 Oct 2026 01:34:03 GMT  
		Size: 105.7 MB (105684021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5d7e2078f86fdec64a24aefb4e922db9b887224edc7807f168d2f4818d404d9`  
		Last Modified: Sat, 17 Oct 2026 01:34:00 GMT  
		Size: 376.6 KB (376550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:235401bde3a2a29a8be807bdb3a2b0d2011d787d04f24751a9f527657767c53e`  
		Last Modified: Sat, 17 Oct 2026 01:34:00 GMT  
		Size: 2.6 KB (2642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70c4f5921dac312b5602729793e01e28e441a351bc20209ea4967ac2a015bdeb`  
		Last Modified: Sat, 17 Oct 2026 01:34:01 GMT  
		Size: 27.0 MB (27030461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62df37ec46bae6321e323c64b746b1daf97f37e7d6402358e1dc42ab96ec7089`  
		Last Modified: Sat, 17 Oct 2026 02:24:53 GMT  
		Size: 699.8 MB (699802471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:29cf15abb35482938dc0d495512352d85f5de8f8f571b44c23aa17984acdf775
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61004011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6039dd00bda9fcff62212523bb090b0f8587b8994beadca53ccca15dceea9c77`

```dockerfile
```

-	Layers:
	-	`sha256:3fb3c6a1bdbf00d6060eb4f59eba096c4d3115b06c9ef51c6608817bbaa0ca6d`  
		Last Modified: Sat, 17 Oct 2026 02:24:44 GMT  
		Size: 61.0 MB (60994580 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:939e8776ab8def00db67832efbee797ace0156d5b62132b935997e1d994e0447`  
		Last Modified: Sat, 17 Oct 2026 02:24:42 GMT  
		Size: 9.4 KB (9431 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-ros-base`

```console
$ docker pull ros@sha256:b22b776bb18f5eb78dbf456fdb5a5c199ec04316fb3a2cf6b654ab954abd3e62
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:753e7237f147a7dd92198b31d1ef6ab81924295657c8c9bdc96645bb3b817041
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.1 MB (297084645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e20025e1ca44c4974ea555b9f609483b2398598a94690e24658aa0d0d83d03e2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:35:36 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:49 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:54 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:37 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:36:37 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:36:37 GMT
ENV ROS_DISTRO=kilted
# Sat, 17 Oct 2026 00:36:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:37 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:36:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:36:37 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:32:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:32:10 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:32:11 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:32:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85a337d31c79741a4661670680a0b56a340802c38b18c77ec15cbb84c8594e35`  
		Last Modified: Sat, 17 Oct 2026 00:37:06 GMT  
		Size: 683.3 KB (683348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c96b6de7c46dc05b25dae282950258830073dc7f538ec5f03b1dfe250d3434d`  
		Last Modified: Sat, 17 Oct 2026 00:37:07 GMT  
		Size: 6.7 MB (6714649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28c4771d37ad474b48d49089c0b8604cee5c1b3965b9dccaca17734eb7f696d9`  
		Last Modified: Sat, 17 Oct 2026 00:37:06 GMT  
		Size: 94.8 KB (94840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c4549e3e21d70a39e6f28f29a155263b031358fa53b52b739fcd0b311f78636`  
		Last Modified: Sat, 17 Oct 2026 00:37:09 GMT  
		Size: 121.3 MB (121282474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03d8042b47d90dcfdfd644fdc464cae915c8392e57cfa1e767de8d3bf4ffb87a`  
		Last Modified: Sat, 17 Oct 2026 00:37:07 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3467b7eb48ac5e207a916dcd5cad43d8666d0f93d82251994e847927b28258f`  
		Last Modified: Sat, 17 Oct 2026 01:33:08 GMT  
		Size: 110.2 MB (110244871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69e19f82e5eef6cc8a0c9e7d7221ce1bad9093f0cfcf1dfa13650a03bf463d3a`  
		Last Modified: Sat, 17 Oct 2026 01:33:04 GMT  
		Size: 376.5 KB (376543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec0053ea58ce0b615b9e0b29d1f587c6bf945efebb990be629a9623724771ad8`  
		Last Modified: Sat, 17 Oct 2026 01:33:04 GMT  
		Size: 2.7 KB (2653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d93637ad175eee43176a9895349933246108eb040a6767fe2a21b6b6185e0d9`  
		Last Modified: Sat, 17 Oct 2026 01:33:06 GMT  
		Size: 27.9 MB (27919312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:6e82425f1854e096e09e2bb3c216e7fedb5660523054207580a0b4f5ce202c96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24892499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d029fd1994c1fff9fdebfc96cfb63d3ff27e138238bbfd8a99786450c28b23e`

```dockerfile
```

-	Layers:
	-	`sha256:41cb8e2a52d7b02fbd537930a6b03f3d8d33f8c1482710268065db06b43890be`  
		Last Modified: Sat, 17 Oct 2026 01:33:05 GMT  
		Size: 24.9 MB (24876152 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c74693121f3566dc09e626c1eae37a1477184758c9ea5b8afcd88e7448619ad`  
		Last Modified: Sat, 17 Oct 2026 01:33:04 GMT  
		Size: 16.3 KB (16347 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ca69df12b7e943cd29d404d04ade6d8461b428a42fac4a822c68954ee645538b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.6 MB (285626368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd3da329cb6665ed92814213ac9b81e036c9968ddba39aa138eebd45b514a999`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:35:33 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:47 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:53 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:34 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:36:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:36:34 GMT
ENV ROS_DISTRO=kilted
# Sat, 17 Oct 2026 00:36:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:34 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:36:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:36:34 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:33:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:33:04 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:33:06 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:33:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6983dce44d120ca4754e630afd57ed67e897b660e6d7e1f5451ade3a48cc277d`  
		Last Modified: Sat, 17 Oct 2026 00:37:02 GMT  
		Size: 683.4 KB (683371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1d0ed6dafa169bfecd6daef25e560b6a20efae522bb1040013634825ec5d165`  
		Last Modified: Sat, 17 Oct 2026 00:37:03 GMT  
		Size: 6.7 MB (6727981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecb6154191c3cd235cf72bfe670dedfff7cc9bc0a77dc9faf7c46052f5741193`  
		Last Modified: Sat, 17 Oct 2026 00:37:02 GMT  
		Size: 94.8 KB (94821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d0a375abab3473c5b108989d23f88b7ac73a52ef8874ed1f6b7cdbbc45979cb`  
		Last Modified: Sat, 17 Oct 2026 00:37:05 GMT  
		Size: 116.1 MB (116086563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4149001be590298e2fecc783d3aaf115d80d9a7b91b581278b45dcea4c7b8b0a`  
		Last Modified: Sat, 17 Oct 2026 00:37:04 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2094ed40d2c6f1fa54a64c9a49ef581948fb26aaefbc6638f35247916ff26fd3`  
		Last Modified: Sat, 17 Oct 2026 01:34:03 GMT  
		Size: 105.7 MB (105684021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5d7e2078f86fdec64a24aefb4e922db9b887224edc7807f168d2f4818d404d9`  
		Last Modified: Sat, 17 Oct 2026 01:34:00 GMT  
		Size: 376.6 KB (376550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:235401bde3a2a29a8be807bdb3a2b0d2011d787d04f24751a9f527657767c53e`  
		Last Modified: Sat, 17 Oct 2026 01:34:00 GMT  
		Size: 2.6 KB (2642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70c4f5921dac312b5602729793e01e28e441a351bc20209ea4967ac2a015bdeb`  
		Last Modified: Sat, 17 Oct 2026 01:34:01 GMT  
		Size: 27.0 MB (27030461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:80992a442f79ac4b805f6ccb420bc8c91ab60758a1a24552635833a8313028f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24914896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36f088b138f83787f9ef4fa8b659fcf1b76ab976b402ce59e240d267d9a45ca5`

```dockerfile
```

-	Layers:
	-	`sha256:884e960d5ed061f0c3652971975e9139bbba67769e6d0442494df3896815dc37`  
		Last Modified: Sat, 17 Oct 2026 01:34:01 GMT  
		Size: 24.9 MB (24898412 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd9a4f4e557794fe7d00bec0433f6d5559aa773ee71a5ba4218ad7fff8eb1904`  
		Last Modified: Sat, 17 Oct 2026 01:33:59 GMT  
		Size: 16.5 KB (16484 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-ros-base-noble`

```console
$ docker pull ros@sha256:b22b776bb18f5eb78dbf456fdb5a5c199ec04316fb3a2cf6b654ab954abd3e62
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-base-noble` - linux; amd64

```console
$ docker pull ros@sha256:753e7237f147a7dd92198b31d1ef6ab81924295657c8c9bdc96645bb3b817041
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.1 MB (297084645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e20025e1ca44c4974ea555b9f609483b2398598a94690e24658aa0d0d83d03e2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:35:36 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:49 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:54 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:37 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:36:37 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:36:37 GMT
ENV ROS_DISTRO=kilted
# Sat, 17 Oct 2026 00:36:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:37 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:36:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:36:37 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:32:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:32:10 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:32:11 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:32:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85a337d31c79741a4661670680a0b56a340802c38b18c77ec15cbb84c8594e35`  
		Last Modified: Sat, 17 Oct 2026 00:37:06 GMT  
		Size: 683.3 KB (683348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c96b6de7c46dc05b25dae282950258830073dc7f538ec5f03b1dfe250d3434d`  
		Last Modified: Sat, 17 Oct 2026 00:37:07 GMT  
		Size: 6.7 MB (6714649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28c4771d37ad474b48d49089c0b8604cee5c1b3965b9dccaca17734eb7f696d9`  
		Last Modified: Sat, 17 Oct 2026 00:37:06 GMT  
		Size: 94.8 KB (94840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c4549e3e21d70a39e6f28f29a155263b031358fa53b52b739fcd0b311f78636`  
		Last Modified: Sat, 17 Oct 2026 00:37:09 GMT  
		Size: 121.3 MB (121282474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03d8042b47d90dcfdfd644fdc464cae915c8392e57cfa1e767de8d3bf4ffb87a`  
		Last Modified: Sat, 17 Oct 2026 00:37:07 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3467b7eb48ac5e207a916dcd5cad43d8666d0f93d82251994e847927b28258f`  
		Last Modified: Sat, 17 Oct 2026 01:33:08 GMT  
		Size: 110.2 MB (110244871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69e19f82e5eef6cc8a0c9e7d7221ce1bad9093f0cfcf1dfa13650a03bf463d3a`  
		Last Modified: Sat, 17 Oct 2026 01:33:04 GMT  
		Size: 376.5 KB (376543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec0053ea58ce0b615b9e0b29d1f587c6bf945efebb990be629a9623724771ad8`  
		Last Modified: Sat, 17 Oct 2026 01:33:04 GMT  
		Size: 2.7 KB (2653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d93637ad175eee43176a9895349933246108eb040a6767fe2a21b6b6185e0d9`  
		Last Modified: Sat, 17 Oct 2026 01:33:06 GMT  
		Size: 27.9 MB (27919312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:6e82425f1854e096e09e2bb3c216e7fedb5660523054207580a0b4f5ce202c96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24892499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d029fd1994c1fff9fdebfc96cfb63d3ff27e138238bbfd8a99786450c28b23e`

```dockerfile
```

-	Layers:
	-	`sha256:41cb8e2a52d7b02fbd537930a6b03f3d8d33f8c1482710268065db06b43890be`  
		Last Modified: Sat, 17 Oct 2026 01:33:05 GMT  
		Size: 24.9 MB (24876152 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c74693121f3566dc09e626c1eae37a1477184758c9ea5b8afcd88e7448619ad`  
		Last Modified: Sat, 17 Oct 2026 01:33:04 GMT  
		Size: 16.3 KB (16347 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-base-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ca69df12b7e943cd29d404d04ade6d8461b428a42fac4a822c68954ee645538b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.6 MB (285626368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd3da329cb6665ed92814213ac9b81e036c9968ddba39aa138eebd45b514a999`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:35:33 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:47 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:53 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:34 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:36:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:36:34 GMT
ENV ROS_DISTRO=kilted
# Sat, 17 Oct 2026 00:36:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:34 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:36:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:36:34 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:33:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:33:04 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:33:06 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:33:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6983dce44d120ca4754e630afd57ed67e897b660e6d7e1f5451ade3a48cc277d`  
		Last Modified: Sat, 17 Oct 2026 00:37:02 GMT  
		Size: 683.4 KB (683371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1d0ed6dafa169bfecd6daef25e560b6a20efae522bb1040013634825ec5d165`  
		Last Modified: Sat, 17 Oct 2026 00:37:03 GMT  
		Size: 6.7 MB (6727981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecb6154191c3cd235cf72bfe670dedfff7cc9bc0a77dc9faf7c46052f5741193`  
		Last Modified: Sat, 17 Oct 2026 00:37:02 GMT  
		Size: 94.8 KB (94821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d0a375abab3473c5b108989d23f88b7ac73a52ef8874ed1f6b7cdbbc45979cb`  
		Last Modified: Sat, 17 Oct 2026 00:37:05 GMT  
		Size: 116.1 MB (116086563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4149001be590298e2fecc783d3aaf115d80d9a7b91b581278b45dcea4c7b8b0a`  
		Last Modified: Sat, 17 Oct 2026 00:37:04 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2094ed40d2c6f1fa54a64c9a49ef581948fb26aaefbc6638f35247916ff26fd3`  
		Last Modified: Sat, 17 Oct 2026 01:34:03 GMT  
		Size: 105.7 MB (105684021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5d7e2078f86fdec64a24aefb4e922db9b887224edc7807f168d2f4818d404d9`  
		Last Modified: Sat, 17 Oct 2026 01:34:00 GMT  
		Size: 376.6 KB (376550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:235401bde3a2a29a8be807bdb3a2b0d2011d787d04f24751a9f527657767c53e`  
		Last Modified: Sat, 17 Oct 2026 01:34:00 GMT  
		Size: 2.6 KB (2642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70c4f5921dac312b5602729793e01e28e441a351bc20209ea4967ac2a015bdeb`  
		Last Modified: Sat, 17 Oct 2026 01:34:01 GMT  
		Size: 27.0 MB (27030461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:80992a442f79ac4b805f6ccb420bc8c91ab60758a1a24552635833a8313028f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24914896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36f088b138f83787f9ef4fa8b659fcf1b76ab976b402ce59e240d267d9a45ca5`

```dockerfile
```

-	Layers:
	-	`sha256:884e960d5ed061f0c3652971975e9139bbba67769e6d0442494df3896815dc37`  
		Last Modified: Sat, 17 Oct 2026 01:34:01 GMT  
		Size: 24.9 MB (24898412 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd9a4f4e557794fe7d00bec0433f6d5559aa773ee71a5ba4218ad7fff8eb1904`  
		Last Modified: Sat, 17 Oct 2026 01:33:59 GMT  
		Size: 16.5 KB (16484 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-ros-core`

```console
$ docker pull ros@sha256:c67fa3aa1b2c00cf6f878b723ea156462a6daaac14cd8eccd14521ae4f1dfa71
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:50d331d4fa03a9e4850a00592aace842e0691a5339ed8c2ac381ec50cf7cee5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.5 MB (158541266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e355b88c3828313b027d9687bcedf29ba36003c4c270658ebb1a5db6c2582cd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:35:36 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:49 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:54 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:37 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:36:37 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:36:37 GMT
ENV ROS_DISTRO=kilted
# Sat, 17 Oct 2026 00:36:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:37 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:36:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:36:37 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85a337d31c79741a4661670680a0b56a340802c38b18c77ec15cbb84c8594e35`  
		Last Modified: Sat, 17 Oct 2026 00:37:06 GMT  
		Size: 683.3 KB (683348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c96b6de7c46dc05b25dae282950258830073dc7f538ec5f03b1dfe250d3434d`  
		Last Modified: Sat, 17 Oct 2026 00:37:07 GMT  
		Size: 6.7 MB (6714649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28c4771d37ad474b48d49089c0b8604cee5c1b3965b9dccaca17734eb7f696d9`  
		Last Modified: Sat, 17 Oct 2026 00:37:06 GMT  
		Size: 94.8 KB (94840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c4549e3e21d70a39e6f28f29a155263b031358fa53b52b739fcd0b311f78636`  
		Last Modified: Sat, 17 Oct 2026 00:37:09 GMT  
		Size: 121.3 MB (121282474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03d8042b47d90dcfdfd644fdc464cae915c8392e57cfa1e767de8d3bf4ffb87a`  
		Last Modified: Sat, 17 Oct 2026 00:37:07 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:9d00b47403800dfe2341294853c9187ec1be84ff385ae87b61b94b0cc11b3501
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18631087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e70620a504b960aa19ef1e2e6f77e6f0a914e585cb415276808a708c41172bb`

```dockerfile
```

-	Layers:
	-	`sha256:48129b377629f0f051a1f8a0f0435315fa9c4cde2e049fd7476682d18cf6fada`  
		Last Modified: Sat, 17 Oct 2026 00:37:07 GMT  
		Size: 18.6 MB (18616466 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df3746cd420e76089b2f42bda302634b577736a627e7a74c9ba14665d05a80c4`  
		Last Modified: Sat, 17 Oct 2026 00:37:06 GMT  
		Size: 14.6 KB (14621 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d7bd674deb135d65e527ff59be4affcc2430d22432884a48ab6ff458cc1bc868
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.5 MB (152532694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0ed8b87fa14bde366834ab111adaa966a0122c3ea4a54b8714346040019b319`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:35:33 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:47 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:53 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:34 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:36:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:36:34 GMT
ENV ROS_DISTRO=kilted
# Sat, 17 Oct 2026 00:36:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:34 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:36:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:36:34 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6983dce44d120ca4754e630afd57ed67e897b660e6d7e1f5451ade3a48cc277d`  
		Last Modified: Sat, 17 Oct 2026 00:37:02 GMT  
		Size: 683.4 KB (683371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1d0ed6dafa169bfecd6daef25e560b6a20efae522bb1040013634825ec5d165`  
		Last Modified: Sat, 17 Oct 2026 00:37:03 GMT  
		Size: 6.7 MB (6727981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecb6154191c3cd235cf72bfe670dedfff7cc9bc0a77dc9faf7c46052f5741193`  
		Last Modified: Sat, 17 Oct 2026 00:37:02 GMT  
		Size: 94.8 KB (94821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d0a375abab3473c5b108989d23f88b7ac73a52ef8874ed1f6b7cdbbc45979cb`  
		Last Modified: Sat, 17 Oct 2026 00:37:05 GMT  
		Size: 116.1 MB (116086563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4149001be590298e2fecc783d3aaf115d80d9a7b91b581278b45dcea4c7b8b0a`  
		Last Modified: Sat, 17 Oct 2026 00:37:04 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:283d9ea6a331a5a1781145cda125c3dc739250725ebaeaf709790a301858aab5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18605222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ad4f9f6abab555546af72377098ad06e941330efafe2f6f2a0d3eb4c7d16348`

```dockerfile
```

-	Layers:
	-	`sha256:7c671bf691b3f65e361b9b178e2cc6cffb1749090c72ebae02b7beb16b34e562`  
		Last Modified: Sat, 17 Oct 2026 00:37:03 GMT  
		Size: 18.6 MB (18590477 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f2990a0817db351f2a1ab82d8614561335507c781c02578e4a2e972c344030e`  
		Last Modified: Sat, 17 Oct 2026 00:37:02 GMT  
		Size: 14.7 KB (14745 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-ros-core-noble`

```console
$ docker pull ros@sha256:c67fa3aa1b2c00cf6f878b723ea156462a6daaac14cd8eccd14521ae4f1dfa71
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-core-noble` - linux; amd64

```console
$ docker pull ros@sha256:50d331d4fa03a9e4850a00592aace842e0691a5339ed8c2ac381ec50cf7cee5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.5 MB (158541266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e355b88c3828313b027d9687bcedf29ba36003c4c270658ebb1a5db6c2582cd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:35:36 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:49 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:54 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:37 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:36:37 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:36:37 GMT
ENV ROS_DISTRO=kilted
# Sat, 17 Oct 2026 00:36:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:37 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:36:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:36:37 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85a337d31c79741a4661670680a0b56a340802c38b18c77ec15cbb84c8594e35`  
		Last Modified: Sat, 17 Oct 2026 00:37:06 GMT  
		Size: 683.3 KB (683348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c96b6de7c46dc05b25dae282950258830073dc7f538ec5f03b1dfe250d3434d`  
		Last Modified: Sat, 17 Oct 2026 00:37:07 GMT  
		Size: 6.7 MB (6714649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28c4771d37ad474b48d49089c0b8604cee5c1b3965b9dccaca17734eb7f696d9`  
		Last Modified: Sat, 17 Oct 2026 00:37:06 GMT  
		Size: 94.8 KB (94840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c4549e3e21d70a39e6f28f29a155263b031358fa53b52b739fcd0b311f78636`  
		Last Modified: Sat, 17 Oct 2026 00:37:09 GMT  
		Size: 121.3 MB (121282474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03d8042b47d90dcfdfd644fdc464cae915c8392e57cfa1e767de8d3bf4ffb87a`  
		Last Modified: Sat, 17 Oct 2026 00:37:07 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:9d00b47403800dfe2341294853c9187ec1be84ff385ae87b61b94b0cc11b3501
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18631087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e70620a504b960aa19ef1e2e6f77e6f0a914e585cb415276808a708c41172bb`

```dockerfile
```

-	Layers:
	-	`sha256:48129b377629f0f051a1f8a0f0435315fa9c4cde2e049fd7476682d18cf6fada`  
		Last Modified: Sat, 17 Oct 2026 00:37:07 GMT  
		Size: 18.6 MB (18616466 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df3746cd420e76089b2f42bda302634b577736a627e7a74c9ba14665d05a80c4`  
		Last Modified: Sat, 17 Oct 2026 00:37:06 GMT  
		Size: 14.6 KB (14621 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-core-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d7bd674deb135d65e527ff59be4affcc2430d22432884a48ab6ff458cc1bc868
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.5 MB (152532694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0ed8b87fa14bde366834ab111adaa966a0122c3ea4a54b8714346040019b319`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:35:33 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:47 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:53 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:34 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:36:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:36:34 GMT
ENV ROS_DISTRO=kilted
# Sat, 17 Oct 2026 00:36:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:34 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:36:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:36:34 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6983dce44d120ca4754e630afd57ed67e897b660e6d7e1f5451ade3a48cc277d`  
		Last Modified: Sat, 17 Oct 2026 00:37:02 GMT  
		Size: 683.4 KB (683371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1d0ed6dafa169bfecd6daef25e560b6a20efae522bb1040013634825ec5d165`  
		Last Modified: Sat, 17 Oct 2026 00:37:03 GMT  
		Size: 6.7 MB (6727981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecb6154191c3cd235cf72bfe670dedfff7cc9bc0a77dc9faf7c46052f5741193`  
		Last Modified: Sat, 17 Oct 2026 00:37:02 GMT  
		Size: 94.8 KB (94821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d0a375abab3473c5b108989d23f88b7ac73a52ef8874ed1f6b7cdbbc45979cb`  
		Last Modified: Sat, 17 Oct 2026 00:37:05 GMT  
		Size: 116.1 MB (116086563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4149001be590298e2fecc783d3aaf115d80d9a7b91b581278b45dcea4c7b8b0a`  
		Last Modified: Sat, 17 Oct 2026 00:37:04 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:283d9ea6a331a5a1781145cda125c3dc739250725ebaeaf709790a301858aab5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18605222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ad4f9f6abab555546af72377098ad06e941330efafe2f6f2a0d3eb4c7d16348`

```dockerfile
```

-	Layers:
	-	`sha256:7c671bf691b3f65e361b9b178e2cc6cffb1749090c72ebae02b7beb16b34e562`  
		Last Modified: Sat, 17 Oct 2026 00:37:03 GMT  
		Size: 18.6 MB (18590477 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f2990a0817db351f2a1ab82d8614561335507c781c02578e4a2e972c344030e`  
		Last Modified: Sat, 17 Oct 2026 00:37:02 GMT  
		Size: 14.7 KB (14745 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:latest`

```console
$ docker pull ros@sha256:d9078270abaeae65497036085f1654c75ec0a95e2aca5ecf7ddc0846a6cd69e1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:latest` - linux; amd64

```console
$ docker pull ros@sha256:17c27c1c59d55a23e3de9098a696c14a95f3b4da94fbc8621572ada46fdfd64c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.1 MB (341098207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f406a9c90c1bdee653419a53b232fad91fc817b529342bdbd06ba8a3ab37cf27`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Oct 2026 21:25:29 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.9621.tar --tag 26.04
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-06T21:25:30.040262+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-06T21:25:30.040262+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.control_data.9621.tar
# Sat, 17 Oct 2026 00:35:56 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:09 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:15 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:09 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:37:09 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:37:09 GMT
ENV ROS_DISTRO=lyrical
# Sat, 17 Oct 2026 00:37:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:09 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:37:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:37:09 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:32:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:32:14 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:32:15 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:32:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:435bf5c20694c99dd5a9877e58e24b26a2207fcf8c692a3c3ce3c867770a5b41`  
		Last Modified: Wed, 07 Oct 2026 20:45:12 GMT  
		Size: 42.1 MB (42149117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9d511d19a19ebdeda520e0752f184d457905c7a310df5b748d133a51274ecd4`  
		Last Modified: Wed, 07 Oct 2026 20:45:15 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fbdf89ce6026936318ec70b3ffe6d6aa0778d9a1c0777d8e87bbe29d156850a`  
		Last Modified: Sat, 17 Oct 2026 00:37:51 GMT  
		Size: 741.4 KB (741396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1cbd2f19c0b4378014e9962cb05a70e907cba548b723d2c5ce5a32b333567f9`  
		Last Modified: Sat, 17 Oct 2026 00:37:51 GMT  
		Size: 9.8 MB (9783913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:831c6eaf1e1760417d58a3e5274e21ccdc3df134c10cb028be812314cc4fce96`  
		Last Modified: Sat, 17 Oct 2026 00:37:51 GMT  
		Size: 91.7 KB (91692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac56906d49b0316419f3e17380508f10255faf69238e351df370b79f14e19063`  
		Last Modified: Sat, 17 Oct 2026 00:37:54 GMT  
		Size: 137.1 MB (137070303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34388d0ea3a268fd49187375eb1b5dbe900ff0ccdbc8541dbac65ad67f07e759`  
		Last Modified: Sat, 17 Oct 2026 00:37:52 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:774ec92751b2ef7a8d0cd796b3d7aa98893cb3ba5c575bfd2ed38fe785b000be`  
		Last Modified: Sat, 17 Oct 2026 01:33:38 GMT  
		Size: 124.9 MB (124920269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdcd2de97c15e69dc7df209cd9128866763e07801b4b1294107e38be0d58f93f`  
		Last Modified: Sat, 17 Oct 2026 01:33:34 GMT  
		Size: 406.3 KB (406281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2785358666938f565f0aeedee29489bc6fd609c18241f43214c27b771012c5f0`  
		Last Modified: Sat, 17 Oct 2026 01:33:35 GMT  
		Size: 130.9 KB (130900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27cb28ac3e4100157db0cbd6164f681ab31ab1fe0d400ebd27ba70264e8c7c8f`  
		Last Modified: Sat, 17 Oct 2026 01:33:36 GMT  
		Size: 25.8 MB (25803748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:latest` - unknown; unknown

```console
$ docker pull ros@sha256:70a594245648d4b1073f306bb98998117ced77cdec9e4ad079c5bfff8e6c5da5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29193077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45f58697a7d1a2471e1cad004edf7662f2246342ead9530ad748018d21ce269d`

```dockerfile
```

-	Layers:
	-	`sha256:748df8f0f9e578ff4887ae052deef7f9e5ad2810faf3fbd9458829424a53b271`  
		Last Modified: Sat, 17 Oct 2026 01:33:36 GMT  
		Size: 29.2 MB (29175627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b4dfe133a09dcf9b405663b64dae8c5f47cc334c6a4d77200903fa52151838c`  
		Last Modified: Sat, 17 Oct 2026 01:33:34 GMT  
		Size: 17.4 KB (17450 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:latest` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:43ed2675c5af8b8aaf7e4363971dfbcd43dc9bc0300715c4b968a91c3732adac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.6 MB (325590700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbfb8a9212430def1e09d4ef15ab626593ee128eaa8ecba20d634a84d9846819`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Oct 2026 20:38:11 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.9614.tar --tag 26.04
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-06T20:38:12.175309+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-06T20:38:12.175309+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.control_data.9614.tar
# Sat, 17 Oct 2026 00:35:37 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:49 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:55 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:46 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:36:46 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:36:46 GMT
ENV ROS_DISTRO=lyrical
# Sat, 17 Oct 2026 00:36:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:47 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:36:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:36:47 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:33:13 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:33:15 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:33:17 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:33:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:00dbf11534ae4abda99e035d0e681f5254da63d2f778eaed69f1e5f6be9a6092`  
		Last Modified: Wed, 07 Oct 2026 20:45:23 GMT  
		Size: 41.1 MB (41107810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8eae6888566fa953bb1c57088f997a22020e240963959b195cbe865109eabd9`  
		Last Modified: Wed, 07 Oct 2026 20:45:26 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68ac03cf8071ee1e164e96782f9e5a4afc92eb300edb5f046cecf2336fec9bd7`  
		Last Modified: Sat, 17 Oct 2026 00:37:27 GMT  
		Size: 741.6 KB (741572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:401ba9f6e6b910cb8929413d6184ddc8175861cd46f89c54ddd64effe205a8e0`  
		Last Modified: Sat, 17 Oct 2026 00:37:27 GMT  
		Size: 9.6 MB (9611495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b6816dbdfc2d6cfd1c6c1e75d075cdbbddfa52d9748cc299606ed6477c2827a`  
		Last Modified: Sat, 17 Oct 2026 00:37:27 GMT  
		Size: 91.9 KB (91911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b883b6393feb0116d4e2e04f1bf498d76747dc8270b4de3eb2015a88b5f5515`  
		Last Modified: Sat, 17 Oct 2026 00:37:30 GMT  
		Size: 130.4 MB (130421903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c20a51215a7219b2657aaf725b280053970f8de3c51bbaaa845040160136e576`  
		Last Modified: Sat, 17 Oct 2026 00:37:28 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae73a450139f76bb892949db194e314a610187582a3dfd39502dfbefce5dda4c`  
		Last Modified: Sat, 17 Oct 2026 01:34:33 GMT  
		Size: 118.3 MB (118334753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3d1c23db5ce88910697d4282e1bc7f954265a6a7bdb1ac77a44ce4bf373b78a`  
		Last Modified: Sat, 17 Oct 2026 01:34:30 GMT  
		Size: 406.3 KB (406281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d32a777c66ad1b2745f21837f8217c348bd65a024545f3a6cd799a99d2c9fbb4`  
		Last Modified: Sat, 17 Oct 2026 01:34:29 GMT  
		Size: 130.9 KB (130881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e5ee615e598de57fbe8abdb38ffbe2461efcb5416b979dd72d2fd22fa18b265`  
		Last Modified: Sat, 17 Oct 2026 01:34:31 GMT  
		Size: 24.7 MB (24743511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:latest` - unknown; unknown

```console
$ docker pull ros@sha256:0b4cf8009203603c922a2482ed757ce1504a204c6f9e733a5f072aeb22e19a06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29257858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab0f7275c1706861b8bca592eae3cacb11efa4bd74c1866e29d333a68aa75930`

```dockerfile
```

-	Layers:
	-	`sha256:253f5d2681954315449f4041c9e7f84369cf8d768e29498d9c3d9aa78a9fb482`  
		Last Modified: Sat, 17 Oct 2026 01:34:31 GMT  
		Size: 29.2 MB (29240259 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a5321ad4e82a209ceda2c35b5d0ef7cf5abf26e5943c4b1af1180b5a7648a55`  
		Last Modified: Sat, 17 Oct 2026 01:34:29 GMT  
		Size: 17.6 KB (17599 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical`

```console
$ docker pull ros@sha256:d9078270abaeae65497036085f1654c75ec0a95e2aca5ecf7ddc0846a6cd69e1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical` - linux; amd64

```console
$ docker pull ros@sha256:17c27c1c59d55a23e3de9098a696c14a95f3b4da94fbc8621572ada46fdfd64c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.1 MB (341098207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f406a9c90c1bdee653419a53b232fad91fc817b529342bdbd06ba8a3ab37cf27`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Oct 2026 21:25:29 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.9621.tar --tag 26.04
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-06T21:25:30.040262+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-06T21:25:30.040262+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.control_data.9621.tar
# Sat, 17 Oct 2026 00:35:56 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:09 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:15 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:09 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:37:09 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:37:09 GMT
ENV ROS_DISTRO=lyrical
# Sat, 17 Oct 2026 00:37:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:09 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:37:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:37:09 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:32:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:32:14 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:32:15 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:32:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:435bf5c20694c99dd5a9877e58e24b26a2207fcf8c692a3c3ce3c867770a5b41`  
		Last Modified: Wed, 07 Oct 2026 20:45:12 GMT  
		Size: 42.1 MB (42149117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9d511d19a19ebdeda520e0752f184d457905c7a310df5b748d133a51274ecd4`  
		Last Modified: Wed, 07 Oct 2026 20:45:15 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fbdf89ce6026936318ec70b3ffe6d6aa0778d9a1c0777d8e87bbe29d156850a`  
		Last Modified: Sat, 17 Oct 2026 00:37:51 GMT  
		Size: 741.4 KB (741396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1cbd2f19c0b4378014e9962cb05a70e907cba548b723d2c5ce5a32b333567f9`  
		Last Modified: Sat, 17 Oct 2026 00:37:51 GMT  
		Size: 9.8 MB (9783913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:831c6eaf1e1760417d58a3e5274e21ccdc3df134c10cb028be812314cc4fce96`  
		Last Modified: Sat, 17 Oct 2026 00:37:51 GMT  
		Size: 91.7 KB (91692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac56906d49b0316419f3e17380508f10255faf69238e351df370b79f14e19063`  
		Last Modified: Sat, 17 Oct 2026 00:37:54 GMT  
		Size: 137.1 MB (137070303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34388d0ea3a268fd49187375eb1b5dbe900ff0ccdbc8541dbac65ad67f07e759`  
		Last Modified: Sat, 17 Oct 2026 00:37:52 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:774ec92751b2ef7a8d0cd796b3d7aa98893cb3ba5c575bfd2ed38fe785b000be`  
		Last Modified: Sat, 17 Oct 2026 01:33:38 GMT  
		Size: 124.9 MB (124920269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdcd2de97c15e69dc7df209cd9128866763e07801b4b1294107e38be0d58f93f`  
		Last Modified: Sat, 17 Oct 2026 01:33:34 GMT  
		Size: 406.3 KB (406281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2785358666938f565f0aeedee29489bc6fd609c18241f43214c27b771012c5f0`  
		Last Modified: Sat, 17 Oct 2026 01:33:35 GMT  
		Size: 130.9 KB (130900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27cb28ac3e4100157db0cbd6164f681ab31ab1fe0d400ebd27ba70264e8c7c8f`  
		Last Modified: Sat, 17 Oct 2026 01:33:36 GMT  
		Size: 25.8 MB (25803748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical` - unknown; unknown

```console
$ docker pull ros@sha256:70a594245648d4b1073f306bb98998117ced77cdec9e4ad079c5bfff8e6c5da5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29193077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45f58697a7d1a2471e1cad004edf7662f2246342ead9530ad748018d21ce269d`

```dockerfile
```

-	Layers:
	-	`sha256:748df8f0f9e578ff4887ae052deef7f9e5ad2810faf3fbd9458829424a53b271`  
		Last Modified: Sat, 17 Oct 2026 01:33:36 GMT  
		Size: 29.2 MB (29175627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b4dfe133a09dcf9b405663b64dae8c5f47cc334c6a4d77200903fa52151838c`  
		Last Modified: Sat, 17 Oct 2026 01:33:34 GMT  
		Size: 17.4 KB (17450 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:43ed2675c5af8b8aaf7e4363971dfbcd43dc9bc0300715c4b968a91c3732adac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.6 MB (325590700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbfb8a9212430def1e09d4ef15ab626593ee128eaa8ecba20d634a84d9846819`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Oct 2026 20:38:11 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.9614.tar --tag 26.04
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-06T20:38:12.175309+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-06T20:38:12.175309+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.control_data.9614.tar
# Sat, 17 Oct 2026 00:35:37 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:49 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:55 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:46 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:36:46 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:36:46 GMT
ENV ROS_DISTRO=lyrical
# Sat, 17 Oct 2026 00:36:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:47 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:36:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:36:47 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:33:13 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:33:15 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:33:17 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:33:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:00dbf11534ae4abda99e035d0e681f5254da63d2f778eaed69f1e5f6be9a6092`  
		Last Modified: Wed, 07 Oct 2026 20:45:23 GMT  
		Size: 41.1 MB (41107810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8eae6888566fa953bb1c57088f997a22020e240963959b195cbe865109eabd9`  
		Last Modified: Wed, 07 Oct 2026 20:45:26 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68ac03cf8071ee1e164e96782f9e5a4afc92eb300edb5f046cecf2336fec9bd7`  
		Last Modified: Sat, 17 Oct 2026 00:37:27 GMT  
		Size: 741.6 KB (741572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:401ba9f6e6b910cb8929413d6184ddc8175861cd46f89c54ddd64effe205a8e0`  
		Last Modified: Sat, 17 Oct 2026 00:37:27 GMT  
		Size: 9.6 MB (9611495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b6816dbdfc2d6cfd1c6c1e75d075cdbbddfa52d9748cc299606ed6477c2827a`  
		Last Modified: Sat, 17 Oct 2026 00:37:27 GMT  
		Size: 91.9 KB (91911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b883b6393feb0116d4e2e04f1bf498d76747dc8270b4de3eb2015a88b5f5515`  
		Last Modified: Sat, 17 Oct 2026 00:37:30 GMT  
		Size: 130.4 MB (130421903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c20a51215a7219b2657aaf725b280053970f8de3c51bbaaa845040160136e576`  
		Last Modified: Sat, 17 Oct 2026 00:37:28 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae73a450139f76bb892949db194e314a610187582a3dfd39502dfbefce5dda4c`  
		Last Modified: Sat, 17 Oct 2026 01:34:33 GMT  
		Size: 118.3 MB (118334753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3d1c23db5ce88910697d4282e1bc7f954265a6a7bdb1ac77a44ce4bf373b78a`  
		Last Modified: Sat, 17 Oct 2026 01:34:30 GMT  
		Size: 406.3 KB (406281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d32a777c66ad1b2745f21837f8217c348bd65a024545f3a6cd799a99d2c9fbb4`  
		Last Modified: Sat, 17 Oct 2026 01:34:29 GMT  
		Size: 130.9 KB (130881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e5ee615e598de57fbe8abdb38ffbe2461efcb5416b979dd72d2fd22fa18b265`  
		Last Modified: Sat, 17 Oct 2026 01:34:31 GMT  
		Size: 24.7 MB (24743511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical` - unknown; unknown

```console
$ docker pull ros@sha256:0b4cf8009203603c922a2482ed757ce1504a204c6f9e733a5f072aeb22e19a06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29257858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab0f7275c1706861b8bca592eae3cacb11efa4bd74c1866e29d333a68aa75930`

```dockerfile
```

-	Layers:
	-	`sha256:253f5d2681954315449f4041c9e7f84369cf8d768e29498d9c3d9aa78a9fb482`  
		Last Modified: Sat, 17 Oct 2026 01:34:31 GMT  
		Size: 29.2 MB (29240259 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a5321ad4e82a209ceda2c35b5d0ef7cf5abf26e5943c4b1af1180b5a7648a55`  
		Last Modified: Sat, 17 Oct 2026 01:34:29 GMT  
		Size: 17.6 KB (17599 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-perception`

```console
$ docker pull ros@sha256:ac995394494cb52115f4af92797df22eee52f3beecb15e8da07a6ed20603c2bb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-perception` - linux; amd64

```console
$ docker pull ros@sha256:1d81d15005cd8a1faec101138803ae6f811e62e548cb3ba13b1d714da15f66c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1529712519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:036cb4ac8c6f2e100c43710e691555df921a40630f3bd853934dc6f90f984aa8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Oct 2026 21:25:29 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.9621.tar --tag 26.04
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-06T21:25:30.040262+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-06T21:25:30.040262+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.control_data.9621.tar
# Sat, 17 Oct 2026 00:35:56 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:09 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:15 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:09 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:37:09 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:37:09 GMT
ENV ROS_DISTRO=lyrical
# Sat, 17 Oct 2026 00:37:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:09 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:37:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:37:09 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:32:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:32:14 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:32:15 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:32:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:22:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:435bf5c20694c99dd5a9877e58e24b26a2207fcf8c692a3c3ce3c867770a5b41`  
		Last Modified: Wed, 07 Oct 2026 20:45:12 GMT  
		Size: 42.1 MB (42149117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9d511d19a19ebdeda520e0752f184d457905c7a310df5b748d133a51274ecd4`  
		Last Modified: Wed, 07 Oct 2026 20:45:15 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fbdf89ce6026936318ec70b3ffe6d6aa0778d9a1c0777d8e87bbe29d156850a`  
		Last Modified: Sat, 17 Oct 2026 00:37:51 GMT  
		Size: 741.4 KB (741396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1cbd2f19c0b4378014e9962cb05a70e907cba548b723d2c5ce5a32b333567f9`  
		Last Modified: Sat, 17 Oct 2026 00:37:51 GMT  
		Size: 9.8 MB (9783913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:831c6eaf1e1760417d58a3e5274e21ccdc3df134c10cb028be812314cc4fce96`  
		Last Modified: Sat, 17 Oct 2026 00:37:51 GMT  
		Size: 91.7 KB (91692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac56906d49b0316419f3e17380508f10255faf69238e351df370b79f14e19063`  
		Last Modified: Sat, 17 Oct 2026 00:37:54 GMT  
		Size: 137.1 MB (137070303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34388d0ea3a268fd49187375eb1b5dbe900ff0ccdbc8541dbac65ad67f07e759`  
		Last Modified: Sat, 17 Oct 2026 00:37:52 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:774ec92751b2ef7a8d0cd796b3d7aa98893cb3ba5c575bfd2ed38fe785b000be`  
		Last Modified: Sat, 17 Oct 2026 01:33:38 GMT  
		Size: 124.9 MB (124920269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdcd2de97c15e69dc7df209cd9128866763e07801b4b1294107e38be0d58f93f`  
		Last Modified: Sat, 17 Oct 2026 01:33:34 GMT  
		Size: 406.3 KB (406281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2785358666938f565f0aeedee29489bc6fd609c18241f43214c27b771012c5f0`  
		Last Modified: Sat, 17 Oct 2026 01:33:35 GMT  
		Size: 130.9 KB (130900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27cb28ac3e4100157db0cbd6164f681ab31ab1fe0d400ebd27ba70264e8c7c8f`  
		Last Modified: Sat, 17 Oct 2026 01:33:36 GMT  
		Size: 25.8 MB (25803748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95eccd45c6ebc464bd86d2d1136c262d10380b575aa5ef663be8dc31c0cfcac4`  
		Last Modified: Sat, 17 Oct 2026 02:27:29 GMT  
		Size: 1.2 GB (1188614312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception` - unknown; unknown

```console
$ docker pull ros@sha256:a9910a8396e27c78695f295d991829c4ddf35f063dcfff3cf53f8809763da61a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64395516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d027f887442337a954fdb9288bfbaae62c5d8a4fee9615d34acaa31d811287f`

```dockerfile
```

-	Layers:
	-	`sha256:72d118b060ad7a4930bd62ac1b5b53856cb96d265752c6e5b284bc4326517160`  
		Last Modified: Sat, 17 Oct 2026 02:27:07 GMT  
		Size: 64.4 MB (64385823 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f16b0a108b8a6885afee16f2ba98aaf0485dc1ca9b3e8c17e64422816a316e61`  
		Last Modified: Sat, 17 Oct 2026 02:27:05 GMT  
		Size: 9.7 KB (9693 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:9c06c2fa910689bae48bb0aa9f36334a0bbd2f8fbbb64bde2259658897e40ab6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1472758842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8853310c1c96fa9ed1d4e078d2dcc8afc2569acd9ab6f0ea5c7e3ab93b95583`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Oct 2026 20:38:11 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.9614.tar --tag 26.04
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-06T20:38:12.175309+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-06T20:38:12.175309+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.control_data.9614.tar
# Sat, 17 Oct 2026 00:35:37 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:49 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:55 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:46 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:36:46 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:36:46 GMT
ENV ROS_DISTRO=lyrical
# Sat, 17 Oct 2026 00:36:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:47 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:36:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:36:47 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:33:13 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:33:15 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:33:17 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:33:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:22:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:00dbf11534ae4abda99e035d0e681f5254da63d2f778eaed69f1e5f6be9a6092`  
		Last Modified: Wed, 07 Oct 2026 20:45:23 GMT  
		Size: 41.1 MB (41107810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8eae6888566fa953bb1c57088f997a22020e240963959b195cbe865109eabd9`  
		Last Modified: Wed, 07 Oct 2026 20:45:26 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68ac03cf8071ee1e164e96782f9e5a4afc92eb300edb5f046cecf2336fec9bd7`  
		Last Modified: Sat, 17 Oct 2026 00:37:27 GMT  
		Size: 741.6 KB (741572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:401ba9f6e6b910cb8929413d6184ddc8175861cd46f89c54ddd64effe205a8e0`  
		Last Modified: Sat, 17 Oct 2026 00:37:27 GMT  
		Size: 9.6 MB (9611495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b6816dbdfc2d6cfd1c6c1e75d075cdbbddfa52d9748cc299606ed6477c2827a`  
		Last Modified: Sat, 17 Oct 2026 00:37:27 GMT  
		Size: 91.9 KB (91911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b883b6393feb0116d4e2e04f1bf498d76747dc8270b4de3eb2015a88b5f5515`  
		Last Modified: Sat, 17 Oct 2026 00:37:30 GMT  
		Size: 130.4 MB (130421903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c20a51215a7219b2657aaf725b280053970f8de3c51bbaaa845040160136e576`  
		Last Modified: Sat, 17 Oct 2026 00:37:28 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae73a450139f76bb892949db194e314a610187582a3dfd39502dfbefce5dda4c`  
		Last Modified: Sat, 17 Oct 2026 01:34:33 GMT  
		Size: 118.3 MB (118334753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3d1c23db5ce88910697d4282e1bc7f954265a6a7bdb1ac77a44ce4bf373b78a`  
		Last Modified: Sat, 17 Oct 2026 01:34:30 GMT  
		Size: 406.3 KB (406281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d32a777c66ad1b2745f21837f8217c348bd65a024545f3a6cd799a99d2c9fbb4`  
		Last Modified: Sat, 17 Oct 2026 01:34:29 GMT  
		Size: 130.9 KB (130881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e5ee615e598de57fbe8abdb38ffbe2461efcb5416b979dd72d2fd22fa18b265`  
		Last Modified: Sat, 17 Oct 2026 01:34:31 GMT  
		Size: 24.7 MB (24743511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad932853e56fc08f5703122de250d2221f68a3388e4c45c19eafdfa4d2c2e56`  
		Last Modified: Sat, 17 Oct 2026 02:26:53 GMT  
		Size: 1.1 GB (1147168142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception` - unknown; unknown

```console
$ docker pull ros@sha256:6d2cee585c5901aa32782f2928b7340677defc61998d42697e71068c59f52bf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64309813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16c3d8c66269d27f971184ac70e6bb8d1fff2a105d7278135830446e2bf2e940`

```dockerfile
```

-	Layers:
	-	`sha256:1c821c1ae907b1ab433e005cc96008dda1c6d2e1185e6e355dc6cf4b377833fe`  
		Last Modified: Sat, 17 Oct 2026 02:26:34 GMT  
		Size: 64.3 MB (64300041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86229333b70d62761440d6c21b312ddd71831e4ca7c2fdd8b417a534a30b7d83`  
		Last Modified: Sat, 17 Oct 2026 02:26:32 GMT  
		Size: 9.8 KB (9772 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-perception-resolute`

```console
$ docker pull ros@sha256:ac995394494cb52115f4af92797df22eee52f3beecb15e8da07a6ed20603c2bb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-perception-resolute` - linux; amd64

```console
$ docker pull ros@sha256:1d81d15005cd8a1faec101138803ae6f811e62e548cb3ba13b1d714da15f66c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1529712519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:036cb4ac8c6f2e100c43710e691555df921a40630f3bd853934dc6f90f984aa8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Oct 2026 21:25:29 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.9621.tar --tag 26.04
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-06T21:25:30.040262+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-06T21:25:30.040262+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.control_data.9621.tar
# Sat, 17 Oct 2026 00:35:56 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:09 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:15 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:09 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:37:09 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:37:09 GMT
ENV ROS_DISTRO=lyrical
# Sat, 17 Oct 2026 00:37:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:09 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:37:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:37:09 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:32:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:32:14 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:32:15 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:32:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:22:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:435bf5c20694c99dd5a9877e58e24b26a2207fcf8c692a3c3ce3c867770a5b41`  
		Last Modified: Wed, 07 Oct 2026 20:45:12 GMT  
		Size: 42.1 MB (42149117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9d511d19a19ebdeda520e0752f184d457905c7a310df5b748d133a51274ecd4`  
		Last Modified: Wed, 07 Oct 2026 20:45:15 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fbdf89ce6026936318ec70b3ffe6d6aa0778d9a1c0777d8e87bbe29d156850a`  
		Last Modified: Sat, 17 Oct 2026 00:37:51 GMT  
		Size: 741.4 KB (741396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1cbd2f19c0b4378014e9962cb05a70e907cba548b723d2c5ce5a32b333567f9`  
		Last Modified: Sat, 17 Oct 2026 00:37:51 GMT  
		Size: 9.8 MB (9783913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:831c6eaf1e1760417d58a3e5274e21ccdc3df134c10cb028be812314cc4fce96`  
		Last Modified: Sat, 17 Oct 2026 00:37:51 GMT  
		Size: 91.7 KB (91692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac56906d49b0316419f3e17380508f10255faf69238e351df370b79f14e19063`  
		Last Modified: Sat, 17 Oct 2026 00:37:54 GMT  
		Size: 137.1 MB (137070303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34388d0ea3a268fd49187375eb1b5dbe900ff0ccdbc8541dbac65ad67f07e759`  
		Last Modified: Sat, 17 Oct 2026 00:37:52 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:774ec92751b2ef7a8d0cd796b3d7aa98893cb3ba5c575bfd2ed38fe785b000be`  
		Last Modified: Sat, 17 Oct 2026 01:33:38 GMT  
		Size: 124.9 MB (124920269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdcd2de97c15e69dc7df209cd9128866763e07801b4b1294107e38be0d58f93f`  
		Last Modified: Sat, 17 Oct 2026 01:33:34 GMT  
		Size: 406.3 KB (406281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2785358666938f565f0aeedee29489bc6fd609c18241f43214c27b771012c5f0`  
		Last Modified: Sat, 17 Oct 2026 01:33:35 GMT  
		Size: 130.9 KB (130900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27cb28ac3e4100157db0cbd6164f681ab31ab1fe0d400ebd27ba70264e8c7c8f`  
		Last Modified: Sat, 17 Oct 2026 01:33:36 GMT  
		Size: 25.8 MB (25803748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95eccd45c6ebc464bd86d2d1136c262d10380b575aa5ef663be8dc31c0cfcac4`  
		Last Modified: Sat, 17 Oct 2026 02:27:29 GMT  
		Size: 1.2 GB (1188614312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:a9910a8396e27c78695f295d991829c4ddf35f063dcfff3cf53f8809763da61a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64395516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d027f887442337a954fdb9288bfbaae62c5d8a4fee9615d34acaa31d811287f`

```dockerfile
```

-	Layers:
	-	`sha256:72d118b060ad7a4930bd62ac1b5b53856cb96d265752c6e5b284bc4326517160`  
		Last Modified: Sat, 17 Oct 2026 02:27:07 GMT  
		Size: 64.4 MB (64385823 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f16b0a108b8a6885afee16f2ba98aaf0485dc1ca9b3e8c17e64422816a316e61`  
		Last Modified: Sat, 17 Oct 2026 02:27:05 GMT  
		Size: 9.7 KB (9693 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-perception-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:9c06c2fa910689bae48bb0aa9f36334a0bbd2f8fbbb64bde2259658897e40ab6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1472758842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8853310c1c96fa9ed1d4e078d2dcc8afc2569acd9ab6f0ea5c7e3ab93b95583`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Oct 2026 20:38:11 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.9614.tar --tag 26.04
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-06T20:38:12.175309+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-06T20:38:12.175309+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.control_data.9614.tar
# Sat, 17 Oct 2026 00:35:37 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:49 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:55 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:46 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:36:46 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:36:46 GMT
ENV ROS_DISTRO=lyrical
# Sat, 17 Oct 2026 00:36:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:47 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:36:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:36:47 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:33:13 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:33:15 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:33:17 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:33:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:22:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:00dbf11534ae4abda99e035d0e681f5254da63d2f778eaed69f1e5f6be9a6092`  
		Last Modified: Wed, 07 Oct 2026 20:45:23 GMT  
		Size: 41.1 MB (41107810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8eae6888566fa953bb1c57088f997a22020e240963959b195cbe865109eabd9`  
		Last Modified: Wed, 07 Oct 2026 20:45:26 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68ac03cf8071ee1e164e96782f9e5a4afc92eb300edb5f046cecf2336fec9bd7`  
		Last Modified: Sat, 17 Oct 2026 00:37:27 GMT  
		Size: 741.6 KB (741572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:401ba9f6e6b910cb8929413d6184ddc8175861cd46f89c54ddd64effe205a8e0`  
		Last Modified: Sat, 17 Oct 2026 00:37:27 GMT  
		Size: 9.6 MB (9611495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b6816dbdfc2d6cfd1c6c1e75d075cdbbddfa52d9748cc299606ed6477c2827a`  
		Last Modified: Sat, 17 Oct 2026 00:37:27 GMT  
		Size: 91.9 KB (91911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b883b6393feb0116d4e2e04f1bf498d76747dc8270b4de3eb2015a88b5f5515`  
		Last Modified: Sat, 17 Oct 2026 00:37:30 GMT  
		Size: 130.4 MB (130421903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c20a51215a7219b2657aaf725b280053970f8de3c51bbaaa845040160136e576`  
		Last Modified: Sat, 17 Oct 2026 00:37:28 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae73a450139f76bb892949db194e314a610187582a3dfd39502dfbefce5dda4c`  
		Last Modified: Sat, 17 Oct 2026 01:34:33 GMT  
		Size: 118.3 MB (118334753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3d1c23db5ce88910697d4282e1bc7f954265a6a7bdb1ac77a44ce4bf373b78a`  
		Last Modified: Sat, 17 Oct 2026 01:34:30 GMT  
		Size: 406.3 KB (406281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d32a777c66ad1b2745f21837f8217c348bd65a024545f3a6cd799a99d2c9fbb4`  
		Last Modified: Sat, 17 Oct 2026 01:34:29 GMT  
		Size: 130.9 KB (130881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e5ee615e598de57fbe8abdb38ffbe2461efcb5416b979dd72d2fd22fa18b265`  
		Last Modified: Sat, 17 Oct 2026 01:34:31 GMT  
		Size: 24.7 MB (24743511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad932853e56fc08f5703122de250d2221f68a3388e4c45c19eafdfa4d2c2e56`  
		Last Modified: Sat, 17 Oct 2026 02:26:53 GMT  
		Size: 1.1 GB (1147168142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:6d2cee585c5901aa32782f2928b7340677defc61998d42697e71068c59f52bf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64309813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16c3d8c66269d27f971184ac70e6bb8d1fff2a105d7278135830446e2bf2e940`

```dockerfile
```

-	Layers:
	-	`sha256:1c821c1ae907b1ab433e005cc96008dda1c6d2e1185e6e355dc6cf4b377833fe`  
		Last Modified: Sat, 17 Oct 2026 02:26:34 GMT  
		Size: 64.3 MB (64300041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86229333b70d62761440d6c21b312ddd71831e4ca7c2fdd8b417a534a30b7d83`  
		Last Modified: Sat, 17 Oct 2026 02:26:32 GMT  
		Size: 9.8 KB (9772 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-ros-base`

```console
$ docker pull ros@sha256:d9078270abaeae65497036085f1654c75ec0a95e2aca5ecf7ddc0846a6cd69e1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:17c27c1c59d55a23e3de9098a696c14a95f3b4da94fbc8621572ada46fdfd64c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.1 MB (341098207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f406a9c90c1bdee653419a53b232fad91fc817b529342bdbd06ba8a3ab37cf27`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Oct 2026 21:25:29 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.9621.tar --tag 26.04
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-06T21:25:30.040262+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-06T21:25:30.040262+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.control_data.9621.tar
# Sat, 17 Oct 2026 00:35:56 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:09 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:15 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:09 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:37:09 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:37:09 GMT
ENV ROS_DISTRO=lyrical
# Sat, 17 Oct 2026 00:37:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:09 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:37:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:37:09 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:32:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:32:14 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:32:15 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:32:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:435bf5c20694c99dd5a9877e58e24b26a2207fcf8c692a3c3ce3c867770a5b41`  
		Last Modified: Wed, 07 Oct 2026 20:45:12 GMT  
		Size: 42.1 MB (42149117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9d511d19a19ebdeda520e0752f184d457905c7a310df5b748d133a51274ecd4`  
		Last Modified: Wed, 07 Oct 2026 20:45:15 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fbdf89ce6026936318ec70b3ffe6d6aa0778d9a1c0777d8e87bbe29d156850a`  
		Last Modified: Sat, 17 Oct 2026 00:37:51 GMT  
		Size: 741.4 KB (741396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1cbd2f19c0b4378014e9962cb05a70e907cba548b723d2c5ce5a32b333567f9`  
		Last Modified: Sat, 17 Oct 2026 00:37:51 GMT  
		Size: 9.8 MB (9783913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:831c6eaf1e1760417d58a3e5274e21ccdc3df134c10cb028be812314cc4fce96`  
		Last Modified: Sat, 17 Oct 2026 00:37:51 GMT  
		Size: 91.7 KB (91692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac56906d49b0316419f3e17380508f10255faf69238e351df370b79f14e19063`  
		Last Modified: Sat, 17 Oct 2026 00:37:54 GMT  
		Size: 137.1 MB (137070303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34388d0ea3a268fd49187375eb1b5dbe900ff0ccdbc8541dbac65ad67f07e759`  
		Last Modified: Sat, 17 Oct 2026 00:37:52 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:774ec92751b2ef7a8d0cd796b3d7aa98893cb3ba5c575bfd2ed38fe785b000be`  
		Last Modified: Sat, 17 Oct 2026 01:33:38 GMT  
		Size: 124.9 MB (124920269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdcd2de97c15e69dc7df209cd9128866763e07801b4b1294107e38be0d58f93f`  
		Last Modified: Sat, 17 Oct 2026 01:33:34 GMT  
		Size: 406.3 KB (406281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2785358666938f565f0aeedee29489bc6fd609c18241f43214c27b771012c5f0`  
		Last Modified: Sat, 17 Oct 2026 01:33:35 GMT  
		Size: 130.9 KB (130900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27cb28ac3e4100157db0cbd6164f681ab31ab1fe0d400ebd27ba70264e8c7c8f`  
		Last Modified: Sat, 17 Oct 2026 01:33:36 GMT  
		Size: 25.8 MB (25803748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:70a594245648d4b1073f306bb98998117ced77cdec9e4ad079c5bfff8e6c5da5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29193077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45f58697a7d1a2471e1cad004edf7662f2246342ead9530ad748018d21ce269d`

```dockerfile
```

-	Layers:
	-	`sha256:748df8f0f9e578ff4887ae052deef7f9e5ad2810faf3fbd9458829424a53b271`  
		Last Modified: Sat, 17 Oct 2026 01:33:36 GMT  
		Size: 29.2 MB (29175627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b4dfe133a09dcf9b405663b64dae8c5f47cc334c6a4d77200903fa52151838c`  
		Last Modified: Sat, 17 Oct 2026 01:33:34 GMT  
		Size: 17.4 KB (17450 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:43ed2675c5af8b8aaf7e4363971dfbcd43dc9bc0300715c4b968a91c3732adac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.6 MB (325590700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbfb8a9212430def1e09d4ef15ab626593ee128eaa8ecba20d634a84d9846819`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Oct 2026 20:38:11 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.9614.tar --tag 26.04
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-06T20:38:12.175309+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-06T20:38:12.175309+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.control_data.9614.tar
# Sat, 17 Oct 2026 00:35:37 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:49 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:55 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:46 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:36:46 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:36:46 GMT
ENV ROS_DISTRO=lyrical
# Sat, 17 Oct 2026 00:36:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:47 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:36:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:36:47 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:33:13 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:33:15 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:33:17 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:33:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:00dbf11534ae4abda99e035d0e681f5254da63d2f778eaed69f1e5f6be9a6092`  
		Last Modified: Wed, 07 Oct 2026 20:45:23 GMT  
		Size: 41.1 MB (41107810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8eae6888566fa953bb1c57088f997a22020e240963959b195cbe865109eabd9`  
		Last Modified: Wed, 07 Oct 2026 20:45:26 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68ac03cf8071ee1e164e96782f9e5a4afc92eb300edb5f046cecf2336fec9bd7`  
		Last Modified: Sat, 17 Oct 2026 00:37:27 GMT  
		Size: 741.6 KB (741572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:401ba9f6e6b910cb8929413d6184ddc8175861cd46f89c54ddd64effe205a8e0`  
		Last Modified: Sat, 17 Oct 2026 00:37:27 GMT  
		Size: 9.6 MB (9611495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b6816dbdfc2d6cfd1c6c1e75d075cdbbddfa52d9748cc299606ed6477c2827a`  
		Last Modified: Sat, 17 Oct 2026 00:37:27 GMT  
		Size: 91.9 KB (91911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b883b6393feb0116d4e2e04f1bf498d76747dc8270b4de3eb2015a88b5f5515`  
		Last Modified: Sat, 17 Oct 2026 00:37:30 GMT  
		Size: 130.4 MB (130421903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c20a51215a7219b2657aaf725b280053970f8de3c51bbaaa845040160136e576`  
		Last Modified: Sat, 17 Oct 2026 00:37:28 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae73a450139f76bb892949db194e314a610187582a3dfd39502dfbefce5dda4c`  
		Last Modified: Sat, 17 Oct 2026 01:34:33 GMT  
		Size: 118.3 MB (118334753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3d1c23db5ce88910697d4282e1bc7f954265a6a7bdb1ac77a44ce4bf373b78a`  
		Last Modified: Sat, 17 Oct 2026 01:34:30 GMT  
		Size: 406.3 KB (406281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d32a777c66ad1b2745f21837f8217c348bd65a024545f3a6cd799a99d2c9fbb4`  
		Last Modified: Sat, 17 Oct 2026 01:34:29 GMT  
		Size: 130.9 KB (130881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e5ee615e598de57fbe8abdb38ffbe2461efcb5416b979dd72d2fd22fa18b265`  
		Last Modified: Sat, 17 Oct 2026 01:34:31 GMT  
		Size: 24.7 MB (24743511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:0b4cf8009203603c922a2482ed757ce1504a204c6f9e733a5f072aeb22e19a06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29257858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab0f7275c1706861b8bca592eae3cacb11efa4bd74c1866e29d333a68aa75930`

```dockerfile
```

-	Layers:
	-	`sha256:253f5d2681954315449f4041c9e7f84369cf8d768e29498d9c3d9aa78a9fb482`  
		Last Modified: Sat, 17 Oct 2026 01:34:31 GMT  
		Size: 29.2 MB (29240259 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a5321ad4e82a209ceda2c35b5d0ef7cf5abf26e5943c4b1af1180b5a7648a55`  
		Last Modified: Sat, 17 Oct 2026 01:34:29 GMT  
		Size: 17.6 KB (17599 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-ros-base-resolute`

```console
$ docker pull ros@sha256:d9078270abaeae65497036085f1654c75ec0a95e2aca5ecf7ddc0846a6cd69e1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-base-resolute` - linux; amd64

```console
$ docker pull ros@sha256:17c27c1c59d55a23e3de9098a696c14a95f3b4da94fbc8621572ada46fdfd64c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.1 MB (341098207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f406a9c90c1bdee653419a53b232fad91fc817b529342bdbd06ba8a3ab37cf27`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Oct 2026 21:25:29 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.9621.tar --tag 26.04
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-06T21:25:30.040262+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-06T21:25:30.040262+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.control_data.9621.tar
# Sat, 17 Oct 2026 00:35:56 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:09 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:15 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:09 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:37:09 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:37:09 GMT
ENV ROS_DISTRO=lyrical
# Sat, 17 Oct 2026 00:37:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:09 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:37:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:37:09 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:32:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:32:14 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:32:15 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:32:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:435bf5c20694c99dd5a9877e58e24b26a2207fcf8c692a3c3ce3c867770a5b41`  
		Last Modified: Wed, 07 Oct 2026 20:45:12 GMT  
		Size: 42.1 MB (42149117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9d511d19a19ebdeda520e0752f184d457905c7a310df5b748d133a51274ecd4`  
		Last Modified: Wed, 07 Oct 2026 20:45:15 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fbdf89ce6026936318ec70b3ffe6d6aa0778d9a1c0777d8e87bbe29d156850a`  
		Last Modified: Sat, 17 Oct 2026 00:37:51 GMT  
		Size: 741.4 KB (741396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1cbd2f19c0b4378014e9962cb05a70e907cba548b723d2c5ce5a32b333567f9`  
		Last Modified: Sat, 17 Oct 2026 00:37:51 GMT  
		Size: 9.8 MB (9783913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:831c6eaf1e1760417d58a3e5274e21ccdc3df134c10cb028be812314cc4fce96`  
		Last Modified: Sat, 17 Oct 2026 00:37:51 GMT  
		Size: 91.7 KB (91692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac56906d49b0316419f3e17380508f10255faf69238e351df370b79f14e19063`  
		Last Modified: Sat, 17 Oct 2026 00:37:54 GMT  
		Size: 137.1 MB (137070303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34388d0ea3a268fd49187375eb1b5dbe900ff0ccdbc8541dbac65ad67f07e759`  
		Last Modified: Sat, 17 Oct 2026 00:37:52 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:774ec92751b2ef7a8d0cd796b3d7aa98893cb3ba5c575bfd2ed38fe785b000be`  
		Last Modified: Sat, 17 Oct 2026 01:33:38 GMT  
		Size: 124.9 MB (124920269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdcd2de97c15e69dc7df209cd9128866763e07801b4b1294107e38be0d58f93f`  
		Last Modified: Sat, 17 Oct 2026 01:33:34 GMT  
		Size: 406.3 KB (406281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2785358666938f565f0aeedee29489bc6fd609c18241f43214c27b771012c5f0`  
		Last Modified: Sat, 17 Oct 2026 01:33:35 GMT  
		Size: 130.9 KB (130900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27cb28ac3e4100157db0cbd6164f681ab31ab1fe0d400ebd27ba70264e8c7c8f`  
		Last Modified: Sat, 17 Oct 2026 01:33:36 GMT  
		Size: 25.8 MB (25803748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:70a594245648d4b1073f306bb98998117ced77cdec9e4ad079c5bfff8e6c5da5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29193077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45f58697a7d1a2471e1cad004edf7662f2246342ead9530ad748018d21ce269d`

```dockerfile
```

-	Layers:
	-	`sha256:748df8f0f9e578ff4887ae052deef7f9e5ad2810faf3fbd9458829424a53b271`  
		Last Modified: Sat, 17 Oct 2026 01:33:36 GMT  
		Size: 29.2 MB (29175627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b4dfe133a09dcf9b405663b64dae8c5f47cc334c6a4d77200903fa52151838c`  
		Last Modified: Sat, 17 Oct 2026 01:33:34 GMT  
		Size: 17.4 KB (17450 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-ros-base-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:43ed2675c5af8b8aaf7e4363971dfbcd43dc9bc0300715c4b968a91c3732adac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.6 MB (325590700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbfb8a9212430def1e09d4ef15ab626593ee128eaa8ecba20d634a84d9846819`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Oct 2026 20:38:11 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.9614.tar --tag 26.04
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-06T20:38:12.175309+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-06T20:38:12.175309+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.control_data.9614.tar
# Sat, 17 Oct 2026 00:35:37 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:49 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:55 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:46 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:36:46 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:36:46 GMT
ENV ROS_DISTRO=lyrical
# Sat, 17 Oct 2026 00:36:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:47 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:36:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:36:47 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:33:13 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:33:15 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:33:17 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:33:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:00dbf11534ae4abda99e035d0e681f5254da63d2f778eaed69f1e5f6be9a6092`  
		Last Modified: Wed, 07 Oct 2026 20:45:23 GMT  
		Size: 41.1 MB (41107810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8eae6888566fa953bb1c57088f997a22020e240963959b195cbe865109eabd9`  
		Last Modified: Wed, 07 Oct 2026 20:45:26 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68ac03cf8071ee1e164e96782f9e5a4afc92eb300edb5f046cecf2336fec9bd7`  
		Last Modified: Sat, 17 Oct 2026 00:37:27 GMT  
		Size: 741.6 KB (741572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:401ba9f6e6b910cb8929413d6184ddc8175861cd46f89c54ddd64effe205a8e0`  
		Last Modified: Sat, 17 Oct 2026 00:37:27 GMT  
		Size: 9.6 MB (9611495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b6816dbdfc2d6cfd1c6c1e75d075cdbbddfa52d9748cc299606ed6477c2827a`  
		Last Modified: Sat, 17 Oct 2026 00:37:27 GMT  
		Size: 91.9 KB (91911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b883b6393feb0116d4e2e04f1bf498d76747dc8270b4de3eb2015a88b5f5515`  
		Last Modified: Sat, 17 Oct 2026 00:37:30 GMT  
		Size: 130.4 MB (130421903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c20a51215a7219b2657aaf725b280053970f8de3c51bbaaa845040160136e576`  
		Last Modified: Sat, 17 Oct 2026 00:37:28 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae73a450139f76bb892949db194e314a610187582a3dfd39502dfbefce5dda4c`  
		Last Modified: Sat, 17 Oct 2026 01:34:33 GMT  
		Size: 118.3 MB (118334753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3d1c23db5ce88910697d4282e1bc7f954265a6a7bdb1ac77a44ce4bf373b78a`  
		Last Modified: Sat, 17 Oct 2026 01:34:30 GMT  
		Size: 406.3 KB (406281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d32a777c66ad1b2745f21837f8217c348bd65a024545f3a6cd799a99d2c9fbb4`  
		Last Modified: Sat, 17 Oct 2026 01:34:29 GMT  
		Size: 130.9 KB (130881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e5ee615e598de57fbe8abdb38ffbe2461efcb5416b979dd72d2fd22fa18b265`  
		Last Modified: Sat, 17 Oct 2026 01:34:31 GMT  
		Size: 24.7 MB (24743511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:0b4cf8009203603c922a2482ed757ce1504a204c6f9e733a5f072aeb22e19a06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29257858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab0f7275c1706861b8bca592eae3cacb11efa4bd74c1866e29d333a68aa75930`

```dockerfile
```

-	Layers:
	-	`sha256:253f5d2681954315449f4041c9e7f84369cf8d768e29498d9c3d9aa78a9fb482`  
		Last Modified: Sat, 17 Oct 2026 01:34:31 GMT  
		Size: 29.2 MB (29240259 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a5321ad4e82a209ceda2c35b5d0ef7cf5abf26e5943c4b1af1180b5a7648a55`  
		Last Modified: Sat, 17 Oct 2026 01:34:29 GMT  
		Size: 17.6 KB (17599 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-ros-core`

```console
$ docker pull ros@sha256:d586d46d155c860f435ff39cebdb5cc9d250ecbcc0ff9b46241f16a3d87ca010
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:452fab137fcdd9aad9389fa6b4cc71adfbb67083a1050af224edbfdfd69e3985
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.8 MB (189837009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:657b62a1000fbdbc9c32a6389a0da04991d5dab40bd07d429c32f1f4d784b0b6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Oct 2026 21:25:29 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.9621.tar --tag 26.04
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-06T21:25:30.040262+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-06T21:25:30.040262+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.control_data.9621.tar
# Sat, 17 Oct 2026 00:35:56 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:09 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:15 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:09 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:37:09 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:37:09 GMT
ENV ROS_DISTRO=lyrical
# Sat, 17 Oct 2026 00:37:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:09 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:37:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:37:09 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:435bf5c20694c99dd5a9877e58e24b26a2207fcf8c692a3c3ce3c867770a5b41`  
		Last Modified: Wed, 07 Oct 2026 20:45:12 GMT  
		Size: 42.1 MB (42149117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9d511d19a19ebdeda520e0752f184d457905c7a310df5b748d133a51274ecd4`  
		Last Modified: Wed, 07 Oct 2026 20:45:15 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fbdf89ce6026936318ec70b3ffe6d6aa0778d9a1c0777d8e87bbe29d156850a`  
		Last Modified: Sat, 17 Oct 2026 00:37:51 GMT  
		Size: 741.4 KB (741396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1cbd2f19c0b4378014e9962cb05a70e907cba548b723d2c5ce5a32b333567f9`  
		Last Modified: Sat, 17 Oct 2026 00:37:51 GMT  
		Size: 9.8 MB (9783913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:831c6eaf1e1760417d58a3e5274e21ccdc3df134c10cb028be812314cc4fce96`  
		Last Modified: Sat, 17 Oct 2026 00:37:51 GMT  
		Size: 91.7 KB (91692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac56906d49b0316419f3e17380508f10255faf69238e351df370b79f14e19063`  
		Last Modified: Sat, 17 Oct 2026 00:37:54 GMT  
		Size: 137.1 MB (137070303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34388d0ea3a268fd49187375eb1b5dbe900ff0ccdbc8541dbac65ad67f07e759`  
		Last Modified: Sat, 17 Oct 2026 00:37:52 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:bbdb5ac4765d9410e4803bb964edfd5b39be42e291b7543e00eb4001be5e30b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22789724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00c4785817fd9ace355d8ee127c22bcdb3aa39f801303df9bcfdf86f1b03f948`

```dockerfile
```

-	Layers:
	-	`sha256:84aa82e0bc8621d8579ca76a49d4790a571e01789d5149ff90572f87bb458ef5`  
		Last Modified: Sat, 17 Oct 2026 00:37:52 GMT  
		Size: 22.8 MB (22774141 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f7edc8f2ef7ff754baee62d8443473c5d2b0f453b5da559b4f4cfc4d60bcd41`  
		Last Modified: Sat, 17 Oct 2026 00:37:51 GMT  
		Size: 15.6 KB (15583 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:4226a791f04e42b4ab7d0409ecc36d2987e42d5eaedcd913ba0ee44db3d7da4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.0 MB (181975274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35125db259bbcb7be8a35fa2f198a07ff4c91719cbb9f6ee89c9f18d562c2803`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Oct 2026 20:38:11 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.9614.tar --tag 26.04
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-06T20:38:12.175309+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-06T20:38:12.175309+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.control_data.9614.tar
# Sat, 17 Oct 2026 00:35:37 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:49 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:55 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:46 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:36:46 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:36:46 GMT
ENV ROS_DISTRO=lyrical
# Sat, 17 Oct 2026 00:36:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:47 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:36:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:36:47 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:00dbf11534ae4abda99e035d0e681f5254da63d2f778eaed69f1e5f6be9a6092`  
		Last Modified: Wed, 07 Oct 2026 20:45:23 GMT  
		Size: 41.1 MB (41107810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8eae6888566fa953bb1c57088f997a22020e240963959b195cbe865109eabd9`  
		Last Modified: Wed, 07 Oct 2026 20:45:26 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68ac03cf8071ee1e164e96782f9e5a4afc92eb300edb5f046cecf2336fec9bd7`  
		Last Modified: Sat, 17 Oct 2026 00:37:27 GMT  
		Size: 741.6 KB (741572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:401ba9f6e6b910cb8929413d6184ddc8175861cd46f89c54ddd64effe205a8e0`  
		Last Modified: Sat, 17 Oct 2026 00:37:27 GMT  
		Size: 9.6 MB (9611495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b6816dbdfc2d6cfd1c6c1e75d075cdbbddfa52d9748cc299606ed6477c2827a`  
		Last Modified: Sat, 17 Oct 2026 00:37:27 GMT  
		Size: 91.9 KB (91911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b883b6393feb0116d4e2e04f1bf498d76747dc8270b4de3eb2015a88b5f5515`  
		Last Modified: Sat, 17 Oct 2026 00:37:30 GMT  
		Size: 130.4 MB (130421903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c20a51215a7219b2657aaf725b280053970f8de3c51bbaaa845040160136e576`  
		Last Modified: Sat, 17 Oct 2026 00:37:28 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:ef54f18e41539ef2378a3dc964b647584f37a8074c90694d081de31146a849df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22762541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfc7c2722bf6bfd5d781410a8e13784568fe59dfeb432888030bd0bbb8db71ca`

```dockerfile
```

-	Layers:
	-	`sha256:525e9bca49cf55a2cc55e322cfa04f52e38c30d7ca7ae92a6c0d74b8e94164ac`  
		Last Modified: Sat, 17 Oct 2026 00:37:28 GMT  
		Size: 22.7 MB (22746833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c23d883c8803fbf8beb2dc921d0c95912d5c724daa554841c877e423254e569e`  
		Last Modified: Sat, 17 Oct 2026 00:37:27 GMT  
		Size: 15.7 KB (15708 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-ros-core-resolute`

```console
$ docker pull ros@sha256:d586d46d155c860f435ff39cebdb5cc9d250ecbcc0ff9b46241f16a3d87ca010
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-core-resolute` - linux; amd64

```console
$ docker pull ros@sha256:452fab137fcdd9aad9389fa6b4cc71adfbb67083a1050af224edbfdfd69e3985
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.8 MB (189837009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:657b62a1000fbdbc9c32a6389a0da04991d5dab40bd07d429c32f1f4d784b0b6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Oct 2026 21:25:29 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.9621.tar --tag 26.04
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-06T21:25:30.040262+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-06T21:25:30.040262+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.control_data.9621.tar
# Sat, 17 Oct 2026 00:35:56 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:09 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:15 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:09 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:37:09 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:37:09 GMT
ENV ROS_DISTRO=lyrical
# Sat, 17 Oct 2026 00:37:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:09 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:37:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:37:09 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:435bf5c20694c99dd5a9877e58e24b26a2207fcf8c692a3c3ce3c867770a5b41`  
		Last Modified: Wed, 07 Oct 2026 20:45:12 GMT  
		Size: 42.1 MB (42149117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9d511d19a19ebdeda520e0752f184d457905c7a310df5b748d133a51274ecd4`  
		Last Modified: Wed, 07 Oct 2026 20:45:15 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fbdf89ce6026936318ec70b3ffe6d6aa0778d9a1c0777d8e87bbe29d156850a`  
		Last Modified: Sat, 17 Oct 2026 00:37:51 GMT  
		Size: 741.4 KB (741396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1cbd2f19c0b4378014e9962cb05a70e907cba548b723d2c5ce5a32b333567f9`  
		Last Modified: Sat, 17 Oct 2026 00:37:51 GMT  
		Size: 9.8 MB (9783913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:831c6eaf1e1760417d58a3e5274e21ccdc3df134c10cb028be812314cc4fce96`  
		Last Modified: Sat, 17 Oct 2026 00:37:51 GMT  
		Size: 91.7 KB (91692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac56906d49b0316419f3e17380508f10255faf69238e351df370b79f14e19063`  
		Last Modified: Sat, 17 Oct 2026 00:37:54 GMT  
		Size: 137.1 MB (137070303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34388d0ea3a268fd49187375eb1b5dbe900ff0ccdbc8541dbac65ad67f07e759`  
		Last Modified: Sat, 17 Oct 2026 00:37:52 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:bbdb5ac4765d9410e4803bb964edfd5b39be42e291b7543e00eb4001be5e30b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22789724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00c4785817fd9ace355d8ee127c22bcdb3aa39f801303df9bcfdf86f1b03f948`

```dockerfile
```

-	Layers:
	-	`sha256:84aa82e0bc8621d8579ca76a49d4790a571e01789d5149ff90572f87bb458ef5`  
		Last Modified: Sat, 17 Oct 2026 00:37:52 GMT  
		Size: 22.8 MB (22774141 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f7edc8f2ef7ff754baee62d8443473c5d2b0f453b5da559b4f4cfc4d60bcd41`  
		Last Modified: Sat, 17 Oct 2026 00:37:51 GMT  
		Size: 15.6 KB (15583 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-ros-core-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:4226a791f04e42b4ab7d0409ecc36d2987e42d5eaedcd913ba0ee44db3d7da4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.0 MB (181975274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35125db259bbcb7be8a35fa2f198a07ff4c91719cbb9f6ee89c9f18d562c2803`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Oct 2026 20:38:11 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.9614.tar --tag 26.04
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-06T20:38:12.175309+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-06T20:38:12.175309+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.control_data.9614.tar
# Sat, 17 Oct 2026 00:35:37 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:49 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:55 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:46 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:36:46 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:36:46 GMT
ENV ROS_DISTRO=lyrical
# Sat, 17 Oct 2026 00:36:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:47 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:36:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:36:47 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:00dbf11534ae4abda99e035d0e681f5254da63d2f778eaed69f1e5f6be9a6092`  
		Last Modified: Wed, 07 Oct 2026 20:45:23 GMT  
		Size: 41.1 MB (41107810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8eae6888566fa953bb1c57088f997a22020e240963959b195cbe865109eabd9`  
		Last Modified: Wed, 07 Oct 2026 20:45:26 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68ac03cf8071ee1e164e96782f9e5a4afc92eb300edb5f046cecf2336fec9bd7`  
		Last Modified: Sat, 17 Oct 2026 00:37:27 GMT  
		Size: 741.6 KB (741572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:401ba9f6e6b910cb8929413d6184ddc8175861cd46f89c54ddd64effe205a8e0`  
		Last Modified: Sat, 17 Oct 2026 00:37:27 GMT  
		Size: 9.6 MB (9611495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b6816dbdfc2d6cfd1c6c1e75d075cdbbddfa52d9748cc299606ed6477c2827a`  
		Last Modified: Sat, 17 Oct 2026 00:37:27 GMT  
		Size: 91.9 KB (91911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b883b6393feb0116d4e2e04f1bf498d76747dc8270b4de3eb2015a88b5f5515`  
		Last Modified: Sat, 17 Oct 2026 00:37:30 GMT  
		Size: 130.4 MB (130421903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c20a51215a7219b2657aaf725b280053970f8de3c51bbaaa845040160136e576`  
		Last Modified: Sat, 17 Oct 2026 00:37:28 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:ef54f18e41539ef2378a3dc964b647584f37a8074c90694d081de31146a849df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22762541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfc7c2722bf6bfd5d781410a8e13784568fe59dfeb432888030bd0bbb8db71ca`

```dockerfile
```

-	Layers:
	-	`sha256:525e9bca49cf55a2cc55e322cfa04f52e38c30d7ca7ae92a6c0d74b8e94164ac`  
		Last Modified: Sat, 17 Oct 2026 00:37:28 GMT  
		Size: 22.7 MB (22746833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c23d883c8803fbf8beb2dc921d0c95912d5c724daa554841c877e423254e569e`  
		Last Modified: Sat, 17 Oct 2026 00:37:27 GMT  
		Size: 15.7 KB (15708 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling`

```console
$ docker pull ros@sha256:b29c4b3b642ebc9a08f7afdb968f808430d78ed865ffb1f152a65fefe973340b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling` - linux; amd64

```console
$ docker pull ros@sha256:113794af5cc887b6b6f26a26aa692b7b44f3069310fab15a1f6d017376953cc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.2 MB (341226298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31c33f4b0373eafdd68fae9b07dcc4e340f185fe51682d5495c201d17d837f1a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Oct 2026 21:25:29 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.9621.tar --tag 26.04
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-06T21:25:30.040262+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-06T21:25:30.040262+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.control_data.9621.tar
# Sat, 17 Oct 2026 00:37:30 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:44 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:49 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:45 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:38:45 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:38:45 GMT
ENV ROS_DISTRO=rolling
# Sat, 17 Oct 2026 00:38:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:45 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:38:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:38:45 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:32:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:32:19 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:32:20 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:32:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:435bf5c20694c99dd5a9877e58e24b26a2207fcf8c692a3c3ce3c867770a5b41`  
		Last Modified: Wed, 07 Oct 2026 20:45:12 GMT  
		Size: 42.1 MB (42149117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9d511d19a19ebdeda520e0752f184d457905c7a310df5b748d133a51274ecd4`  
		Last Modified: Wed, 07 Oct 2026 20:45:15 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0448779aec6a01069928357b8aaea6d84e0d48369c9cc4dfc479ec3031327d73`  
		Last Modified: Sat, 17 Oct 2026 00:39:26 GMT  
		Size: 741.4 KB (741399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd444d570ca512a541ffd9b775929ce834bcf6f3acfa5d57369f20e9f420e066`  
		Last Modified: Sat, 17 Oct 2026 00:39:27 GMT  
		Size: 9.8 MB (9783953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48547d372287ab730fd914256c3e6ae1cd75863e778b452da0033cce243e996a`  
		Last Modified: Sat, 17 Oct 2026 00:39:27 GMT  
		Size: 91.7 KB (91672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f594d9e4f9e2f6d9028a2edf38b7dc19e14cdbbb02c00334ceb9322fcf18a5d`  
		Last Modified: Sat, 17 Oct 2026 00:39:30 GMT  
		Size: 137.1 MB (137149180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe1a1c6ee0ab1584f5e4568f44a21ae63ce1466a6c3b2edc854f4cf03bed0122`  
		Last Modified: Sat, 17 Oct 2026 00:39:28 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b45c2c8daf4203f3c1c5085cf505011b8fd14066eb42d5fdc6c759fc61f9427b`  
		Last Modified: Sat, 17 Oct 2026 01:33:41 GMT  
		Size: 124.9 MB (124920336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18858865acfa8275c82d675b3a0ac46137df4c9dcd775dd52b9c0f61a2f7bf62`  
		Last Modified: Sat, 17 Oct 2026 01:33:38 GMT  
		Size: 387.8 KB (387841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db2285e037d6d7ef32d4d6477bdd7c30a0142c47084def0a980521263d4e30a6`  
		Last Modified: Sat, 17 Oct 2026 01:33:38 GMT  
		Size: 130.9 KB (130898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d559d08c362c1a6ab5984831f2dc8cbcbabed953c8ca9be73a3474733e96c6f`  
		Last Modified: Sat, 17 Oct 2026 01:33:39 GMT  
		Size: 25.9 MB (25871313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling` - unknown; unknown

```console
$ docker pull ros@sha256:61100f0443b1ee4201a09456caf8d390d552ce4c82c46e81cfb8a5c959905bc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29248950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a41b71c2caefbcb849b80ea888e57fdf9971a2ffac3d07040e35ad9a361f640d`

```dockerfile
```

-	Layers:
	-	`sha256:0e347800a0ec66361d7562bd88e5c1a98b28b968e93cd1b23cbe1baedf41f673`  
		Last Modified: Sat, 17 Oct 2026 01:33:39 GMT  
		Size: 29.2 MB (29231792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:acaa64e979fc84c028fc67dee22fedc6c73ab4f634026e0bb702fda6226a2f3a`  
		Last Modified: Sat, 17 Oct 2026 01:33:37 GMT  
		Size: 17.2 KB (17158 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d372c8f8bfa7701c214b0bf9a206322234ff9b077d4ca203d9c28f3130c37d88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.7 MB (325736386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94c2dc28542b8e4c5a6dec0709bb4ca7626c2a61bed7ed38a9a2d0ae4a986349`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Oct 2026 20:38:11 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.9614.tar --tag 26.04
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-06T20:38:12.175309+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-06T20:38:12.175309+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.control_data.9614.tar
# Sat, 17 Oct 2026 00:37:21 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:37 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:43 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:38 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:38:38 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:38:38 GMT
ENV ROS_DISTRO=rolling
# Sat, 17 Oct 2026 00:38:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:38 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:38:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:38:38 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:33:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:33:22 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:33:24 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:33:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:00dbf11534ae4abda99e035d0e681f5254da63d2f778eaed69f1e5f6be9a6092`  
		Last Modified: Wed, 07 Oct 2026 20:45:23 GMT  
		Size: 41.1 MB (41107810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8eae6888566fa953bb1c57088f997a22020e240963959b195cbe865109eabd9`  
		Last Modified: Wed, 07 Oct 2026 20:45:26 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b800a37dc221068ecc472c135b69cb447d87b8e5f9d1caf95889de3761f1b4bd`  
		Last Modified: Sat, 17 Oct 2026 00:39:18 GMT  
		Size: 741.6 KB (741568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67fc32b04c2716953e3c0b480a24dc10738f3b0003d640fe15fa31bd7d949d4e`  
		Last Modified: Sat, 17 Oct 2026 00:39:18 GMT  
		Size: 9.6 MB (9611542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f31c31c0ab46af2af9f4353dae1b6dae8ca0d041915f7dce71d7856f17824722`  
		Last Modified: Sat, 17 Oct 2026 00:39:18 GMT  
		Size: 91.9 KB (91943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9360d489d5ff8dc6963393708988e14a9b6b259bc6a8b6a2eb6edd3fdaaa418d`  
		Last Modified: Sat, 17 Oct 2026 00:39:21 GMT  
		Size: 130.5 MB (130532744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:548cf30bfcb1d447a37fd151eacad12dd355c2a49bf09fc0d6362d98812677b6`  
		Last Modified: Sat, 17 Oct 2026 00:39:19 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cb9e5636c39f04f1ce519146249ff1718f933c6b1662ffef3b7ce18916b4ace`  
		Last Modified: Sat, 17 Oct 2026 01:34:37 GMT  
		Size: 118.3 MB (118334831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d7b216ecddabef35d2be3ebf4a101c1d1ddc6938d5ce9aa9314d2ea681475c7`  
		Last Modified: Sat, 17 Oct 2026 01:34:33 GMT  
		Size: 387.8 KB (387836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaf1a07c4717937e3cf285abb924a623dd23c58ea7427a793e5eebcf157cc4c8`  
		Last Modified: Sat, 17 Oct 2026 01:34:33 GMT  
		Size: 130.9 KB (130940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76bbcbc484a7570cea247a35f375fa45e51c9687e575a7c86ce8f51b6ea0cb0a`  
		Last Modified: Sat, 17 Oct 2026 01:34:35 GMT  
		Size: 24.8 MB (24796591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling` - unknown; unknown

```console
$ docker pull ros@sha256:404f1eb04f756a51621b92c5ab02a39ecd3d6fb26bd5eca86086d372595f4c66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29313707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02a5410bbddfcf4711628015321ad486254c82e9adf79352fa4c2fe1e6214e9c`

```dockerfile
```

-	Layers:
	-	`sha256:0bfee56c2a3e749024aea119b06f1aa47f2f3df6b23a3c7881757c3ffdda8ace`  
		Last Modified: Sat, 17 Oct 2026 01:34:35 GMT  
		Size: 29.3 MB (29296412 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6891b74e7cf76a454d21016d2f4d1fe7ebd1d0adbf44bdf84c9e78c58312b982`  
		Last Modified: Sat, 17 Oct 2026 01:34:33 GMT  
		Size: 17.3 KB (17295 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-perception`

```console
$ docker pull ros@sha256:4c0cbb94407b356236c68ee38d96d0f6438c3a5db87bd8d21d171d6a478baec9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-perception` - linux; amd64

```console
$ docker pull ros@sha256:f63ccb6b45ef6c38124c35efc2eda23731d8e2faef51ce88b6ae043d22427dfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1529732888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44c343026dac45a440dfda676ec570c4c18b06ddb8a55a939408eb15170b92eb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Oct 2026 21:25:29 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.9621.tar --tag 26.04
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-06T21:25:30.040262+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-06T21:25:30.040262+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.control_data.9621.tar
# Sat, 17 Oct 2026 00:37:30 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:44 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:49 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:45 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:38:45 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:38:45 GMT
ENV ROS_DISTRO=rolling
# Sat, 17 Oct 2026 00:38:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:45 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:38:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:38:45 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:32:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:32:19 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:32:20 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:32:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:22:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:435bf5c20694c99dd5a9877e58e24b26a2207fcf8c692a3c3ce3c867770a5b41`  
		Last Modified: Wed, 07 Oct 2026 20:45:12 GMT  
		Size: 42.1 MB (42149117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9d511d19a19ebdeda520e0752f184d457905c7a310df5b748d133a51274ecd4`  
		Last Modified: Wed, 07 Oct 2026 20:45:15 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0448779aec6a01069928357b8aaea6d84e0d48369c9cc4dfc479ec3031327d73`  
		Last Modified: Sat, 17 Oct 2026 00:39:26 GMT  
		Size: 741.4 KB (741399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd444d570ca512a541ffd9b775929ce834bcf6f3acfa5d57369f20e9f420e066`  
		Last Modified: Sat, 17 Oct 2026 00:39:27 GMT  
		Size: 9.8 MB (9783953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48547d372287ab730fd914256c3e6ae1cd75863e778b452da0033cce243e996a`  
		Last Modified: Sat, 17 Oct 2026 00:39:27 GMT  
		Size: 91.7 KB (91672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f594d9e4f9e2f6d9028a2edf38b7dc19e14cdbbb02c00334ceb9322fcf18a5d`  
		Last Modified: Sat, 17 Oct 2026 00:39:30 GMT  
		Size: 137.1 MB (137149180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe1a1c6ee0ab1584f5e4568f44a21ae63ce1466a6c3b2edc854f4cf03bed0122`  
		Last Modified: Sat, 17 Oct 2026 00:39:28 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b45c2c8daf4203f3c1c5085cf505011b8fd14066eb42d5fdc6c759fc61f9427b`  
		Last Modified: Sat, 17 Oct 2026 01:33:41 GMT  
		Size: 124.9 MB (124920336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18858865acfa8275c82d675b3a0ac46137df4c9dcd775dd52b9c0f61a2f7bf62`  
		Last Modified: Sat, 17 Oct 2026 01:33:38 GMT  
		Size: 387.8 KB (387841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db2285e037d6d7ef32d4d6477bdd7c30a0142c47084def0a980521263d4e30a6`  
		Last Modified: Sat, 17 Oct 2026 01:33:38 GMT  
		Size: 130.9 KB (130898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d559d08c362c1a6ab5984831f2dc8cbcbabed953c8ca9be73a3474733e96c6f`  
		Last Modified: Sat, 17 Oct 2026 01:33:39 GMT  
		Size: 25.9 MB (25871313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0e634d12248d0d931669ce61fcf5109bf0a637568c8210807ab1f1c1acb724e`  
		Last Modified: Sat, 17 Oct 2026 02:27:46 GMT  
		Size: 1.2 GB (1188506590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-perception` - unknown; unknown

```console
$ docker pull ros@sha256:9fe934607311fc875bdbb421b371058ab70d244d9602929b72dca23e576cda30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.5 MB (64453317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7eaed78f87dadbe206c773d011affcf17822970710091b23f6e9dc2610d70b6`

```dockerfile
```

-	Layers:
	-	`sha256:f26071141e1796f8d786f1fecd78d10471c6fb4838966cb354b03d84bc10b1b7`  
		Last Modified: Sat, 17 Oct 2026 02:27:28 GMT  
		Size: 64.4 MB (64443625 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3ba5f3cd67525ea199732b360bce0f920caa5cbb63beecd04bb8ca903d2d465`  
		Last Modified: Sat, 17 Oct 2026 02:27:26 GMT  
		Size: 9.7 KB (9692 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6a48f0910f3f1114258ccc69c33000147a2203341d2454044177ade91c9ae20b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1472847127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e8936653d09a9cf56bedfbba72a9550895e9cf4508d520bfaf5f2e6120c8904`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Oct 2026 20:38:11 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.9614.tar --tag 26.04
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-06T20:38:12.175309+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-06T20:38:12.175309+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.control_data.9614.tar
# Sat, 17 Oct 2026 00:37:21 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:37 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:43 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:38 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:38:38 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:38:38 GMT
ENV ROS_DISTRO=rolling
# Sat, 17 Oct 2026 00:38:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:38 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:38:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:38:38 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:33:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:33:22 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:33:24 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:33:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:22:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:00dbf11534ae4abda99e035d0e681f5254da63d2f778eaed69f1e5f6be9a6092`  
		Last Modified: Wed, 07 Oct 2026 20:45:23 GMT  
		Size: 41.1 MB (41107810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8eae6888566fa953bb1c57088f997a22020e240963959b195cbe865109eabd9`  
		Last Modified: Wed, 07 Oct 2026 20:45:26 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b800a37dc221068ecc472c135b69cb447d87b8e5f9d1caf95889de3761f1b4bd`  
		Last Modified: Sat, 17 Oct 2026 00:39:18 GMT  
		Size: 741.6 KB (741568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67fc32b04c2716953e3c0b480a24dc10738f3b0003d640fe15fa31bd7d949d4e`  
		Last Modified: Sat, 17 Oct 2026 00:39:18 GMT  
		Size: 9.6 MB (9611542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f31c31c0ab46af2af9f4353dae1b6dae8ca0d041915f7dce71d7856f17824722`  
		Last Modified: Sat, 17 Oct 2026 00:39:18 GMT  
		Size: 91.9 KB (91943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9360d489d5ff8dc6963393708988e14a9b6b259bc6a8b6a2eb6edd3fdaaa418d`  
		Last Modified: Sat, 17 Oct 2026 00:39:21 GMT  
		Size: 130.5 MB (130532744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:548cf30bfcb1d447a37fd151eacad12dd355c2a49bf09fc0d6362d98812677b6`  
		Last Modified: Sat, 17 Oct 2026 00:39:19 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cb9e5636c39f04f1ce519146249ff1718f933c6b1662ffef3b7ce18916b4ace`  
		Last Modified: Sat, 17 Oct 2026 01:34:37 GMT  
		Size: 118.3 MB (118334831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d7b216ecddabef35d2be3ebf4a101c1d1ddc6938d5ce9aa9314d2ea681475c7`  
		Last Modified: Sat, 17 Oct 2026 01:34:33 GMT  
		Size: 387.8 KB (387836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaf1a07c4717937e3cf285abb924a623dd23c58ea7427a793e5eebcf157cc4c8`  
		Last Modified: Sat, 17 Oct 2026 01:34:33 GMT  
		Size: 130.9 KB (130940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76bbcbc484a7570cea247a35f375fa45e51c9687e575a7c86ce8f51b6ea0cb0a`  
		Last Modified: Sat, 17 Oct 2026 01:34:35 GMT  
		Size: 24.8 MB (24796591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d57e926c69d207733e20f6310bfc8b39810d35f9971aa4f31a435561b14e3ef`  
		Last Modified: Sat, 17 Oct 2026 02:26:50 GMT  
		Size: 1.1 GB (1147110741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-perception` - unknown; unknown

```console
$ docker pull ros@sha256:4ef0019d6e98f188390af1003a546c8ef4bbd40da1818ed83f8e43502e09efcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64367616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e12f136a1f2478e8e022b70f7bb482ae0e39d323f639e70a6e02c8d610e20d8`

```dockerfile
```

-	Layers:
	-	`sha256:21ebaa092d2b420b3e6e623062da0d8cf92ff306b5c3da89513440521f4e723c`  
		Last Modified: Sat, 17 Oct 2026 02:26:28 GMT  
		Size: 64.4 MB (64357843 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ffc259df8c1d949617b5efd3c68798b8dc9c1c9611cd02a17bd63f2af1e1473`  
		Last Modified: Sat, 17 Oct 2026 02:26:25 GMT  
		Size: 9.8 KB (9773 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-perception-resolute`

```console
$ docker pull ros@sha256:4c0cbb94407b356236c68ee38d96d0f6438c3a5db87bd8d21d171d6a478baec9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-perception-resolute` - linux; amd64

```console
$ docker pull ros@sha256:f63ccb6b45ef6c38124c35efc2eda23731d8e2faef51ce88b6ae043d22427dfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1529732888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44c343026dac45a440dfda676ec570c4c18b06ddb8a55a939408eb15170b92eb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Oct 2026 21:25:29 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.9621.tar --tag 26.04
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-06T21:25:30.040262+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-06T21:25:30.040262+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.control_data.9621.tar
# Sat, 17 Oct 2026 00:37:30 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:44 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:49 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:45 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:38:45 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:38:45 GMT
ENV ROS_DISTRO=rolling
# Sat, 17 Oct 2026 00:38:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:45 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:38:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:38:45 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:32:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:32:19 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:32:20 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:32:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:22:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:435bf5c20694c99dd5a9877e58e24b26a2207fcf8c692a3c3ce3c867770a5b41`  
		Last Modified: Wed, 07 Oct 2026 20:45:12 GMT  
		Size: 42.1 MB (42149117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9d511d19a19ebdeda520e0752f184d457905c7a310df5b748d133a51274ecd4`  
		Last Modified: Wed, 07 Oct 2026 20:45:15 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0448779aec6a01069928357b8aaea6d84e0d48369c9cc4dfc479ec3031327d73`  
		Last Modified: Sat, 17 Oct 2026 00:39:26 GMT  
		Size: 741.4 KB (741399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd444d570ca512a541ffd9b775929ce834bcf6f3acfa5d57369f20e9f420e066`  
		Last Modified: Sat, 17 Oct 2026 00:39:27 GMT  
		Size: 9.8 MB (9783953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48547d372287ab730fd914256c3e6ae1cd75863e778b452da0033cce243e996a`  
		Last Modified: Sat, 17 Oct 2026 00:39:27 GMT  
		Size: 91.7 KB (91672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f594d9e4f9e2f6d9028a2edf38b7dc19e14cdbbb02c00334ceb9322fcf18a5d`  
		Last Modified: Sat, 17 Oct 2026 00:39:30 GMT  
		Size: 137.1 MB (137149180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe1a1c6ee0ab1584f5e4568f44a21ae63ce1466a6c3b2edc854f4cf03bed0122`  
		Last Modified: Sat, 17 Oct 2026 00:39:28 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b45c2c8daf4203f3c1c5085cf505011b8fd14066eb42d5fdc6c759fc61f9427b`  
		Last Modified: Sat, 17 Oct 2026 01:33:41 GMT  
		Size: 124.9 MB (124920336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18858865acfa8275c82d675b3a0ac46137df4c9dcd775dd52b9c0f61a2f7bf62`  
		Last Modified: Sat, 17 Oct 2026 01:33:38 GMT  
		Size: 387.8 KB (387841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db2285e037d6d7ef32d4d6477bdd7c30a0142c47084def0a980521263d4e30a6`  
		Last Modified: Sat, 17 Oct 2026 01:33:38 GMT  
		Size: 130.9 KB (130898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d559d08c362c1a6ab5984831f2dc8cbcbabed953c8ca9be73a3474733e96c6f`  
		Last Modified: Sat, 17 Oct 2026 01:33:39 GMT  
		Size: 25.9 MB (25871313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0e634d12248d0d931669ce61fcf5109bf0a637568c8210807ab1f1c1acb724e`  
		Last Modified: Sat, 17 Oct 2026 02:27:46 GMT  
		Size: 1.2 GB (1188506590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:9fe934607311fc875bdbb421b371058ab70d244d9602929b72dca23e576cda30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.5 MB (64453317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7eaed78f87dadbe206c773d011affcf17822970710091b23f6e9dc2610d70b6`

```dockerfile
```

-	Layers:
	-	`sha256:f26071141e1796f8d786f1fecd78d10471c6fb4838966cb354b03d84bc10b1b7`  
		Last Modified: Sat, 17 Oct 2026 02:27:28 GMT  
		Size: 64.4 MB (64443625 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3ba5f3cd67525ea199732b360bce0f920caa5cbb63beecd04bb8ca903d2d465`  
		Last Modified: Sat, 17 Oct 2026 02:27:26 GMT  
		Size: 9.7 KB (9692 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-perception-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6a48f0910f3f1114258ccc69c33000147a2203341d2454044177ade91c9ae20b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1472847127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e8936653d09a9cf56bedfbba72a9550895e9cf4508d520bfaf5f2e6120c8904`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Oct 2026 20:38:11 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.9614.tar --tag 26.04
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-06T20:38:12.175309+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-06T20:38:12.175309+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.control_data.9614.tar
# Sat, 17 Oct 2026 00:37:21 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:37 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:43 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:38 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:38:38 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:38:38 GMT
ENV ROS_DISTRO=rolling
# Sat, 17 Oct 2026 00:38:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:38 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:38:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:38:38 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:33:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:33:22 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:33:24 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:33:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:22:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:00dbf11534ae4abda99e035d0e681f5254da63d2f778eaed69f1e5f6be9a6092`  
		Last Modified: Wed, 07 Oct 2026 20:45:23 GMT  
		Size: 41.1 MB (41107810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8eae6888566fa953bb1c57088f997a22020e240963959b195cbe865109eabd9`  
		Last Modified: Wed, 07 Oct 2026 20:45:26 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b800a37dc221068ecc472c135b69cb447d87b8e5f9d1caf95889de3761f1b4bd`  
		Last Modified: Sat, 17 Oct 2026 00:39:18 GMT  
		Size: 741.6 KB (741568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67fc32b04c2716953e3c0b480a24dc10738f3b0003d640fe15fa31bd7d949d4e`  
		Last Modified: Sat, 17 Oct 2026 00:39:18 GMT  
		Size: 9.6 MB (9611542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f31c31c0ab46af2af9f4353dae1b6dae8ca0d041915f7dce71d7856f17824722`  
		Last Modified: Sat, 17 Oct 2026 00:39:18 GMT  
		Size: 91.9 KB (91943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9360d489d5ff8dc6963393708988e14a9b6b259bc6a8b6a2eb6edd3fdaaa418d`  
		Last Modified: Sat, 17 Oct 2026 00:39:21 GMT  
		Size: 130.5 MB (130532744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:548cf30bfcb1d447a37fd151eacad12dd355c2a49bf09fc0d6362d98812677b6`  
		Last Modified: Sat, 17 Oct 2026 00:39:19 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cb9e5636c39f04f1ce519146249ff1718f933c6b1662ffef3b7ce18916b4ace`  
		Last Modified: Sat, 17 Oct 2026 01:34:37 GMT  
		Size: 118.3 MB (118334831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d7b216ecddabef35d2be3ebf4a101c1d1ddc6938d5ce9aa9314d2ea681475c7`  
		Last Modified: Sat, 17 Oct 2026 01:34:33 GMT  
		Size: 387.8 KB (387836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaf1a07c4717937e3cf285abb924a623dd23c58ea7427a793e5eebcf157cc4c8`  
		Last Modified: Sat, 17 Oct 2026 01:34:33 GMT  
		Size: 130.9 KB (130940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76bbcbc484a7570cea247a35f375fa45e51c9687e575a7c86ce8f51b6ea0cb0a`  
		Last Modified: Sat, 17 Oct 2026 01:34:35 GMT  
		Size: 24.8 MB (24796591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d57e926c69d207733e20f6310bfc8b39810d35f9971aa4f31a435561b14e3ef`  
		Last Modified: Sat, 17 Oct 2026 02:26:50 GMT  
		Size: 1.1 GB (1147110741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:4ef0019d6e98f188390af1003a546c8ef4bbd40da1818ed83f8e43502e09efcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64367616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e12f136a1f2478e8e022b70f7bb482ae0e39d323f639e70a6e02c8d610e20d8`

```dockerfile
```

-	Layers:
	-	`sha256:21ebaa092d2b420b3e6e623062da0d8cf92ff306b5c3da89513440521f4e723c`  
		Last Modified: Sat, 17 Oct 2026 02:26:28 GMT  
		Size: 64.4 MB (64357843 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ffc259df8c1d949617b5efd3c68798b8dc9c1c9611cd02a17bd63f2af1e1473`  
		Last Modified: Sat, 17 Oct 2026 02:26:25 GMT  
		Size: 9.8 KB (9773 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-ros-base`

```console
$ docker pull ros@sha256:b29c4b3b642ebc9a08f7afdb968f808430d78ed865ffb1f152a65fefe973340b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:113794af5cc887b6b6f26a26aa692b7b44f3069310fab15a1f6d017376953cc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.2 MB (341226298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31c33f4b0373eafdd68fae9b07dcc4e340f185fe51682d5495c201d17d837f1a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Oct 2026 21:25:29 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.9621.tar --tag 26.04
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-06T21:25:30.040262+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-06T21:25:30.040262+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.control_data.9621.tar
# Sat, 17 Oct 2026 00:37:30 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:44 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:49 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:45 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:38:45 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:38:45 GMT
ENV ROS_DISTRO=rolling
# Sat, 17 Oct 2026 00:38:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:45 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:38:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:38:45 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:32:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:32:19 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:32:20 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:32:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:435bf5c20694c99dd5a9877e58e24b26a2207fcf8c692a3c3ce3c867770a5b41`  
		Last Modified: Wed, 07 Oct 2026 20:45:12 GMT  
		Size: 42.1 MB (42149117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9d511d19a19ebdeda520e0752f184d457905c7a310df5b748d133a51274ecd4`  
		Last Modified: Wed, 07 Oct 2026 20:45:15 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0448779aec6a01069928357b8aaea6d84e0d48369c9cc4dfc479ec3031327d73`  
		Last Modified: Sat, 17 Oct 2026 00:39:26 GMT  
		Size: 741.4 KB (741399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd444d570ca512a541ffd9b775929ce834bcf6f3acfa5d57369f20e9f420e066`  
		Last Modified: Sat, 17 Oct 2026 00:39:27 GMT  
		Size: 9.8 MB (9783953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48547d372287ab730fd914256c3e6ae1cd75863e778b452da0033cce243e996a`  
		Last Modified: Sat, 17 Oct 2026 00:39:27 GMT  
		Size: 91.7 KB (91672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f594d9e4f9e2f6d9028a2edf38b7dc19e14cdbbb02c00334ceb9322fcf18a5d`  
		Last Modified: Sat, 17 Oct 2026 00:39:30 GMT  
		Size: 137.1 MB (137149180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe1a1c6ee0ab1584f5e4568f44a21ae63ce1466a6c3b2edc854f4cf03bed0122`  
		Last Modified: Sat, 17 Oct 2026 00:39:28 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b45c2c8daf4203f3c1c5085cf505011b8fd14066eb42d5fdc6c759fc61f9427b`  
		Last Modified: Sat, 17 Oct 2026 01:33:41 GMT  
		Size: 124.9 MB (124920336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18858865acfa8275c82d675b3a0ac46137df4c9dcd775dd52b9c0f61a2f7bf62`  
		Last Modified: Sat, 17 Oct 2026 01:33:38 GMT  
		Size: 387.8 KB (387841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db2285e037d6d7ef32d4d6477bdd7c30a0142c47084def0a980521263d4e30a6`  
		Last Modified: Sat, 17 Oct 2026 01:33:38 GMT  
		Size: 130.9 KB (130898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d559d08c362c1a6ab5984831f2dc8cbcbabed953c8ca9be73a3474733e96c6f`  
		Last Modified: Sat, 17 Oct 2026 01:33:39 GMT  
		Size: 25.9 MB (25871313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:61100f0443b1ee4201a09456caf8d390d552ce4c82c46e81cfb8a5c959905bc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29248950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a41b71c2caefbcb849b80ea888e57fdf9971a2ffac3d07040e35ad9a361f640d`

```dockerfile
```

-	Layers:
	-	`sha256:0e347800a0ec66361d7562bd88e5c1a98b28b968e93cd1b23cbe1baedf41f673`  
		Last Modified: Sat, 17 Oct 2026 01:33:39 GMT  
		Size: 29.2 MB (29231792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:acaa64e979fc84c028fc67dee22fedc6c73ab4f634026e0bb702fda6226a2f3a`  
		Last Modified: Sat, 17 Oct 2026 01:33:37 GMT  
		Size: 17.2 KB (17158 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d372c8f8bfa7701c214b0bf9a206322234ff9b077d4ca203d9c28f3130c37d88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.7 MB (325736386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94c2dc28542b8e4c5a6dec0709bb4ca7626c2a61bed7ed38a9a2d0ae4a986349`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Oct 2026 20:38:11 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.9614.tar --tag 26.04
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-06T20:38:12.175309+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-06T20:38:12.175309+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.control_data.9614.tar
# Sat, 17 Oct 2026 00:37:21 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:37 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:43 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:38 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:38:38 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:38:38 GMT
ENV ROS_DISTRO=rolling
# Sat, 17 Oct 2026 00:38:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:38 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:38:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:38:38 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:33:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:33:22 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:33:24 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:33:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:00dbf11534ae4abda99e035d0e681f5254da63d2f778eaed69f1e5f6be9a6092`  
		Last Modified: Wed, 07 Oct 2026 20:45:23 GMT  
		Size: 41.1 MB (41107810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8eae6888566fa953bb1c57088f997a22020e240963959b195cbe865109eabd9`  
		Last Modified: Wed, 07 Oct 2026 20:45:26 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b800a37dc221068ecc472c135b69cb447d87b8e5f9d1caf95889de3761f1b4bd`  
		Last Modified: Sat, 17 Oct 2026 00:39:18 GMT  
		Size: 741.6 KB (741568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67fc32b04c2716953e3c0b480a24dc10738f3b0003d640fe15fa31bd7d949d4e`  
		Last Modified: Sat, 17 Oct 2026 00:39:18 GMT  
		Size: 9.6 MB (9611542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f31c31c0ab46af2af9f4353dae1b6dae8ca0d041915f7dce71d7856f17824722`  
		Last Modified: Sat, 17 Oct 2026 00:39:18 GMT  
		Size: 91.9 KB (91943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9360d489d5ff8dc6963393708988e14a9b6b259bc6a8b6a2eb6edd3fdaaa418d`  
		Last Modified: Sat, 17 Oct 2026 00:39:21 GMT  
		Size: 130.5 MB (130532744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:548cf30bfcb1d447a37fd151eacad12dd355c2a49bf09fc0d6362d98812677b6`  
		Last Modified: Sat, 17 Oct 2026 00:39:19 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cb9e5636c39f04f1ce519146249ff1718f933c6b1662ffef3b7ce18916b4ace`  
		Last Modified: Sat, 17 Oct 2026 01:34:37 GMT  
		Size: 118.3 MB (118334831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d7b216ecddabef35d2be3ebf4a101c1d1ddc6938d5ce9aa9314d2ea681475c7`  
		Last Modified: Sat, 17 Oct 2026 01:34:33 GMT  
		Size: 387.8 KB (387836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaf1a07c4717937e3cf285abb924a623dd23c58ea7427a793e5eebcf157cc4c8`  
		Last Modified: Sat, 17 Oct 2026 01:34:33 GMT  
		Size: 130.9 KB (130940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76bbcbc484a7570cea247a35f375fa45e51c9687e575a7c86ce8f51b6ea0cb0a`  
		Last Modified: Sat, 17 Oct 2026 01:34:35 GMT  
		Size: 24.8 MB (24796591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:404f1eb04f756a51621b92c5ab02a39ecd3d6fb26bd5eca86086d372595f4c66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29313707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02a5410bbddfcf4711628015321ad486254c82e9adf79352fa4c2fe1e6214e9c`

```dockerfile
```

-	Layers:
	-	`sha256:0bfee56c2a3e749024aea119b06f1aa47f2f3df6b23a3c7881757c3ffdda8ace`  
		Last Modified: Sat, 17 Oct 2026 01:34:35 GMT  
		Size: 29.3 MB (29296412 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6891b74e7cf76a454d21016d2f4d1fe7ebd1d0adbf44bdf84c9e78c58312b982`  
		Last Modified: Sat, 17 Oct 2026 01:34:33 GMT  
		Size: 17.3 KB (17295 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-ros-base-resolute`

```console
$ docker pull ros@sha256:b29c4b3b642ebc9a08f7afdb968f808430d78ed865ffb1f152a65fefe973340b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-base-resolute` - linux; amd64

```console
$ docker pull ros@sha256:113794af5cc887b6b6f26a26aa692b7b44f3069310fab15a1f6d017376953cc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.2 MB (341226298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31c33f4b0373eafdd68fae9b07dcc4e340f185fe51682d5495c201d17d837f1a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Oct 2026 21:25:29 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.9621.tar --tag 26.04
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-06T21:25:30.040262+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-06T21:25:30.040262+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.control_data.9621.tar
# Sat, 17 Oct 2026 00:37:30 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:44 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:49 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:45 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:38:45 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:38:45 GMT
ENV ROS_DISTRO=rolling
# Sat, 17 Oct 2026 00:38:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:45 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:38:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:38:45 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:32:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:32:19 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:32:20 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:32:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:435bf5c20694c99dd5a9877e58e24b26a2207fcf8c692a3c3ce3c867770a5b41`  
		Last Modified: Wed, 07 Oct 2026 20:45:12 GMT  
		Size: 42.1 MB (42149117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9d511d19a19ebdeda520e0752f184d457905c7a310df5b748d133a51274ecd4`  
		Last Modified: Wed, 07 Oct 2026 20:45:15 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0448779aec6a01069928357b8aaea6d84e0d48369c9cc4dfc479ec3031327d73`  
		Last Modified: Sat, 17 Oct 2026 00:39:26 GMT  
		Size: 741.4 KB (741399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd444d570ca512a541ffd9b775929ce834bcf6f3acfa5d57369f20e9f420e066`  
		Last Modified: Sat, 17 Oct 2026 00:39:27 GMT  
		Size: 9.8 MB (9783953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48547d372287ab730fd914256c3e6ae1cd75863e778b452da0033cce243e996a`  
		Last Modified: Sat, 17 Oct 2026 00:39:27 GMT  
		Size: 91.7 KB (91672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f594d9e4f9e2f6d9028a2edf38b7dc19e14cdbbb02c00334ceb9322fcf18a5d`  
		Last Modified: Sat, 17 Oct 2026 00:39:30 GMT  
		Size: 137.1 MB (137149180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe1a1c6ee0ab1584f5e4568f44a21ae63ce1466a6c3b2edc854f4cf03bed0122`  
		Last Modified: Sat, 17 Oct 2026 00:39:28 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b45c2c8daf4203f3c1c5085cf505011b8fd14066eb42d5fdc6c759fc61f9427b`  
		Last Modified: Sat, 17 Oct 2026 01:33:41 GMT  
		Size: 124.9 MB (124920336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18858865acfa8275c82d675b3a0ac46137df4c9dcd775dd52b9c0f61a2f7bf62`  
		Last Modified: Sat, 17 Oct 2026 01:33:38 GMT  
		Size: 387.8 KB (387841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db2285e037d6d7ef32d4d6477bdd7c30a0142c47084def0a980521263d4e30a6`  
		Last Modified: Sat, 17 Oct 2026 01:33:38 GMT  
		Size: 130.9 KB (130898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d559d08c362c1a6ab5984831f2dc8cbcbabed953c8ca9be73a3474733e96c6f`  
		Last Modified: Sat, 17 Oct 2026 01:33:39 GMT  
		Size: 25.9 MB (25871313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:61100f0443b1ee4201a09456caf8d390d552ce4c82c46e81cfb8a5c959905bc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29248950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a41b71c2caefbcb849b80ea888e57fdf9971a2ffac3d07040e35ad9a361f640d`

```dockerfile
```

-	Layers:
	-	`sha256:0e347800a0ec66361d7562bd88e5c1a98b28b968e93cd1b23cbe1baedf41f673`  
		Last Modified: Sat, 17 Oct 2026 01:33:39 GMT  
		Size: 29.2 MB (29231792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:acaa64e979fc84c028fc67dee22fedc6c73ab4f634026e0bb702fda6226a2f3a`  
		Last Modified: Sat, 17 Oct 2026 01:33:37 GMT  
		Size: 17.2 KB (17158 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-base-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d372c8f8bfa7701c214b0bf9a206322234ff9b077d4ca203d9c28f3130c37d88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.7 MB (325736386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94c2dc28542b8e4c5a6dec0709bb4ca7626c2a61bed7ed38a9a2d0ae4a986349`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Oct 2026 20:38:11 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.9614.tar --tag 26.04
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-06T20:38:12.175309+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-06T20:38:12.175309+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.control_data.9614.tar
# Sat, 17 Oct 2026 00:37:21 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:37 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:43 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:38 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:38:38 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:38:38 GMT
ENV ROS_DISTRO=rolling
# Sat, 17 Oct 2026 00:38:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:38 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:38:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:38:38 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:33:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:33:22 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:33:24 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:33:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:00dbf11534ae4abda99e035d0e681f5254da63d2f778eaed69f1e5f6be9a6092`  
		Last Modified: Wed, 07 Oct 2026 20:45:23 GMT  
		Size: 41.1 MB (41107810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8eae6888566fa953bb1c57088f997a22020e240963959b195cbe865109eabd9`  
		Last Modified: Wed, 07 Oct 2026 20:45:26 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b800a37dc221068ecc472c135b69cb447d87b8e5f9d1caf95889de3761f1b4bd`  
		Last Modified: Sat, 17 Oct 2026 00:39:18 GMT  
		Size: 741.6 KB (741568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67fc32b04c2716953e3c0b480a24dc10738f3b0003d640fe15fa31bd7d949d4e`  
		Last Modified: Sat, 17 Oct 2026 00:39:18 GMT  
		Size: 9.6 MB (9611542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f31c31c0ab46af2af9f4353dae1b6dae8ca0d041915f7dce71d7856f17824722`  
		Last Modified: Sat, 17 Oct 2026 00:39:18 GMT  
		Size: 91.9 KB (91943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9360d489d5ff8dc6963393708988e14a9b6b259bc6a8b6a2eb6edd3fdaaa418d`  
		Last Modified: Sat, 17 Oct 2026 00:39:21 GMT  
		Size: 130.5 MB (130532744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:548cf30bfcb1d447a37fd151eacad12dd355c2a49bf09fc0d6362d98812677b6`  
		Last Modified: Sat, 17 Oct 2026 00:39:19 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cb9e5636c39f04f1ce519146249ff1718f933c6b1662ffef3b7ce18916b4ace`  
		Last Modified: Sat, 17 Oct 2026 01:34:37 GMT  
		Size: 118.3 MB (118334831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d7b216ecddabef35d2be3ebf4a101c1d1ddc6938d5ce9aa9314d2ea681475c7`  
		Last Modified: Sat, 17 Oct 2026 01:34:33 GMT  
		Size: 387.8 KB (387836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaf1a07c4717937e3cf285abb924a623dd23c58ea7427a793e5eebcf157cc4c8`  
		Last Modified: Sat, 17 Oct 2026 01:34:33 GMT  
		Size: 130.9 KB (130940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76bbcbc484a7570cea247a35f375fa45e51c9687e575a7c86ce8f51b6ea0cb0a`  
		Last Modified: Sat, 17 Oct 2026 01:34:35 GMT  
		Size: 24.8 MB (24796591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:404f1eb04f756a51621b92c5ab02a39ecd3d6fb26bd5eca86086d372595f4c66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29313707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02a5410bbddfcf4711628015321ad486254c82e9adf79352fa4c2fe1e6214e9c`

```dockerfile
```

-	Layers:
	-	`sha256:0bfee56c2a3e749024aea119b06f1aa47f2f3df6b23a3c7881757c3ffdda8ace`  
		Last Modified: Sat, 17 Oct 2026 01:34:35 GMT  
		Size: 29.3 MB (29296412 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6891b74e7cf76a454d21016d2f4d1fe7ebd1d0adbf44bdf84c9e78c58312b982`  
		Last Modified: Sat, 17 Oct 2026 01:34:33 GMT  
		Size: 17.3 KB (17295 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-ros-core`

```console
$ docker pull ros@sha256:e5ddfcdd197a9a344118b42aacea84e1ae0e476b1eda864d63811ec844175989
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:513f15edaf483a4231fe104bd094fc4387ede030409d49ccfc539d8dc0429824
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.9 MB (189915910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:784cbc922189c3bdbed2cf791255347825e9989da9b2316bc7e3bb025bdb7208`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Oct 2026 21:25:29 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.9621.tar --tag 26.04
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-06T21:25:30.040262+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-06T21:25:30.040262+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.control_data.9621.tar
# Sat, 17 Oct 2026 00:37:30 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:44 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:49 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:45 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:38:45 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:38:45 GMT
ENV ROS_DISTRO=rolling
# Sat, 17 Oct 2026 00:38:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:45 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:38:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:38:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:435bf5c20694c99dd5a9877e58e24b26a2207fcf8c692a3c3ce3c867770a5b41`  
		Last Modified: Wed, 07 Oct 2026 20:45:12 GMT  
		Size: 42.1 MB (42149117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9d511d19a19ebdeda520e0752f184d457905c7a310df5b748d133a51274ecd4`  
		Last Modified: Wed, 07 Oct 2026 20:45:15 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0448779aec6a01069928357b8aaea6d84e0d48369c9cc4dfc479ec3031327d73`  
		Last Modified: Sat, 17 Oct 2026 00:39:26 GMT  
		Size: 741.4 KB (741399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd444d570ca512a541ffd9b775929ce834bcf6f3acfa5d57369f20e9f420e066`  
		Last Modified: Sat, 17 Oct 2026 00:39:27 GMT  
		Size: 9.8 MB (9783953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48547d372287ab730fd914256c3e6ae1cd75863e778b452da0033cce243e996a`  
		Last Modified: Sat, 17 Oct 2026 00:39:27 GMT  
		Size: 91.7 KB (91672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f594d9e4f9e2f6d9028a2edf38b7dc19e14cdbbb02c00334ceb9322fcf18a5d`  
		Last Modified: Sat, 17 Oct 2026 00:39:30 GMT  
		Size: 137.1 MB (137149180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe1a1c6ee0ab1584f5e4568f44a21ae63ce1466a6c3b2edc854f4cf03bed0122`  
		Last Modified: Sat, 17 Oct 2026 00:39:28 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:e204479ed07c5a13429adcdf73ea94fa2cd05b0c0bcbd4aa0de00227c7847300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22820676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84ea14a30b4dbc876fd8c999a9d7211037eb15b0e452412909621fb44ee9a498`

```dockerfile
```

-	Layers:
	-	`sha256:a08a30977bf67f932d2d190d147eab8d3cef3ea0d8b4cf1ee459d616d4d485dd`  
		Last Modified: Sat, 17 Oct 2026 00:39:27 GMT  
		Size: 22.8 MB (22804998 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7fc40edfd7a099d8f40d03dc17c03317a29f8459f91c4410bfe191446de3da19`  
		Last Modified: Sat, 17 Oct 2026 00:39:26 GMT  
		Size: 15.7 KB (15678 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:0f965b56ea28fde2a783179eac29ee3f11fdc031d7026bab15d3da1247d5e34f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.1 MB (182086188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9ae7dc218fd2dfc568113772ef5d66e3eaa18768939f7d41a646cb5f7dc3f25`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Oct 2026 20:38:11 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.9614.tar --tag 26.04
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-06T20:38:12.175309+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-06T20:38:12.175309+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.control_data.9614.tar
# Sat, 17 Oct 2026 00:37:21 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:37 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:43 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:38 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:38:38 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:38:38 GMT
ENV ROS_DISTRO=rolling
# Sat, 17 Oct 2026 00:38:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:38 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:38:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:38:38 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:00dbf11534ae4abda99e035d0e681f5254da63d2f778eaed69f1e5f6be9a6092`  
		Last Modified: Wed, 07 Oct 2026 20:45:23 GMT  
		Size: 41.1 MB (41107810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8eae6888566fa953bb1c57088f997a22020e240963959b195cbe865109eabd9`  
		Last Modified: Wed, 07 Oct 2026 20:45:26 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b800a37dc221068ecc472c135b69cb447d87b8e5f9d1caf95889de3761f1b4bd`  
		Last Modified: Sat, 17 Oct 2026 00:39:18 GMT  
		Size: 741.6 KB (741568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67fc32b04c2716953e3c0b480a24dc10738f3b0003d640fe15fa31bd7d949d4e`  
		Last Modified: Sat, 17 Oct 2026 00:39:18 GMT  
		Size: 9.6 MB (9611542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f31c31c0ab46af2af9f4353dae1b6dae8ca0d041915f7dce71d7856f17824722`  
		Last Modified: Sat, 17 Oct 2026 00:39:18 GMT  
		Size: 91.9 KB (91943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9360d489d5ff8dc6963393708988e14a9b6b259bc6a8b6a2eb6edd3fdaaa418d`  
		Last Modified: Sat, 17 Oct 2026 00:39:21 GMT  
		Size: 130.5 MB (130532744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:548cf30bfcb1d447a37fd151eacad12dd355c2a49bf09fc0d6362d98812677b6`  
		Last Modified: Sat, 17 Oct 2026 00:39:19 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:181c05c0fa518c70c7061eabc6479e17451dfe8416d6d23c6e6c92275f776c4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22793494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bebb003b69e024edb385184987d7ee0b33342f1d7ae9fabb182e739f3fd04349`

```dockerfile
```

-	Layers:
	-	`sha256:75ace7fac5c9e73f5b1542b2d088af9bd5e617ff299e34c1b6374424c13b9df2`  
		Last Modified: Sat, 17 Oct 2026 00:39:19 GMT  
		Size: 22.8 MB (22777690 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f5b844ce6c8a0df19a746f0e5feabc3491add9a43cf561b4abac019d7d693d38`  
		Last Modified: Sat, 17 Oct 2026 00:39:17 GMT  
		Size: 15.8 KB (15804 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-ros-core-resolute`

```console
$ docker pull ros@sha256:e5ddfcdd197a9a344118b42aacea84e1ae0e476b1eda864d63811ec844175989
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-core-resolute` - linux; amd64

```console
$ docker pull ros@sha256:513f15edaf483a4231fe104bd094fc4387ede030409d49ccfc539d8dc0429824
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.9 MB (189915910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:784cbc922189c3bdbed2cf791255347825e9989da9b2316bc7e3bb025bdb7208`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Oct 2026 21:25:29 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.9621.tar --tag 26.04
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-06T21:25:30.040262+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-06T21:25:30.040262+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.control_data.9621.tar
# Sat, 17 Oct 2026 00:37:30 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:44 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:49 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:45 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:38:45 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:38:45 GMT
ENV ROS_DISTRO=rolling
# Sat, 17 Oct 2026 00:38:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:45 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:38:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:38:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:435bf5c20694c99dd5a9877e58e24b26a2207fcf8c692a3c3ce3c867770a5b41`  
		Last Modified: Wed, 07 Oct 2026 20:45:12 GMT  
		Size: 42.1 MB (42149117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9d511d19a19ebdeda520e0752f184d457905c7a310df5b748d133a51274ecd4`  
		Last Modified: Wed, 07 Oct 2026 20:45:15 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0448779aec6a01069928357b8aaea6d84e0d48369c9cc4dfc479ec3031327d73`  
		Last Modified: Sat, 17 Oct 2026 00:39:26 GMT  
		Size: 741.4 KB (741399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd444d570ca512a541ffd9b775929ce834bcf6f3acfa5d57369f20e9f420e066`  
		Last Modified: Sat, 17 Oct 2026 00:39:27 GMT  
		Size: 9.8 MB (9783953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48547d372287ab730fd914256c3e6ae1cd75863e778b452da0033cce243e996a`  
		Last Modified: Sat, 17 Oct 2026 00:39:27 GMT  
		Size: 91.7 KB (91672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f594d9e4f9e2f6d9028a2edf38b7dc19e14cdbbb02c00334ceb9322fcf18a5d`  
		Last Modified: Sat, 17 Oct 2026 00:39:30 GMT  
		Size: 137.1 MB (137149180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe1a1c6ee0ab1584f5e4568f44a21ae63ce1466a6c3b2edc854f4cf03bed0122`  
		Last Modified: Sat, 17 Oct 2026 00:39:28 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:e204479ed07c5a13429adcdf73ea94fa2cd05b0c0bcbd4aa0de00227c7847300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22820676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84ea14a30b4dbc876fd8c999a9d7211037eb15b0e452412909621fb44ee9a498`

```dockerfile
```

-	Layers:
	-	`sha256:a08a30977bf67f932d2d190d147eab8d3cef3ea0d8b4cf1ee459d616d4d485dd`  
		Last Modified: Sat, 17 Oct 2026 00:39:27 GMT  
		Size: 22.8 MB (22804998 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7fc40edfd7a099d8f40d03dc17c03317a29f8459f91c4410bfe191446de3da19`  
		Last Modified: Sat, 17 Oct 2026 00:39:26 GMT  
		Size: 15.7 KB (15678 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-core-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:0f965b56ea28fde2a783179eac29ee3f11fdc031d7026bab15d3da1247d5e34f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.1 MB (182086188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9ae7dc218fd2dfc568113772ef5d66e3eaa18768939f7d41a646cb5f7dc3f25`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Oct 2026 20:38:11 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.9614.tar --tag 26.04
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-06T20:38:12.175309+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-06T20:38:12.175309+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.control_data.9614.tar
# Sat, 17 Oct 2026 00:37:21 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:37 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:43 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:38 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:38:38 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:38:38 GMT
ENV ROS_DISTRO=rolling
# Sat, 17 Oct 2026 00:38:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:38 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:38:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:38:38 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:00dbf11534ae4abda99e035d0e681f5254da63d2f778eaed69f1e5f6be9a6092`  
		Last Modified: Wed, 07 Oct 2026 20:45:23 GMT  
		Size: 41.1 MB (41107810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8eae6888566fa953bb1c57088f997a22020e240963959b195cbe865109eabd9`  
		Last Modified: Wed, 07 Oct 2026 20:45:26 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b800a37dc221068ecc472c135b69cb447d87b8e5f9d1caf95889de3761f1b4bd`  
		Last Modified: Sat, 17 Oct 2026 00:39:18 GMT  
		Size: 741.6 KB (741568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67fc32b04c2716953e3c0b480a24dc10738f3b0003d640fe15fa31bd7d949d4e`  
		Last Modified: Sat, 17 Oct 2026 00:39:18 GMT  
		Size: 9.6 MB (9611542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f31c31c0ab46af2af9f4353dae1b6dae8ca0d041915f7dce71d7856f17824722`  
		Last Modified: Sat, 17 Oct 2026 00:39:18 GMT  
		Size: 91.9 KB (91943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9360d489d5ff8dc6963393708988e14a9b6b259bc6a8b6a2eb6edd3fdaaa418d`  
		Last Modified: Sat, 17 Oct 2026 00:39:21 GMT  
		Size: 130.5 MB (130532744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:548cf30bfcb1d447a37fd151eacad12dd355c2a49bf09fc0d6362d98812677b6`  
		Last Modified: Sat, 17 Oct 2026 00:39:19 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:181c05c0fa518c70c7061eabc6479e17451dfe8416d6d23c6e6c92275f776c4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22793494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bebb003b69e024edb385184987d7ee0b33342f1d7ae9fabb182e739f3fd04349`

```dockerfile
```

-	Layers:
	-	`sha256:75ace7fac5c9e73f5b1542b2d088af9bd5e617ff299e34c1b6374424c13b9df2`  
		Last Modified: Sat, 17 Oct 2026 00:39:19 GMT  
		Size: 22.8 MB (22777690 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f5b844ce6c8a0df19a746f0e5feabc3491add9a43cf561b4abac019d7d693d38`  
		Last Modified: Sat, 17 Oct 2026 00:39:17 GMT  
		Size: 15.8 KB (15804 bytes)  
		MIME: application/vnd.in-toto+json
