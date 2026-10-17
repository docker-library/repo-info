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
$ docker pull ros@sha256:de170d8905daf457ab2ab4f1806b8031412f16d7bef1db1cdea704e5d6626447
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-perception` - linux; amd64

```console
$ docker pull ros@sha256:9162948028dbc1a7c4028f05fa3e341aa5afa8b0e25e6078c64cf30eff4f62ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **959.1 MB (959059404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc5245126ba7e3c6a8c2129d438fed97c1e268ab47bd96bdb982da8174d7ebde`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:07 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:12 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:51 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:33:51 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:33:51 GMT
ENV ROS_DISTRO=humble
# Fri, 02 Oct 2026 01:33:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:51 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:33:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:33:51 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:09 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:12 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:16 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:30:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:19:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a002b86229673ff1430fe07afe1839d097f0d8b713bad707b3e0d3064200ca8c`  
		Last Modified: Fri, 02 Oct 2026 01:34:16 GMT  
		Size: 1.2 MB (1212880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e804a0ad2a8bf7be6a3840017d207a853e13bb6c7bb8336d715ac85bd592082`  
		Last Modified: Fri, 02 Oct 2026 01:34:16 GMT  
		Size: 6.0 MB (5952340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8b0b6f752f7b983a42c4fc8bf72b268764ed14aed27bc428c8964abe13e1919`  
		Last Modified: Fri, 02 Oct 2026 01:34:16 GMT  
		Size: 98.0 KB (97958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b65fcd8f7286a56e6fecfcd7cd73119c8394b49c7adbfcf16e8c1bc569a0ddc`  
		Last Modified: Fri, 02 Oct 2026 01:34:19 GMT  
		Size: 107.9 MB (107922333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dcc0fc0e26ee91bc9e0f7a730d41bb6eb404aefed99de732d1f9ecff40b5a53`  
		Last Modified: Fri, 02 Oct 2026 01:34:17 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96e46ed72a21c108fa6b40f45f0885ae9a8feff84bd032b3b1396cbdde9c5f76`  
		Last Modified: Fri, 02 Oct 2026 02:31:21 GMT  
		Size: 98.2 MB (98199982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76d93248370c0ee133c07283fd1145856e8a394fbda33495346025a475bbb750`  
		Last Modified: Fri, 02 Oct 2026 02:31:18 GMT  
		Size: 389.4 KB (389415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1247efdbbc2a789a3ddcdd2256b53e60c06f036c8fc06f694cb4757b1dd1954`  
		Last Modified: Fri, 02 Oct 2026 02:31:18 GMT  
		Size: 2.7 KB (2679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39059d943f4d2244529c8a555ed1b29e592ed0a4ab34cb689e429169d92bf2f3`  
		Last Modified: Fri, 02 Oct 2026 02:31:20 GMT  
		Size: 23.3 MB (23348095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e10a2496f2202e0a8d110dfae25959d8bd77704149f8b2963ddacd95da5cfb45`  
		Last Modified: Fri, 02 Oct 2026 03:21:47 GMT  
		Size: 692.2 MB (692181898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception` - unknown; unknown

```console
$ docker pull ros@sha256:f61beb67704002bb7fbef7d3dad88b4f77ac0d54ffb66e406b51f76676e6a19c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.1 MB (59072270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f26bf74c0de8e0be83d017a84c5e24fb52dcd46cf3c43a2cc42767ba6eeb3a98`

```dockerfile
```

-	Layers:
	-	`sha256:3e10b26003b6d73491f8e08dd2edfa7fd16d84c3f0415b56b24634d38aa86806`  
		Last Modified: Fri, 02 Oct 2026 03:21:36 GMT  
		Size: 59.1 MB (59062918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:828159dc828909f55c7bcd2d6280cc663ce752d3390ea08c9b9f6f512cf40fa6`  
		Last Modified: Fri, 02 Oct 2026 03:21:34 GMT  
		Size: 9.4 KB (9352 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:83bf5d919191b747a6d3bdb90f99bd240cc738b6292c69c584fcab9c5143bb09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **919.7 MB (919673775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08193b28e67a272b18235e7a3e2fff5482923c89023dcfdc6b77b6d2d5d376e7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:52 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:02 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:11 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:50 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:33:50 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:33:50 GMT
ENV ROS_DISTRO=humble
# Fri, 02 Oct 2026 01:33:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:50 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:33:50 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:33:50 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:41 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:42 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:30:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:18:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75b557813fcf11a25538d23fe1de0d1cf1fb9dc99d43a1c54ea228dca996cae7`  
		Last Modified: Fri, 02 Oct 2026 01:34:17 GMT  
		Size: 1.2 MB (1212867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfe48d969d878c110f3b21574ade580dfffee64713836a2b307826cb274e442b`  
		Last Modified: Fri, 02 Oct 2026 01:34:17 GMT  
		Size: 5.9 MB (5911995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50744702b8e53a0cafefc9b55960d72c5f0bae00626388f8f52c2784926e184e`  
		Last Modified: Fri, 02 Oct 2026 01:34:17 GMT  
		Size: 98.0 KB (97953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2be6951d519d8e68d6ae87632a4b65e3ecc55686c1c00fed925e6a4e097df99f`  
		Last Modified: Fri, 02 Oct 2026 01:34:19 GMT  
		Size: 105.6 MB (105625459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:022cc4907bf5a12b531765cb8979b1a775f568a5396ad80f8bd32af24bfe7ab7`  
		Last Modified: Fri, 02 Oct 2026 01:34:18 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07420bcece04798f21e90f98ee882ff1dce134f13d7019dbcaa1a0e7caa17028`  
		Last Modified: Fri, 02 Oct 2026 02:31:34 GMT  
		Size: 95.8 MB (95835960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6fb31659d74b1b03ec8ac51f49f3b0928863045a662462ac275103a496ee088`  
		Last Modified: Fri, 02 Oct 2026 02:31:31 GMT  
		Size: 389.4 KB (389416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b45d9d03c465d67366f306d2b1abf490fa999669af5f3e361c4dd35c7a06713c`  
		Last Modified: Fri, 02 Oct 2026 02:31:31 GMT  
		Size: 2.6 KB (2643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5bf412a31c6bc935b585c861cc8d6a54b7433b28a8b5ebd072076d90df7d42e`  
		Last Modified: Fri, 02 Oct 2026 02:31:32 GMT  
		Size: 22.8 MB (22751140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72dcb29e7daf270b7c9154333948e2e6022f13755075180c7460734f9ce1d455`  
		Last Modified: Fri, 02 Oct 2026 03:21:40 GMT  
		Size: 660.2 MB (660162009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception` - unknown; unknown

```console
$ docker pull ros@sha256:2635e8dca4abc9f696ccc88cfefa503290dc4936e18fea837005f8e8cf20f690
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.1 MB (59056674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d11d9160b510e64c95f75fab5ed9329eaf8305986e855bceced9537f58bb193`

```dockerfile
```

-	Layers:
	-	`sha256:8989d4bf7780096c73d208939a9f08b779767a20cf630451aed3cc78e300b7bc`  
		Last Modified: Fri, 02 Oct 2026 03:21:30 GMT  
		Size: 59.0 MB (59047243 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:effd8ec6acf52d8b4b6a37a2c4f8746dbf2a9e9f1e86052d425f38d7a827d4bb`  
		Last Modified: Fri, 02 Oct 2026 03:21:27 GMT  
		Size: 9.4 KB (9431 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-perception-jammy`

```console
$ docker pull ros@sha256:de170d8905daf457ab2ab4f1806b8031412f16d7bef1db1cdea704e5d6626447
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-perception-jammy` - linux; amd64

```console
$ docker pull ros@sha256:9162948028dbc1a7c4028f05fa3e341aa5afa8b0e25e6078c64cf30eff4f62ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **959.1 MB (959059404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc5245126ba7e3c6a8c2129d438fed97c1e268ab47bd96bdb982da8174d7ebde`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:07 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:12 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:51 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:33:51 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:33:51 GMT
ENV ROS_DISTRO=humble
# Fri, 02 Oct 2026 01:33:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:51 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:33:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:33:51 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:09 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:12 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:16 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:30:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:19:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a002b86229673ff1430fe07afe1839d097f0d8b713bad707b3e0d3064200ca8c`  
		Last Modified: Fri, 02 Oct 2026 01:34:16 GMT  
		Size: 1.2 MB (1212880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e804a0ad2a8bf7be6a3840017d207a853e13bb6c7bb8336d715ac85bd592082`  
		Last Modified: Fri, 02 Oct 2026 01:34:16 GMT  
		Size: 6.0 MB (5952340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8b0b6f752f7b983a42c4fc8bf72b268764ed14aed27bc428c8964abe13e1919`  
		Last Modified: Fri, 02 Oct 2026 01:34:16 GMT  
		Size: 98.0 KB (97958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b65fcd8f7286a56e6fecfcd7cd73119c8394b49c7adbfcf16e8c1bc569a0ddc`  
		Last Modified: Fri, 02 Oct 2026 01:34:19 GMT  
		Size: 107.9 MB (107922333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dcc0fc0e26ee91bc9e0f7a730d41bb6eb404aefed99de732d1f9ecff40b5a53`  
		Last Modified: Fri, 02 Oct 2026 01:34:17 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96e46ed72a21c108fa6b40f45f0885ae9a8feff84bd032b3b1396cbdde9c5f76`  
		Last Modified: Fri, 02 Oct 2026 02:31:21 GMT  
		Size: 98.2 MB (98199982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76d93248370c0ee133c07283fd1145856e8a394fbda33495346025a475bbb750`  
		Last Modified: Fri, 02 Oct 2026 02:31:18 GMT  
		Size: 389.4 KB (389415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1247efdbbc2a789a3ddcdd2256b53e60c06f036c8fc06f694cb4757b1dd1954`  
		Last Modified: Fri, 02 Oct 2026 02:31:18 GMT  
		Size: 2.7 KB (2679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39059d943f4d2244529c8a555ed1b29e592ed0a4ab34cb689e429169d92bf2f3`  
		Last Modified: Fri, 02 Oct 2026 02:31:20 GMT  
		Size: 23.3 MB (23348095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e10a2496f2202e0a8d110dfae25959d8bd77704149f8b2963ddacd95da5cfb45`  
		Last Modified: Fri, 02 Oct 2026 03:21:47 GMT  
		Size: 692.2 MB (692181898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:f61beb67704002bb7fbef7d3dad88b4f77ac0d54ffb66e406b51f76676e6a19c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.1 MB (59072270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f26bf74c0de8e0be83d017a84c5e24fb52dcd46cf3c43a2cc42767ba6eeb3a98`

```dockerfile
```

-	Layers:
	-	`sha256:3e10b26003b6d73491f8e08dd2edfa7fd16d84c3f0415b56b24634d38aa86806`  
		Last Modified: Fri, 02 Oct 2026 03:21:36 GMT  
		Size: 59.1 MB (59062918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:828159dc828909f55c7bcd2d6280cc663ce752d3390ea08c9b9f6f512cf40fa6`  
		Last Modified: Fri, 02 Oct 2026 03:21:34 GMT  
		Size: 9.4 KB (9352 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-perception-jammy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:83bf5d919191b747a6d3bdb90f99bd240cc738b6292c69c584fcab9c5143bb09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **919.7 MB (919673775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08193b28e67a272b18235e7a3e2fff5482923c89023dcfdc6b77b6d2d5d376e7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:52 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:02 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:11 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:50 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:33:50 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:33:50 GMT
ENV ROS_DISTRO=humble
# Fri, 02 Oct 2026 01:33:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:50 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:33:50 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:33:50 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:41 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:42 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:30:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:18:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75b557813fcf11a25538d23fe1de0d1cf1fb9dc99d43a1c54ea228dca996cae7`  
		Last Modified: Fri, 02 Oct 2026 01:34:17 GMT  
		Size: 1.2 MB (1212867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfe48d969d878c110f3b21574ade580dfffee64713836a2b307826cb274e442b`  
		Last Modified: Fri, 02 Oct 2026 01:34:17 GMT  
		Size: 5.9 MB (5911995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50744702b8e53a0cafefc9b55960d72c5f0bae00626388f8f52c2784926e184e`  
		Last Modified: Fri, 02 Oct 2026 01:34:17 GMT  
		Size: 98.0 KB (97953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2be6951d519d8e68d6ae87632a4b65e3ecc55686c1c00fed925e6a4e097df99f`  
		Last Modified: Fri, 02 Oct 2026 01:34:19 GMT  
		Size: 105.6 MB (105625459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:022cc4907bf5a12b531765cb8979b1a775f568a5396ad80f8bd32af24bfe7ab7`  
		Last Modified: Fri, 02 Oct 2026 01:34:18 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07420bcece04798f21e90f98ee882ff1dce134f13d7019dbcaa1a0e7caa17028`  
		Last Modified: Fri, 02 Oct 2026 02:31:34 GMT  
		Size: 95.8 MB (95835960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6fb31659d74b1b03ec8ac51f49f3b0928863045a662462ac275103a496ee088`  
		Last Modified: Fri, 02 Oct 2026 02:31:31 GMT  
		Size: 389.4 KB (389416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b45d9d03c465d67366f306d2b1abf490fa999669af5f3e361c4dd35c7a06713c`  
		Last Modified: Fri, 02 Oct 2026 02:31:31 GMT  
		Size: 2.6 KB (2643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5bf412a31c6bc935b585c861cc8d6a54b7433b28a8b5ebd072076d90df7d42e`  
		Last Modified: Fri, 02 Oct 2026 02:31:32 GMT  
		Size: 22.8 MB (22751140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72dcb29e7daf270b7c9154333948e2e6022f13755075180c7460734f9ce1d455`  
		Last Modified: Fri, 02 Oct 2026 03:21:40 GMT  
		Size: 660.2 MB (660162009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:2635e8dca4abc9f696ccc88cfefa503290dc4936e18fea837005f8e8cf20f690
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.1 MB (59056674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d11d9160b510e64c95f75fab5ed9329eaf8305986e855bceced9537f58bb193`

```dockerfile
```

-	Layers:
	-	`sha256:8989d4bf7780096c73d208939a9f08b779767a20cf630451aed3cc78e300b7bc`  
		Last Modified: Fri, 02 Oct 2026 03:21:30 GMT  
		Size: 59.0 MB (59047243 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:effd8ec6acf52d8b4b6a37a2c4f8746dbf2a9e9f1e86052d425f38d7a827d4bb`  
		Last Modified: Fri, 02 Oct 2026 03:21:27 GMT  
		Size: 9.4 KB (9431 bytes)  
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
$ docker pull ros@sha256:8135425379a118d936377a0c0c51c2fd33d0c8f1cca8bfd4b88c626a5d8f806e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-perception` - linux; amd64

```console
$ docker pull ros@sha256:e33bfb524d656a129657e9ea99d82d7c4e74abf56111d2e20bb29612a30af67d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1083975911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4d8ece9b1946a01c7379836d8cb06ef5282efe9f9735113c5b8db683066a83d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:33:05 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:18 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:23 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:09 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:34:09 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:34:09 GMT
ENV ROS_DISTRO=jazzy
# Fri, 02 Oct 2026 01:34:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:09 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:34:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:34:09 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:26 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:28 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:30 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:30:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:19:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36511fcaae4567766304af008756aa35d7783372c97a4986814397dd21925a7f`  
		Last Modified: Fri, 02 Oct 2026 01:34:37 GMT  
		Size: 683.6 KB (683588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8570520b7f3a785cf844c7aed36ed0f7b225433f9c859f0675a9e927b6ba0832`  
		Last Modified: Fri, 02 Oct 2026 01:34:37 GMT  
		Size: 9.1 MB (9119867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a737a9006d9c2b045837305c33443ea754a175b0e6124bce3e8ab8055b62c0`  
		Last Modified: Fri, 02 Oct 2026 01:34:37 GMT  
		Size: 95.0 KB (95041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7b07210c227e201d0d344b12f5bbb2bb7023b02554bbe612f67ed736f1e0130`  
		Last Modified: Fri, 02 Oct 2026 01:34:40 GMT  
		Size: 120.5 MB (120534508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:991d52dbe0d5266f18937c1e0d15154dcc13fdb800bbc742b621f109a0d25b28`  
		Last Modified: Fri, 02 Oct 2026 01:34:38 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b02610e3730d4b174ff31669e18767af30a38bb8d46de8971037b7201a31496`  
		Last Modified: Fri, 02 Oct 2026 02:31:29 GMT  
		Size: 110.2 MB (110244081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56c3c7b0669cf139d4466385352966568f18b93f9622d5df0560f1a8fc534e8c`  
		Last Modified: Fri, 02 Oct 2026 02:31:25 GMT  
		Size: 425.5 KB (425548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02bdbd59ab2b0ff75b7c76c65a2294d7bca49c1fe60c3e7313694d6fdf17ad7c`  
		Last Modified: Fri, 02 Oct 2026 02:31:25 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d85cb46e7f9e1987dbff0953b61e3d207e5dc4a4c09d33fe70377aa111a7b47b`  
		Last Modified: Fri, 02 Oct 2026 02:31:26 GMT  
		Size: 28.1 MB (28090293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19d4d25d9f87f348fee3af60c9ce7716be0f0100e42b908ba7959917bffd6936`  
		Last Modified: Fri, 02 Oct 2026 03:22:50 GMT  
		Size: 785.0 MB (785015678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception` - unknown; unknown

```console
$ docker pull ros@sha256:74ce26e4e73ff35a26010f3baefd5a993fdf2c1f2d16a52d94c4908fd0523834
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61119990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f35c76f29a56aeea3827e24c1097c0dd108f74775eac74b3a216ab9e522a2040`

```dockerfile
```

-	Layers:
	-	`sha256:ade56666efd5440d8f41f53a24789680b6b856bee8f329e11456e463eab191e5`  
		Last Modified: Fri, 02 Oct 2026 03:22:37 GMT  
		Size: 61.1 MB (61110651 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:48231cd7f2e6783dcbeb916c22d04139670a7078d336e92a3926560b29e2f585`  
		Last Modified: Fri, 02 Oct 2026 03:22:34 GMT  
		Size: 9.3 KB (9339 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7101cde85253ee44375f6cf26b197f84982149da9b174864eb99582e0b15f62a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **986.5 MB (986517932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de69d08514c646c2ed2faea445fe9f36aac949446fdc4c5702a04ec11acd9672`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:55 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:08 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:13 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:58 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:33:58 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:33:58 GMT
ENV ROS_DISTRO=jazzy
# Fri, 02 Oct 2026 01:33:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:58 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:33:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:33:58 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:40 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:42 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:31:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:18:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67678ff0249d2d6f797f1e59d0f94f273e3a087280667f828ab393d60f9c8bb7`  
		Last Modified: Fri, 02 Oct 2026 01:34:26 GMT  
		Size: 683.5 KB (683516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfd9c25488505afd3615c12ca0586cc6b2711036abeffbbba50fc0e876adb3ce`  
		Last Modified: Fri, 02 Oct 2026 01:34:27 GMT  
		Size: 9.0 MB (8990784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47eab992b03775030af3f4a2c503e795df95cd8cf0396e42661c47d2a71e0eef`  
		Last Modified: Fri, 02 Oct 2026 01:34:26 GMT  
		Size: 95.0 KB (94951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5682617504ebb80773d2faf85a796d24b412518cb98adf6d3c5758052dd114f`  
		Last Modified: Fri, 02 Oct 2026 01:34:30 GMT  
		Size: 115.4 MB (115378667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea7a1574b6b3a62efd1d75d62c70003738971f623f93b34f0eebcfaba401b13`  
		Last Modified: Fri, 02 Oct 2026 01:34:28 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1464792e2dcc03bfcc4a380f2db85d23190b68d3f2d80095dbdcc86f468cd9a`  
		Last Modified: Fri, 02 Oct 2026 02:31:40 GMT  
		Size: 105.7 MB (105678958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4b84fc58bc29d30ded586d328dcac888b1f355f7ee068dd61a3501e21c5ee18`  
		Last Modified: Fri, 02 Oct 2026 02:31:37 GMT  
		Size: 425.6 KB (425551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e4fe4a81959604b7aaa16fad152b936d65b546181d567296beebb24b37fe277`  
		Last Modified: Fri, 02 Oct 2026 02:31:37 GMT  
		Size: 2.7 KB (2671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4acb301d1f70c1439fe8ce12b4d688a40872e15ba3c5b2325b832afc6cc90a06`  
		Last Modified: Fri, 02 Oct 2026 02:31:39 GMT  
		Size: 27.2 MB (27194796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c24d94ab33f4423e35ed823683b7065cbf79643526a911e9b5be8ddb51c30e9`  
		Last Modified: Fri, 02 Oct 2026 03:22:06 GMT  
		Size: 699.1 MB (699127753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception` - unknown; unknown

```console
$ docker pull ros@sha256:fcda863f1e5acfedaadccf4d4138e21a67aa1d21c455ba07e65793bfb74af133
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61050590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5e6dc25106b2aff015003700b03899d509473af6c2c969b4910d2ea644e838e`

```dockerfile
```

-	Layers:
	-	`sha256:d8ea3c2d9031fd9d5f278e2101fc8f36ef03473eb8cf50a89bc6fe9943b6068f`  
		Last Modified: Fri, 02 Oct 2026 03:21:56 GMT  
		Size: 61.0 MB (61041171 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54a56f974102a6dbd4ea90819c15b6f074ee2eb1a8b9109b61205e2d871efc73`  
		Last Modified: Fri, 02 Oct 2026 03:21:53 GMT  
		Size: 9.4 KB (9419 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-perception-noble`

```console
$ docker pull ros@sha256:8135425379a118d936377a0c0c51c2fd33d0c8f1cca8bfd4b88c626a5d8f806e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-perception-noble` - linux; amd64

```console
$ docker pull ros@sha256:e33bfb524d656a129657e9ea99d82d7c4e74abf56111d2e20bb29612a30af67d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1083975911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4d8ece9b1946a01c7379836d8cb06ef5282efe9f9735113c5b8db683066a83d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:33:05 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:18 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:23 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:09 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:34:09 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:34:09 GMT
ENV ROS_DISTRO=jazzy
# Fri, 02 Oct 2026 01:34:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:09 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:34:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:34:09 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:26 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:28 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:30 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:30:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:19:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36511fcaae4567766304af008756aa35d7783372c97a4986814397dd21925a7f`  
		Last Modified: Fri, 02 Oct 2026 01:34:37 GMT  
		Size: 683.6 KB (683588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8570520b7f3a785cf844c7aed36ed0f7b225433f9c859f0675a9e927b6ba0832`  
		Last Modified: Fri, 02 Oct 2026 01:34:37 GMT  
		Size: 9.1 MB (9119867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a737a9006d9c2b045837305c33443ea754a175b0e6124bce3e8ab8055b62c0`  
		Last Modified: Fri, 02 Oct 2026 01:34:37 GMT  
		Size: 95.0 KB (95041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7b07210c227e201d0d344b12f5bbb2bb7023b02554bbe612f67ed736f1e0130`  
		Last Modified: Fri, 02 Oct 2026 01:34:40 GMT  
		Size: 120.5 MB (120534508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:991d52dbe0d5266f18937c1e0d15154dcc13fdb800bbc742b621f109a0d25b28`  
		Last Modified: Fri, 02 Oct 2026 01:34:38 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b02610e3730d4b174ff31669e18767af30a38bb8d46de8971037b7201a31496`  
		Last Modified: Fri, 02 Oct 2026 02:31:29 GMT  
		Size: 110.2 MB (110244081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56c3c7b0669cf139d4466385352966568f18b93f9622d5df0560f1a8fc534e8c`  
		Last Modified: Fri, 02 Oct 2026 02:31:25 GMT  
		Size: 425.5 KB (425548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02bdbd59ab2b0ff75b7c76c65a2294d7bca49c1fe60c3e7313694d6fdf17ad7c`  
		Last Modified: Fri, 02 Oct 2026 02:31:25 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d85cb46e7f9e1987dbff0953b61e3d207e5dc4a4c09d33fe70377aa111a7b47b`  
		Last Modified: Fri, 02 Oct 2026 02:31:26 GMT  
		Size: 28.1 MB (28090293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19d4d25d9f87f348fee3af60c9ce7716be0f0100e42b908ba7959917bffd6936`  
		Last Modified: Fri, 02 Oct 2026 03:22:50 GMT  
		Size: 785.0 MB (785015678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:74ce26e4e73ff35a26010f3baefd5a993fdf2c1f2d16a52d94c4908fd0523834
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61119990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f35c76f29a56aeea3827e24c1097c0dd108f74775eac74b3a216ab9e522a2040`

```dockerfile
```

-	Layers:
	-	`sha256:ade56666efd5440d8f41f53a24789680b6b856bee8f329e11456e463eab191e5`  
		Last Modified: Fri, 02 Oct 2026 03:22:37 GMT  
		Size: 61.1 MB (61110651 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:48231cd7f2e6783dcbeb916c22d04139670a7078d336e92a3926560b29e2f585`  
		Last Modified: Fri, 02 Oct 2026 03:22:34 GMT  
		Size: 9.3 KB (9339 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-perception-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7101cde85253ee44375f6cf26b197f84982149da9b174864eb99582e0b15f62a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **986.5 MB (986517932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de69d08514c646c2ed2faea445fe9f36aac949446fdc4c5702a04ec11acd9672`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:55 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:08 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:13 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:58 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:33:58 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:33:58 GMT
ENV ROS_DISTRO=jazzy
# Fri, 02 Oct 2026 01:33:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:58 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:33:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:33:58 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:40 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:42 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:31:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:18:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67678ff0249d2d6f797f1e59d0f94f273e3a087280667f828ab393d60f9c8bb7`  
		Last Modified: Fri, 02 Oct 2026 01:34:26 GMT  
		Size: 683.5 KB (683516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfd9c25488505afd3615c12ca0586cc6b2711036abeffbbba50fc0e876adb3ce`  
		Last Modified: Fri, 02 Oct 2026 01:34:27 GMT  
		Size: 9.0 MB (8990784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47eab992b03775030af3f4a2c503e795df95cd8cf0396e42661c47d2a71e0eef`  
		Last Modified: Fri, 02 Oct 2026 01:34:26 GMT  
		Size: 95.0 KB (94951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5682617504ebb80773d2faf85a796d24b412518cb98adf6d3c5758052dd114f`  
		Last Modified: Fri, 02 Oct 2026 01:34:30 GMT  
		Size: 115.4 MB (115378667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea7a1574b6b3a62efd1d75d62c70003738971f623f93b34f0eebcfaba401b13`  
		Last Modified: Fri, 02 Oct 2026 01:34:28 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1464792e2dcc03bfcc4a380f2db85d23190b68d3f2d80095dbdcc86f468cd9a`  
		Last Modified: Fri, 02 Oct 2026 02:31:40 GMT  
		Size: 105.7 MB (105678958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4b84fc58bc29d30ded586d328dcac888b1f355f7ee068dd61a3501e21c5ee18`  
		Last Modified: Fri, 02 Oct 2026 02:31:37 GMT  
		Size: 425.6 KB (425551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e4fe4a81959604b7aaa16fad152b936d65b546181d567296beebb24b37fe277`  
		Last Modified: Fri, 02 Oct 2026 02:31:37 GMT  
		Size: 2.7 KB (2671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4acb301d1f70c1439fe8ce12b4d688a40872e15ba3c5b2325b832afc6cc90a06`  
		Last Modified: Fri, 02 Oct 2026 02:31:39 GMT  
		Size: 27.2 MB (27194796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c24d94ab33f4423e35ed823683b7065cbf79643526a911e9b5be8ddb51c30e9`  
		Last Modified: Fri, 02 Oct 2026 03:22:06 GMT  
		Size: 699.1 MB (699127753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:fcda863f1e5acfedaadccf4d4138e21a67aa1d21c455ba07e65793bfb74af133
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61050590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5e6dc25106b2aff015003700b03899d509473af6c2c969b4910d2ea644e838e`

```dockerfile
```

-	Layers:
	-	`sha256:d8ea3c2d9031fd9d5f278e2101fc8f36ef03473eb8cf50a89bc6fe9943b6068f`  
		Last Modified: Fri, 02 Oct 2026 03:21:56 GMT  
		Size: 61.0 MB (61041171 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54a56f974102a6dbd4ea90819c15b6f074ee2eb1a8b9109b61205e2d871efc73`  
		Last Modified: Fri, 02 Oct 2026 03:21:53 GMT  
		Size: 9.4 KB (9419 bytes)  
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
$ docker pull ros@sha256:e40579c9ef8e2c20fe488f7a20b8461d26c08d012aa45f26666d152040b66ec3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-perception` - linux; amd64

```console
$ docker pull ros@sha256:2136a2dd7960b61cf0c9dad55aedc22db376a59d3efd2cbb9dd25351e78bd6b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1084453448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:378f97a6f34266bd01463d68f69e248d012d028a70b15e051d846db469ae1bc4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:34:30 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:40 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:46 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:29 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:35:29 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:35:29 GMT
ENV ROS_DISTRO=kilted
# Fri, 02 Oct 2026 01:35:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:29 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:35:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:35:29 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:20 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:22 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:30:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:19:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5563c391db43fc82e6bdcc418d662e4eb482f5d89013455cc9356179f7a02bc9`  
		Last Modified: Fri, 02 Oct 2026 01:35:55 GMT  
		Size: 683.6 KB (683588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09e0fd67f56c9b8fb7ccc6f2796fe6e7e778283859c379288b7bb6214aa6ab7f`  
		Last Modified: Fri, 02 Oct 2026 01:35:56 GMT  
		Size: 9.1 MB (9119798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37029bc23993959b155a05655e0d4bed5f44b9cf776181979cb7a54c6acbc7e2`  
		Last Modified: Fri, 02 Oct 2026 01:35:55 GMT  
		Size: 95.0 KB (95030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbce3483b4099b03d1755400f57a426fa67c95c7a59882063de8ab3669ff8ea3`  
		Last Modified: Fri, 02 Oct 2026 01:35:59 GMT  
		Size: 121.2 MB (121225747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b116718cb37da315861de1825abf875402db573e504136294e6f9e8da413e1a`  
		Last Modified: Fri, 02 Oct 2026 01:35:57 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e21fe9979fdefc4c368c3042813e69ce3d6c3009eb9d75476ececfbd14800df9`  
		Last Modified: Fri, 02 Oct 2026 02:31:20 GMT  
		Size: 110.2 MB (110246264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9730f75c4e1ffae93d165f5348e9d1c924d54f1442802a8db411aa4eedf60e1f`  
		Last Modified: Fri, 02 Oct 2026 02:31:16 GMT  
		Size: 374.8 KB (374750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00b9036cff09e6df02fe5ae7a1be0c35dc19c8ca14f73a1021e6fbeddbb616d2`  
		Last Modified: Fri, 02 Oct 2026 02:31:16 GMT  
		Size: 2.6 KB (2650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b299fce2de255ea052298856f1670472fedb36b3250ce00c1a78abd61ec73ee7`  
		Last Modified: Fri, 02 Oct 2026 02:31:18 GMT  
		Size: 27.9 MB (27917136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccd57061453766f35cfb4fe0e0b9e81b5f98f1410c708354dc4a2f20410299ee`  
		Last Modified: Fri, 02 Oct 2026 03:22:14 GMT  
		Size: 785.0 MB (785023867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception` - unknown; unknown

```console
$ docker pull ros@sha256:c272f7c9bc4764eef4f51d7eb0d8045794b8969a7531f19a40dc306dfa6f987e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61079062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22dfe58dcbde0fdcf740ff9a62358ea35f4ad31cf05dcf7fbd972d7edfeaf701`

```dockerfile
```

-	Layers:
	-	`sha256:fafff7bc257c6580497d9cc71010a11fc6a60a789b2e89fa333558f9fb2341bd`  
		Last Modified: Fri, 02 Oct 2026 03:22:02 GMT  
		Size: 61.1 MB (61069711 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70ceb47e3c94fc29008b8a7a36c34f832df071478d269d0b0b2062ae9f87529f`  
		Last Modified: Fri, 02 Oct 2026 03:21:59 GMT  
		Size: 9.4 KB (9351 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:863870a8d2f69d21a5c5b95180894bc39f60c302ff976c02f9e21ebb467b96e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **987.0 MB (987000642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff1bf13ae8db63380bdb1c2e67a441844fd08001a8e4d17e3df1b9eed4e0c5c4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:34:32 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:42 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:50 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:35 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:35:35 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:35:35 GMT
ENV ROS_DISTRO=kilted
# Fri, 02 Oct 2026 01:35:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:35 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:35:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:35:35 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:39 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:41 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:31:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:19:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52609e10f692ce6db7dcbe41c6be60f774e7f51a8da7759a03a30511b1f14300`  
		Last Modified: Fri, 02 Oct 2026 01:36:04 GMT  
		Size: 683.5 KB (683513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af047e65c7a6775801a768388ac7588aca0cb7707f17935abb81a94d8e1b8e1c`  
		Last Modified: Fri, 02 Oct 2026 01:36:05 GMT  
		Size: 9.0 MB (8990749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97478c41b5170f50241a3dc7d19c818052a26bb12c458995d376adb3b81bf3aa`  
		Last Modified: Fri, 02 Oct 2026 01:36:04 GMT  
		Size: 94.9 KB (94930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29d0e10d2229a685140b12b1cb5bcb1d987196d75d24d861d242f0ad9a20459d`  
		Last Modified: Fri, 02 Oct 2026 01:36:07 GMT  
		Size: 116.0 MB (116020176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e925237a6de988f76007767335cda50adbf6230ef72e2001d08393dc9fc755f1`  
		Last Modified: Fri, 02 Oct 2026 01:36:05 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c3f8fb37ca38ff6ea21e120238afdd9b6933a01e6c4c562ee231a1b8fb2ddcc`  
		Last Modified: Fri, 02 Oct 2026 02:31:42 GMT  
		Size: 105.7 MB (105681048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:def8fe8730e81a63b5bfc284073d9a29e2091272fe4c09ecb492122c8db090e6`  
		Last Modified: Fri, 02 Oct 2026 02:31:37 GMT  
		Size: 374.8 KB (374755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0332d327a027c3e759491ef0d979bed4016fa4e8e86539c611bdc3eb1f89dc03`  
		Last Modified: Fri, 02 Oct 2026 02:31:38 GMT  
		Size: 2.7 KB (2658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea4f6b135e971315db07bf581ab35e36123cca2ec91fc65efd96964d81f88f29`  
		Last Modified: Fri, 02 Oct 2026 02:31:39 GMT  
		Size: 27.0 MB (27028264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d90aa875937c2b02cce801181ce4e95076482eb692574aea532a5e8a767f06c2`  
		Last Modified: Fri, 02 Oct 2026 03:21:58 GMT  
		Size: 699.2 MB (699184266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception` - unknown; unknown

```console
$ docker pull ros@sha256:326bcca8af239d62878b5d4c57ce8118b4e89895f15c97c93dbe608df19e6803
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61009668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dc31a6d7b13a69be7ebd44de3565c37241837f2eb225a5fda6a5cf401395c39`

```dockerfile
```

-	Layers:
	-	`sha256:0f373e551ac63d5460422cf1bb81373cab8b883a0d2035448eb9695431bc125a`  
		Last Modified: Fri, 02 Oct 2026 03:21:48 GMT  
		Size: 61.0 MB (61000236 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:389a188d561aeff85f554afb114f8e7c66213c890d5d11978e7bb4e719695479`  
		Last Modified: Fri, 02 Oct 2026 03:21:45 GMT  
		Size: 9.4 KB (9432 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-perception-noble`

```console
$ docker pull ros@sha256:e40579c9ef8e2c20fe488f7a20b8461d26c08d012aa45f26666d152040b66ec3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-perception-noble` - linux; amd64

```console
$ docker pull ros@sha256:2136a2dd7960b61cf0c9dad55aedc22db376a59d3efd2cbb9dd25351e78bd6b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1084453448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:378f97a6f34266bd01463d68f69e248d012d028a70b15e051d846db469ae1bc4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:34:30 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:40 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:46 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:29 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:35:29 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:35:29 GMT
ENV ROS_DISTRO=kilted
# Fri, 02 Oct 2026 01:35:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:29 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:35:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:35:29 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:20 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:22 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:30:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:19:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5563c391db43fc82e6bdcc418d662e4eb482f5d89013455cc9356179f7a02bc9`  
		Last Modified: Fri, 02 Oct 2026 01:35:55 GMT  
		Size: 683.6 KB (683588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09e0fd67f56c9b8fb7ccc6f2796fe6e7e778283859c379288b7bb6214aa6ab7f`  
		Last Modified: Fri, 02 Oct 2026 01:35:56 GMT  
		Size: 9.1 MB (9119798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37029bc23993959b155a05655e0d4bed5f44b9cf776181979cb7a54c6acbc7e2`  
		Last Modified: Fri, 02 Oct 2026 01:35:55 GMT  
		Size: 95.0 KB (95030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbce3483b4099b03d1755400f57a426fa67c95c7a59882063de8ab3669ff8ea3`  
		Last Modified: Fri, 02 Oct 2026 01:35:59 GMT  
		Size: 121.2 MB (121225747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b116718cb37da315861de1825abf875402db573e504136294e6f9e8da413e1a`  
		Last Modified: Fri, 02 Oct 2026 01:35:57 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e21fe9979fdefc4c368c3042813e69ce3d6c3009eb9d75476ececfbd14800df9`  
		Last Modified: Fri, 02 Oct 2026 02:31:20 GMT  
		Size: 110.2 MB (110246264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9730f75c4e1ffae93d165f5348e9d1c924d54f1442802a8db411aa4eedf60e1f`  
		Last Modified: Fri, 02 Oct 2026 02:31:16 GMT  
		Size: 374.8 KB (374750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00b9036cff09e6df02fe5ae7a1be0c35dc19c8ca14f73a1021e6fbeddbb616d2`  
		Last Modified: Fri, 02 Oct 2026 02:31:16 GMT  
		Size: 2.6 KB (2650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b299fce2de255ea052298856f1670472fedb36b3250ce00c1a78abd61ec73ee7`  
		Last Modified: Fri, 02 Oct 2026 02:31:18 GMT  
		Size: 27.9 MB (27917136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccd57061453766f35cfb4fe0e0b9e81b5f98f1410c708354dc4a2f20410299ee`  
		Last Modified: Fri, 02 Oct 2026 03:22:14 GMT  
		Size: 785.0 MB (785023867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:c272f7c9bc4764eef4f51d7eb0d8045794b8969a7531f19a40dc306dfa6f987e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61079062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22dfe58dcbde0fdcf740ff9a62358ea35f4ad31cf05dcf7fbd972d7edfeaf701`

```dockerfile
```

-	Layers:
	-	`sha256:fafff7bc257c6580497d9cc71010a11fc6a60a789b2e89fa333558f9fb2341bd`  
		Last Modified: Fri, 02 Oct 2026 03:22:02 GMT  
		Size: 61.1 MB (61069711 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70ceb47e3c94fc29008b8a7a36c34f832df071478d269d0b0b2062ae9f87529f`  
		Last Modified: Fri, 02 Oct 2026 03:21:59 GMT  
		Size: 9.4 KB (9351 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-perception-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:863870a8d2f69d21a5c5b95180894bc39f60c302ff976c02f9e21ebb467b96e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **987.0 MB (987000642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff1bf13ae8db63380bdb1c2e67a441844fd08001a8e4d17e3df1b9eed4e0c5c4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:34:32 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:42 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:50 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:35 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:35:35 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:35:35 GMT
ENV ROS_DISTRO=kilted
# Fri, 02 Oct 2026 01:35:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:35 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:35:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:35:35 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:39 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:41 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:31:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:19:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52609e10f692ce6db7dcbe41c6be60f774e7f51a8da7759a03a30511b1f14300`  
		Last Modified: Fri, 02 Oct 2026 01:36:04 GMT  
		Size: 683.5 KB (683513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af047e65c7a6775801a768388ac7588aca0cb7707f17935abb81a94d8e1b8e1c`  
		Last Modified: Fri, 02 Oct 2026 01:36:05 GMT  
		Size: 9.0 MB (8990749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97478c41b5170f50241a3dc7d19c818052a26bb12c458995d376adb3b81bf3aa`  
		Last Modified: Fri, 02 Oct 2026 01:36:04 GMT  
		Size: 94.9 KB (94930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29d0e10d2229a685140b12b1cb5bcb1d987196d75d24d861d242f0ad9a20459d`  
		Last Modified: Fri, 02 Oct 2026 01:36:07 GMT  
		Size: 116.0 MB (116020176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e925237a6de988f76007767335cda50adbf6230ef72e2001d08393dc9fc755f1`  
		Last Modified: Fri, 02 Oct 2026 01:36:05 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c3f8fb37ca38ff6ea21e120238afdd9b6933a01e6c4c562ee231a1b8fb2ddcc`  
		Last Modified: Fri, 02 Oct 2026 02:31:42 GMT  
		Size: 105.7 MB (105681048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:def8fe8730e81a63b5bfc284073d9a29e2091272fe4c09ecb492122c8db090e6`  
		Last Modified: Fri, 02 Oct 2026 02:31:37 GMT  
		Size: 374.8 KB (374755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0332d327a027c3e759491ef0d979bed4016fa4e8e86539c611bdc3eb1f89dc03`  
		Last Modified: Fri, 02 Oct 2026 02:31:38 GMT  
		Size: 2.7 KB (2658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea4f6b135e971315db07bf581ab35e36123cca2ec91fc65efd96964d81f88f29`  
		Last Modified: Fri, 02 Oct 2026 02:31:39 GMT  
		Size: 27.0 MB (27028264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d90aa875937c2b02cce801181ce4e95076482eb692574aea532a5e8a767f06c2`  
		Last Modified: Fri, 02 Oct 2026 03:21:58 GMT  
		Size: 699.2 MB (699184266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:326bcca8af239d62878b5d4c57ce8118b4e89895f15c97c93dbe608df19e6803
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61009668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dc31a6d7b13a69be7ebd44de3565c37241837f2eb225a5fda6a5cf401395c39`

```dockerfile
```

-	Layers:
	-	`sha256:0f373e551ac63d5460422cf1bb81373cab8b883a0d2035448eb9695431bc125a`  
		Last Modified: Fri, 02 Oct 2026 03:21:48 GMT  
		Size: 61.0 MB (61000236 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:389a188d561aeff85f554afb114f8e7c66213c890d5d11978e7bb4e719695479`  
		Last Modified: Fri, 02 Oct 2026 03:21:45 GMT  
		Size: 9.4 KB (9432 bytes)  
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
$ docker pull ros@sha256:5250522494a7714654d9dab463fd84bbf523657bac7faee2b02c9a1cbda2a548
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-base-noble` - linux; amd64

```console
$ docker pull ros@sha256:e797233622ddb8771b9b17cb8182adb43c9a506a99fbea2c8ca4033077572fb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.4 MB (299429581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:562e9fa18338286b157490a6487a71bc148849978ad4612fdacfa9bed2f5e301`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:34:30 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:40 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:46 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:29 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:35:29 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:35:29 GMT
ENV ROS_DISTRO=kilted
# Fri, 02 Oct 2026 01:35:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:29 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:35:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:35:29 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:20 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:22 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:30:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5563c391db43fc82e6bdcc418d662e4eb482f5d89013455cc9356179f7a02bc9`  
		Last Modified: Fri, 02 Oct 2026 01:35:55 GMT  
		Size: 683.6 KB (683588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09e0fd67f56c9b8fb7ccc6f2796fe6e7e778283859c379288b7bb6214aa6ab7f`  
		Last Modified: Fri, 02 Oct 2026 01:35:56 GMT  
		Size: 9.1 MB (9119798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37029bc23993959b155a05655e0d4bed5f44b9cf776181979cb7a54c6acbc7e2`  
		Last Modified: Fri, 02 Oct 2026 01:35:55 GMT  
		Size: 95.0 KB (95030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbce3483b4099b03d1755400f57a426fa67c95c7a59882063de8ab3669ff8ea3`  
		Last Modified: Fri, 02 Oct 2026 01:35:59 GMT  
		Size: 121.2 MB (121225747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b116718cb37da315861de1825abf875402db573e504136294e6f9e8da413e1a`  
		Last Modified: Fri, 02 Oct 2026 01:35:57 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e21fe9979fdefc4c368c3042813e69ce3d6c3009eb9d75476ececfbd14800df9`  
		Last Modified: Fri, 02 Oct 2026 02:31:20 GMT  
		Size: 110.2 MB (110246264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9730f75c4e1ffae93d165f5348e9d1c924d54f1442802a8db411aa4eedf60e1f`  
		Last Modified: Fri, 02 Oct 2026 02:31:16 GMT  
		Size: 374.8 KB (374750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00b9036cff09e6df02fe5ae7a1be0c35dc19c8ca14f73a1021e6fbeddbb616d2`  
		Last Modified: Fri, 02 Oct 2026 02:31:16 GMT  
		Size: 2.6 KB (2650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b299fce2de255ea052298856f1670472fedb36b3250ce00c1a78abd61ec73ee7`  
		Last Modified: Fri, 02 Oct 2026 02:31:18 GMT  
		Size: 27.9 MB (27917136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:94f6c4bed3e686526585392ecb2d921b8d29edf62eb13aedd8285b7ddfb92964
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24892435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cf65527c32d9085b702d18dbcb96f4c53a831950434f9175a0d74776921a670`

```dockerfile
```

-	Layers:
	-	`sha256:f6fac9845334fb4b0074e1cd9684eaf525a9f0909c77e01d324a501146d8d6f3`  
		Last Modified: Fri, 02 Oct 2026 02:31:18 GMT  
		Size: 24.9 MB (24876088 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b404b4a5eb7676e8cb862b87226e1eac5153b50e6e2274292f0b9aaae5b6c152`  
		Last Modified: Fri, 02 Oct 2026 02:31:16 GMT  
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
$ docker pull ros@sha256:360e0f0cd35d2f0230854878c6a329ceab99c9f559552196be93655cdb3004db
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:latest` - linux; amd64

```console
$ docker pull ros@sha256:16d9b64d0bee68954a46be5c0d039802fe58da834758d8a9de6e4e03216d9923
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.8 MB (343750117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bec94f16b7711f3e2d9f3b0bc641a3515190c0377ce50ef249fd81f19be415d1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9550.tar --tag 26.04
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9550.tar
# Fri, 02 Oct 2026 01:34:52 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:06 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:11 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:06 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:36:06 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:36:06 GMT
ENV ROS_DISTRO=lyrical
# Fri, 02 Oct 2026 01:36:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:06 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:36:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:36:06 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:38 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:40 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:42 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:31:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4e07a0f12b2c009f98326fa391e869bd52fc63728c482400af6cb752bc16744b`  
		Last Modified: Sun, 27 Sep 2026 12:12:08 GMT  
		Size: 41.8 MB (41837521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ad70e463aa4a17833d00d6d5d346c895ebb66fee637eefd67024dc6cdc2f1c`  
		Last Modified: Sun, 27 Sep 2026 12:12:11 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:926eb5415bf6bffd4436bd8a537ec16c50cd960b6add3b205418af85634dbdf8`  
		Last Modified: Fri, 02 Oct 2026 01:36:48 GMT  
		Size: 741.6 KB (741646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feaf1ebf6af3e1af497aab7ba60bc84aa2b37e4cbdc09669cde43999491689e6`  
		Last Modified: Fri, 02 Oct 2026 01:36:49 GMT  
		Size: 12.8 MB (12760549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:032a1ae34c64fdaf74f088ab002a735ad49d44757b64be049fc9a1f6c4e48f7e`  
		Last Modified: Fri, 02 Oct 2026 01:36:48 GMT  
		Size: 91.9 KB (91945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3220e8ca7ac7094a4dbee43adbe2b0b1e442adbcf4edb97cae2bba46253663be`  
		Last Modified: Fri, 02 Oct 2026 01:36:52 GMT  
		Size: 137.1 MB (137067384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fadcda85dbaa7d14f94edc054397b63249f1149db57171a57a8706e8cfb54b4`  
		Last Modified: Fri, 02 Oct 2026 01:36:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6dcfd1466c6259724bd77e2bc42226e07b7f3b4c12f51be3164cea5bbb578dc`  
		Last Modified: Fri, 02 Oct 2026 02:31:54 GMT  
		Size: 124.9 MB (124919609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d1d5891600115b576a648f3d092b333d0974ec76a283290362f5373b935d9a1`  
		Last Modified: Fri, 02 Oct 2026 02:31:51 GMT  
		Size: 402.7 KB (402677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b66351cc45643a5aca93391937b85b1d250f9778f44700877ff7243f567100f`  
		Last Modified: Fri, 02 Oct 2026 02:31:51 GMT  
		Size: 130.9 KB (130916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29567fedc62aa5c320a4e34d37fb194a921bbcfa7c74c23379968ffb9d060cab`  
		Last Modified: Fri, 02 Oct 2026 02:31:52 GMT  
		Size: 25.8 MB (25797287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:latest` - unknown; unknown

```console
$ docker pull ros@sha256:795a5d138a63d1658461ee9114f65e139042a52dcd4b38a53b7b08fec2807441
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29194556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f15a996bf91fc33ef4f85f34fa56e92dfcba9e0321a5ffa6ef918d04d11156e`

```dockerfile
```

-	Layers:
	-	`sha256:963eb5c5b35d21b5a6646064d2cc34d72e7a98ce214d0ae14e681e9430bfeb44`  
		Last Modified: Fri, 02 Oct 2026 02:31:52 GMT  
		Size: 29.2 MB (29177101 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67c972f030b4664d8540ca707c7fd3459a4b11dddf9c4b98de5e9bc14de30a1e`  
		Last Modified: Fri, 02 Oct 2026 02:31:51 GMT  
		Size: 17.5 KB (17455 bytes)  
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
$ docker pull ros@sha256:360e0f0cd35d2f0230854878c6a329ceab99c9f559552196be93655cdb3004db
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical` - linux; amd64

```console
$ docker pull ros@sha256:16d9b64d0bee68954a46be5c0d039802fe58da834758d8a9de6e4e03216d9923
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.8 MB (343750117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bec94f16b7711f3e2d9f3b0bc641a3515190c0377ce50ef249fd81f19be415d1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9550.tar --tag 26.04
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9550.tar
# Fri, 02 Oct 2026 01:34:52 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:06 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:11 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:06 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:36:06 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:36:06 GMT
ENV ROS_DISTRO=lyrical
# Fri, 02 Oct 2026 01:36:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:06 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:36:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:36:06 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:38 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:40 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:42 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:31:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4e07a0f12b2c009f98326fa391e869bd52fc63728c482400af6cb752bc16744b`  
		Last Modified: Sun, 27 Sep 2026 12:12:08 GMT  
		Size: 41.8 MB (41837521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ad70e463aa4a17833d00d6d5d346c895ebb66fee637eefd67024dc6cdc2f1c`  
		Last Modified: Sun, 27 Sep 2026 12:12:11 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:926eb5415bf6bffd4436bd8a537ec16c50cd960b6add3b205418af85634dbdf8`  
		Last Modified: Fri, 02 Oct 2026 01:36:48 GMT  
		Size: 741.6 KB (741646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feaf1ebf6af3e1af497aab7ba60bc84aa2b37e4cbdc09669cde43999491689e6`  
		Last Modified: Fri, 02 Oct 2026 01:36:49 GMT  
		Size: 12.8 MB (12760549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:032a1ae34c64fdaf74f088ab002a735ad49d44757b64be049fc9a1f6c4e48f7e`  
		Last Modified: Fri, 02 Oct 2026 01:36:48 GMT  
		Size: 91.9 KB (91945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3220e8ca7ac7094a4dbee43adbe2b0b1e442adbcf4edb97cae2bba46253663be`  
		Last Modified: Fri, 02 Oct 2026 01:36:52 GMT  
		Size: 137.1 MB (137067384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fadcda85dbaa7d14f94edc054397b63249f1149db57171a57a8706e8cfb54b4`  
		Last Modified: Fri, 02 Oct 2026 01:36:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6dcfd1466c6259724bd77e2bc42226e07b7f3b4c12f51be3164cea5bbb578dc`  
		Last Modified: Fri, 02 Oct 2026 02:31:54 GMT  
		Size: 124.9 MB (124919609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d1d5891600115b576a648f3d092b333d0974ec76a283290362f5373b935d9a1`  
		Last Modified: Fri, 02 Oct 2026 02:31:51 GMT  
		Size: 402.7 KB (402677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b66351cc45643a5aca93391937b85b1d250f9778f44700877ff7243f567100f`  
		Last Modified: Fri, 02 Oct 2026 02:31:51 GMT  
		Size: 130.9 KB (130916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29567fedc62aa5c320a4e34d37fb194a921bbcfa7c74c23379968ffb9d060cab`  
		Last Modified: Fri, 02 Oct 2026 02:31:52 GMT  
		Size: 25.8 MB (25797287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical` - unknown; unknown

```console
$ docker pull ros@sha256:795a5d138a63d1658461ee9114f65e139042a52dcd4b38a53b7b08fec2807441
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29194556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f15a996bf91fc33ef4f85f34fa56e92dfcba9e0321a5ffa6ef918d04d11156e`

```dockerfile
```

-	Layers:
	-	`sha256:963eb5c5b35d21b5a6646064d2cc34d72e7a98ce214d0ae14e681e9430bfeb44`  
		Last Modified: Fri, 02 Oct 2026 02:31:52 GMT  
		Size: 29.2 MB (29177101 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67c972f030b4664d8540ca707c7fd3459a4b11dddf9c4b98de5e9bc14de30a1e`  
		Last Modified: Fri, 02 Oct 2026 02:31:51 GMT  
		Size: 17.5 KB (17455 bytes)  
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
$ docker pull ros@sha256:63387fcddde3142eca0205a6153e96331bb789027016a2f66aeab8ac0a5d79ef
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-perception` - linux; amd64

```console
$ docker pull ros@sha256:d37dcbf630fa184b4553de0765348077bbb5e65f192c96bc87dd9d822091dd7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1532382919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a8bb76d5967f6599f58d7469f7ac910cd4d017267be79ad97553fc07010c5a1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9550.tar --tag 26.04
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9550.tar
# Fri, 02 Oct 2026 01:34:52 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:06 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:11 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:06 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:36:06 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:36:06 GMT
ENV ROS_DISTRO=lyrical
# Fri, 02 Oct 2026 01:36:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:06 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:36:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:36:06 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:38 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:40 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:42 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:31:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:21:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4e07a0f12b2c009f98326fa391e869bd52fc63728c482400af6cb752bc16744b`  
		Last Modified: Sun, 27 Sep 2026 12:12:08 GMT  
		Size: 41.8 MB (41837521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ad70e463aa4a17833d00d6d5d346c895ebb66fee637eefd67024dc6cdc2f1c`  
		Last Modified: Sun, 27 Sep 2026 12:12:11 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:926eb5415bf6bffd4436bd8a537ec16c50cd960b6add3b205418af85634dbdf8`  
		Last Modified: Fri, 02 Oct 2026 01:36:48 GMT  
		Size: 741.6 KB (741646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feaf1ebf6af3e1af497aab7ba60bc84aa2b37e4cbdc09669cde43999491689e6`  
		Last Modified: Fri, 02 Oct 2026 01:36:49 GMT  
		Size: 12.8 MB (12760549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:032a1ae34c64fdaf74f088ab002a735ad49d44757b64be049fc9a1f6c4e48f7e`  
		Last Modified: Fri, 02 Oct 2026 01:36:48 GMT  
		Size: 91.9 KB (91945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3220e8ca7ac7094a4dbee43adbe2b0b1e442adbcf4edb97cae2bba46253663be`  
		Last Modified: Fri, 02 Oct 2026 01:36:52 GMT  
		Size: 137.1 MB (137067384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fadcda85dbaa7d14f94edc054397b63249f1149db57171a57a8706e8cfb54b4`  
		Last Modified: Fri, 02 Oct 2026 01:36:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6dcfd1466c6259724bd77e2bc42226e07b7f3b4c12f51be3164cea5bbb578dc`  
		Last Modified: Fri, 02 Oct 2026 02:31:54 GMT  
		Size: 124.9 MB (124919609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d1d5891600115b576a648f3d092b333d0974ec76a283290362f5373b935d9a1`  
		Last Modified: Fri, 02 Oct 2026 02:31:51 GMT  
		Size: 402.7 KB (402677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b66351cc45643a5aca93391937b85b1d250f9778f44700877ff7243f567100f`  
		Last Modified: Fri, 02 Oct 2026 02:31:51 GMT  
		Size: 130.9 KB (130916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29567fedc62aa5c320a4e34d37fb194a921bbcfa7c74c23379968ffb9d060cab`  
		Last Modified: Fri, 02 Oct 2026 02:31:52 GMT  
		Size: 25.8 MB (25797287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7482652f2eddfd93255597fb0825c80cef30d9be8ca18ffe7d6a09d13ae7ccd6`  
		Last Modified: Fri, 02 Oct 2026 03:26:17 GMT  
		Size: 1.2 GB (1188632802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception` - unknown; unknown

```console
$ docker pull ros@sha256:99477f7fe5bb0298bf53ddb9607424e475c215372a1bc02b1ec4ef91c310dacc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64396866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f20680a10dc45d903ff09b1b683ed5ea6d39fbdfd6bbe18960c2b24f542cc41`

```dockerfile
```

-	Layers:
	-	`sha256:316dd930d5d64944e42d0fcff00da67b21b938a0bd23e14ade6de6eb1f4b14f4`  
		Last Modified: Fri, 02 Oct 2026 03:25:58 GMT  
		Size: 64.4 MB (64387171 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:acf80ad6255fe329d7fee9ef694c45e12737ea57ad9ded80449d5566f77cda64`  
		Last Modified: Fri, 02 Oct 2026 03:25:56 GMT  
		Size: 9.7 KB (9695 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:29b1fbf04972225a117d882d62644c7c74e40afa138a598f936b933e1126fdd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1475857446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00e02767685f540a4b84fd732699a498cb77c44849b066d1946d68792a10e48b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9649.tar --tag 26.04
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9649.tar
# Fri, 02 Oct 2026 01:34:43 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:57 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:02 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:59 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:35:59 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:35:59 GMT
ENV ROS_DISTRO=lyrical
# Fri, 02 Oct 2026 01:35:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:00 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:36:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:36:00 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:52 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:54 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:31:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:19:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:06db5ba23986104cd78dcfa853ddf2354c943d2efefc333eca2b447d4559d89c`  
		Last Modified: Sun, 27 Sep 2026 12:12:17 GMT  
		Size: 40.9 MB (40864755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa77813dc560f299656013d742628128cac51fdfda979349e96a9f09497170f`  
		Last Modified: Sun, 27 Sep 2026 12:12:20 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869cf326251e0827b2667debc67ee8342039fc72446171da41aa363cbc69ee77`  
		Last Modified: Fri, 02 Oct 2026 01:36:38 GMT  
		Size: 742.0 KB (742033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:048f3b7d1aa8f38d63e22c3baa5f05eddb7c0640a72ebf9805100d220c95aa4e`  
		Last Modified: Fri, 02 Oct 2026 01:36:39 GMT  
		Size: 12.9 MB (12937859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51e9fbcbdfbe56b627c2f1a3e96927da4ebaac13037c0d2c3336a97883a452bd`  
		Last Modified: Fri, 02 Oct 2026 01:36:38 GMT  
		Size: 92.4 KB (92373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c115d3385eef7b87b3f0c4269c85bbe05fb537b1ea82bfd03b8bf17e489c6a3`  
		Last Modified: Fri, 02 Oct 2026 01:36:42 GMT  
		Size: 130.4 MB (130417206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73cd57eb074ccb792b190609a3f59aba75c4711588f4f4efa70bc1abfdd6b527`  
		Last Modified: Fri, 02 Oct 2026 01:36:39 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76dd603b75fb2c72154362bc92e68f84a3920a7aa30fca35bcd73de9f4a069cc`  
		Last Modified: Fri, 02 Oct 2026 02:32:19 GMT  
		Size: 118.3 MB (118332255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d4d2654d414d427efa650606cedbcc5bfa58ffcda1f89cb9bbeeddbcf39a6d9`  
		Last Modified: Fri, 02 Oct 2026 02:32:16 GMT  
		Size: 402.7 KB (402674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e66cc4d10848c71c5f883f3511ad06e87f60ad50ffc8c2e27436de5f9bb37a5d`  
		Last Modified: Fri, 02 Oct 2026 02:32:16 GMT  
		Size: 130.9 KB (130880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff03e4b4b666ea6fe83012f8bc757bfb1158139a8ac9ec1c49a13893efc89db`  
		Last Modified: Fri, 02 Oct 2026 02:32:17 GMT  
		Size: 24.7 MB (24738684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d76200b5448222c52ce8dbe5b106555f1c92a47adf411bcdf4801996001c15b`  
		Last Modified: Fri, 02 Oct 2026 03:24:13 GMT  
		Size: 1.1 GB (1147198139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception` - unknown; unknown

```console
$ docker pull ros@sha256:6a1d58fd299b877a099c38e79d1d07f42c43beedf9c024dc49cceca3d51d0400
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64311164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:145aab8f9cc61316b4581748737db47af8eb2ff4e9db1b5472d0a1ff5d3e19c5`

```dockerfile
```

-	Layers:
	-	`sha256:2c8f6cb00f0d9bfe4cc23253d8b76c7df03959130a107c6383836ff933fbc948`  
		Last Modified: Fri, 02 Oct 2026 03:23:51 GMT  
		Size: 64.3 MB (64301389 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4dd2fb9ad385088c5f6758a6841500966448484ece31459fc052348068c1b53b`  
		Last Modified: Fri, 02 Oct 2026 03:23:48 GMT  
		Size: 9.8 KB (9775 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-perception-resolute`

```console
$ docker pull ros@sha256:63387fcddde3142eca0205a6153e96331bb789027016a2f66aeab8ac0a5d79ef
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-perception-resolute` - linux; amd64

```console
$ docker pull ros@sha256:d37dcbf630fa184b4553de0765348077bbb5e65f192c96bc87dd9d822091dd7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1532382919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a8bb76d5967f6599f58d7469f7ac910cd4d017267be79ad97553fc07010c5a1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9550.tar --tag 26.04
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9550.tar
# Fri, 02 Oct 2026 01:34:52 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:06 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:11 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:06 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:36:06 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:36:06 GMT
ENV ROS_DISTRO=lyrical
# Fri, 02 Oct 2026 01:36:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:06 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:36:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:36:06 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:38 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:40 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:42 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:31:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:21:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4e07a0f12b2c009f98326fa391e869bd52fc63728c482400af6cb752bc16744b`  
		Last Modified: Sun, 27 Sep 2026 12:12:08 GMT  
		Size: 41.8 MB (41837521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ad70e463aa4a17833d00d6d5d346c895ebb66fee637eefd67024dc6cdc2f1c`  
		Last Modified: Sun, 27 Sep 2026 12:12:11 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:926eb5415bf6bffd4436bd8a537ec16c50cd960b6add3b205418af85634dbdf8`  
		Last Modified: Fri, 02 Oct 2026 01:36:48 GMT  
		Size: 741.6 KB (741646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feaf1ebf6af3e1af497aab7ba60bc84aa2b37e4cbdc09669cde43999491689e6`  
		Last Modified: Fri, 02 Oct 2026 01:36:49 GMT  
		Size: 12.8 MB (12760549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:032a1ae34c64fdaf74f088ab002a735ad49d44757b64be049fc9a1f6c4e48f7e`  
		Last Modified: Fri, 02 Oct 2026 01:36:48 GMT  
		Size: 91.9 KB (91945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3220e8ca7ac7094a4dbee43adbe2b0b1e442adbcf4edb97cae2bba46253663be`  
		Last Modified: Fri, 02 Oct 2026 01:36:52 GMT  
		Size: 137.1 MB (137067384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fadcda85dbaa7d14f94edc054397b63249f1149db57171a57a8706e8cfb54b4`  
		Last Modified: Fri, 02 Oct 2026 01:36:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6dcfd1466c6259724bd77e2bc42226e07b7f3b4c12f51be3164cea5bbb578dc`  
		Last Modified: Fri, 02 Oct 2026 02:31:54 GMT  
		Size: 124.9 MB (124919609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d1d5891600115b576a648f3d092b333d0974ec76a283290362f5373b935d9a1`  
		Last Modified: Fri, 02 Oct 2026 02:31:51 GMT  
		Size: 402.7 KB (402677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b66351cc45643a5aca93391937b85b1d250f9778f44700877ff7243f567100f`  
		Last Modified: Fri, 02 Oct 2026 02:31:51 GMT  
		Size: 130.9 KB (130916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29567fedc62aa5c320a4e34d37fb194a921bbcfa7c74c23379968ffb9d060cab`  
		Last Modified: Fri, 02 Oct 2026 02:31:52 GMT  
		Size: 25.8 MB (25797287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7482652f2eddfd93255597fb0825c80cef30d9be8ca18ffe7d6a09d13ae7ccd6`  
		Last Modified: Fri, 02 Oct 2026 03:26:17 GMT  
		Size: 1.2 GB (1188632802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:99477f7fe5bb0298bf53ddb9607424e475c215372a1bc02b1ec4ef91c310dacc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64396866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f20680a10dc45d903ff09b1b683ed5ea6d39fbdfd6bbe18960c2b24f542cc41`

```dockerfile
```

-	Layers:
	-	`sha256:316dd930d5d64944e42d0fcff00da67b21b938a0bd23e14ade6de6eb1f4b14f4`  
		Last Modified: Fri, 02 Oct 2026 03:25:58 GMT  
		Size: 64.4 MB (64387171 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:acf80ad6255fe329d7fee9ef694c45e12737ea57ad9ded80449d5566f77cda64`  
		Last Modified: Fri, 02 Oct 2026 03:25:56 GMT  
		Size: 9.7 KB (9695 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-perception-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:29b1fbf04972225a117d882d62644c7c74e40afa138a598f936b933e1126fdd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1475857446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00e02767685f540a4b84fd732699a498cb77c44849b066d1946d68792a10e48b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9649.tar --tag 26.04
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9649.tar
# Fri, 02 Oct 2026 01:34:43 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:57 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:02 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:59 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:35:59 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:35:59 GMT
ENV ROS_DISTRO=lyrical
# Fri, 02 Oct 2026 01:35:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:00 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:36:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:36:00 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:52 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:54 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:31:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:19:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:06db5ba23986104cd78dcfa853ddf2354c943d2efefc333eca2b447d4559d89c`  
		Last Modified: Sun, 27 Sep 2026 12:12:17 GMT  
		Size: 40.9 MB (40864755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa77813dc560f299656013d742628128cac51fdfda979349e96a9f09497170f`  
		Last Modified: Sun, 27 Sep 2026 12:12:20 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869cf326251e0827b2667debc67ee8342039fc72446171da41aa363cbc69ee77`  
		Last Modified: Fri, 02 Oct 2026 01:36:38 GMT  
		Size: 742.0 KB (742033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:048f3b7d1aa8f38d63e22c3baa5f05eddb7c0640a72ebf9805100d220c95aa4e`  
		Last Modified: Fri, 02 Oct 2026 01:36:39 GMT  
		Size: 12.9 MB (12937859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51e9fbcbdfbe56b627c2f1a3e96927da4ebaac13037c0d2c3336a97883a452bd`  
		Last Modified: Fri, 02 Oct 2026 01:36:38 GMT  
		Size: 92.4 KB (92373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c115d3385eef7b87b3f0c4269c85bbe05fb537b1ea82bfd03b8bf17e489c6a3`  
		Last Modified: Fri, 02 Oct 2026 01:36:42 GMT  
		Size: 130.4 MB (130417206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73cd57eb074ccb792b190609a3f59aba75c4711588f4f4efa70bc1abfdd6b527`  
		Last Modified: Fri, 02 Oct 2026 01:36:39 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76dd603b75fb2c72154362bc92e68f84a3920a7aa30fca35bcd73de9f4a069cc`  
		Last Modified: Fri, 02 Oct 2026 02:32:19 GMT  
		Size: 118.3 MB (118332255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d4d2654d414d427efa650606cedbcc5bfa58ffcda1f89cb9bbeeddbcf39a6d9`  
		Last Modified: Fri, 02 Oct 2026 02:32:16 GMT  
		Size: 402.7 KB (402674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e66cc4d10848c71c5f883f3511ad06e87f60ad50ffc8c2e27436de5f9bb37a5d`  
		Last Modified: Fri, 02 Oct 2026 02:32:16 GMT  
		Size: 130.9 KB (130880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff03e4b4b666ea6fe83012f8bc757bfb1158139a8ac9ec1c49a13893efc89db`  
		Last Modified: Fri, 02 Oct 2026 02:32:17 GMT  
		Size: 24.7 MB (24738684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d76200b5448222c52ce8dbe5b106555f1c92a47adf411bcdf4801996001c15b`  
		Last Modified: Fri, 02 Oct 2026 03:24:13 GMT  
		Size: 1.1 GB (1147198139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:6a1d58fd299b877a099c38e79d1d07f42c43beedf9c024dc49cceca3d51d0400
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64311164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:145aab8f9cc61316b4581748737db47af8eb2ff4e9db1b5472d0a1ff5d3e19c5`

```dockerfile
```

-	Layers:
	-	`sha256:2c8f6cb00f0d9bfe4cc23253d8b76c7df03959130a107c6383836ff933fbc948`  
		Last Modified: Fri, 02 Oct 2026 03:23:51 GMT  
		Size: 64.3 MB (64301389 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4dd2fb9ad385088c5f6758a6841500966448484ece31459fc052348068c1b53b`  
		Last Modified: Fri, 02 Oct 2026 03:23:48 GMT  
		Size: 9.8 KB (9775 bytes)  
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
$ docker pull ros@sha256:360e0f0cd35d2f0230854878c6a329ceab99c9f559552196be93655cdb3004db
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-base-resolute` - linux; amd64

```console
$ docker pull ros@sha256:16d9b64d0bee68954a46be5c0d039802fe58da834758d8a9de6e4e03216d9923
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.8 MB (343750117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bec94f16b7711f3e2d9f3b0bc641a3515190c0377ce50ef249fd81f19be415d1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9550.tar --tag 26.04
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9550.tar
# Fri, 02 Oct 2026 01:34:52 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:06 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:11 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:06 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:36:06 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:36:06 GMT
ENV ROS_DISTRO=lyrical
# Fri, 02 Oct 2026 01:36:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:06 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:36:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:36:06 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:38 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:40 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:42 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:31:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4e07a0f12b2c009f98326fa391e869bd52fc63728c482400af6cb752bc16744b`  
		Last Modified: Sun, 27 Sep 2026 12:12:08 GMT  
		Size: 41.8 MB (41837521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ad70e463aa4a17833d00d6d5d346c895ebb66fee637eefd67024dc6cdc2f1c`  
		Last Modified: Sun, 27 Sep 2026 12:12:11 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:926eb5415bf6bffd4436bd8a537ec16c50cd960b6add3b205418af85634dbdf8`  
		Last Modified: Fri, 02 Oct 2026 01:36:48 GMT  
		Size: 741.6 KB (741646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feaf1ebf6af3e1af497aab7ba60bc84aa2b37e4cbdc09669cde43999491689e6`  
		Last Modified: Fri, 02 Oct 2026 01:36:49 GMT  
		Size: 12.8 MB (12760549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:032a1ae34c64fdaf74f088ab002a735ad49d44757b64be049fc9a1f6c4e48f7e`  
		Last Modified: Fri, 02 Oct 2026 01:36:48 GMT  
		Size: 91.9 KB (91945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3220e8ca7ac7094a4dbee43adbe2b0b1e442adbcf4edb97cae2bba46253663be`  
		Last Modified: Fri, 02 Oct 2026 01:36:52 GMT  
		Size: 137.1 MB (137067384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fadcda85dbaa7d14f94edc054397b63249f1149db57171a57a8706e8cfb54b4`  
		Last Modified: Fri, 02 Oct 2026 01:36:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6dcfd1466c6259724bd77e2bc42226e07b7f3b4c12f51be3164cea5bbb578dc`  
		Last Modified: Fri, 02 Oct 2026 02:31:54 GMT  
		Size: 124.9 MB (124919609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d1d5891600115b576a648f3d092b333d0974ec76a283290362f5373b935d9a1`  
		Last Modified: Fri, 02 Oct 2026 02:31:51 GMT  
		Size: 402.7 KB (402677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b66351cc45643a5aca93391937b85b1d250f9778f44700877ff7243f567100f`  
		Last Modified: Fri, 02 Oct 2026 02:31:51 GMT  
		Size: 130.9 KB (130916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29567fedc62aa5c320a4e34d37fb194a921bbcfa7c74c23379968ffb9d060cab`  
		Last Modified: Fri, 02 Oct 2026 02:31:52 GMT  
		Size: 25.8 MB (25797287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:795a5d138a63d1658461ee9114f65e139042a52dcd4b38a53b7b08fec2807441
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29194556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f15a996bf91fc33ef4f85f34fa56e92dfcba9e0321a5ffa6ef918d04d11156e`

```dockerfile
```

-	Layers:
	-	`sha256:963eb5c5b35d21b5a6646064d2cc34d72e7a98ce214d0ae14e681e9430bfeb44`  
		Last Modified: Fri, 02 Oct 2026 02:31:52 GMT  
		Size: 29.2 MB (29177101 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67c972f030b4664d8540ca707c7fd3459a4b11dddf9c4b98de5e9bc14de30a1e`  
		Last Modified: Fri, 02 Oct 2026 02:31:51 GMT  
		Size: 17.5 KB (17455 bytes)  
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
$ docker pull ros@sha256:7d5ef6b88d37bfa99bdef6355cfb4596f8e0d236771477d42e3ec775f4fa2141
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling` - linux; amd64

```console
$ docker pull ros@sha256:4a258503925b89534e71ec3f3ec41248b8339e73477749eaf6b529ff202c6494
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.9 MB (343862106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2066f04ddd5b49d5113c56cbdf75c5cbb041135f224791c95574b9358f7482a1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9550.tar --tag 26.04
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9550.tar
# Fri, 02 Oct 2026 01:36:11 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:26 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:32 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:23 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:37:23 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:37:23 GMT
ENV ROS_DISTRO=rolling
# Fri, 02 Oct 2026 01:37:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:23 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:37:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:37:23 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:30 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:31 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:30:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4e07a0f12b2c009f98326fa391e869bd52fc63728c482400af6cb752bc16744b`  
		Last Modified: Sun, 27 Sep 2026 12:12:08 GMT  
		Size: 41.8 MB (41837521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ad70e463aa4a17833d00d6d5d346c895ebb66fee637eefd67024dc6cdc2f1c`  
		Last Modified: Sun, 27 Sep 2026 12:12:11 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6715bf347ae2b3f06a7ca28e12c1f41ab00a53b17cf98171abeea45314b84a4`  
		Last Modified: Fri, 02 Oct 2026 01:38:02 GMT  
		Size: 741.7 KB (741651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:970f85f064c1eb6036c10fb3277c49b88d03536f6cf39e4a7953679810299134`  
		Last Modified: Fri, 02 Oct 2026 01:38:03 GMT  
		Size: 12.8 MB (12760464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:801be42b95590ca6e8438e4eb13948d6c9ea2363fe3205914be84dc24e423bd4`  
		Last Modified: Fri, 02 Oct 2026 01:38:02 GMT  
		Size: 92.0 KB (91969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aff3cd263c7118e8b69c65c7b05856f07c238a16388f62041fabe794ac5b13a6`  
		Last Modified: Fri, 02 Oct 2026 01:38:06 GMT  
		Size: 137.1 MB (137145269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca636fe0b8e56c8c3eb7c2c43f8d73c410e2f928255d06395442e41eef58114e`  
		Last Modified: Fri, 02 Oct 2026 01:38:03 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecd1e557066b5816cbd0ed362001fa29f3c919e78aa800124ac015f6137aa536`  
		Last Modified: Fri, 02 Oct 2026 02:31:45 GMT  
		Size: 124.9 MB (124919578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fed21e5d372fbf652afb081aa07a52c88ebf405f6418beb0f8ef80c98873f4a2`  
		Last Modified: Fri, 02 Oct 2026 02:31:41 GMT  
		Size: 365.4 KB (365360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b045c8737751fdfc328b135189e7446658174428b5f3a19762d7dc0a4ec16577`  
		Last Modified: Fri, 02 Oct 2026 02:31:41 GMT  
		Size: 130.9 KB (130900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b278401394ce8c7a4258161c7f9a5dd41aa260c46d15012c20c32142e8b72d52`  
		Last Modified: Fri, 02 Oct 2026 02:31:43 GMT  
		Size: 25.9 MB (25868810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling` - unknown; unknown

```console
$ docker pull ros@sha256:1c04dbfce0a0b8f4070eff4cf03184cd743f908d97ebd2b22fe4836fa2d7adaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29246335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aece3a96fb425c98b97ad9b37c9f9a0c12afe97f7d8692d5868d97d44b32487`

```dockerfile
```

-	Layers:
	-	`sha256:7d43640bd021c77712b514c5c7105be96a9ee0477161c4d3950150df229fb4ea`  
		Last Modified: Fri, 02 Oct 2026 02:31:43 GMT  
		Size: 29.2 MB (29229172 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eefd53ff5d2d1d2194f6d1259a145e7f0e81dbbc8c029987b55bf5036f68c569`  
		Last Modified: Fri, 02 Oct 2026 02:31:41 GMT  
		Size: 17.2 KB (17163 bytes)  
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
$ docker pull ros@sha256:8e5dce6c9e5bc3858f812fd7dd6da1a8ad61473aa1f9447a3ebd0760fd320b02
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-perception` - linux; amd64

```console
$ docker pull ros@sha256:efc922c82d07fead4794a1b645e8647bb3681f2a81c97fa56567fa672085292e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1532404761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfb05fd3b4c7f823aa18a0942e6a328b24d381df7e0f797a4852ef39e30d5e34`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9550.tar --tag 26.04
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9550.tar
# Fri, 02 Oct 2026 01:36:11 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:26 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:32 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:23 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:37:23 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:37:23 GMT
ENV ROS_DISTRO=rolling
# Fri, 02 Oct 2026 01:37:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:23 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:37:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:37:23 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:30 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:31 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:30:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:19:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4e07a0f12b2c009f98326fa391e869bd52fc63728c482400af6cb752bc16744b`  
		Last Modified: Sun, 27 Sep 2026 12:12:08 GMT  
		Size: 41.8 MB (41837521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ad70e463aa4a17833d00d6d5d346c895ebb66fee637eefd67024dc6cdc2f1c`  
		Last Modified: Sun, 27 Sep 2026 12:12:11 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6715bf347ae2b3f06a7ca28e12c1f41ab00a53b17cf98171abeea45314b84a4`  
		Last Modified: Fri, 02 Oct 2026 01:38:02 GMT  
		Size: 741.7 KB (741651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:970f85f064c1eb6036c10fb3277c49b88d03536f6cf39e4a7953679810299134`  
		Last Modified: Fri, 02 Oct 2026 01:38:03 GMT  
		Size: 12.8 MB (12760464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:801be42b95590ca6e8438e4eb13948d6c9ea2363fe3205914be84dc24e423bd4`  
		Last Modified: Fri, 02 Oct 2026 01:38:02 GMT  
		Size: 92.0 KB (91969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aff3cd263c7118e8b69c65c7b05856f07c238a16388f62041fabe794ac5b13a6`  
		Last Modified: Fri, 02 Oct 2026 01:38:06 GMT  
		Size: 137.1 MB (137145269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca636fe0b8e56c8c3eb7c2c43f8d73c410e2f928255d06395442e41eef58114e`  
		Last Modified: Fri, 02 Oct 2026 01:38:03 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecd1e557066b5816cbd0ed362001fa29f3c919e78aa800124ac015f6137aa536`  
		Last Modified: Fri, 02 Oct 2026 02:31:45 GMT  
		Size: 124.9 MB (124919578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fed21e5d372fbf652afb081aa07a52c88ebf405f6418beb0f8ef80c98873f4a2`  
		Last Modified: Fri, 02 Oct 2026 02:31:41 GMT  
		Size: 365.4 KB (365360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b045c8737751fdfc328b135189e7446658174428b5f3a19762d7dc0a4ec16577`  
		Last Modified: Fri, 02 Oct 2026 02:31:41 GMT  
		Size: 130.9 KB (130900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b278401394ce8c7a4258161c7f9a5dd41aa260c46d15012c20c32142e8b72d52`  
		Last Modified: Fri, 02 Oct 2026 02:31:43 GMT  
		Size: 25.9 MB (25868810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66b73cdb3a6bbaf49a29b9d903c795b6bd7742fd8e22e9ec89abf8a277ef30fd`  
		Last Modified: Fri, 02 Oct 2026 03:24:19 GMT  
		Size: 1.2 GB (1188542655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-perception` - unknown; unknown

```console
$ docker pull ros@sha256:c7fd7e4528779a99f333e7928b235c68dfddd0f2dc882b2d41b0788df96636b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.5 MB (64450574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9d389eb769d88ff761d1683693b68a1eb5362ba4c25cced822b78eeb6c7e4c0`

```dockerfile
```

-	Layers:
	-	`sha256:1cd10fbb52db1945b23b5ecb8d68c4d6f37f515cef5c9f91b05be21429b8491d`  
		Last Modified: Fri, 02 Oct 2026 03:23:58 GMT  
		Size: 64.4 MB (64440879 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ee3ed9abecc9e1d6e6848d534907eb131fa4db74929730faa52e8afcc9219e3`  
		Last Modified: Fri, 02 Oct 2026 03:23:55 GMT  
		Size: 9.7 KB (9695 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:703a6aa0c269ecd061dbdd0f1bf19f640cd5acf411a271c0be702cb0942ff8c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1475907759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22c47fbd8fc654511b66e617718ac964de11587707d310591a3751489c8116f6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9649.tar --tag 26.04
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9649.tar
# Fri, 02 Oct 2026 01:36:29 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:43 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:48 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:45 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:37:45 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:37:45 GMT
ENV ROS_DISTRO=rolling
# Fri, 02 Oct 2026 01:37:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:46 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:37:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:37:46 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:31:00 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:31:02 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:31:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:19:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:06db5ba23986104cd78dcfa853ddf2354c943d2efefc333eca2b447d4559d89c`  
		Last Modified: Sun, 27 Sep 2026 12:12:17 GMT  
		Size: 40.9 MB (40864755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa77813dc560f299656013d742628128cac51fdfda979349e96a9f09497170f`  
		Last Modified: Sun, 27 Sep 2026 12:12:20 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af90104c2ad1addca51526cdf5e498d0932c2fa6ec7db88ebc2a5618a6a2907c`  
		Last Modified: Fri, 02 Oct 2026 01:38:25 GMT  
		Size: 742.0 KB (742045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cb33ea0d8b4843644849a4e86807945d3540a80b9245f5c901edc3791a9ea0c`  
		Last Modified: Fri, 02 Oct 2026 01:38:26 GMT  
		Size: 12.9 MB (12937875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e33c8dca414036e9173cc1381cff6a8ebc0e5362142cd96f1844aa2a0ef428c9`  
		Last Modified: Fri, 02 Oct 2026 01:38:25 GMT  
		Size: 92.4 KB (92362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd99c0e416797fda0fd7c6f815c58368c9bf634cccd11d39f801db58e1de057c`  
		Last Modified: Fri, 02 Oct 2026 01:38:29 GMT  
		Size: 130.5 MB (130493238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c5be814c074eebd263fefaf601d31c9560b51fad607419e0bc5e15315835085`  
		Last Modified: Fri, 02 Oct 2026 01:38:26 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51a7ddef4643d92821cf72a0be255557e95ef26d3830f3287c1d80e571932bb0`  
		Last Modified: Fri, 02 Oct 2026 02:32:16 GMT  
		Size: 118.3 MB (118332072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ae18089d69434af73e4297e70a431fb3d1215cd6f00f7dd0c750550900c8d74`  
		Last Modified: Fri, 02 Oct 2026 02:32:13 GMT  
		Size: 365.4 KB (365361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23a932b707e9f33940fece768c3cfdcc7498c164ff3b48c3f3a6958043b575db`  
		Last Modified: Fri, 02 Oct 2026 02:32:13 GMT  
		Size: 130.9 KB (130882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46443d04cb4f14ba34ee41fc89aeffc062f1916b37c4f1833afa4a39398624f9`  
		Last Modified: Fri, 02 Oct 2026 02:32:14 GMT  
		Size: 24.8 MB (24795903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53dd519a2d3998a0d7ede94936d80f6b59e7b86ccfda2eaef406fa33c9fb856a`  
		Last Modified: Fri, 02 Oct 2026 03:24:25 GMT  
		Size: 1.1 GB (1147152680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-perception` - unknown; unknown

```console
$ docker pull ros@sha256:e344fe1ec7f31c282494503e5debfb80a9b5c85abba438776b3a5e306706dc69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64364872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78bc01a52df374fd134028e412df927aed8e5f687211a8aa0027571b455e4b1a`

```dockerfile
```

-	Layers:
	-	`sha256:40240eb85d8fb55bdc6e6efc5605281247dba7cc7096002efa6619a26135a322`  
		Last Modified: Fri, 02 Oct 2026 03:24:05 GMT  
		Size: 64.4 MB (64355097 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:682b731faefbdc9443f050435ed8755552be0710f6145f75270afce7b52f733e`  
		Last Modified: Fri, 02 Oct 2026 03:24:03 GMT  
		Size: 9.8 KB (9775 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-perception-resolute`

```console
$ docker pull ros@sha256:8e5dce6c9e5bc3858f812fd7dd6da1a8ad61473aa1f9447a3ebd0760fd320b02
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-perception-resolute` - linux; amd64

```console
$ docker pull ros@sha256:efc922c82d07fead4794a1b645e8647bb3681f2a81c97fa56567fa672085292e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1532404761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfb05fd3b4c7f823aa18a0942e6a328b24d381df7e0f797a4852ef39e30d5e34`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9550.tar --tag 26.04
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9550.tar
# Fri, 02 Oct 2026 01:36:11 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:26 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:32 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:23 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:37:23 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:37:23 GMT
ENV ROS_DISTRO=rolling
# Fri, 02 Oct 2026 01:37:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:23 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:37:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:37:23 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:30 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:31 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:30:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:19:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4e07a0f12b2c009f98326fa391e869bd52fc63728c482400af6cb752bc16744b`  
		Last Modified: Sun, 27 Sep 2026 12:12:08 GMT  
		Size: 41.8 MB (41837521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ad70e463aa4a17833d00d6d5d346c895ebb66fee637eefd67024dc6cdc2f1c`  
		Last Modified: Sun, 27 Sep 2026 12:12:11 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6715bf347ae2b3f06a7ca28e12c1f41ab00a53b17cf98171abeea45314b84a4`  
		Last Modified: Fri, 02 Oct 2026 01:38:02 GMT  
		Size: 741.7 KB (741651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:970f85f064c1eb6036c10fb3277c49b88d03536f6cf39e4a7953679810299134`  
		Last Modified: Fri, 02 Oct 2026 01:38:03 GMT  
		Size: 12.8 MB (12760464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:801be42b95590ca6e8438e4eb13948d6c9ea2363fe3205914be84dc24e423bd4`  
		Last Modified: Fri, 02 Oct 2026 01:38:02 GMT  
		Size: 92.0 KB (91969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aff3cd263c7118e8b69c65c7b05856f07c238a16388f62041fabe794ac5b13a6`  
		Last Modified: Fri, 02 Oct 2026 01:38:06 GMT  
		Size: 137.1 MB (137145269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca636fe0b8e56c8c3eb7c2c43f8d73c410e2f928255d06395442e41eef58114e`  
		Last Modified: Fri, 02 Oct 2026 01:38:03 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecd1e557066b5816cbd0ed362001fa29f3c919e78aa800124ac015f6137aa536`  
		Last Modified: Fri, 02 Oct 2026 02:31:45 GMT  
		Size: 124.9 MB (124919578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fed21e5d372fbf652afb081aa07a52c88ebf405f6418beb0f8ef80c98873f4a2`  
		Last Modified: Fri, 02 Oct 2026 02:31:41 GMT  
		Size: 365.4 KB (365360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b045c8737751fdfc328b135189e7446658174428b5f3a19762d7dc0a4ec16577`  
		Last Modified: Fri, 02 Oct 2026 02:31:41 GMT  
		Size: 130.9 KB (130900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b278401394ce8c7a4258161c7f9a5dd41aa260c46d15012c20c32142e8b72d52`  
		Last Modified: Fri, 02 Oct 2026 02:31:43 GMT  
		Size: 25.9 MB (25868810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66b73cdb3a6bbaf49a29b9d903c795b6bd7742fd8e22e9ec89abf8a277ef30fd`  
		Last Modified: Fri, 02 Oct 2026 03:24:19 GMT  
		Size: 1.2 GB (1188542655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:c7fd7e4528779a99f333e7928b235c68dfddd0f2dc882b2d41b0788df96636b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.5 MB (64450574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9d389eb769d88ff761d1683693b68a1eb5362ba4c25cced822b78eeb6c7e4c0`

```dockerfile
```

-	Layers:
	-	`sha256:1cd10fbb52db1945b23b5ecb8d68c4d6f37f515cef5c9f91b05be21429b8491d`  
		Last Modified: Fri, 02 Oct 2026 03:23:58 GMT  
		Size: 64.4 MB (64440879 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ee3ed9abecc9e1d6e6848d534907eb131fa4db74929730faa52e8afcc9219e3`  
		Last Modified: Fri, 02 Oct 2026 03:23:55 GMT  
		Size: 9.7 KB (9695 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-perception-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:703a6aa0c269ecd061dbdd0f1bf19f640cd5acf411a271c0be702cb0942ff8c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1475907759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22c47fbd8fc654511b66e617718ac964de11587707d310591a3751489c8116f6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9649.tar --tag 26.04
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9649.tar
# Fri, 02 Oct 2026 01:36:29 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:43 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:48 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:45 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:37:45 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:37:45 GMT
ENV ROS_DISTRO=rolling
# Fri, 02 Oct 2026 01:37:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:46 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:37:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:37:46 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:31:00 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:31:02 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:31:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:19:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:06db5ba23986104cd78dcfa853ddf2354c943d2efefc333eca2b447d4559d89c`  
		Last Modified: Sun, 27 Sep 2026 12:12:17 GMT  
		Size: 40.9 MB (40864755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa77813dc560f299656013d742628128cac51fdfda979349e96a9f09497170f`  
		Last Modified: Sun, 27 Sep 2026 12:12:20 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af90104c2ad1addca51526cdf5e498d0932c2fa6ec7db88ebc2a5618a6a2907c`  
		Last Modified: Fri, 02 Oct 2026 01:38:25 GMT  
		Size: 742.0 KB (742045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cb33ea0d8b4843644849a4e86807945d3540a80b9245f5c901edc3791a9ea0c`  
		Last Modified: Fri, 02 Oct 2026 01:38:26 GMT  
		Size: 12.9 MB (12937875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e33c8dca414036e9173cc1381cff6a8ebc0e5362142cd96f1844aa2a0ef428c9`  
		Last Modified: Fri, 02 Oct 2026 01:38:25 GMT  
		Size: 92.4 KB (92362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd99c0e416797fda0fd7c6f815c58368c9bf634cccd11d39f801db58e1de057c`  
		Last Modified: Fri, 02 Oct 2026 01:38:29 GMT  
		Size: 130.5 MB (130493238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c5be814c074eebd263fefaf601d31c9560b51fad607419e0bc5e15315835085`  
		Last Modified: Fri, 02 Oct 2026 01:38:26 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51a7ddef4643d92821cf72a0be255557e95ef26d3830f3287c1d80e571932bb0`  
		Last Modified: Fri, 02 Oct 2026 02:32:16 GMT  
		Size: 118.3 MB (118332072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ae18089d69434af73e4297e70a431fb3d1215cd6f00f7dd0c750550900c8d74`  
		Last Modified: Fri, 02 Oct 2026 02:32:13 GMT  
		Size: 365.4 KB (365361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23a932b707e9f33940fece768c3cfdcc7498c164ff3b48c3f3a6958043b575db`  
		Last Modified: Fri, 02 Oct 2026 02:32:13 GMT  
		Size: 130.9 KB (130882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46443d04cb4f14ba34ee41fc89aeffc062f1916b37c4f1833afa4a39398624f9`  
		Last Modified: Fri, 02 Oct 2026 02:32:14 GMT  
		Size: 24.8 MB (24795903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53dd519a2d3998a0d7ede94936d80f6b59e7b86ccfda2eaef406fa33c9fb856a`  
		Last Modified: Fri, 02 Oct 2026 03:24:25 GMT  
		Size: 1.1 GB (1147152680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:e344fe1ec7f31c282494503e5debfb80a9b5c85abba438776b3a5e306706dc69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64364872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78bc01a52df374fd134028e412df927aed8e5f687211a8aa0027571b455e4b1a`

```dockerfile
```

-	Layers:
	-	`sha256:40240eb85d8fb55bdc6e6efc5605281247dba7cc7096002efa6619a26135a322`  
		Last Modified: Fri, 02 Oct 2026 03:24:05 GMT  
		Size: 64.4 MB (64355097 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:682b731faefbdc9443f050435ed8755552be0710f6145f75270afce7b52f733e`  
		Last Modified: Fri, 02 Oct 2026 03:24:03 GMT  
		Size: 9.8 KB (9775 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-ros-base`

```console
$ docker pull ros@sha256:7d5ef6b88d37bfa99bdef6355cfb4596f8e0d236771477d42e3ec775f4fa2141
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:4a258503925b89534e71ec3f3ec41248b8339e73477749eaf6b529ff202c6494
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.9 MB (343862106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2066f04ddd5b49d5113c56cbdf75c5cbb041135f224791c95574b9358f7482a1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9550.tar --tag 26.04
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9550.tar
# Fri, 02 Oct 2026 01:36:11 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:26 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:32 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:23 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:37:23 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:37:23 GMT
ENV ROS_DISTRO=rolling
# Fri, 02 Oct 2026 01:37:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:23 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:37:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:37:23 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:30 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:31 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:30:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4e07a0f12b2c009f98326fa391e869bd52fc63728c482400af6cb752bc16744b`  
		Last Modified: Sun, 27 Sep 2026 12:12:08 GMT  
		Size: 41.8 MB (41837521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ad70e463aa4a17833d00d6d5d346c895ebb66fee637eefd67024dc6cdc2f1c`  
		Last Modified: Sun, 27 Sep 2026 12:12:11 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6715bf347ae2b3f06a7ca28e12c1f41ab00a53b17cf98171abeea45314b84a4`  
		Last Modified: Fri, 02 Oct 2026 01:38:02 GMT  
		Size: 741.7 KB (741651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:970f85f064c1eb6036c10fb3277c49b88d03536f6cf39e4a7953679810299134`  
		Last Modified: Fri, 02 Oct 2026 01:38:03 GMT  
		Size: 12.8 MB (12760464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:801be42b95590ca6e8438e4eb13948d6c9ea2363fe3205914be84dc24e423bd4`  
		Last Modified: Fri, 02 Oct 2026 01:38:02 GMT  
		Size: 92.0 KB (91969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aff3cd263c7118e8b69c65c7b05856f07c238a16388f62041fabe794ac5b13a6`  
		Last Modified: Fri, 02 Oct 2026 01:38:06 GMT  
		Size: 137.1 MB (137145269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca636fe0b8e56c8c3eb7c2c43f8d73c410e2f928255d06395442e41eef58114e`  
		Last Modified: Fri, 02 Oct 2026 01:38:03 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecd1e557066b5816cbd0ed362001fa29f3c919e78aa800124ac015f6137aa536`  
		Last Modified: Fri, 02 Oct 2026 02:31:45 GMT  
		Size: 124.9 MB (124919578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fed21e5d372fbf652afb081aa07a52c88ebf405f6418beb0f8ef80c98873f4a2`  
		Last Modified: Fri, 02 Oct 2026 02:31:41 GMT  
		Size: 365.4 KB (365360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b045c8737751fdfc328b135189e7446658174428b5f3a19762d7dc0a4ec16577`  
		Last Modified: Fri, 02 Oct 2026 02:31:41 GMT  
		Size: 130.9 KB (130900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b278401394ce8c7a4258161c7f9a5dd41aa260c46d15012c20c32142e8b72d52`  
		Last Modified: Fri, 02 Oct 2026 02:31:43 GMT  
		Size: 25.9 MB (25868810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:1c04dbfce0a0b8f4070eff4cf03184cd743f908d97ebd2b22fe4836fa2d7adaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29246335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aece3a96fb425c98b97ad9b37c9f9a0c12afe97f7d8692d5868d97d44b32487`

```dockerfile
```

-	Layers:
	-	`sha256:7d43640bd021c77712b514c5c7105be96a9ee0477161c4d3950150df229fb4ea`  
		Last Modified: Fri, 02 Oct 2026 02:31:43 GMT  
		Size: 29.2 MB (29229172 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eefd53ff5d2d1d2194f6d1259a145e7f0e81dbbc8c029987b55bf5036f68c569`  
		Last Modified: Fri, 02 Oct 2026 02:31:41 GMT  
		Size: 17.2 KB (17163 bytes)  
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
$ docker pull ros@sha256:7d5ef6b88d37bfa99bdef6355cfb4596f8e0d236771477d42e3ec775f4fa2141
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-base-resolute` - linux; amd64

```console
$ docker pull ros@sha256:4a258503925b89534e71ec3f3ec41248b8339e73477749eaf6b529ff202c6494
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.9 MB (343862106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2066f04ddd5b49d5113c56cbdf75c5cbb041135f224791c95574b9358f7482a1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9550.tar --tag 26.04
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9550.tar
# Fri, 02 Oct 2026 01:36:11 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:26 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:32 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:23 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:37:23 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:37:23 GMT
ENV ROS_DISTRO=rolling
# Fri, 02 Oct 2026 01:37:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:23 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:37:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:37:23 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:30 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:31 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:30:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4e07a0f12b2c009f98326fa391e869bd52fc63728c482400af6cb752bc16744b`  
		Last Modified: Sun, 27 Sep 2026 12:12:08 GMT  
		Size: 41.8 MB (41837521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ad70e463aa4a17833d00d6d5d346c895ebb66fee637eefd67024dc6cdc2f1c`  
		Last Modified: Sun, 27 Sep 2026 12:12:11 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6715bf347ae2b3f06a7ca28e12c1f41ab00a53b17cf98171abeea45314b84a4`  
		Last Modified: Fri, 02 Oct 2026 01:38:02 GMT  
		Size: 741.7 KB (741651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:970f85f064c1eb6036c10fb3277c49b88d03536f6cf39e4a7953679810299134`  
		Last Modified: Fri, 02 Oct 2026 01:38:03 GMT  
		Size: 12.8 MB (12760464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:801be42b95590ca6e8438e4eb13948d6c9ea2363fe3205914be84dc24e423bd4`  
		Last Modified: Fri, 02 Oct 2026 01:38:02 GMT  
		Size: 92.0 KB (91969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aff3cd263c7118e8b69c65c7b05856f07c238a16388f62041fabe794ac5b13a6`  
		Last Modified: Fri, 02 Oct 2026 01:38:06 GMT  
		Size: 137.1 MB (137145269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca636fe0b8e56c8c3eb7c2c43f8d73c410e2f928255d06395442e41eef58114e`  
		Last Modified: Fri, 02 Oct 2026 01:38:03 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecd1e557066b5816cbd0ed362001fa29f3c919e78aa800124ac015f6137aa536`  
		Last Modified: Fri, 02 Oct 2026 02:31:45 GMT  
		Size: 124.9 MB (124919578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fed21e5d372fbf652afb081aa07a52c88ebf405f6418beb0f8ef80c98873f4a2`  
		Last Modified: Fri, 02 Oct 2026 02:31:41 GMT  
		Size: 365.4 KB (365360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b045c8737751fdfc328b135189e7446658174428b5f3a19762d7dc0a4ec16577`  
		Last Modified: Fri, 02 Oct 2026 02:31:41 GMT  
		Size: 130.9 KB (130900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b278401394ce8c7a4258161c7f9a5dd41aa260c46d15012c20c32142e8b72d52`  
		Last Modified: Fri, 02 Oct 2026 02:31:43 GMT  
		Size: 25.9 MB (25868810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:1c04dbfce0a0b8f4070eff4cf03184cd743f908d97ebd2b22fe4836fa2d7adaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29246335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aece3a96fb425c98b97ad9b37c9f9a0c12afe97f7d8692d5868d97d44b32487`

```dockerfile
```

-	Layers:
	-	`sha256:7d43640bd021c77712b514c5c7105be96a9ee0477161c4d3950150df229fb4ea`  
		Last Modified: Fri, 02 Oct 2026 02:31:43 GMT  
		Size: 29.2 MB (29229172 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eefd53ff5d2d1d2194f6d1259a145e7f0e81dbbc8c029987b55bf5036f68c569`  
		Last Modified: Fri, 02 Oct 2026 02:31:41 GMT  
		Size: 17.2 KB (17163 bytes)  
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
