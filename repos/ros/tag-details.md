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
$ docker pull ros@sha256:7bea3d9aa2483d3ca34c8e30d921b79273b0913bd7dc64bebf51d082b5d107e4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble` - linux; amd64

```console
$ docker pull ros@sha256:09da889006b4d4f120ada9b788394d566818f9e451f59a3a9246a1f9eecf849b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.0 MB (263994963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90c99f6aa2ad179162a267eb881058cb7e518fca9db73110927bd3950e2903f4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:45 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:56 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:02 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:43 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:44:43 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:44:43 GMT
ENV ROS_DISTRO=humble
# Tue, 04 Aug 2026 01:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:43 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:44:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:44:43 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:31:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:00 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:01 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b77da4fe5aaf8a10916d28d70ae83b9984daffc53397583cf7804ca30365a047`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 1.2 MB (1212330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8b0742485fab751e31372fff86b1a5e125f0fb40844db84d17c3994b5a766e3`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 5.9 MB (5949651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:679797a3685e4691860198b6c1d08e5aa67c9f98fa1cced97c570c3cfa512f93`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 97.5 KB (97502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04ab66f5cc8c2304b9878c94d0a9558c7e245bcfd32e949d002b77d943ae662a`  
		Last Modified: Tue, 04 Aug 2026 01:45:13 GMT  
		Size: 105.1 MB (105106729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e7e3252c2ab045092004c8426c151e6b3a44435491de1dcbad7b2627351c1bc`  
		Last Modified: Tue, 04 Aug 2026 01:45:11 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d960f0268a7659d14d191254489e57704723aac3fd7377f59c017caa0f408a9c`  
		Last Modified: Tue, 04 Aug 2026 02:32:58 GMT  
		Size: 98.2 MB (98160636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ab68613df83bfd3d44c92a585a2ea020937e186bf1a7c9883a390a46b5c0fb1`  
		Last Modified: Tue, 04 Aug 2026 02:32:54 GMT  
		Size: 383.7 KB (383651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:219cacdeeaae57688ecdbcb64e41807dcb53093b746a66e6d3577f5d6af47422`  
		Last Modified: Tue, 04 Aug 2026 02:32:55 GMT  
		Size: 2.5 KB (2501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc0bf4a449eab2c91ac51d143e1f466bc19afe67a024ca339f3d45a455ea3990`  
		Last Modified: Tue, 04 Aug 2026 02:32:56 GMT  
		Size: 23.3 MB (23345250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble` - unknown; unknown

```console
$ docker pull ros@sha256:cfb2a63b937a988349485d59404c94424458f5609dfbf5378a2ca1de2703f258
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23964853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83dcc8fa238429938e439b7742783c0a43e87d1f9cff9fd60e6ad6ced2bf7b34`

```dockerfile
```

-	Layers:
	-	`sha256:2b4f15d2d7cece30d5ae68d19784943155e2a6d46dbbc867ea8c4d6560ddb72e`  
		Last Modified: Tue, 04 Aug 2026 02:32:56 GMT  
		Size: 23.9 MB (23948505 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1ca1671d7f8857ed74610d224afaa7c879dbeda49435c4aba62559e10849f2a`  
		Last Modified: Tue, 04 Aug 2026 02:32:54 GMT  
		Size: 16.3 KB (16348 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:da735406a84643be3ad3fe3b8ff4888683ac38457c97f14f8099cb8567dd2ec6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.6 MB (256632565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ab21a242635709a4e4fdb9383ddb12294e47bc7104c533dcd881fe1893ed70d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:40 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:50 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:58 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:39 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:44:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:44:39 GMT
ENV ROS_DISTRO=humble
# Tue, 04 Aug 2026 01:44:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:39 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:44:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:44:39 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:29 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:33 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:36 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:397de6fc09eecd81d8ae2b8e05788b455df423dfb7cf0efbb5e35d1c7867ff7b`  
		Last Modified: Tue, 04 Aug 2026 01:45:06 GMT  
		Size: 1.2 MB (1212522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6136372b5d0d1b9d1eb0f51a9016ec7fe78c0c6a195c095eace51355d8b2e4d4`  
		Last Modified: Tue, 04 Aug 2026 01:45:06 GMT  
		Size: 5.9 MB (5909577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af3332509bae527aa22cc96b9949aee9a387e8dbb49eb5cdec0a0b8c971b9a4b`  
		Last Modified: Tue, 04 Aug 2026 01:45:06 GMT  
		Size: 97.5 KB (97547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59ab4e46694818cfc738f0db28325c7cd140b13727d7199c414719e55530a3c6`  
		Last Modified: Tue, 04 Aug 2026 01:45:09 GMT  
		Size: 102.9 MB (102869088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bd8e59594932430fe58eb790d3f6cb0c4e482a0a5fbeafc42cd4a2f5a473782`  
		Last Modified: Tue, 04 Aug 2026 01:45:07 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb30d399290a30d7f32d2a2364d487184ef4f85ef5c3ead4e0a3512740fca6ae`  
		Last Modified: Tue, 04 Aug 2026 02:33:31 GMT  
		Size: 95.8 MB (95797838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6749707449b5aafe5d1bb52cf20a9c1c4c7754201ecacf4437090f76831c165`  
		Last Modified: Tue, 04 Aug 2026 02:33:28 GMT  
		Size: 383.6 KB (383638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:672f53ebc5ac6b20eb9b9aae8eb37cb20f11fc36e62dc90cc9e89c05feb8cc45`  
		Last Modified: Tue, 04 Aug 2026 02:33:29 GMT  
		Size: 2.5 KB (2505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0162f5d422de6065e4490fb1f2b0fefa45d9903d53ed14bd084309e07ae83e41`  
		Last Modified: Tue, 04 Aug 2026 02:33:30 GMT  
		Size: 22.7 MB (22739623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble` - unknown; unknown

```console
$ docker pull ros@sha256:880b615a263a31ddb748fdafe55e8e44f22c8011d77e4446490455ae0752be5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23978007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a6ac8f7849ae2a5ed55fd8186f37c2abc09671ee6bdddcfe67ae03c26cc8727`

```dockerfile
```

-	Layers:
	-	`sha256:15aca40d048e52b21bfcb6f3ac1cb8b82c45bf306fcd456bfb15b148218919fb`  
		Last Modified: Tue, 04 Aug 2026 02:33:30 GMT  
		Size: 24.0 MB (23961522 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6a6ef94a2e0d7c1d4b58ab9dce34ffa6fa985a0de47ebdb24cb85fff6e7b54c`  
		Last Modified: Tue, 04 Aug 2026 02:33:29 GMT  
		Size: 16.5 KB (16485 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-perception`

```console
$ docker pull ros@sha256:a1bc1dbcdfb70a90cc5dddb04b386f2f1ac21fac3a52ac39bec10d81ae3cf31e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-perception` - linux; amd64

```console
$ docker pull ros@sha256:dd3b9e83ecf6e154d47b0410eba7412ca0c09aeef45747c0bca66904b005c843
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **956.1 MB (956071870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d19846de8d8c16f91037d6789a89197b3efda5d5623b3225414886e43b23cd16`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:45 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:56 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:02 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:43 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:44:43 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:44:43 GMT
ENV ROS_DISTRO=humble
# Tue, 04 Aug 2026 01:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:43 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:44:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:44:43 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:31:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:00 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:01 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:21:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b77da4fe5aaf8a10916d28d70ae83b9984daffc53397583cf7804ca30365a047`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 1.2 MB (1212330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8b0742485fab751e31372fff86b1a5e125f0fb40844db84d17c3994b5a766e3`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 5.9 MB (5949651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:679797a3685e4691860198b6c1d08e5aa67c9f98fa1cced97c570c3cfa512f93`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 97.5 KB (97502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04ab66f5cc8c2304b9878c94d0a9558c7e245bcfd32e949d002b77d943ae662a`  
		Last Modified: Tue, 04 Aug 2026 01:45:13 GMT  
		Size: 105.1 MB (105106729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e7e3252c2ab045092004c8426c151e6b3a44435491de1dcbad7b2627351c1bc`  
		Last Modified: Tue, 04 Aug 2026 01:45:11 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d960f0268a7659d14d191254489e57704723aac3fd7377f59c017caa0f408a9c`  
		Last Modified: Tue, 04 Aug 2026 02:32:58 GMT  
		Size: 98.2 MB (98160636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ab68613df83bfd3d44c92a585a2ea020937e186bf1a7c9883a390a46b5c0fb1`  
		Last Modified: Tue, 04 Aug 2026 02:32:54 GMT  
		Size: 383.7 KB (383651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:219cacdeeaae57688ecdbcb64e41807dcb53093b746a66e6d3577f5d6af47422`  
		Last Modified: Tue, 04 Aug 2026 02:32:55 GMT  
		Size: 2.5 KB (2501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc0bf4a449eab2c91ac51d143e1f466bc19afe67a024ca339f3d45a455ea3990`  
		Last Modified: Tue, 04 Aug 2026 02:32:56 GMT  
		Size: 23.3 MB (23345250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:939e073800b2a71df21602621a9df9453e5517575fee60fe8c81936c5562b2d5`  
		Last Modified: Tue, 04 Aug 2026 03:24:12 GMT  
		Size: 692.1 MB (692076907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception` - unknown; unknown

```console
$ docker pull ros@sha256:8904d7658b11c1a12df297bc62a6e92311cc1a29879994145caabcf2d3bee5ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.1 MB (59063701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af98f0f5af3932a13ba914f4e94956b628f598c7966d532bddea26dad936cb13`

```dockerfile
```

-	Layers:
	-	`sha256:2c6bad3e40b0461a1913066b7b3c1fe7ff63b463a01e9b64707e7d5309140633`  
		Last Modified: Tue, 04 Aug 2026 03:24:02 GMT  
		Size: 59.1 MB (59054349 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fe461928b2c146ad0e3879f1314d9ecdeda5b0f8ad41662e8f0afc55e07a2fbd`  
		Last Modified: Tue, 04 Aug 2026 03:23:59 GMT  
		Size: 9.4 KB (9352 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:c8089a18b35eed3cefec8c37ce17b0c21c2ba55f23a69352725d663c4906cfec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **916.8 MB (916771128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c34a44d0a46d99cda82c39b317da6ea8e82edc53f56d24b1dfbf2bb94b13dbcf`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:40 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:50 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:58 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:39 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:44:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:44:39 GMT
ENV ROS_DISTRO=humble
# Tue, 04 Aug 2026 01:44:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:39 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:44:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:44:39 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:29 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:33 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:36 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:21:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:397de6fc09eecd81d8ae2b8e05788b455df423dfb7cf0efbb5e35d1c7867ff7b`  
		Last Modified: Tue, 04 Aug 2026 01:45:06 GMT  
		Size: 1.2 MB (1212522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6136372b5d0d1b9d1eb0f51a9016ec7fe78c0c6a195c095eace51355d8b2e4d4`  
		Last Modified: Tue, 04 Aug 2026 01:45:06 GMT  
		Size: 5.9 MB (5909577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af3332509bae527aa22cc96b9949aee9a387e8dbb49eb5cdec0a0b8c971b9a4b`  
		Last Modified: Tue, 04 Aug 2026 01:45:06 GMT  
		Size: 97.5 KB (97547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59ab4e46694818cfc738f0db28325c7cd140b13727d7199c414719e55530a3c6`  
		Last Modified: Tue, 04 Aug 2026 01:45:09 GMT  
		Size: 102.9 MB (102869088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bd8e59594932430fe58eb790d3f6cb0c4e482a0a5fbeafc42cd4a2f5a473782`  
		Last Modified: Tue, 04 Aug 2026 01:45:07 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb30d399290a30d7f32d2a2364d487184ef4f85ef5c3ead4e0a3512740fca6ae`  
		Last Modified: Tue, 04 Aug 2026 02:33:31 GMT  
		Size: 95.8 MB (95797838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6749707449b5aafe5d1bb52cf20a9c1c4c7754201ecacf4437090f76831c165`  
		Last Modified: Tue, 04 Aug 2026 02:33:28 GMT  
		Size: 383.6 KB (383638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:672f53ebc5ac6b20eb9b9aae8eb37cb20f11fc36e62dc90cc9e89c05feb8cc45`  
		Last Modified: Tue, 04 Aug 2026 02:33:29 GMT  
		Size: 2.5 KB (2505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0162f5d422de6065e4490fb1f2b0fefa45d9903d53ed14bd084309e07ae83e41`  
		Last Modified: Tue, 04 Aug 2026 02:33:30 GMT  
		Size: 22.7 MB (22739623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18d7c498c75a5f783631b37e436af22b7aede076d463d1044b472ad661798c69`  
		Last Modified: Tue, 04 Aug 2026 03:24:23 GMT  
		Size: 660.1 MB (660138563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception` - unknown; unknown

```console
$ docker pull ros@sha256:96ab12d5315348850f3de67ca546dab3134863e1994e09f918f5a2b37ac44a81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.0 MB (59048106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:674dd0607ddcb3f56cdf60d560628e19bebdb555dcfd7615b49b41f837fe792c`

```dockerfile
```

-	Layers:
	-	`sha256:35421710985165ff0610ebcd52eb074a14d027d65bb9e768b7373d7a3a01cc4f`  
		Last Modified: Tue, 04 Aug 2026 03:24:13 GMT  
		Size: 59.0 MB (59038674 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00964b15a2efaa2ddbd50fe8408c6a5a43e646c56108d9cef9a4f827b65c4002`  
		Last Modified: Tue, 04 Aug 2026 03:24:11 GMT  
		Size: 9.4 KB (9432 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-perception-jammy`

```console
$ docker pull ros@sha256:a1bc1dbcdfb70a90cc5dddb04b386f2f1ac21fac3a52ac39bec10d81ae3cf31e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-perception-jammy` - linux; amd64

```console
$ docker pull ros@sha256:dd3b9e83ecf6e154d47b0410eba7412ca0c09aeef45747c0bca66904b005c843
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **956.1 MB (956071870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d19846de8d8c16f91037d6789a89197b3efda5d5623b3225414886e43b23cd16`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:45 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:56 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:02 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:43 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:44:43 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:44:43 GMT
ENV ROS_DISTRO=humble
# Tue, 04 Aug 2026 01:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:43 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:44:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:44:43 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:31:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:00 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:01 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:21:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b77da4fe5aaf8a10916d28d70ae83b9984daffc53397583cf7804ca30365a047`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 1.2 MB (1212330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8b0742485fab751e31372fff86b1a5e125f0fb40844db84d17c3994b5a766e3`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 5.9 MB (5949651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:679797a3685e4691860198b6c1d08e5aa67c9f98fa1cced97c570c3cfa512f93`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 97.5 KB (97502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04ab66f5cc8c2304b9878c94d0a9558c7e245bcfd32e949d002b77d943ae662a`  
		Last Modified: Tue, 04 Aug 2026 01:45:13 GMT  
		Size: 105.1 MB (105106729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e7e3252c2ab045092004c8426c151e6b3a44435491de1dcbad7b2627351c1bc`  
		Last Modified: Tue, 04 Aug 2026 01:45:11 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d960f0268a7659d14d191254489e57704723aac3fd7377f59c017caa0f408a9c`  
		Last Modified: Tue, 04 Aug 2026 02:32:58 GMT  
		Size: 98.2 MB (98160636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ab68613df83bfd3d44c92a585a2ea020937e186bf1a7c9883a390a46b5c0fb1`  
		Last Modified: Tue, 04 Aug 2026 02:32:54 GMT  
		Size: 383.7 KB (383651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:219cacdeeaae57688ecdbcb64e41807dcb53093b746a66e6d3577f5d6af47422`  
		Last Modified: Tue, 04 Aug 2026 02:32:55 GMT  
		Size: 2.5 KB (2501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc0bf4a449eab2c91ac51d143e1f466bc19afe67a024ca339f3d45a455ea3990`  
		Last Modified: Tue, 04 Aug 2026 02:32:56 GMT  
		Size: 23.3 MB (23345250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:939e073800b2a71df21602621a9df9453e5517575fee60fe8c81936c5562b2d5`  
		Last Modified: Tue, 04 Aug 2026 03:24:12 GMT  
		Size: 692.1 MB (692076907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:8904d7658b11c1a12df297bc62a6e92311cc1a29879994145caabcf2d3bee5ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.1 MB (59063701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af98f0f5af3932a13ba914f4e94956b628f598c7966d532bddea26dad936cb13`

```dockerfile
```

-	Layers:
	-	`sha256:2c6bad3e40b0461a1913066b7b3c1fe7ff63b463a01e9b64707e7d5309140633`  
		Last Modified: Tue, 04 Aug 2026 03:24:02 GMT  
		Size: 59.1 MB (59054349 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fe461928b2c146ad0e3879f1314d9ecdeda5b0f8ad41662e8f0afc55e07a2fbd`  
		Last Modified: Tue, 04 Aug 2026 03:23:59 GMT  
		Size: 9.4 KB (9352 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-perception-jammy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:c8089a18b35eed3cefec8c37ce17b0c21c2ba55f23a69352725d663c4906cfec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **916.8 MB (916771128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c34a44d0a46d99cda82c39b317da6ea8e82edc53f56d24b1dfbf2bb94b13dbcf`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:40 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:50 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:58 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:39 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:44:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:44:39 GMT
ENV ROS_DISTRO=humble
# Tue, 04 Aug 2026 01:44:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:39 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:44:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:44:39 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:29 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:33 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:36 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:21:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:397de6fc09eecd81d8ae2b8e05788b455df423dfb7cf0efbb5e35d1c7867ff7b`  
		Last Modified: Tue, 04 Aug 2026 01:45:06 GMT  
		Size: 1.2 MB (1212522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6136372b5d0d1b9d1eb0f51a9016ec7fe78c0c6a195c095eace51355d8b2e4d4`  
		Last Modified: Tue, 04 Aug 2026 01:45:06 GMT  
		Size: 5.9 MB (5909577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af3332509bae527aa22cc96b9949aee9a387e8dbb49eb5cdec0a0b8c971b9a4b`  
		Last Modified: Tue, 04 Aug 2026 01:45:06 GMT  
		Size: 97.5 KB (97547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59ab4e46694818cfc738f0db28325c7cd140b13727d7199c414719e55530a3c6`  
		Last Modified: Tue, 04 Aug 2026 01:45:09 GMT  
		Size: 102.9 MB (102869088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bd8e59594932430fe58eb790d3f6cb0c4e482a0a5fbeafc42cd4a2f5a473782`  
		Last Modified: Tue, 04 Aug 2026 01:45:07 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb30d399290a30d7f32d2a2364d487184ef4f85ef5c3ead4e0a3512740fca6ae`  
		Last Modified: Tue, 04 Aug 2026 02:33:31 GMT  
		Size: 95.8 MB (95797838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6749707449b5aafe5d1bb52cf20a9c1c4c7754201ecacf4437090f76831c165`  
		Last Modified: Tue, 04 Aug 2026 02:33:28 GMT  
		Size: 383.6 KB (383638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:672f53ebc5ac6b20eb9b9aae8eb37cb20f11fc36e62dc90cc9e89c05feb8cc45`  
		Last Modified: Tue, 04 Aug 2026 02:33:29 GMT  
		Size: 2.5 KB (2505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0162f5d422de6065e4490fb1f2b0fefa45d9903d53ed14bd084309e07ae83e41`  
		Last Modified: Tue, 04 Aug 2026 02:33:30 GMT  
		Size: 22.7 MB (22739623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18d7c498c75a5f783631b37e436af22b7aede076d463d1044b472ad661798c69`  
		Last Modified: Tue, 04 Aug 2026 03:24:23 GMT  
		Size: 660.1 MB (660138563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:96ab12d5315348850f3de67ca546dab3134863e1994e09f918f5a2b37ac44a81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.0 MB (59048106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:674dd0607ddcb3f56cdf60d560628e19bebdb555dcfd7615b49b41f837fe792c`

```dockerfile
```

-	Layers:
	-	`sha256:35421710985165ff0610ebcd52eb074a14d027d65bb9e768b7373d7a3a01cc4f`  
		Last Modified: Tue, 04 Aug 2026 03:24:13 GMT  
		Size: 59.0 MB (59038674 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00964b15a2efaa2ddbd50fe8408c6a5a43e646c56108d9cef9a4f827b65c4002`  
		Last Modified: Tue, 04 Aug 2026 03:24:11 GMT  
		Size: 9.4 KB (9432 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-ros-base`

```console
$ docker pull ros@sha256:7bea3d9aa2483d3ca34c8e30d921b79273b0913bd7dc64bebf51d082b5d107e4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:09da889006b4d4f120ada9b788394d566818f9e451f59a3a9246a1f9eecf849b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.0 MB (263994963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90c99f6aa2ad179162a267eb881058cb7e518fca9db73110927bd3950e2903f4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:45 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:56 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:02 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:43 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:44:43 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:44:43 GMT
ENV ROS_DISTRO=humble
# Tue, 04 Aug 2026 01:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:43 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:44:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:44:43 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:31:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:00 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:01 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b77da4fe5aaf8a10916d28d70ae83b9984daffc53397583cf7804ca30365a047`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 1.2 MB (1212330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8b0742485fab751e31372fff86b1a5e125f0fb40844db84d17c3994b5a766e3`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 5.9 MB (5949651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:679797a3685e4691860198b6c1d08e5aa67c9f98fa1cced97c570c3cfa512f93`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 97.5 KB (97502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04ab66f5cc8c2304b9878c94d0a9558c7e245bcfd32e949d002b77d943ae662a`  
		Last Modified: Tue, 04 Aug 2026 01:45:13 GMT  
		Size: 105.1 MB (105106729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e7e3252c2ab045092004c8426c151e6b3a44435491de1dcbad7b2627351c1bc`  
		Last Modified: Tue, 04 Aug 2026 01:45:11 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d960f0268a7659d14d191254489e57704723aac3fd7377f59c017caa0f408a9c`  
		Last Modified: Tue, 04 Aug 2026 02:32:58 GMT  
		Size: 98.2 MB (98160636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ab68613df83bfd3d44c92a585a2ea020937e186bf1a7c9883a390a46b5c0fb1`  
		Last Modified: Tue, 04 Aug 2026 02:32:54 GMT  
		Size: 383.7 KB (383651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:219cacdeeaae57688ecdbcb64e41807dcb53093b746a66e6d3577f5d6af47422`  
		Last Modified: Tue, 04 Aug 2026 02:32:55 GMT  
		Size: 2.5 KB (2501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc0bf4a449eab2c91ac51d143e1f466bc19afe67a024ca339f3d45a455ea3990`  
		Last Modified: Tue, 04 Aug 2026 02:32:56 GMT  
		Size: 23.3 MB (23345250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:cfb2a63b937a988349485d59404c94424458f5609dfbf5378a2ca1de2703f258
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23964853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83dcc8fa238429938e439b7742783c0a43e87d1f9cff9fd60e6ad6ced2bf7b34`

```dockerfile
```

-	Layers:
	-	`sha256:2b4f15d2d7cece30d5ae68d19784943155e2a6d46dbbc867ea8c4d6560ddb72e`  
		Last Modified: Tue, 04 Aug 2026 02:32:56 GMT  
		Size: 23.9 MB (23948505 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1ca1671d7f8857ed74610d224afaa7c879dbeda49435c4aba62559e10849f2a`  
		Last Modified: Tue, 04 Aug 2026 02:32:54 GMT  
		Size: 16.3 KB (16348 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:da735406a84643be3ad3fe3b8ff4888683ac38457c97f14f8099cb8567dd2ec6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.6 MB (256632565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ab21a242635709a4e4fdb9383ddb12294e47bc7104c533dcd881fe1893ed70d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:40 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:50 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:58 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:39 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:44:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:44:39 GMT
ENV ROS_DISTRO=humble
# Tue, 04 Aug 2026 01:44:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:39 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:44:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:44:39 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:29 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:33 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:36 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:397de6fc09eecd81d8ae2b8e05788b455df423dfb7cf0efbb5e35d1c7867ff7b`  
		Last Modified: Tue, 04 Aug 2026 01:45:06 GMT  
		Size: 1.2 MB (1212522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6136372b5d0d1b9d1eb0f51a9016ec7fe78c0c6a195c095eace51355d8b2e4d4`  
		Last Modified: Tue, 04 Aug 2026 01:45:06 GMT  
		Size: 5.9 MB (5909577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af3332509bae527aa22cc96b9949aee9a387e8dbb49eb5cdec0a0b8c971b9a4b`  
		Last Modified: Tue, 04 Aug 2026 01:45:06 GMT  
		Size: 97.5 KB (97547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59ab4e46694818cfc738f0db28325c7cd140b13727d7199c414719e55530a3c6`  
		Last Modified: Tue, 04 Aug 2026 01:45:09 GMT  
		Size: 102.9 MB (102869088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bd8e59594932430fe58eb790d3f6cb0c4e482a0a5fbeafc42cd4a2f5a473782`  
		Last Modified: Tue, 04 Aug 2026 01:45:07 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb30d399290a30d7f32d2a2364d487184ef4f85ef5c3ead4e0a3512740fca6ae`  
		Last Modified: Tue, 04 Aug 2026 02:33:31 GMT  
		Size: 95.8 MB (95797838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6749707449b5aafe5d1bb52cf20a9c1c4c7754201ecacf4437090f76831c165`  
		Last Modified: Tue, 04 Aug 2026 02:33:28 GMT  
		Size: 383.6 KB (383638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:672f53ebc5ac6b20eb9b9aae8eb37cb20f11fc36e62dc90cc9e89c05feb8cc45`  
		Last Modified: Tue, 04 Aug 2026 02:33:29 GMT  
		Size: 2.5 KB (2505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0162f5d422de6065e4490fb1f2b0fefa45d9903d53ed14bd084309e07ae83e41`  
		Last Modified: Tue, 04 Aug 2026 02:33:30 GMT  
		Size: 22.7 MB (22739623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:880b615a263a31ddb748fdafe55e8e44f22c8011d77e4446490455ae0752be5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23978007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a6ac8f7849ae2a5ed55fd8186f37c2abc09671ee6bdddcfe67ae03c26cc8727`

```dockerfile
```

-	Layers:
	-	`sha256:15aca40d048e52b21bfcb6f3ac1cb8b82c45bf306fcd456bfb15b148218919fb`  
		Last Modified: Tue, 04 Aug 2026 02:33:30 GMT  
		Size: 24.0 MB (23961522 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6a6ef94a2e0d7c1d4b58ab9dce34ffa6fa985a0de47ebdb24cb85fff6e7b54c`  
		Last Modified: Tue, 04 Aug 2026 02:33:29 GMT  
		Size: 16.5 KB (16485 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-ros-base-jammy`

```console
$ docker pull ros@sha256:7bea3d9aa2483d3ca34c8e30d921b79273b0913bd7dc64bebf51d082b5d107e4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-base-jammy` - linux; amd64

```console
$ docker pull ros@sha256:09da889006b4d4f120ada9b788394d566818f9e451f59a3a9246a1f9eecf849b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.0 MB (263994963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90c99f6aa2ad179162a267eb881058cb7e518fca9db73110927bd3950e2903f4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:45 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:56 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:02 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:43 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:44:43 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:44:43 GMT
ENV ROS_DISTRO=humble
# Tue, 04 Aug 2026 01:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:43 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:44:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:44:43 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:31:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:00 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:01 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b77da4fe5aaf8a10916d28d70ae83b9984daffc53397583cf7804ca30365a047`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 1.2 MB (1212330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8b0742485fab751e31372fff86b1a5e125f0fb40844db84d17c3994b5a766e3`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 5.9 MB (5949651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:679797a3685e4691860198b6c1d08e5aa67c9f98fa1cced97c570c3cfa512f93`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 97.5 KB (97502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04ab66f5cc8c2304b9878c94d0a9558c7e245bcfd32e949d002b77d943ae662a`  
		Last Modified: Tue, 04 Aug 2026 01:45:13 GMT  
		Size: 105.1 MB (105106729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e7e3252c2ab045092004c8426c151e6b3a44435491de1dcbad7b2627351c1bc`  
		Last Modified: Tue, 04 Aug 2026 01:45:11 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d960f0268a7659d14d191254489e57704723aac3fd7377f59c017caa0f408a9c`  
		Last Modified: Tue, 04 Aug 2026 02:32:58 GMT  
		Size: 98.2 MB (98160636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ab68613df83bfd3d44c92a585a2ea020937e186bf1a7c9883a390a46b5c0fb1`  
		Last Modified: Tue, 04 Aug 2026 02:32:54 GMT  
		Size: 383.7 KB (383651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:219cacdeeaae57688ecdbcb64e41807dcb53093b746a66e6d3577f5d6af47422`  
		Last Modified: Tue, 04 Aug 2026 02:32:55 GMT  
		Size: 2.5 KB (2501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc0bf4a449eab2c91ac51d143e1f466bc19afe67a024ca339f3d45a455ea3990`  
		Last Modified: Tue, 04 Aug 2026 02:32:56 GMT  
		Size: 23.3 MB (23345250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-base-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:cfb2a63b937a988349485d59404c94424458f5609dfbf5378a2ca1de2703f258
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23964853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83dcc8fa238429938e439b7742783c0a43e87d1f9cff9fd60e6ad6ced2bf7b34`

```dockerfile
```

-	Layers:
	-	`sha256:2b4f15d2d7cece30d5ae68d19784943155e2a6d46dbbc867ea8c4d6560ddb72e`  
		Last Modified: Tue, 04 Aug 2026 02:32:56 GMT  
		Size: 23.9 MB (23948505 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1ca1671d7f8857ed74610d224afaa7c879dbeda49435c4aba62559e10849f2a`  
		Last Modified: Tue, 04 Aug 2026 02:32:54 GMT  
		Size: 16.3 KB (16348 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-base-jammy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:da735406a84643be3ad3fe3b8ff4888683ac38457c97f14f8099cb8567dd2ec6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.6 MB (256632565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ab21a242635709a4e4fdb9383ddb12294e47bc7104c533dcd881fe1893ed70d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:40 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:50 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:58 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:39 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:44:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:44:39 GMT
ENV ROS_DISTRO=humble
# Tue, 04 Aug 2026 01:44:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:39 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:44:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:44:39 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:29 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:33 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:36 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:397de6fc09eecd81d8ae2b8e05788b455df423dfb7cf0efbb5e35d1c7867ff7b`  
		Last Modified: Tue, 04 Aug 2026 01:45:06 GMT  
		Size: 1.2 MB (1212522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6136372b5d0d1b9d1eb0f51a9016ec7fe78c0c6a195c095eace51355d8b2e4d4`  
		Last Modified: Tue, 04 Aug 2026 01:45:06 GMT  
		Size: 5.9 MB (5909577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af3332509bae527aa22cc96b9949aee9a387e8dbb49eb5cdec0a0b8c971b9a4b`  
		Last Modified: Tue, 04 Aug 2026 01:45:06 GMT  
		Size: 97.5 KB (97547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59ab4e46694818cfc738f0db28325c7cd140b13727d7199c414719e55530a3c6`  
		Last Modified: Tue, 04 Aug 2026 01:45:09 GMT  
		Size: 102.9 MB (102869088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bd8e59594932430fe58eb790d3f6cb0c4e482a0a5fbeafc42cd4a2f5a473782`  
		Last Modified: Tue, 04 Aug 2026 01:45:07 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb30d399290a30d7f32d2a2364d487184ef4f85ef5c3ead4e0a3512740fca6ae`  
		Last Modified: Tue, 04 Aug 2026 02:33:31 GMT  
		Size: 95.8 MB (95797838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6749707449b5aafe5d1bb52cf20a9c1c4c7754201ecacf4437090f76831c165`  
		Last Modified: Tue, 04 Aug 2026 02:33:28 GMT  
		Size: 383.6 KB (383638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:672f53ebc5ac6b20eb9b9aae8eb37cb20f11fc36e62dc90cc9e89c05feb8cc45`  
		Last Modified: Tue, 04 Aug 2026 02:33:29 GMT  
		Size: 2.5 KB (2505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0162f5d422de6065e4490fb1f2b0fefa45d9903d53ed14bd084309e07ae83e41`  
		Last Modified: Tue, 04 Aug 2026 02:33:30 GMT  
		Size: 22.7 MB (22739623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-base-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:880b615a263a31ddb748fdafe55e8e44f22c8011d77e4446490455ae0752be5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23978007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a6ac8f7849ae2a5ed55fd8186f37c2abc09671ee6bdddcfe67ae03c26cc8727`

```dockerfile
```

-	Layers:
	-	`sha256:15aca40d048e52b21bfcb6f3ac1cb8b82c45bf306fcd456bfb15b148218919fb`  
		Last Modified: Tue, 04 Aug 2026 02:33:30 GMT  
		Size: 24.0 MB (23961522 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6a6ef94a2e0d7c1d4b58ab9dce34ffa6fa985a0de47ebdb24cb85fff6e7b54c`  
		Last Modified: Tue, 04 Aug 2026 02:33:29 GMT  
		Size: 16.5 KB (16485 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-ros-core`

```console
$ docker pull ros@sha256:ebae805c9d985e443b26e13a47339098dc0a42eee4626055bfd4ebc6dcdb4988
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:32bf718e63618482ffb1fe232cf0f834635c57162e2506fb0bc0b092ef776c1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.1 MB (142135412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a5ad5127e89bc385629e7ea946698470d62a8ba94b880f9e79b4a3d49f718dc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:19:38 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:51 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:57 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:37 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 01:20:37 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 01:20:37 GMT
ENV ROS_DISTRO=humble
# Tue, 18 Aug 2026 01:20:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:37 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 01:20:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 01:20:37 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d311ecb7e584805d8cd869edf21b4b55f13f014bb4c675f8d4ecbe9a5689dc5`  
		Last Modified: Tue, 18 Aug 2026 01:21:02 GMT  
		Size: 1.2 MB (1212482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3df817f7955be5ff3a68eb174cbbcf3dbeb5a525e629325d6b58a5b609b8292`  
		Last Modified: Tue, 18 Aug 2026 01:21:02 GMT  
		Size: 5.9 MB (5949747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e782053ab61940cafb73fbbe8124b43cd64ec693300fb54b4cbe5a7b67780a52`  
		Last Modified: Tue, 18 Aug 2026 01:21:02 GMT  
		Size: 97.6 KB (97575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2047a400df95fed08fe74cb603832b14fa54326928064ca0b5d0aa7cf80c5225`  
		Last Modified: Tue, 18 Aug 2026 01:21:06 GMT  
		Size: 105.1 MB (105138470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de282407801be949302128766973334099f0da822c287939de13fba935db3137`  
		Last Modified: Tue, 18 Aug 2026 01:21:03 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:f58063bdc1e8b185c184580f2a0a76b7204abc6678235e2ff1f63469742d8ada
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17941669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1c753ecd357d466e8c13e60e6ac4615a03dd77521382cef067d008d7451a915`

```dockerfile
```

-	Layers:
	-	`sha256:c888b287b7243418af2a29e442b7c40322c59353ce9211ed5bd53e49fa29537f`  
		Last Modified: Tue, 18 Aug 2026 01:21:03 GMT  
		Size: 17.9 MB (17927043 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52ba9a75cb68703ef7f3bf4175bc54b5a3f8b5a7050f04f8c4ecefdaf78546a0`  
		Last Modified: Tue, 18 Aug 2026 01:21:02 GMT  
		Size: 14.6 KB (14626 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:28d5cb5b632863dccd57264d36f8d0c472c7c6457a85211c4ad945d056e26350
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.8 MB (137754054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99c43b51ce31884c39cdad2a12aa861403a5d5c8afe373b259dd9223ac1dd455`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:19:16 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:26 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:34 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:15 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 01:20:15 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 01:20:15 GMT
ENV ROS_DISTRO=humble
# Tue, 18 Aug 2026 01:20:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:15 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 01:20:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 01:20:15 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ea2b692952962172cece539476cb4c365d0eb0f1ed109e85b640d4a64a12d1a`  
		Last Modified: Tue, 18 Aug 2026 01:20:41 GMT  
		Size: 1.2 MB (1212561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd42bf15dc504c756132eb8cd4a60331d411b1db834dd84d31c69627ea28b93f`  
		Last Modified: Tue, 18 Aug 2026 01:20:41 GMT  
		Size: 5.9 MB (5909620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:857bf398572a9e5a03b7477604aaa8c6049386bc1c0a5128d8ff3bbe0b8c69fb`  
		Last Modified: Tue, 18 Aug 2026 01:20:41 GMT  
		Size: 97.6 KB (97602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62adfc7206d98c082f24577ae9b227079048a8be5870905b7045a9524ffbf2fa`  
		Last Modified: Tue, 18 Aug 2026 01:20:43 GMT  
		Size: 102.9 MB (102913623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6731f78a3a4be8c02e84d1c2fc9e0c44a409a60d035fda492c66885ce001f9a`  
		Last Modified: Tue, 18 Aug 2026 01:20:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:600561b1f528d3dec6c669b6209a982f0cbaddb3e7998fe3e7354f8cca4050bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17928139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ed4c73853c25733fca757bd1bee69f3b5fd168064486898672f5ff519525b96`

```dockerfile
```

-	Layers:
	-	`sha256:73c82711e9688ff72378e01653efe461b64c68f2693720f1632bca724b9f1440`  
		Last Modified: Tue, 18 Aug 2026 01:20:42 GMT  
		Size: 17.9 MB (17913388 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:490c2b160e9112b407e97d7f5800276e49d4b879645e9f621103a85289acb2ab`  
		Last Modified: Tue, 18 Aug 2026 01:20:41 GMT  
		Size: 14.8 KB (14751 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-ros-core-jammy`

```console
$ docker pull ros@sha256:ebae805c9d985e443b26e13a47339098dc0a42eee4626055bfd4ebc6dcdb4988
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-core-jammy` - linux; amd64

```console
$ docker pull ros@sha256:32bf718e63618482ffb1fe232cf0f834635c57162e2506fb0bc0b092ef776c1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.1 MB (142135412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a5ad5127e89bc385629e7ea946698470d62a8ba94b880f9e79b4a3d49f718dc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:19:38 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:51 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:57 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:37 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 01:20:37 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 01:20:37 GMT
ENV ROS_DISTRO=humble
# Tue, 18 Aug 2026 01:20:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:37 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 01:20:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 01:20:37 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d311ecb7e584805d8cd869edf21b4b55f13f014bb4c675f8d4ecbe9a5689dc5`  
		Last Modified: Tue, 18 Aug 2026 01:21:02 GMT  
		Size: 1.2 MB (1212482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3df817f7955be5ff3a68eb174cbbcf3dbeb5a525e629325d6b58a5b609b8292`  
		Last Modified: Tue, 18 Aug 2026 01:21:02 GMT  
		Size: 5.9 MB (5949747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e782053ab61940cafb73fbbe8124b43cd64ec693300fb54b4cbe5a7b67780a52`  
		Last Modified: Tue, 18 Aug 2026 01:21:02 GMT  
		Size: 97.6 KB (97575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2047a400df95fed08fe74cb603832b14fa54326928064ca0b5d0aa7cf80c5225`  
		Last Modified: Tue, 18 Aug 2026 01:21:06 GMT  
		Size: 105.1 MB (105138470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de282407801be949302128766973334099f0da822c287939de13fba935db3137`  
		Last Modified: Tue, 18 Aug 2026 01:21:03 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:f58063bdc1e8b185c184580f2a0a76b7204abc6678235e2ff1f63469742d8ada
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17941669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1c753ecd357d466e8c13e60e6ac4615a03dd77521382cef067d008d7451a915`

```dockerfile
```

-	Layers:
	-	`sha256:c888b287b7243418af2a29e442b7c40322c59353ce9211ed5bd53e49fa29537f`  
		Last Modified: Tue, 18 Aug 2026 01:21:03 GMT  
		Size: 17.9 MB (17927043 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52ba9a75cb68703ef7f3bf4175bc54b5a3f8b5a7050f04f8c4ecefdaf78546a0`  
		Last Modified: Tue, 18 Aug 2026 01:21:02 GMT  
		Size: 14.6 KB (14626 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-core-jammy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:28d5cb5b632863dccd57264d36f8d0c472c7c6457a85211c4ad945d056e26350
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.8 MB (137754054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99c43b51ce31884c39cdad2a12aa861403a5d5c8afe373b259dd9223ac1dd455`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:19:16 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:26 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:34 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:15 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 01:20:15 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 01:20:15 GMT
ENV ROS_DISTRO=humble
# Tue, 18 Aug 2026 01:20:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:15 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 01:20:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 01:20:15 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ea2b692952962172cece539476cb4c365d0eb0f1ed109e85b640d4a64a12d1a`  
		Last Modified: Tue, 18 Aug 2026 01:20:41 GMT  
		Size: 1.2 MB (1212561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd42bf15dc504c756132eb8cd4a60331d411b1db834dd84d31c69627ea28b93f`  
		Last Modified: Tue, 18 Aug 2026 01:20:41 GMT  
		Size: 5.9 MB (5909620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:857bf398572a9e5a03b7477604aaa8c6049386bc1c0a5128d8ff3bbe0b8c69fb`  
		Last Modified: Tue, 18 Aug 2026 01:20:41 GMT  
		Size: 97.6 KB (97602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62adfc7206d98c082f24577ae9b227079048a8be5870905b7045a9524ffbf2fa`  
		Last Modified: Tue, 18 Aug 2026 01:20:43 GMT  
		Size: 102.9 MB (102913623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6731f78a3a4be8c02e84d1c2fc9e0c44a409a60d035fda492c66885ce001f9a`  
		Last Modified: Tue, 18 Aug 2026 01:20:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:600561b1f528d3dec6c669b6209a982f0cbaddb3e7998fe3e7354f8cca4050bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17928139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ed4c73853c25733fca757bd1bee69f3b5fd168064486898672f5ff519525b96`

```dockerfile
```

-	Layers:
	-	`sha256:73c82711e9688ff72378e01653efe461b64c68f2693720f1632bca724b9f1440`  
		Last Modified: Tue, 18 Aug 2026 01:20:42 GMT  
		Size: 17.9 MB (17913388 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:490c2b160e9112b407e97d7f5800276e49d4b879645e9f621103a85289acb2ab`  
		Last Modified: Tue, 18 Aug 2026 01:20:41 GMT  
		Size: 14.8 KB (14751 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy`

```console
$ docker pull ros@sha256:da725acf8b0f9f30c683e33ffbdcd6482d077af96d6fdc7688c5f4f280b7d923
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy` - linux; amd64

```console
$ docker pull ros@sha256:1dfbed5c7ae2dcbe90f8689476adaac21c8da866738f44dec45c01669d91c40b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.8 MB (298834127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59739126c6f16414f833acf9304b72be523501c4781c407f3a2168669284e961`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:48 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:57 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:03 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:43 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:44:43 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:44:43 GMT
ENV ROS_DISTRO=jazzy
# Tue, 04 Aug 2026 01:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:44 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:44:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:44:44 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:31:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:31:52 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:31:54 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f25b50636e83b2a8bc5bd12220bd8ba469c6888bb70ee5346f91e0a1d8e96290`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 683.3 KB (683332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d60ac9847b683b465f0c04902d33e021550a4060761f60c78b94e7f53eca8558`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 9.1 MB (9114097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d431e34622e4d3f05156edf2323b9865d28b4fbb07d230e6f90d2669a38be9a3`  
		Last Modified: Tue, 04 Aug 2026 01:45:09 GMT  
		Size: 94.8 KB (94767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d2e745cf512c62a1c15c2181f23cb0e0541442e77da298087037220c07a1247`  
		Last Modified: Tue, 04 Aug 2026 01:45:13 GMT  
		Size: 120.5 MB (120509370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a8056250502e5ecacc2034cc633e586c1eb412fe890941ac4eed2845dd56ac9`  
		Last Modified: Tue, 04 Aug 2026 01:45:11 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18fbc8e8c3f1ea36c56d716ab6638ff468d4e822952575b9dcf81189200c0942`  
		Last Modified: Tue, 04 Aug 2026 02:32:52 GMT  
		Size: 110.2 MB (110191731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9496ec98d73478e8f49aaa2633f20d33028d7db9accebbb4ed5d58918c84e73`  
		Last Modified: Tue, 04 Aug 2026 02:32:48 GMT  
		Size: 407.6 KB (407605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff3b17e591b6859589c31c2c0113b4c8d8e5b1dd50ca0d29dcb57c022311932f`  
		Last Modified: Tue, 04 Aug 2026 02:32:49 GMT  
		Size: 2.5 KB (2505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62e3ff0d8e98c6027547cb2f682de5f486c4f507c67b59ca3e3ba870909a143c`  
		Last Modified: Tue, 04 Aug 2026 02:32:50 GMT  
		Size: 28.1 MB (28079414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy` - unknown; unknown

```console
$ docker pull ros@sha256:bbee34fbdf16c1f4298198e54d70bcc2e1a2853f8caeeaa4c8420305b03081f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24943773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bc4879c068f1d27d36a85f729df51c69e2ac27c4226792a8820f0781238fc01`

```dockerfile
```

-	Layers:
	-	`sha256:85b010a08c72968afdf2a96f95b266fb63fd1b420ea6e1967d6475597f63f98b`  
		Last Modified: Tue, 04 Aug 2026 02:32:50 GMT  
		Size: 24.9 MB (24927444 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:475f081ab4b995f2772c912c8c3ee6b9301a714baed87cf5e63cd1ab0b255bd7`  
		Last Modified: Tue, 04 Aug 2026 02:32:48 GMT  
		Size: 16.3 KB (16329 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:0935360d3ba92dcda402975d978af7e7d7a27a9ed7c8824143a6ee6f55267223
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.9 MB (284895543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eff485ca69353a882e0454845db3422e80d6bc3259249801d67d356a2ffa1d83`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:43 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:52 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:00 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:45 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:44:45 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:44:45 GMT
ENV ROS_DISTRO=jazzy
# Tue, 04 Aug 2026 01:44:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:45 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:44:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:44:45 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:37 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:39 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a11bd56d80a6967ddb49605103b484041943d77696e6187ac9abe2e5d7dab8b5`  
		Last Modified: Tue, 04 Aug 2026 01:45:14 GMT  
		Size: 683.5 KB (683467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e113fb8eb71513d204c2fe40a808cc23e259cb200f76b1f34768a0736d8ecc2f`  
		Last Modified: Tue, 04 Aug 2026 01:45:15 GMT  
		Size: 6.7 MB (6723586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd7b8878e14ceb872f67e16f2ad925332466b2b2a2215b77ac8d066d5038b5e7`  
		Last Modified: Tue, 04 Aug 2026 01:45:14 GMT  
		Size: 94.8 KB (94788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86928acf88c03c6b6b3182ad08d5a5b847583a7f4d8d985e776b7230c9e35383`  
		Last Modified: Tue, 04 Aug 2026 01:45:18 GMT  
		Size: 115.3 MB (115299944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e5aa386d262f44285a92aa39f100f7f5642d3ea67bc8097ec5a5a6d7c194336`  
		Last Modified: Tue, 04 Aug 2026 01:45:16 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17a19acc0471e90ee92438ed555b9eb1561d396bc542850b540494ec555963e1`  
		Last Modified: Tue, 04 Aug 2026 02:33:35 GMT  
		Size: 105.6 MB (105602925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77e8ea043ab3bc3a6918cad73006f37c91bbb0ad76563d12227adb5c783d9215`  
		Last Modified: Tue, 04 Aug 2026 02:33:32 GMT  
		Size: 407.6 KB (407605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d310caa5fa3165e426720670f3f317138b2b22b723d2ab243d668ead07fdeee9`  
		Last Modified: Tue, 04 Aug 2026 02:33:32 GMT  
		Size: 2.5 KB (2516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e7ed782335c81a3b269879a3a160394a569641af3277a4b98041c5527696658`  
		Last Modified: Tue, 04 Aug 2026 02:33:33 GMT  
		Size: 27.2 MB (27193698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy` - unknown; unknown

```console
$ docker pull ros@sha256:a7dd3c58c81e2c9e507a8cae5aa2ee5367a88187ac0744839eaabe5a003aa1cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 MB (24966165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:105ec8e6714691b470101e96dcc1a7c24e3c41b0f3e48b5e206b27599d1d650f`

```dockerfile
```

-	Layers:
	-	`sha256:2d53d974771768cbe5734089b5f62491d6fb38cafdffd6db31d58ef6c896ecc9`  
		Last Modified: Tue, 04 Aug 2026 02:33:33 GMT  
		Size: 24.9 MB (24949699 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c1266325e151b30ee4232c407d4b5246468bea2881702d0cc31a46cfcfc7454`  
		Last Modified: Tue, 04 Aug 2026 02:33:31 GMT  
		Size: 16.5 KB (16466 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-perception`

```console
$ docker pull ros@sha256:1d7487f66c4e72224e285feebc4e77e3b37389173621f6c2092c4850f827921f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-perception` - linux; amd64

```console
$ docker pull ros@sha256:d3ae12fcb4983d709503649c29df234f59c20e4ac54c26ef8f0d6a612bb0a2ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1083775678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0d3c8b3c02708378c29c881550dacd64162533d6f1c61027e6359fe97f7daa9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:48 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:57 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:03 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:43 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:44:43 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:44:43 GMT
ENV ROS_DISTRO=jazzy
# Tue, 04 Aug 2026 01:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:44 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:44:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:44:44 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:31:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:31:52 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:31:54 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:21:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f25b50636e83b2a8bc5bd12220bd8ba469c6888bb70ee5346f91e0a1d8e96290`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 683.3 KB (683332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d60ac9847b683b465f0c04902d33e021550a4060761f60c78b94e7f53eca8558`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 9.1 MB (9114097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d431e34622e4d3f05156edf2323b9865d28b4fbb07d230e6f90d2669a38be9a3`  
		Last Modified: Tue, 04 Aug 2026 01:45:09 GMT  
		Size: 94.8 KB (94767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d2e745cf512c62a1c15c2181f23cb0e0541442e77da298087037220c07a1247`  
		Last Modified: Tue, 04 Aug 2026 01:45:13 GMT  
		Size: 120.5 MB (120509370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a8056250502e5ecacc2034cc633e586c1eb412fe890941ac4eed2845dd56ac9`  
		Last Modified: Tue, 04 Aug 2026 01:45:11 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18fbc8e8c3f1ea36c56d716ab6638ff468d4e822952575b9dcf81189200c0942`  
		Last Modified: Tue, 04 Aug 2026 02:32:52 GMT  
		Size: 110.2 MB (110191731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9496ec98d73478e8f49aaa2633f20d33028d7db9accebbb4ed5d58918c84e73`  
		Last Modified: Tue, 04 Aug 2026 02:32:48 GMT  
		Size: 407.6 KB (407605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff3b17e591b6859589c31c2c0113b4c8d8e5b1dd50ca0d29dcb57c022311932f`  
		Last Modified: Tue, 04 Aug 2026 02:32:49 GMT  
		Size: 2.5 KB (2505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62e3ff0d8e98c6027547cb2f682de5f486c4f507c67b59ca3e3ba870909a143c`  
		Last Modified: Tue, 04 Aug 2026 02:32:50 GMT  
		Size: 28.1 MB (28079414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65acb7be84fdae933210ad062818b041c10393c9c159a311271ac9e2a4baeb19`  
		Last Modified: Tue, 04 Aug 2026 03:24:44 GMT  
		Size: 784.9 MB (784941551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception` - unknown; unknown

```console
$ docker pull ros@sha256:d8d0c4b36e90ea0fce71e65816c6d4f19f2af9da9dc5c29b0e7dfd9e520e62f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61116756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:366d02f44c204ef7d5c19ad3ff8e30d32ad07f39522b1e166355a70efaa027dc`

```dockerfile
```

-	Layers:
	-	`sha256:e63c46e756c69c4c33d9793544b2107f9a14e44fa765ec67267ccfabfc2d28c1`  
		Last Modified: Tue, 04 Aug 2026 03:24:32 GMT  
		Size: 61.1 MB (61107418 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0dcd26fde32b61840917e9968b60769faf41baa12a4c3dd1555b64593df66b22`  
		Last Modified: Tue, 04 Aug 2026 03:24:30 GMT  
		Size: 9.3 KB (9338 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:18b5defec83fb5b4d979950e8208ef919b8eb0777106d8e758052c0ac63d14d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **983.9 MB (983939648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99f0c56f4b8d3a56128c4960028d02157e7cbf6a128438fc1fa0ee2ae2605810`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:43 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:52 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:00 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:45 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:44:45 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:44:45 GMT
ENV ROS_DISTRO=jazzy
# Tue, 04 Aug 2026 01:44:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:45 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:44:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:44:45 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:37 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:39 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a11bd56d80a6967ddb49605103b484041943d77696e6187ac9abe2e5d7dab8b5`  
		Last Modified: Tue, 04 Aug 2026 01:45:14 GMT  
		Size: 683.5 KB (683467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e113fb8eb71513d204c2fe40a808cc23e259cb200f76b1f34768a0736d8ecc2f`  
		Last Modified: Tue, 04 Aug 2026 01:45:15 GMT  
		Size: 6.7 MB (6723586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd7b8878e14ceb872f67e16f2ad925332466b2b2a2215b77ac8d066d5038b5e7`  
		Last Modified: Tue, 04 Aug 2026 01:45:14 GMT  
		Size: 94.8 KB (94788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86928acf88c03c6b6b3182ad08d5a5b847583a7f4d8d985e776b7230c9e35383`  
		Last Modified: Tue, 04 Aug 2026 01:45:18 GMT  
		Size: 115.3 MB (115299944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e5aa386d262f44285a92aa39f100f7f5642d3ea67bc8097ec5a5a6d7c194336`  
		Last Modified: Tue, 04 Aug 2026 01:45:16 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17a19acc0471e90ee92438ed555b9eb1561d396bc542850b540494ec555963e1`  
		Last Modified: Tue, 04 Aug 2026 02:33:35 GMT  
		Size: 105.6 MB (105602925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77e8ea043ab3bc3a6918cad73006f37c91bbb0ad76563d12227adb5c783d9215`  
		Last Modified: Tue, 04 Aug 2026 02:33:32 GMT  
		Size: 407.6 KB (407605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d310caa5fa3165e426720670f3f317138b2b22b723d2ab243d668ead07fdeee9`  
		Last Modified: Tue, 04 Aug 2026 02:33:32 GMT  
		Size: 2.5 KB (2516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e7ed782335c81a3b269879a3a160394a569641af3277a4b98041c5527696658`  
		Last Modified: Tue, 04 Aug 2026 02:33:33 GMT  
		Size: 27.2 MB (27193698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5362d80efa03aca77309b504828e5662c3db6af94fb96470c9c525a4469b1445`  
		Last Modified: Tue, 04 Aug 2026 03:24:52 GMT  
		Size: 699.0 MB (699044105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception` - unknown; unknown

```console
$ docker pull ros@sha256:2dc0fdf4d9f99f506c1b5d6cf58ab4e502d7610cda4c2e10f3d48a28d9b53169
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61047355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99404fff12e93428095c7ed99756a337a52c0e9e6e614b71a690c1f477a5bc6e`

```dockerfile
```

-	Layers:
	-	`sha256:ea876b99bfb83de2ee2de80e440ac5eb434685c1bae4ea842467f5556ef273d0`  
		Last Modified: Tue, 04 Aug 2026 03:24:40 GMT  
		Size: 61.0 MB (61037937 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b070d7cf01b72d065f4dd96387982dfb2d4ac4a3b561ec1893db93e42b91d11`  
		Last Modified: Tue, 04 Aug 2026 03:24:37 GMT  
		Size: 9.4 KB (9418 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-perception-noble`

```console
$ docker pull ros@sha256:1d7487f66c4e72224e285feebc4e77e3b37389173621f6c2092c4850f827921f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-perception-noble` - linux; amd64

```console
$ docker pull ros@sha256:d3ae12fcb4983d709503649c29df234f59c20e4ac54c26ef8f0d6a612bb0a2ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1083775678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0d3c8b3c02708378c29c881550dacd64162533d6f1c61027e6359fe97f7daa9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:48 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:57 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:03 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:43 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:44:43 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:44:43 GMT
ENV ROS_DISTRO=jazzy
# Tue, 04 Aug 2026 01:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:44 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:44:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:44:44 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:31:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:31:52 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:31:54 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:21:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f25b50636e83b2a8bc5bd12220bd8ba469c6888bb70ee5346f91e0a1d8e96290`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 683.3 KB (683332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d60ac9847b683b465f0c04902d33e021550a4060761f60c78b94e7f53eca8558`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 9.1 MB (9114097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d431e34622e4d3f05156edf2323b9865d28b4fbb07d230e6f90d2669a38be9a3`  
		Last Modified: Tue, 04 Aug 2026 01:45:09 GMT  
		Size: 94.8 KB (94767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d2e745cf512c62a1c15c2181f23cb0e0541442e77da298087037220c07a1247`  
		Last Modified: Tue, 04 Aug 2026 01:45:13 GMT  
		Size: 120.5 MB (120509370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a8056250502e5ecacc2034cc633e586c1eb412fe890941ac4eed2845dd56ac9`  
		Last Modified: Tue, 04 Aug 2026 01:45:11 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18fbc8e8c3f1ea36c56d716ab6638ff468d4e822952575b9dcf81189200c0942`  
		Last Modified: Tue, 04 Aug 2026 02:32:52 GMT  
		Size: 110.2 MB (110191731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9496ec98d73478e8f49aaa2633f20d33028d7db9accebbb4ed5d58918c84e73`  
		Last Modified: Tue, 04 Aug 2026 02:32:48 GMT  
		Size: 407.6 KB (407605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff3b17e591b6859589c31c2c0113b4c8d8e5b1dd50ca0d29dcb57c022311932f`  
		Last Modified: Tue, 04 Aug 2026 02:32:49 GMT  
		Size: 2.5 KB (2505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62e3ff0d8e98c6027547cb2f682de5f486c4f507c67b59ca3e3ba870909a143c`  
		Last Modified: Tue, 04 Aug 2026 02:32:50 GMT  
		Size: 28.1 MB (28079414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65acb7be84fdae933210ad062818b041c10393c9c159a311271ac9e2a4baeb19`  
		Last Modified: Tue, 04 Aug 2026 03:24:44 GMT  
		Size: 784.9 MB (784941551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:d8d0c4b36e90ea0fce71e65816c6d4f19f2af9da9dc5c29b0e7dfd9e520e62f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61116756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:366d02f44c204ef7d5c19ad3ff8e30d32ad07f39522b1e166355a70efaa027dc`

```dockerfile
```

-	Layers:
	-	`sha256:e63c46e756c69c4c33d9793544b2107f9a14e44fa765ec67267ccfabfc2d28c1`  
		Last Modified: Tue, 04 Aug 2026 03:24:32 GMT  
		Size: 61.1 MB (61107418 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0dcd26fde32b61840917e9968b60769faf41baa12a4c3dd1555b64593df66b22`  
		Last Modified: Tue, 04 Aug 2026 03:24:30 GMT  
		Size: 9.3 KB (9338 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-perception-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:18b5defec83fb5b4d979950e8208ef919b8eb0777106d8e758052c0ac63d14d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **983.9 MB (983939648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99f0c56f4b8d3a56128c4960028d02157e7cbf6a128438fc1fa0ee2ae2605810`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:43 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:52 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:00 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:45 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:44:45 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:44:45 GMT
ENV ROS_DISTRO=jazzy
# Tue, 04 Aug 2026 01:44:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:45 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:44:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:44:45 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:37 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:39 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a11bd56d80a6967ddb49605103b484041943d77696e6187ac9abe2e5d7dab8b5`  
		Last Modified: Tue, 04 Aug 2026 01:45:14 GMT  
		Size: 683.5 KB (683467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e113fb8eb71513d204c2fe40a808cc23e259cb200f76b1f34768a0736d8ecc2f`  
		Last Modified: Tue, 04 Aug 2026 01:45:15 GMT  
		Size: 6.7 MB (6723586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd7b8878e14ceb872f67e16f2ad925332466b2b2a2215b77ac8d066d5038b5e7`  
		Last Modified: Tue, 04 Aug 2026 01:45:14 GMT  
		Size: 94.8 KB (94788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86928acf88c03c6b6b3182ad08d5a5b847583a7f4d8d985e776b7230c9e35383`  
		Last Modified: Tue, 04 Aug 2026 01:45:18 GMT  
		Size: 115.3 MB (115299944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e5aa386d262f44285a92aa39f100f7f5642d3ea67bc8097ec5a5a6d7c194336`  
		Last Modified: Tue, 04 Aug 2026 01:45:16 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17a19acc0471e90ee92438ed555b9eb1561d396bc542850b540494ec555963e1`  
		Last Modified: Tue, 04 Aug 2026 02:33:35 GMT  
		Size: 105.6 MB (105602925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77e8ea043ab3bc3a6918cad73006f37c91bbb0ad76563d12227adb5c783d9215`  
		Last Modified: Tue, 04 Aug 2026 02:33:32 GMT  
		Size: 407.6 KB (407605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d310caa5fa3165e426720670f3f317138b2b22b723d2ab243d668ead07fdeee9`  
		Last Modified: Tue, 04 Aug 2026 02:33:32 GMT  
		Size: 2.5 KB (2516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e7ed782335c81a3b269879a3a160394a569641af3277a4b98041c5527696658`  
		Last Modified: Tue, 04 Aug 2026 02:33:33 GMT  
		Size: 27.2 MB (27193698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5362d80efa03aca77309b504828e5662c3db6af94fb96470c9c525a4469b1445`  
		Last Modified: Tue, 04 Aug 2026 03:24:52 GMT  
		Size: 699.0 MB (699044105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:2dc0fdf4d9f99f506c1b5d6cf58ab4e502d7610cda4c2e10f3d48a28d9b53169
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61047355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99404fff12e93428095c7ed99756a337a52c0e9e6e614b71a690c1f477a5bc6e`

```dockerfile
```

-	Layers:
	-	`sha256:ea876b99bfb83de2ee2de80e440ac5eb434685c1bae4ea842467f5556ef273d0`  
		Last Modified: Tue, 04 Aug 2026 03:24:40 GMT  
		Size: 61.0 MB (61037937 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b070d7cf01b72d065f4dd96387982dfb2d4ac4a3b561ec1893db93e42b91d11`  
		Last Modified: Tue, 04 Aug 2026 03:24:37 GMT  
		Size: 9.4 KB (9418 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-ros-base`

```console
$ docker pull ros@sha256:da725acf8b0f9f30c683e33ffbdcd6482d077af96d6fdc7688c5f4f280b7d923
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:1dfbed5c7ae2dcbe90f8689476adaac21c8da866738f44dec45c01669d91c40b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.8 MB (298834127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59739126c6f16414f833acf9304b72be523501c4781c407f3a2168669284e961`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:48 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:57 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:03 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:43 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:44:43 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:44:43 GMT
ENV ROS_DISTRO=jazzy
# Tue, 04 Aug 2026 01:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:44 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:44:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:44:44 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:31:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:31:52 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:31:54 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f25b50636e83b2a8bc5bd12220bd8ba469c6888bb70ee5346f91e0a1d8e96290`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 683.3 KB (683332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d60ac9847b683b465f0c04902d33e021550a4060761f60c78b94e7f53eca8558`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 9.1 MB (9114097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d431e34622e4d3f05156edf2323b9865d28b4fbb07d230e6f90d2669a38be9a3`  
		Last Modified: Tue, 04 Aug 2026 01:45:09 GMT  
		Size: 94.8 KB (94767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d2e745cf512c62a1c15c2181f23cb0e0541442e77da298087037220c07a1247`  
		Last Modified: Tue, 04 Aug 2026 01:45:13 GMT  
		Size: 120.5 MB (120509370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a8056250502e5ecacc2034cc633e586c1eb412fe890941ac4eed2845dd56ac9`  
		Last Modified: Tue, 04 Aug 2026 01:45:11 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18fbc8e8c3f1ea36c56d716ab6638ff468d4e822952575b9dcf81189200c0942`  
		Last Modified: Tue, 04 Aug 2026 02:32:52 GMT  
		Size: 110.2 MB (110191731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9496ec98d73478e8f49aaa2633f20d33028d7db9accebbb4ed5d58918c84e73`  
		Last Modified: Tue, 04 Aug 2026 02:32:48 GMT  
		Size: 407.6 KB (407605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff3b17e591b6859589c31c2c0113b4c8d8e5b1dd50ca0d29dcb57c022311932f`  
		Last Modified: Tue, 04 Aug 2026 02:32:49 GMT  
		Size: 2.5 KB (2505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62e3ff0d8e98c6027547cb2f682de5f486c4f507c67b59ca3e3ba870909a143c`  
		Last Modified: Tue, 04 Aug 2026 02:32:50 GMT  
		Size: 28.1 MB (28079414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:bbee34fbdf16c1f4298198e54d70bcc2e1a2853f8caeeaa4c8420305b03081f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24943773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bc4879c068f1d27d36a85f729df51c69e2ac27c4226792a8820f0781238fc01`

```dockerfile
```

-	Layers:
	-	`sha256:85b010a08c72968afdf2a96f95b266fb63fd1b420ea6e1967d6475597f63f98b`  
		Last Modified: Tue, 04 Aug 2026 02:32:50 GMT  
		Size: 24.9 MB (24927444 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:475f081ab4b995f2772c912c8c3ee6b9301a714baed87cf5e63cd1ab0b255bd7`  
		Last Modified: Tue, 04 Aug 2026 02:32:48 GMT  
		Size: 16.3 KB (16329 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:0935360d3ba92dcda402975d978af7e7d7a27a9ed7c8824143a6ee6f55267223
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.9 MB (284895543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eff485ca69353a882e0454845db3422e80d6bc3259249801d67d356a2ffa1d83`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:43 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:52 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:00 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:45 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:44:45 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:44:45 GMT
ENV ROS_DISTRO=jazzy
# Tue, 04 Aug 2026 01:44:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:45 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:44:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:44:45 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:37 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:39 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a11bd56d80a6967ddb49605103b484041943d77696e6187ac9abe2e5d7dab8b5`  
		Last Modified: Tue, 04 Aug 2026 01:45:14 GMT  
		Size: 683.5 KB (683467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e113fb8eb71513d204c2fe40a808cc23e259cb200f76b1f34768a0736d8ecc2f`  
		Last Modified: Tue, 04 Aug 2026 01:45:15 GMT  
		Size: 6.7 MB (6723586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd7b8878e14ceb872f67e16f2ad925332466b2b2a2215b77ac8d066d5038b5e7`  
		Last Modified: Tue, 04 Aug 2026 01:45:14 GMT  
		Size: 94.8 KB (94788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86928acf88c03c6b6b3182ad08d5a5b847583a7f4d8d985e776b7230c9e35383`  
		Last Modified: Tue, 04 Aug 2026 01:45:18 GMT  
		Size: 115.3 MB (115299944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e5aa386d262f44285a92aa39f100f7f5642d3ea67bc8097ec5a5a6d7c194336`  
		Last Modified: Tue, 04 Aug 2026 01:45:16 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17a19acc0471e90ee92438ed555b9eb1561d396bc542850b540494ec555963e1`  
		Last Modified: Tue, 04 Aug 2026 02:33:35 GMT  
		Size: 105.6 MB (105602925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77e8ea043ab3bc3a6918cad73006f37c91bbb0ad76563d12227adb5c783d9215`  
		Last Modified: Tue, 04 Aug 2026 02:33:32 GMT  
		Size: 407.6 KB (407605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d310caa5fa3165e426720670f3f317138b2b22b723d2ab243d668ead07fdeee9`  
		Last Modified: Tue, 04 Aug 2026 02:33:32 GMT  
		Size: 2.5 KB (2516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e7ed782335c81a3b269879a3a160394a569641af3277a4b98041c5527696658`  
		Last Modified: Tue, 04 Aug 2026 02:33:33 GMT  
		Size: 27.2 MB (27193698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:a7dd3c58c81e2c9e507a8cae5aa2ee5367a88187ac0744839eaabe5a003aa1cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 MB (24966165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:105ec8e6714691b470101e96dcc1a7c24e3c41b0f3e48b5e206b27599d1d650f`

```dockerfile
```

-	Layers:
	-	`sha256:2d53d974771768cbe5734089b5f62491d6fb38cafdffd6db31d58ef6c896ecc9`  
		Last Modified: Tue, 04 Aug 2026 02:33:33 GMT  
		Size: 24.9 MB (24949699 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c1266325e151b30ee4232c407d4b5246468bea2881702d0cc31a46cfcfc7454`  
		Last Modified: Tue, 04 Aug 2026 02:33:31 GMT  
		Size: 16.5 KB (16466 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-ros-base-noble`

```console
$ docker pull ros@sha256:da725acf8b0f9f30c683e33ffbdcd6482d077af96d6fdc7688c5f4f280b7d923
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-base-noble` - linux; amd64

```console
$ docker pull ros@sha256:1dfbed5c7ae2dcbe90f8689476adaac21c8da866738f44dec45c01669d91c40b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.8 MB (298834127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59739126c6f16414f833acf9304b72be523501c4781c407f3a2168669284e961`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:48 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:57 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:03 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:43 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:44:43 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:44:43 GMT
ENV ROS_DISTRO=jazzy
# Tue, 04 Aug 2026 01:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:44 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:44:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:44:44 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:31:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:31:52 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:31:54 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f25b50636e83b2a8bc5bd12220bd8ba469c6888bb70ee5346f91e0a1d8e96290`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 683.3 KB (683332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d60ac9847b683b465f0c04902d33e021550a4060761f60c78b94e7f53eca8558`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 9.1 MB (9114097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d431e34622e4d3f05156edf2323b9865d28b4fbb07d230e6f90d2669a38be9a3`  
		Last Modified: Tue, 04 Aug 2026 01:45:09 GMT  
		Size: 94.8 KB (94767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d2e745cf512c62a1c15c2181f23cb0e0541442e77da298087037220c07a1247`  
		Last Modified: Tue, 04 Aug 2026 01:45:13 GMT  
		Size: 120.5 MB (120509370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a8056250502e5ecacc2034cc633e586c1eb412fe890941ac4eed2845dd56ac9`  
		Last Modified: Tue, 04 Aug 2026 01:45:11 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18fbc8e8c3f1ea36c56d716ab6638ff468d4e822952575b9dcf81189200c0942`  
		Last Modified: Tue, 04 Aug 2026 02:32:52 GMT  
		Size: 110.2 MB (110191731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9496ec98d73478e8f49aaa2633f20d33028d7db9accebbb4ed5d58918c84e73`  
		Last Modified: Tue, 04 Aug 2026 02:32:48 GMT  
		Size: 407.6 KB (407605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff3b17e591b6859589c31c2c0113b4c8d8e5b1dd50ca0d29dcb57c022311932f`  
		Last Modified: Tue, 04 Aug 2026 02:32:49 GMT  
		Size: 2.5 KB (2505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62e3ff0d8e98c6027547cb2f682de5f486c4f507c67b59ca3e3ba870909a143c`  
		Last Modified: Tue, 04 Aug 2026 02:32:50 GMT  
		Size: 28.1 MB (28079414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:bbee34fbdf16c1f4298198e54d70bcc2e1a2853f8caeeaa4c8420305b03081f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24943773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bc4879c068f1d27d36a85f729df51c69e2ac27c4226792a8820f0781238fc01`

```dockerfile
```

-	Layers:
	-	`sha256:85b010a08c72968afdf2a96f95b266fb63fd1b420ea6e1967d6475597f63f98b`  
		Last Modified: Tue, 04 Aug 2026 02:32:50 GMT  
		Size: 24.9 MB (24927444 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:475f081ab4b995f2772c912c8c3ee6b9301a714baed87cf5e63cd1ab0b255bd7`  
		Last Modified: Tue, 04 Aug 2026 02:32:48 GMT  
		Size: 16.3 KB (16329 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-base-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:0935360d3ba92dcda402975d978af7e7d7a27a9ed7c8824143a6ee6f55267223
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.9 MB (284895543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eff485ca69353a882e0454845db3422e80d6bc3259249801d67d356a2ffa1d83`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:43 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:52 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:00 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:45 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:44:45 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:44:45 GMT
ENV ROS_DISTRO=jazzy
# Tue, 04 Aug 2026 01:44:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:45 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:44:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:44:45 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:37 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:39 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a11bd56d80a6967ddb49605103b484041943d77696e6187ac9abe2e5d7dab8b5`  
		Last Modified: Tue, 04 Aug 2026 01:45:14 GMT  
		Size: 683.5 KB (683467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e113fb8eb71513d204c2fe40a808cc23e259cb200f76b1f34768a0736d8ecc2f`  
		Last Modified: Tue, 04 Aug 2026 01:45:15 GMT  
		Size: 6.7 MB (6723586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd7b8878e14ceb872f67e16f2ad925332466b2b2a2215b77ac8d066d5038b5e7`  
		Last Modified: Tue, 04 Aug 2026 01:45:14 GMT  
		Size: 94.8 KB (94788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86928acf88c03c6b6b3182ad08d5a5b847583a7f4d8d985e776b7230c9e35383`  
		Last Modified: Tue, 04 Aug 2026 01:45:18 GMT  
		Size: 115.3 MB (115299944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e5aa386d262f44285a92aa39f100f7f5642d3ea67bc8097ec5a5a6d7c194336`  
		Last Modified: Tue, 04 Aug 2026 01:45:16 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17a19acc0471e90ee92438ed555b9eb1561d396bc542850b540494ec555963e1`  
		Last Modified: Tue, 04 Aug 2026 02:33:35 GMT  
		Size: 105.6 MB (105602925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77e8ea043ab3bc3a6918cad73006f37c91bbb0ad76563d12227adb5c783d9215`  
		Last Modified: Tue, 04 Aug 2026 02:33:32 GMT  
		Size: 407.6 KB (407605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d310caa5fa3165e426720670f3f317138b2b22b723d2ab243d668ead07fdeee9`  
		Last Modified: Tue, 04 Aug 2026 02:33:32 GMT  
		Size: 2.5 KB (2516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e7ed782335c81a3b269879a3a160394a569641af3277a4b98041c5527696658`  
		Last Modified: Tue, 04 Aug 2026 02:33:33 GMT  
		Size: 27.2 MB (27193698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:a7dd3c58c81e2c9e507a8cae5aa2ee5367a88187ac0744839eaabe5a003aa1cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 MB (24966165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:105ec8e6714691b470101e96dcc1a7c24e3c41b0f3e48b5e206b27599d1d650f`

```dockerfile
```

-	Layers:
	-	`sha256:2d53d974771768cbe5734089b5f62491d6fb38cafdffd6db31d58ef6c896ecc9`  
		Last Modified: Tue, 04 Aug 2026 02:33:33 GMT  
		Size: 24.9 MB (24949699 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c1266325e151b30ee4232c407d4b5246468bea2881702d0cc31a46cfcfc7454`  
		Last Modified: Tue, 04 Aug 2026 02:33:31 GMT  
		Size: 16.5 KB (16466 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-ros-core`

```console
$ docker pull ros@sha256:334c935e2695c40d80264d3ec17c1b1ce0b8699cd92f381ed2117c5a742bf118
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:2ab27f7d9ecb370a9045001314d35a0cab2fb855c61436d40dcfcca59ac2052a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.2 MB (160152872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d471358d62970dada89aef9de3f860e493061a6e8da569afc3caaea164cabdb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:48 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:57 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:03 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:43 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:44:43 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:44:43 GMT
ENV ROS_DISTRO=jazzy
# Tue, 04 Aug 2026 01:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:44 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:44:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:44:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f25b50636e83b2a8bc5bd12220bd8ba469c6888bb70ee5346f91e0a1d8e96290`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 683.3 KB (683332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d60ac9847b683b465f0c04902d33e021550a4060761f60c78b94e7f53eca8558`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 9.1 MB (9114097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d431e34622e4d3f05156edf2323b9865d28b4fbb07d230e6f90d2669a38be9a3`  
		Last Modified: Tue, 04 Aug 2026 01:45:09 GMT  
		Size: 94.8 KB (94767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d2e745cf512c62a1c15c2181f23cb0e0541442e77da298087037220c07a1247`  
		Last Modified: Tue, 04 Aug 2026 01:45:13 GMT  
		Size: 120.5 MB (120509370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a8056250502e5ecacc2034cc633e586c1eb412fe890941ac4eed2845dd56ac9`  
		Last Modified: Tue, 04 Aug 2026 01:45:11 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:6610f8b7665e4884ecf72634f173d692883eed51dc2883ca42c3775519e016c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18633399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d113365886cb5dc333e5762debccc6e6e1a19585dd97d4694e85519d3c22a622`

```dockerfile
```

-	Layers:
	-	`sha256:c09c8354bd02980e5352da36bd1d84031118208b127e8d1b4268361f14443031`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 18.6 MB (18618791 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1de3fa9b7c211b2824a1cc28de62d5c3b753543e0341ac1b6072e7a401aa494c`  
		Last Modified: Tue, 04 Aug 2026 01:45:09 GMT  
		Size: 14.6 KB (14608 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:032a0ff00860e1c9d2e717b7070d643594f1bbb04a9e036608232b0806a72666
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.7 MB (151688799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b45297b7f21f156936e5d80b2385bd6f76993a76066224901e09f97017ac9159`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:43 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:52 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:00 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:45 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:44:45 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:44:45 GMT
ENV ROS_DISTRO=jazzy
# Tue, 04 Aug 2026 01:44:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:45 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:44:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:44:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a11bd56d80a6967ddb49605103b484041943d77696e6187ac9abe2e5d7dab8b5`  
		Last Modified: Tue, 04 Aug 2026 01:45:14 GMT  
		Size: 683.5 KB (683467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e113fb8eb71513d204c2fe40a808cc23e259cb200f76b1f34768a0736d8ecc2f`  
		Last Modified: Tue, 04 Aug 2026 01:45:15 GMT  
		Size: 6.7 MB (6723586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd7b8878e14ceb872f67e16f2ad925332466b2b2a2215b77ac8d066d5038b5e7`  
		Last Modified: Tue, 04 Aug 2026 01:45:14 GMT  
		Size: 94.8 KB (94788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86928acf88c03c6b6b3182ad08d5a5b847583a7f4d8d985e776b7230c9e35383`  
		Last Modified: Tue, 04 Aug 2026 01:45:18 GMT  
		Size: 115.3 MB (115299944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e5aa386d262f44285a92aa39f100f7f5642d3ea67bc8097ec5a5a6d7c194336`  
		Last Modified: Tue, 04 Aug 2026 01:45:16 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:335a1dc6d3b1e5f783839e93678dc0103324e4d73aceccf4bc660c256a1b8720
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18607530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15e4f4e14546f5e07506cc869edfb3c754324fc1b107eb517123c85d4c8f4c5e`

```dockerfile
```

-	Layers:
	-	`sha256:096eeb402ad5480e94d3e8093e190c8e31a7467028c77958b2d4466c97a8e342`  
		Last Modified: Tue, 04 Aug 2026 01:45:16 GMT  
		Size: 18.6 MB (18592797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:275ed23297647b8e7d69420907552c523dcd8250cbc4d64868794d856245ef97`  
		Last Modified: Tue, 04 Aug 2026 01:45:14 GMT  
		Size: 14.7 KB (14733 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-ros-core-noble`

```console
$ docker pull ros@sha256:334c935e2695c40d80264d3ec17c1b1ce0b8699cd92f381ed2117c5a742bf118
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-core-noble` - linux; amd64

```console
$ docker pull ros@sha256:2ab27f7d9ecb370a9045001314d35a0cab2fb855c61436d40dcfcca59ac2052a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.2 MB (160152872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d471358d62970dada89aef9de3f860e493061a6e8da569afc3caaea164cabdb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:48 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:57 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:03 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:43 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:44:43 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:44:43 GMT
ENV ROS_DISTRO=jazzy
# Tue, 04 Aug 2026 01:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:44 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:44:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:44:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f25b50636e83b2a8bc5bd12220bd8ba469c6888bb70ee5346f91e0a1d8e96290`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 683.3 KB (683332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d60ac9847b683b465f0c04902d33e021550a4060761f60c78b94e7f53eca8558`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 9.1 MB (9114097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d431e34622e4d3f05156edf2323b9865d28b4fbb07d230e6f90d2669a38be9a3`  
		Last Modified: Tue, 04 Aug 2026 01:45:09 GMT  
		Size: 94.8 KB (94767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d2e745cf512c62a1c15c2181f23cb0e0541442e77da298087037220c07a1247`  
		Last Modified: Tue, 04 Aug 2026 01:45:13 GMT  
		Size: 120.5 MB (120509370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a8056250502e5ecacc2034cc633e586c1eb412fe890941ac4eed2845dd56ac9`  
		Last Modified: Tue, 04 Aug 2026 01:45:11 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:6610f8b7665e4884ecf72634f173d692883eed51dc2883ca42c3775519e016c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18633399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d113365886cb5dc333e5762debccc6e6e1a19585dd97d4694e85519d3c22a622`

```dockerfile
```

-	Layers:
	-	`sha256:c09c8354bd02980e5352da36bd1d84031118208b127e8d1b4268361f14443031`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 18.6 MB (18618791 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1de3fa9b7c211b2824a1cc28de62d5c3b753543e0341ac1b6072e7a401aa494c`  
		Last Modified: Tue, 04 Aug 2026 01:45:09 GMT  
		Size: 14.6 KB (14608 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-core-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:032a0ff00860e1c9d2e717b7070d643594f1bbb04a9e036608232b0806a72666
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.7 MB (151688799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b45297b7f21f156936e5d80b2385bd6f76993a76066224901e09f97017ac9159`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:43 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:52 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:00 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:45 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:44:45 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:44:45 GMT
ENV ROS_DISTRO=jazzy
# Tue, 04 Aug 2026 01:44:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:45 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:44:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:44:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a11bd56d80a6967ddb49605103b484041943d77696e6187ac9abe2e5d7dab8b5`  
		Last Modified: Tue, 04 Aug 2026 01:45:14 GMT  
		Size: 683.5 KB (683467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e113fb8eb71513d204c2fe40a808cc23e259cb200f76b1f34768a0736d8ecc2f`  
		Last Modified: Tue, 04 Aug 2026 01:45:15 GMT  
		Size: 6.7 MB (6723586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd7b8878e14ceb872f67e16f2ad925332466b2b2a2215b77ac8d066d5038b5e7`  
		Last Modified: Tue, 04 Aug 2026 01:45:14 GMT  
		Size: 94.8 KB (94788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86928acf88c03c6b6b3182ad08d5a5b847583a7f4d8d985e776b7230c9e35383`  
		Last Modified: Tue, 04 Aug 2026 01:45:18 GMT  
		Size: 115.3 MB (115299944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e5aa386d262f44285a92aa39f100f7f5642d3ea67bc8097ec5a5a6d7c194336`  
		Last Modified: Tue, 04 Aug 2026 01:45:16 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:335a1dc6d3b1e5f783839e93678dc0103324e4d73aceccf4bc660c256a1b8720
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18607530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15e4f4e14546f5e07506cc869edfb3c754324fc1b107eb517123c85d4c8f4c5e`

```dockerfile
```

-	Layers:
	-	`sha256:096eeb402ad5480e94d3e8093e190c8e31a7467028c77958b2d4466c97a8e342`  
		Last Modified: Tue, 04 Aug 2026 01:45:16 GMT  
		Size: 18.6 MB (18592797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:275ed23297647b8e7d69420907552c523dcd8250cbc4d64868794d856245ef97`  
		Last Modified: Tue, 04 Aug 2026 01:45:14 GMT  
		Size: 14.7 KB (14733 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted`

```console
$ docker pull ros@sha256:4ca53d5b084bdbe92a7a7d7186f56db6a716a6c7c33ad401ddb0ec82d6e9e479
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted` - linux; amd64

```console
$ docker pull ros@sha256:d28b9e57a40bebf51eb3e66ec851d560d5443b20bdc28c3821cd1b767039be4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.2 MB (299174714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b979aacd3933a3af0604dfcca5e438ce38d55a5e2c7266f3e5d373285e74f095`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:45:33 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:46 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:52 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:39 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:39 GMT
ENV ROS_DISTRO=kilted
# Tue, 04 Aug 2026 01:46:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:39 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:39 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:31:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:00 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:01 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0f918fa69ddc2ea84a0f22a7b870442eafb118825aaea91b62009e0a9dce319`  
		Last Modified: Tue, 04 Aug 2026 01:47:09 GMT  
		Size: 683.3 KB (683341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:243482ff6b8615d6f2763db1f8132b2e7c3cb927b995de8f5d83b9d334a0bef4`  
		Last Modified: Tue, 04 Aug 2026 01:47:09 GMT  
		Size: 9.1 MB (9114192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:994ae2393899f27129b58b7308b1523858eec6f1b53fecea83385154c451f307`  
		Last Modified: Tue, 04 Aug 2026 01:47:08 GMT  
		Size: 94.8 KB (94766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fec94c5ed3b68150f4b29c2cce23656c93fd9d54ff3bc6b440ab16e5b7e756d`  
		Last Modified: Tue, 04 Aug 2026 01:47:11 GMT  
		Size: 121.1 MB (121072272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538caae360a338033e229bbb6346e517a449aae2d1ee1d1833f52bfa2278af02`  
		Last Modified: Tue, 04 Aug 2026 01:47:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fca0915e159460a2a907b84c7193198452dc22ac9463de04333a5ab639a305e`  
		Last Modified: Tue, 04 Aug 2026 02:33:00 GMT  
		Size: 110.2 MB (110193617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c3c0e78f3f8638fd8fc6fd5af8cafafa74e72894297efe1ede0f95d1f0d3206`  
		Last Modified: Tue, 04 Aug 2026 02:32:57 GMT  
		Size: 370.3 KB (370330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad429a4a446b03fe9f5a266eb27f2e67f11c408754eea729866de21e271d64e0`  
		Last Modified: Tue, 04 Aug 2026 02:32:57 GMT  
		Size: 2.5 KB (2511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73a03c4d47d018a35e01137e7d72c574c7d51ac04eb1ebba69f8c5d514c3a828`  
		Last Modified: Tue, 04 Aug 2026 02:32:58 GMT  
		Size: 27.9 MB (27892380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted` - unknown; unknown

```console
$ docker pull ros@sha256:ee78c49ec55d8ce958fc38c327f082c4011bc492146d30583ed05d76cb2628da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24861383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4d41f0a5e31bafafddad596883294d3d313fb49aeb7010814271e916844cb4e`

```dockerfile
```

-	Layers:
	-	`sha256:4595f5965af96d3b54bc23a73821e479bd57b533016eb9b72168d6956fdfae67`  
		Last Modified: Tue, 04 Aug 2026 02:32:58 GMT  
		Size: 24.8 MB (24845037 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66758dc4434d43662aa925275d106700271b5da23f0e7020963956409b2f1dc0`  
		Last Modified: Tue, 04 Aug 2026 02:32:56 GMT  
		Size: 16.3 KB (16346 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7a30cb7b90c0e620d21989d71350b662f197db863e7283d77e703a4f3a453eb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.2 MB (285182082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f152010ee2bf2845248d031a31d787795c781153513d510f30eba983e6012530`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:45:29 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:40 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:48 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:32 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:32 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:32 GMT
ENV ROS_DISTRO=kilted
# Tue, 04 Aug 2026 01:46:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:32 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:32 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:42 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:43 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:33:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12ee272dddf1e441f86fdd6a93f32b92a0199d12acdc5f82fcf099c67b37eef8`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 683.5 KB (683452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f0f334f4bd9f18856754f81e056622532e2b2235750a03c7bad9b4257e517f3`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 6.7 MB (6723541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be168bea448afac505e08e3b2d3337c80aed439c96f27f3e89511642689f0f6`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 94.8 KB (94790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb1c1e484ffea0bc62a68074f8f939f7ab478fbb319b5d0965c9b205b234c56`  
		Last Modified: Tue, 04 Aug 2026 01:47:04 GMT  
		Size: 115.8 MB (115816490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1091f72d64ff31400bdd1a65c473bfc82f57a73a555f84780c83f788dc100b69`  
		Last Modified: Tue, 04 Aug 2026 01:47:02 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:554f0de4fcee98aca499332208ef6a2dfd499691cb47c5714242b09e704d6156`  
		Last Modified: Tue, 04 Aug 2026 02:33:42 GMT  
		Size: 105.6 MB (105605084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba97b0429669ee9d03522a9a07fa2928077a75957e99c24a16073e3aa1ce1b6`  
		Last Modified: Tue, 04 Aug 2026 02:33:39 GMT  
		Size: 370.3 KB (370330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3773278e4120e400a975e5ec7e15bc1c55a9243008043967358e624621e5b55e`  
		Last Modified: Tue, 04 Aug 2026 02:33:39 GMT  
		Size: 2.5 KB (2503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:449dc587d4c7087422c8e153be64dd08baef8ded859f9284844b190d4f14c367`  
		Last Modified: Tue, 04 Aug 2026 02:33:41 GMT  
		Size: 27.0 MB (26998878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted` - unknown; unknown

```console
$ docker pull ros@sha256:757f86b5129d40fb4ae2c032fdb91f5649bded0e323cb08a699c36449ad1f7e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24883781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec5eeb3d6b9d901d0b305d6ef5fe71ea55cda305a0c1a88cdcec7016d25fca4b`

```dockerfile
```

-	Layers:
	-	`sha256:64d32ad55f9c3ef0bf81f42346883f72453a51089d4e292a5bf1c7ea252af0fe`  
		Last Modified: Tue, 04 Aug 2026 02:33:41 GMT  
		Size: 24.9 MB (24867297 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12884212ef0447126641514b7de8c734cf20c7bdc0b802bdf402d382da30dd91`  
		Last Modified: Tue, 04 Aug 2026 02:33:39 GMT  
		Size: 16.5 KB (16484 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-perception`

```console
$ docker pull ros@sha256:6f5802693a9130101700fc544408237a962ce4ef34dd3567cacd2cf924fb4874
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-perception` - linux; amd64

```console
$ docker pull ros@sha256:2ed25c8ae61f58dd13db3ea233f691e4943420c194835a28ffa6492dc7d5ce4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1084110407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:070ac6883b3f6eb104d104aca09ceffeb2585ea6cf172959c67aa4b1150853b7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:45:33 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:46 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:52 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:39 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:39 GMT
ENV ROS_DISTRO=kilted
# Tue, 04 Aug 2026 01:46:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:39 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:39 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:31:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:00 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:01 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:21:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0f918fa69ddc2ea84a0f22a7b870442eafb118825aaea91b62009e0a9dce319`  
		Last Modified: Tue, 04 Aug 2026 01:47:09 GMT  
		Size: 683.3 KB (683341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:243482ff6b8615d6f2763db1f8132b2e7c3cb927b995de8f5d83b9d334a0bef4`  
		Last Modified: Tue, 04 Aug 2026 01:47:09 GMT  
		Size: 9.1 MB (9114192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:994ae2393899f27129b58b7308b1523858eec6f1b53fecea83385154c451f307`  
		Last Modified: Tue, 04 Aug 2026 01:47:08 GMT  
		Size: 94.8 KB (94766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fec94c5ed3b68150f4b29c2cce23656c93fd9d54ff3bc6b440ab16e5b7e756d`  
		Last Modified: Tue, 04 Aug 2026 01:47:11 GMT  
		Size: 121.1 MB (121072272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538caae360a338033e229bbb6346e517a449aae2d1ee1d1833f52bfa2278af02`  
		Last Modified: Tue, 04 Aug 2026 01:47:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fca0915e159460a2a907b84c7193198452dc22ac9463de04333a5ab639a305e`  
		Last Modified: Tue, 04 Aug 2026 02:33:00 GMT  
		Size: 110.2 MB (110193617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c3c0e78f3f8638fd8fc6fd5af8cafafa74e72894297efe1ede0f95d1f0d3206`  
		Last Modified: Tue, 04 Aug 2026 02:32:57 GMT  
		Size: 370.3 KB (370330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad429a4a446b03fe9f5a266eb27f2e67f11c408754eea729866de21e271d64e0`  
		Last Modified: Tue, 04 Aug 2026 02:32:57 GMT  
		Size: 2.5 KB (2511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73a03c4d47d018a35e01137e7d72c574c7d51ac04eb1ebba69f8c5d514c3a828`  
		Last Modified: Tue, 04 Aug 2026 02:32:58 GMT  
		Size: 27.9 MB (27892380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22e0881833b1709b07ca14f7f06acef5b383081c4351303bb9f75cde0fc04a4c`  
		Last Modified: Tue, 04 Aug 2026 03:24:41 GMT  
		Size: 784.9 MB (784935693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception` - unknown; unknown

```console
$ docker pull ros@sha256:5e759b573ccb85cc48f5de4a128878268911b4a06045fba54e839cc52afb5c64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61041536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:827ddab3fc002f50aea33cfddaf5fe786380dc42ac3254d305d6187d85cc20d6`

```dockerfile
```

-	Layers:
	-	`sha256:d0ff0c088ea0a61a335b410d4781198705532a1fe7cb6e4f1a43afc220417738`  
		Last Modified: Tue, 04 Aug 2026 03:24:28 GMT  
		Size: 61.0 MB (61032184 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55231da856e7d10193d381dc3b43f5bde4d1b495d1e5ee6c8895edd08f9f288a`  
		Last Modified: Tue, 04 Aug 2026 03:24:25 GMT  
		Size: 9.4 KB (9352 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:43164627a1e117ea8bdfc450a6c2d5c4b893e187da2adef84e576172969007a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **984.3 MB (984261095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e009c6ee921b8e0028067a159897bbcd8800e06c931802b7baf82eefb142d98`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:45:29 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:40 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:48 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:32 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:32 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:32 GMT
ENV ROS_DISTRO=kilted
# Tue, 04 Aug 2026 01:46:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:32 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:32 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:42 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:43 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:33:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:21:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12ee272dddf1e441f86fdd6a93f32b92a0199d12acdc5f82fcf099c67b37eef8`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 683.5 KB (683452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f0f334f4bd9f18856754f81e056622532e2b2235750a03c7bad9b4257e517f3`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 6.7 MB (6723541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be168bea448afac505e08e3b2d3337c80aed439c96f27f3e89511642689f0f6`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 94.8 KB (94790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb1c1e484ffea0bc62a68074f8f939f7ab478fbb319b5d0965c9b205b234c56`  
		Last Modified: Tue, 04 Aug 2026 01:47:04 GMT  
		Size: 115.8 MB (115816490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1091f72d64ff31400bdd1a65c473bfc82f57a73a555f84780c83f788dc100b69`  
		Last Modified: Tue, 04 Aug 2026 01:47:02 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:554f0de4fcee98aca499332208ef6a2dfd499691cb47c5714242b09e704d6156`  
		Last Modified: Tue, 04 Aug 2026 02:33:42 GMT  
		Size: 105.6 MB (105605084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba97b0429669ee9d03522a9a07fa2928077a75957e99c24a16073e3aa1ce1b6`  
		Last Modified: Tue, 04 Aug 2026 02:33:39 GMT  
		Size: 370.3 KB (370330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3773278e4120e400a975e5ec7e15bc1c55a9243008043967358e624621e5b55e`  
		Last Modified: Tue, 04 Aug 2026 02:33:39 GMT  
		Size: 2.5 KB (2503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:449dc587d4c7087422c8e153be64dd08baef8ded859f9284844b190d4f14c367`  
		Last Modified: Tue, 04 Aug 2026 02:33:41 GMT  
		Size: 27.0 MB (26998878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f46481040784409b32428bbc86b4086d2ff29e1a6d74e4cc65e8d088df4ec50`  
		Last Modified: Tue, 04 Aug 2026 03:24:38 GMT  
		Size: 699.1 MB (699079013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception` - unknown; unknown

```console
$ docker pull ros@sha256:38c8734323d954cec6a6ac37613da75654192bad406b1cb5c4dc490abac37d4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (60972140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a843334dab0bda14bca9879ea4ef01f2229e6a23a7aae501bf46315ed35ab87b`

```dockerfile
```

-	Layers:
	-	`sha256:408f6c8831db78a15a9a4747eb37fff4ce221c1dc72a07f583bd0229d2fdb4ca`  
		Last Modified: Tue, 04 Aug 2026 03:24:27 GMT  
		Size: 61.0 MB (60962708 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ba0061db5669552d43779bffce28b722cef52ca205acfb150fdc818faa35505`  
		Last Modified: Tue, 04 Aug 2026 03:24:25 GMT  
		Size: 9.4 KB (9432 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-perception-noble`

```console
$ docker pull ros@sha256:6f5802693a9130101700fc544408237a962ce4ef34dd3567cacd2cf924fb4874
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-perception-noble` - linux; amd64

```console
$ docker pull ros@sha256:2ed25c8ae61f58dd13db3ea233f691e4943420c194835a28ffa6492dc7d5ce4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1084110407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:070ac6883b3f6eb104d104aca09ceffeb2585ea6cf172959c67aa4b1150853b7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:45:33 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:46 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:52 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:39 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:39 GMT
ENV ROS_DISTRO=kilted
# Tue, 04 Aug 2026 01:46:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:39 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:39 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:31:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:00 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:01 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:21:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0f918fa69ddc2ea84a0f22a7b870442eafb118825aaea91b62009e0a9dce319`  
		Last Modified: Tue, 04 Aug 2026 01:47:09 GMT  
		Size: 683.3 KB (683341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:243482ff6b8615d6f2763db1f8132b2e7c3cb927b995de8f5d83b9d334a0bef4`  
		Last Modified: Tue, 04 Aug 2026 01:47:09 GMT  
		Size: 9.1 MB (9114192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:994ae2393899f27129b58b7308b1523858eec6f1b53fecea83385154c451f307`  
		Last Modified: Tue, 04 Aug 2026 01:47:08 GMT  
		Size: 94.8 KB (94766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fec94c5ed3b68150f4b29c2cce23656c93fd9d54ff3bc6b440ab16e5b7e756d`  
		Last Modified: Tue, 04 Aug 2026 01:47:11 GMT  
		Size: 121.1 MB (121072272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538caae360a338033e229bbb6346e517a449aae2d1ee1d1833f52bfa2278af02`  
		Last Modified: Tue, 04 Aug 2026 01:47:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fca0915e159460a2a907b84c7193198452dc22ac9463de04333a5ab639a305e`  
		Last Modified: Tue, 04 Aug 2026 02:33:00 GMT  
		Size: 110.2 MB (110193617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c3c0e78f3f8638fd8fc6fd5af8cafafa74e72894297efe1ede0f95d1f0d3206`  
		Last Modified: Tue, 04 Aug 2026 02:32:57 GMT  
		Size: 370.3 KB (370330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad429a4a446b03fe9f5a266eb27f2e67f11c408754eea729866de21e271d64e0`  
		Last Modified: Tue, 04 Aug 2026 02:32:57 GMT  
		Size: 2.5 KB (2511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73a03c4d47d018a35e01137e7d72c574c7d51ac04eb1ebba69f8c5d514c3a828`  
		Last Modified: Tue, 04 Aug 2026 02:32:58 GMT  
		Size: 27.9 MB (27892380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22e0881833b1709b07ca14f7f06acef5b383081c4351303bb9f75cde0fc04a4c`  
		Last Modified: Tue, 04 Aug 2026 03:24:41 GMT  
		Size: 784.9 MB (784935693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:5e759b573ccb85cc48f5de4a128878268911b4a06045fba54e839cc52afb5c64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61041536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:827ddab3fc002f50aea33cfddaf5fe786380dc42ac3254d305d6187d85cc20d6`

```dockerfile
```

-	Layers:
	-	`sha256:d0ff0c088ea0a61a335b410d4781198705532a1fe7cb6e4f1a43afc220417738`  
		Last Modified: Tue, 04 Aug 2026 03:24:28 GMT  
		Size: 61.0 MB (61032184 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55231da856e7d10193d381dc3b43f5bde4d1b495d1e5ee6c8895edd08f9f288a`  
		Last Modified: Tue, 04 Aug 2026 03:24:25 GMT  
		Size: 9.4 KB (9352 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-perception-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:43164627a1e117ea8bdfc450a6c2d5c4b893e187da2adef84e576172969007a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **984.3 MB (984261095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e009c6ee921b8e0028067a159897bbcd8800e06c931802b7baf82eefb142d98`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:45:29 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:40 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:48 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:32 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:32 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:32 GMT
ENV ROS_DISTRO=kilted
# Tue, 04 Aug 2026 01:46:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:32 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:32 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:42 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:43 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:33:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:21:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12ee272dddf1e441f86fdd6a93f32b92a0199d12acdc5f82fcf099c67b37eef8`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 683.5 KB (683452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f0f334f4bd9f18856754f81e056622532e2b2235750a03c7bad9b4257e517f3`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 6.7 MB (6723541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be168bea448afac505e08e3b2d3337c80aed439c96f27f3e89511642689f0f6`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 94.8 KB (94790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb1c1e484ffea0bc62a68074f8f939f7ab478fbb319b5d0965c9b205b234c56`  
		Last Modified: Tue, 04 Aug 2026 01:47:04 GMT  
		Size: 115.8 MB (115816490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1091f72d64ff31400bdd1a65c473bfc82f57a73a555f84780c83f788dc100b69`  
		Last Modified: Tue, 04 Aug 2026 01:47:02 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:554f0de4fcee98aca499332208ef6a2dfd499691cb47c5714242b09e704d6156`  
		Last Modified: Tue, 04 Aug 2026 02:33:42 GMT  
		Size: 105.6 MB (105605084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba97b0429669ee9d03522a9a07fa2928077a75957e99c24a16073e3aa1ce1b6`  
		Last Modified: Tue, 04 Aug 2026 02:33:39 GMT  
		Size: 370.3 KB (370330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3773278e4120e400a975e5ec7e15bc1c55a9243008043967358e624621e5b55e`  
		Last Modified: Tue, 04 Aug 2026 02:33:39 GMT  
		Size: 2.5 KB (2503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:449dc587d4c7087422c8e153be64dd08baef8ded859f9284844b190d4f14c367`  
		Last Modified: Tue, 04 Aug 2026 02:33:41 GMT  
		Size: 27.0 MB (26998878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f46481040784409b32428bbc86b4086d2ff29e1a6d74e4cc65e8d088df4ec50`  
		Last Modified: Tue, 04 Aug 2026 03:24:38 GMT  
		Size: 699.1 MB (699079013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:38c8734323d954cec6a6ac37613da75654192bad406b1cb5c4dc490abac37d4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (60972140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a843334dab0bda14bca9879ea4ef01f2229e6a23a7aae501bf46315ed35ab87b`

```dockerfile
```

-	Layers:
	-	`sha256:408f6c8831db78a15a9a4747eb37fff4ce221c1dc72a07f583bd0229d2fdb4ca`  
		Last Modified: Tue, 04 Aug 2026 03:24:27 GMT  
		Size: 61.0 MB (60962708 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ba0061db5669552d43779bffce28b722cef52ca205acfb150fdc818faa35505`  
		Last Modified: Tue, 04 Aug 2026 03:24:25 GMT  
		Size: 9.4 KB (9432 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-ros-base`

```console
$ docker pull ros@sha256:4ca53d5b084bdbe92a7a7d7186f56db6a716a6c7c33ad401ddb0ec82d6e9e479
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:d28b9e57a40bebf51eb3e66ec851d560d5443b20bdc28c3821cd1b767039be4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.2 MB (299174714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b979aacd3933a3af0604dfcca5e438ce38d55a5e2c7266f3e5d373285e74f095`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:45:33 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:46 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:52 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:39 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:39 GMT
ENV ROS_DISTRO=kilted
# Tue, 04 Aug 2026 01:46:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:39 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:39 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:31:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:00 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:01 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0f918fa69ddc2ea84a0f22a7b870442eafb118825aaea91b62009e0a9dce319`  
		Last Modified: Tue, 04 Aug 2026 01:47:09 GMT  
		Size: 683.3 KB (683341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:243482ff6b8615d6f2763db1f8132b2e7c3cb927b995de8f5d83b9d334a0bef4`  
		Last Modified: Tue, 04 Aug 2026 01:47:09 GMT  
		Size: 9.1 MB (9114192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:994ae2393899f27129b58b7308b1523858eec6f1b53fecea83385154c451f307`  
		Last Modified: Tue, 04 Aug 2026 01:47:08 GMT  
		Size: 94.8 KB (94766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fec94c5ed3b68150f4b29c2cce23656c93fd9d54ff3bc6b440ab16e5b7e756d`  
		Last Modified: Tue, 04 Aug 2026 01:47:11 GMT  
		Size: 121.1 MB (121072272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538caae360a338033e229bbb6346e517a449aae2d1ee1d1833f52bfa2278af02`  
		Last Modified: Tue, 04 Aug 2026 01:47:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fca0915e159460a2a907b84c7193198452dc22ac9463de04333a5ab639a305e`  
		Last Modified: Tue, 04 Aug 2026 02:33:00 GMT  
		Size: 110.2 MB (110193617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c3c0e78f3f8638fd8fc6fd5af8cafafa74e72894297efe1ede0f95d1f0d3206`  
		Last Modified: Tue, 04 Aug 2026 02:32:57 GMT  
		Size: 370.3 KB (370330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad429a4a446b03fe9f5a266eb27f2e67f11c408754eea729866de21e271d64e0`  
		Last Modified: Tue, 04 Aug 2026 02:32:57 GMT  
		Size: 2.5 KB (2511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73a03c4d47d018a35e01137e7d72c574c7d51ac04eb1ebba69f8c5d514c3a828`  
		Last Modified: Tue, 04 Aug 2026 02:32:58 GMT  
		Size: 27.9 MB (27892380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:ee78c49ec55d8ce958fc38c327f082c4011bc492146d30583ed05d76cb2628da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24861383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4d41f0a5e31bafafddad596883294d3d313fb49aeb7010814271e916844cb4e`

```dockerfile
```

-	Layers:
	-	`sha256:4595f5965af96d3b54bc23a73821e479bd57b533016eb9b72168d6956fdfae67`  
		Last Modified: Tue, 04 Aug 2026 02:32:58 GMT  
		Size: 24.8 MB (24845037 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66758dc4434d43662aa925275d106700271b5da23f0e7020963956409b2f1dc0`  
		Last Modified: Tue, 04 Aug 2026 02:32:56 GMT  
		Size: 16.3 KB (16346 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7a30cb7b90c0e620d21989d71350b662f197db863e7283d77e703a4f3a453eb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.2 MB (285182082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f152010ee2bf2845248d031a31d787795c781153513d510f30eba983e6012530`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:45:29 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:40 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:48 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:32 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:32 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:32 GMT
ENV ROS_DISTRO=kilted
# Tue, 04 Aug 2026 01:46:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:32 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:32 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:42 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:43 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:33:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12ee272dddf1e441f86fdd6a93f32b92a0199d12acdc5f82fcf099c67b37eef8`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 683.5 KB (683452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f0f334f4bd9f18856754f81e056622532e2b2235750a03c7bad9b4257e517f3`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 6.7 MB (6723541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be168bea448afac505e08e3b2d3337c80aed439c96f27f3e89511642689f0f6`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 94.8 KB (94790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb1c1e484ffea0bc62a68074f8f939f7ab478fbb319b5d0965c9b205b234c56`  
		Last Modified: Tue, 04 Aug 2026 01:47:04 GMT  
		Size: 115.8 MB (115816490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1091f72d64ff31400bdd1a65c473bfc82f57a73a555f84780c83f788dc100b69`  
		Last Modified: Tue, 04 Aug 2026 01:47:02 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:554f0de4fcee98aca499332208ef6a2dfd499691cb47c5714242b09e704d6156`  
		Last Modified: Tue, 04 Aug 2026 02:33:42 GMT  
		Size: 105.6 MB (105605084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba97b0429669ee9d03522a9a07fa2928077a75957e99c24a16073e3aa1ce1b6`  
		Last Modified: Tue, 04 Aug 2026 02:33:39 GMT  
		Size: 370.3 KB (370330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3773278e4120e400a975e5ec7e15bc1c55a9243008043967358e624621e5b55e`  
		Last Modified: Tue, 04 Aug 2026 02:33:39 GMT  
		Size: 2.5 KB (2503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:449dc587d4c7087422c8e153be64dd08baef8ded859f9284844b190d4f14c367`  
		Last Modified: Tue, 04 Aug 2026 02:33:41 GMT  
		Size: 27.0 MB (26998878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:757f86b5129d40fb4ae2c032fdb91f5649bded0e323cb08a699c36449ad1f7e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24883781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec5eeb3d6b9d901d0b305d6ef5fe71ea55cda305a0c1a88cdcec7016d25fca4b`

```dockerfile
```

-	Layers:
	-	`sha256:64d32ad55f9c3ef0bf81f42346883f72453a51089d4e292a5bf1c7ea252af0fe`  
		Last Modified: Tue, 04 Aug 2026 02:33:41 GMT  
		Size: 24.9 MB (24867297 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12884212ef0447126641514b7de8c734cf20c7bdc0b802bdf402d382da30dd91`  
		Last Modified: Tue, 04 Aug 2026 02:33:39 GMT  
		Size: 16.5 KB (16484 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-ros-base-noble`

```console
$ docker pull ros@sha256:4ca53d5b084bdbe92a7a7d7186f56db6a716a6c7c33ad401ddb0ec82d6e9e479
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-base-noble` - linux; amd64

```console
$ docker pull ros@sha256:d28b9e57a40bebf51eb3e66ec851d560d5443b20bdc28c3821cd1b767039be4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.2 MB (299174714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b979aacd3933a3af0604dfcca5e438ce38d55a5e2c7266f3e5d373285e74f095`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:45:33 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:46 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:52 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:39 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:39 GMT
ENV ROS_DISTRO=kilted
# Tue, 04 Aug 2026 01:46:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:39 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:39 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:31:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:00 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:01 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0f918fa69ddc2ea84a0f22a7b870442eafb118825aaea91b62009e0a9dce319`  
		Last Modified: Tue, 04 Aug 2026 01:47:09 GMT  
		Size: 683.3 KB (683341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:243482ff6b8615d6f2763db1f8132b2e7c3cb927b995de8f5d83b9d334a0bef4`  
		Last Modified: Tue, 04 Aug 2026 01:47:09 GMT  
		Size: 9.1 MB (9114192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:994ae2393899f27129b58b7308b1523858eec6f1b53fecea83385154c451f307`  
		Last Modified: Tue, 04 Aug 2026 01:47:08 GMT  
		Size: 94.8 KB (94766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fec94c5ed3b68150f4b29c2cce23656c93fd9d54ff3bc6b440ab16e5b7e756d`  
		Last Modified: Tue, 04 Aug 2026 01:47:11 GMT  
		Size: 121.1 MB (121072272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538caae360a338033e229bbb6346e517a449aae2d1ee1d1833f52bfa2278af02`  
		Last Modified: Tue, 04 Aug 2026 01:47:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fca0915e159460a2a907b84c7193198452dc22ac9463de04333a5ab639a305e`  
		Last Modified: Tue, 04 Aug 2026 02:33:00 GMT  
		Size: 110.2 MB (110193617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c3c0e78f3f8638fd8fc6fd5af8cafafa74e72894297efe1ede0f95d1f0d3206`  
		Last Modified: Tue, 04 Aug 2026 02:32:57 GMT  
		Size: 370.3 KB (370330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad429a4a446b03fe9f5a266eb27f2e67f11c408754eea729866de21e271d64e0`  
		Last Modified: Tue, 04 Aug 2026 02:32:57 GMT  
		Size: 2.5 KB (2511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73a03c4d47d018a35e01137e7d72c574c7d51ac04eb1ebba69f8c5d514c3a828`  
		Last Modified: Tue, 04 Aug 2026 02:32:58 GMT  
		Size: 27.9 MB (27892380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:ee78c49ec55d8ce958fc38c327f082c4011bc492146d30583ed05d76cb2628da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24861383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4d41f0a5e31bafafddad596883294d3d313fb49aeb7010814271e916844cb4e`

```dockerfile
```

-	Layers:
	-	`sha256:4595f5965af96d3b54bc23a73821e479bd57b533016eb9b72168d6956fdfae67`  
		Last Modified: Tue, 04 Aug 2026 02:32:58 GMT  
		Size: 24.8 MB (24845037 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66758dc4434d43662aa925275d106700271b5da23f0e7020963956409b2f1dc0`  
		Last Modified: Tue, 04 Aug 2026 02:32:56 GMT  
		Size: 16.3 KB (16346 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-base-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7a30cb7b90c0e620d21989d71350b662f197db863e7283d77e703a4f3a453eb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.2 MB (285182082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f152010ee2bf2845248d031a31d787795c781153513d510f30eba983e6012530`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:45:29 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:40 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:48 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:32 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:32 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:32 GMT
ENV ROS_DISTRO=kilted
# Tue, 04 Aug 2026 01:46:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:32 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:32 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:42 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:43 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:33:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12ee272dddf1e441f86fdd6a93f32b92a0199d12acdc5f82fcf099c67b37eef8`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 683.5 KB (683452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f0f334f4bd9f18856754f81e056622532e2b2235750a03c7bad9b4257e517f3`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 6.7 MB (6723541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be168bea448afac505e08e3b2d3337c80aed439c96f27f3e89511642689f0f6`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 94.8 KB (94790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb1c1e484ffea0bc62a68074f8f939f7ab478fbb319b5d0965c9b205b234c56`  
		Last Modified: Tue, 04 Aug 2026 01:47:04 GMT  
		Size: 115.8 MB (115816490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1091f72d64ff31400bdd1a65c473bfc82f57a73a555f84780c83f788dc100b69`  
		Last Modified: Tue, 04 Aug 2026 01:47:02 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:554f0de4fcee98aca499332208ef6a2dfd499691cb47c5714242b09e704d6156`  
		Last Modified: Tue, 04 Aug 2026 02:33:42 GMT  
		Size: 105.6 MB (105605084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba97b0429669ee9d03522a9a07fa2928077a75957e99c24a16073e3aa1ce1b6`  
		Last Modified: Tue, 04 Aug 2026 02:33:39 GMT  
		Size: 370.3 KB (370330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3773278e4120e400a975e5ec7e15bc1c55a9243008043967358e624621e5b55e`  
		Last Modified: Tue, 04 Aug 2026 02:33:39 GMT  
		Size: 2.5 KB (2503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:449dc587d4c7087422c8e153be64dd08baef8ded859f9284844b190d4f14c367`  
		Last Modified: Tue, 04 Aug 2026 02:33:41 GMT  
		Size: 27.0 MB (26998878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:757f86b5129d40fb4ae2c032fdb91f5649bded0e323cb08a699c36449ad1f7e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24883781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec5eeb3d6b9d901d0b305d6ef5fe71ea55cda305a0c1a88cdcec7016d25fca4b`

```dockerfile
```

-	Layers:
	-	`sha256:64d32ad55f9c3ef0bf81f42346883f72453a51089d4e292a5bf1c7ea252af0fe`  
		Last Modified: Tue, 04 Aug 2026 02:33:41 GMT  
		Size: 24.9 MB (24867297 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12884212ef0447126641514b7de8c734cf20c7bdc0b802bdf402d382da30dd91`  
		Last Modified: Tue, 04 Aug 2026 02:33:39 GMT  
		Size: 16.5 KB (16484 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-ros-core`

```console
$ docker pull ros@sha256:d221529175dc6df23d773d42cfe25f2df450f1b5efe1a2a658fc7310e222fc53
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:eb64976416efa44792d314d7ba11bc63f1a0c1d37fd3124d8dfacf5b5f8578e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.7 MB (160715876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c8db1d5446de68c84467667f9e70d6b445d29d6857ea8e06219f079321d880b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:45:33 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:46 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:52 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:39 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:39 GMT
ENV ROS_DISTRO=kilted
# Tue, 04 Aug 2026 01:46:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:39 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:39 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0f918fa69ddc2ea84a0f22a7b870442eafb118825aaea91b62009e0a9dce319`  
		Last Modified: Tue, 04 Aug 2026 01:47:09 GMT  
		Size: 683.3 KB (683341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:243482ff6b8615d6f2763db1f8132b2e7c3cb927b995de8f5d83b9d334a0bef4`  
		Last Modified: Tue, 04 Aug 2026 01:47:09 GMT  
		Size: 9.1 MB (9114192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:994ae2393899f27129b58b7308b1523858eec6f1b53fecea83385154c451f307`  
		Last Modified: Tue, 04 Aug 2026 01:47:08 GMT  
		Size: 94.8 KB (94766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fec94c5ed3b68150f4b29c2cce23656c93fd9d54ff3bc6b440ab16e5b7e756d`  
		Last Modified: Tue, 04 Aug 2026 01:47:11 GMT  
		Size: 121.1 MB (121072272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538caae360a338033e229bbb6346e517a449aae2d1ee1d1833f52bfa2278af02`  
		Last Modified: Tue, 04 Aug 2026 01:47:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:077789b8a35373530180a41cfd310a20e41874341fd00d0d6e5cad85a2c810ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18606459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d7410f9a124bd10fe1332279f287f3ff72a07ba53ecc8bd326ba916dcacb367`

```dockerfile
```

-	Layers:
	-	`sha256:86f9692e7da515246c4363cb54b0de3803a830928917fc83180ba2ba64d14a3c`  
		Last Modified: Tue, 04 Aug 2026 01:47:09 GMT  
		Size: 18.6 MB (18591838 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:926d9d911909518b71e1b49e3e10adc9cd589e8386dfc3133fee06642843ab28`  
		Last Modified: Tue, 04 Aug 2026 01:47:08 GMT  
		Size: 14.6 KB (14621 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b9a57351394208e54b108ced51cb02267625191f26cb7106908f2fae3e5552da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.2 MB (152205287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80ec2aa286447c479cb68a5497ba0aab68c12ea612d7b73ecb5c1adc6d54ab35`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:45:29 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:40 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:48 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:32 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:32 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:32 GMT
ENV ROS_DISTRO=kilted
# Tue, 04 Aug 2026 01:46:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:32 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:32 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12ee272dddf1e441f86fdd6a93f32b92a0199d12acdc5f82fcf099c67b37eef8`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 683.5 KB (683452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f0f334f4bd9f18856754f81e056622532e2b2235750a03c7bad9b4257e517f3`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 6.7 MB (6723541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be168bea448afac505e08e3b2d3337c80aed439c96f27f3e89511642689f0f6`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 94.8 KB (94790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb1c1e484ffea0bc62a68074f8f939f7ab478fbb319b5d0965c9b205b234c56`  
		Last Modified: Tue, 04 Aug 2026 01:47:04 GMT  
		Size: 115.8 MB (115816490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1091f72d64ff31400bdd1a65c473bfc82f57a73a555f84780c83f788dc100b69`  
		Last Modified: Tue, 04 Aug 2026 01:47:02 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:5ef7e128e796b368fa38c5dd8ceabd7a296d1c1a03e8ee8ad9a538aaee6bc555
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18580595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5a090abf65292d81bfdd5899399328887daab0bee0cac11e134aec4f915e3ab`

```dockerfile
```

-	Layers:
	-	`sha256:afa2ebf74590a17b292759c3bbda4b5f6cc320127338a5d593b392860bb2a7f2`  
		Last Modified: Tue, 04 Aug 2026 01:47:02 GMT  
		Size: 18.6 MB (18565849 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:218d10983dfe3e4ae62648b506c3ef6cf068d702c2f383ff4e5d10c413ace44d`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 14.7 KB (14746 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-ros-core-noble`

```console
$ docker pull ros@sha256:d221529175dc6df23d773d42cfe25f2df450f1b5efe1a2a658fc7310e222fc53
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-core-noble` - linux; amd64

```console
$ docker pull ros@sha256:eb64976416efa44792d314d7ba11bc63f1a0c1d37fd3124d8dfacf5b5f8578e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.7 MB (160715876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c8db1d5446de68c84467667f9e70d6b445d29d6857ea8e06219f079321d880b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:45:33 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:46 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:52 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:39 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:39 GMT
ENV ROS_DISTRO=kilted
# Tue, 04 Aug 2026 01:46:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:39 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:39 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0f918fa69ddc2ea84a0f22a7b870442eafb118825aaea91b62009e0a9dce319`  
		Last Modified: Tue, 04 Aug 2026 01:47:09 GMT  
		Size: 683.3 KB (683341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:243482ff6b8615d6f2763db1f8132b2e7c3cb927b995de8f5d83b9d334a0bef4`  
		Last Modified: Tue, 04 Aug 2026 01:47:09 GMT  
		Size: 9.1 MB (9114192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:994ae2393899f27129b58b7308b1523858eec6f1b53fecea83385154c451f307`  
		Last Modified: Tue, 04 Aug 2026 01:47:08 GMT  
		Size: 94.8 KB (94766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fec94c5ed3b68150f4b29c2cce23656c93fd9d54ff3bc6b440ab16e5b7e756d`  
		Last Modified: Tue, 04 Aug 2026 01:47:11 GMT  
		Size: 121.1 MB (121072272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538caae360a338033e229bbb6346e517a449aae2d1ee1d1833f52bfa2278af02`  
		Last Modified: Tue, 04 Aug 2026 01:47:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:077789b8a35373530180a41cfd310a20e41874341fd00d0d6e5cad85a2c810ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18606459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d7410f9a124bd10fe1332279f287f3ff72a07ba53ecc8bd326ba916dcacb367`

```dockerfile
```

-	Layers:
	-	`sha256:86f9692e7da515246c4363cb54b0de3803a830928917fc83180ba2ba64d14a3c`  
		Last Modified: Tue, 04 Aug 2026 01:47:09 GMT  
		Size: 18.6 MB (18591838 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:926d9d911909518b71e1b49e3e10adc9cd589e8386dfc3133fee06642843ab28`  
		Last Modified: Tue, 04 Aug 2026 01:47:08 GMT  
		Size: 14.6 KB (14621 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-core-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b9a57351394208e54b108ced51cb02267625191f26cb7106908f2fae3e5552da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.2 MB (152205287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80ec2aa286447c479cb68a5497ba0aab68c12ea612d7b73ecb5c1adc6d54ab35`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:45:29 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:40 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:48 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:32 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:32 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:32 GMT
ENV ROS_DISTRO=kilted
# Tue, 04 Aug 2026 01:46:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:32 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:32 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12ee272dddf1e441f86fdd6a93f32b92a0199d12acdc5f82fcf099c67b37eef8`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 683.5 KB (683452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f0f334f4bd9f18856754f81e056622532e2b2235750a03c7bad9b4257e517f3`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 6.7 MB (6723541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be168bea448afac505e08e3b2d3337c80aed439c96f27f3e89511642689f0f6`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 94.8 KB (94790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb1c1e484ffea0bc62a68074f8f939f7ab478fbb319b5d0965c9b205b234c56`  
		Last Modified: Tue, 04 Aug 2026 01:47:04 GMT  
		Size: 115.8 MB (115816490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1091f72d64ff31400bdd1a65c473bfc82f57a73a555f84780c83f788dc100b69`  
		Last Modified: Tue, 04 Aug 2026 01:47:02 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:5ef7e128e796b368fa38c5dd8ceabd7a296d1c1a03e8ee8ad9a538aaee6bc555
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18580595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5a090abf65292d81bfdd5899399328887daab0bee0cac11e134aec4f915e3ab`

```dockerfile
```

-	Layers:
	-	`sha256:afa2ebf74590a17b292759c3bbda4b5f6cc320127338a5d593b392860bb2a7f2`  
		Last Modified: Tue, 04 Aug 2026 01:47:02 GMT  
		Size: 18.6 MB (18565849 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:218d10983dfe3e4ae62648b506c3ef6cf068d702c2f383ff4e5d10c413ace44d`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 14.7 KB (14746 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:latest`

```console
$ docker pull ros@sha256:122a787d0eb7e1b2c18370e35ef394332db5c11d242bea6f05f2b2911e26b04d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:latest` - linux; amd64

```console
$ docker pull ros@sha256:62bffdcbb9e5e2c74927376fa8233af14a0b1eb4c99c9e7f76e8221ce7c12a53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.6 MB (349584148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75647cb72dca310891407beab365e98da8c118c816f961471cbfb5e38b960756`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 12:48:27 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9094.tar --tag 26.04
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9094.tar
# Tue, 04 Aug 2026 01:45:32 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:47 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:51 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:43 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:43 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:43 GMT
ENV ROS_DISTRO=lyrical
# Tue, 04 Aug 2026 01:46:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:44 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:44 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:06 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:07 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:617772c7d19b9f9c4141bc73b37e6f4c5e4e69729f6881a73d0dc23676dbbd60`  
		Last Modified: Tue, 28 Jul 2026 09:46:38 GMT  
		Size: 41.6 MB (41568275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7fb98a8eddd1a70f99f205cb4b66e830a3e8ef4798f5636ece054a567b650de`  
		Last Modified: Tue, 28 Jul 2026 09:46:41 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6600ec0ac4da3d70b397a4126942960f2cf4e7303a97207db0ec857ddf7077c2`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 740.2 KB (740199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97bd30124542fe11b6b8e3840d1612bcd29a78f48bf5de2ebb33b25651dd0df9`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 12.8 MB (12753612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcbb78d1e674dc2402e2451653236413d1d8cf5e2cb98ee1b8155386e66d89f8`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 90.5 KB (90473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd45c76664f51f9efa5a9596ee41950f41bd1f0138b613413b532e0418188301`  
		Last Modified: Tue, 04 Aug 2026 01:47:25 GMT  
		Size: 143.3 MB (143330480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538caae360a338033e229bbb6346e517a449aae2d1ee1d1833f52bfa2278af02`  
		Last Modified: Tue, 04 Aug 2026 01:47:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77c0d835ca75ed1a967312e8662610125cb7a43615bb97092ad9a5ae2d4cbd30`  
		Last Modified: Tue, 04 Aug 2026 02:33:25 GMT  
		Size: 124.9 MB (124864778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecec3ba10b5d53b6d6f973b1b0ba83e181ecda6eb84eec26e5cfedabe76b3ea5`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 391.5 KB (391478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9992eaced8df4d58d760679631ac39a975c3db4683740ec6abfe09a0592268c9`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 130.8 KB (130821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05fae1ae93a6ab3e89d152e4a7c83c7abc2e9774fd74d2f6a82e56448aee965b`  
		Last Modified: Tue, 04 Aug 2026 02:33:23 GMT  
		Size: 25.7 MB (25713447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:latest` - unknown; unknown

```console
$ docker pull ros@sha256:6bd02f2b9e6effa020e242ccb51a81cc481fdcb9ef635a077609ee2d36b8f87d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.1 MB (29141313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c0c31d3d1f6e5fbc026679e387fe04209587e41d092d5d6d57c616bfddf4155`

```dockerfile
```

-	Layers:
	-	`sha256:2fdaf0458c7469d1b65c60b8d1ef041cf1891abe64f2f5453cdbbe438ea5b6be`  
		Last Modified: Tue, 04 Aug 2026 02:33:23 GMT  
		Size: 29.1 MB (29123858 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8cee27e3df8a09b8e2faba93dd4eba88c3466cf863b4c9a0467b9026c76e1415`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 17.5 KB (17455 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:latest` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:682edf3ddaaa7b22e249a8e0577e48b534adc81ba5f3582b3beefea586961bea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.5 MB (334489836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de21c3cf913d05da39d2c77e18e6457a417833c8bd13fbbbb2fabf8b1f3e5927`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 13:05:14 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9275.tar --tag 26.04
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9275.tar
# Tue, 04 Aug 2026 01:45:39 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:54 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:01 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:57 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:57 GMT
ENV ROS_DISTRO=lyrical
# Tue, 04 Aug 2026 01:46:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:57 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:39 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:41 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:33:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d73407a274fb6cb1e1017aae5257558853ec6bd76e38b87348173b539ca22894`  
		Last Modified: Tue, 28 Jul 2026 09:46:48 GMT  
		Size: 40.7 MB (40695089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:557836a62b7606e693caad19a768fa87fc346bff7d816ac03108c69adb1d684b`  
		Last Modified: Tue, 28 Jul 2026 09:46:51 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be87267d1e1f862dff3547e4a5c20e237f6bde838c01066eacf04c9308a993c3`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 740.6 KB (740636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc3feb02ad2b84b0509512d7dd2272765165e00d030fef8eb2991658dceb1a14`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 12.9 MB (12936259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56e55cc5f60675bef9702684217b1694e94a75a0896f76cfd57c0744c9e31be5`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 90.9 KB (90906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc127cb53887bd9252a3ab0251dc62ca1c362c2879152e18a938077b717b1c4`  
		Last Modified: Tue, 04 Aug 2026 01:47:40 GMT  
		Size: 136.6 MB (136564725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9829aacff4439238859b93870ef9421c81fdca07d68f20c1c9eab6007a40544`  
		Last Modified: Tue, 04 Aug 2026 01:47:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4a205756ab51571acb1f26eff5ff53fc0a4188915f490ac4f6f1211e32c65a8`  
		Last Modified: Tue, 04 Aug 2026 02:33:55 GMT  
		Size: 118.3 MB (118277863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e38d55127cf04815689f8ec64dad3e52707ad363311a052aaf33b937962f103`  
		Last Modified: Tue, 04 Aug 2026 02:33:51 GMT  
		Size: 391.5 KB (391479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:359b743f32fdc2babce47adab50b337298a989d3e0a7fb3538057808d9d061bc`  
		Last Modified: Tue, 04 Aug 2026 02:33:51 GMT  
		Size: 130.9 KB (130856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7823d736187e004a9d4accc28390ea83d249b2f3a2440dc3a2b6b2fec985e4b9`  
		Last Modified: Tue, 04 Aug 2026 02:33:53 GMT  
		Size: 24.7 MB (24661440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:latest` - unknown; unknown

```console
$ docker pull ros@sha256:3dab886b2fb00d773b88f2d922dd662b57585704342c73683b07d85191ce4811
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29206094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5618ba548816601ac25f7e2bde589787e0eead1c74fe31289a815ae9d379f8e`

```dockerfile
```

-	Layers:
	-	`sha256:e2f9be4571a10d9b155272d92fd449ff8715038275b1bc273e7f91d1a0b687d3`  
		Last Modified: Tue, 04 Aug 2026 02:33:53 GMT  
		Size: 29.2 MB (29188490 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:415223d5ba681c23764bc4d66428476ad9b73c8cc5c2599243d6e5df0fe961a5`  
		Last Modified: Tue, 04 Aug 2026 02:33:51 GMT  
		Size: 17.6 KB (17604 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical`

```console
$ docker pull ros@sha256:122a787d0eb7e1b2c18370e35ef394332db5c11d242bea6f05f2b2911e26b04d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical` - linux; amd64

```console
$ docker pull ros@sha256:62bffdcbb9e5e2c74927376fa8233af14a0b1eb4c99c9e7f76e8221ce7c12a53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.6 MB (349584148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75647cb72dca310891407beab365e98da8c118c816f961471cbfb5e38b960756`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 12:48:27 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9094.tar --tag 26.04
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9094.tar
# Tue, 04 Aug 2026 01:45:32 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:47 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:51 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:43 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:43 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:43 GMT
ENV ROS_DISTRO=lyrical
# Tue, 04 Aug 2026 01:46:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:44 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:44 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:06 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:07 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:617772c7d19b9f9c4141bc73b37e6f4c5e4e69729f6881a73d0dc23676dbbd60`  
		Last Modified: Tue, 28 Jul 2026 09:46:38 GMT  
		Size: 41.6 MB (41568275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7fb98a8eddd1a70f99f205cb4b66e830a3e8ef4798f5636ece054a567b650de`  
		Last Modified: Tue, 28 Jul 2026 09:46:41 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6600ec0ac4da3d70b397a4126942960f2cf4e7303a97207db0ec857ddf7077c2`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 740.2 KB (740199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97bd30124542fe11b6b8e3840d1612bcd29a78f48bf5de2ebb33b25651dd0df9`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 12.8 MB (12753612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcbb78d1e674dc2402e2451653236413d1d8cf5e2cb98ee1b8155386e66d89f8`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 90.5 KB (90473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd45c76664f51f9efa5a9596ee41950f41bd1f0138b613413b532e0418188301`  
		Last Modified: Tue, 04 Aug 2026 01:47:25 GMT  
		Size: 143.3 MB (143330480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538caae360a338033e229bbb6346e517a449aae2d1ee1d1833f52bfa2278af02`  
		Last Modified: Tue, 04 Aug 2026 01:47:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77c0d835ca75ed1a967312e8662610125cb7a43615bb97092ad9a5ae2d4cbd30`  
		Last Modified: Tue, 04 Aug 2026 02:33:25 GMT  
		Size: 124.9 MB (124864778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecec3ba10b5d53b6d6f973b1b0ba83e181ecda6eb84eec26e5cfedabe76b3ea5`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 391.5 KB (391478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9992eaced8df4d58d760679631ac39a975c3db4683740ec6abfe09a0592268c9`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 130.8 KB (130821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05fae1ae93a6ab3e89d152e4a7c83c7abc2e9774fd74d2f6a82e56448aee965b`  
		Last Modified: Tue, 04 Aug 2026 02:33:23 GMT  
		Size: 25.7 MB (25713447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical` - unknown; unknown

```console
$ docker pull ros@sha256:6bd02f2b9e6effa020e242ccb51a81cc481fdcb9ef635a077609ee2d36b8f87d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.1 MB (29141313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c0c31d3d1f6e5fbc026679e387fe04209587e41d092d5d6d57c616bfddf4155`

```dockerfile
```

-	Layers:
	-	`sha256:2fdaf0458c7469d1b65c60b8d1ef041cf1891abe64f2f5453cdbbe438ea5b6be`  
		Last Modified: Tue, 04 Aug 2026 02:33:23 GMT  
		Size: 29.1 MB (29123858 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8cee27e3df8a09b8e2faba93dd4eba88c3466cf863b4c9a0467b9026c76e1415`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 17.5 KB (17455 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:682edf3ddaaa7b22e249a8e0577e48b534adc81ba5f3582b3beefea586961bea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.5 MB (334489836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de21c3cf913d05da39d2c77e18e6457a417833c8bd13fbbbb2fabf8b1f3e5927`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 13:05:14 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9275.tar --tag 26.04
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9275.tar
# Tue, 04 Aug 2026 01:45:39 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:54 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:01 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:57 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:57 GMT
ENV ROS_DISTRO=lyrical
# Tue, 04 Aug 2026 01:46:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:57 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:39 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:41 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:33:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d73407a274fb6cb1e1017aae5257558853ec6bd76e38b87348173b539ca22894`  
		Last Modified: Tue, 28 Jul 2026 09:46:48 GMT  
		Size: 40.7 MB (40695089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:557836a62b7606e693caad19a768fa87fc346bff7d816ac03108c69adb1d684b`  
		Last Modified: Tue, 28 Jul 2026 09:46:51 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be87267d1e1f862dff3547e4a5c20e237f6bde838c01066eacf04c9308a993c3`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 740.6 KB (740636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc3feb02ad2b84b0509512d7dd2272765165e00d030fef8eb2991658dceb1a14`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 12.9 MB (12936259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56e55cc5f60675bef9702684217b1694e94a75a0896f76cfd57c0744c9e31be5`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 90.9 KB (90906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc127cb53887bd9252a3ab0251dc62ca1c362c2879152e18a938077b717b1c4`  
		Last Modified: Tue, 04 Aug 2026 01:47:40 GMT  
		Size: 136.6 MB (136564725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9829aacff4439238859b93870ef9421c81fdca07d68f20c1c9eab6007a40544`  
		Last Modified: Tue, 04 Aug 2026 01:47:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4a205756ab51571acb1f26eff5ff53fc0a4188915f490ac4f6f1211e32c65a8`  
		Last Modified: Tue, 04 Aug 2026 02:33:55 GMT  
		Size: 118.3 MB (118277863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e38d55127cf04815689f8ec64dad3e52707ad363311a052aaf33b937962f103`  
		Last Modified: Tue, 04 Aug 2026 02:33:51 GMT  
		Size: 391.5 KB (391479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:359b743f32fdc2babce47adab50b337298a989d3e0a7fb3538057808d9d061bc`  
		Last Modified: Tue, 04 Aug 2026 02:33:51 GMT  
		Size: 130.9 KB (130856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7823d736187e004a9d4accc28390ea83d249b2f3a2440dc3a2b6b2fec985e4b9`  
		Last Modified: Tue, 04 Aug 2026 02:33:53 GMT  
		Size: 24.7 MB (24661440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical` - unknown; unknown

```console
$ docker pull ros@sha256:3dab886b2fb00d773b88f2d922dd662b57585704342c73683b07d85191ce4811
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29206094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5618ba548816601ac25f7e2bde589787e0eead1c74fe31289a815ae9d379f8e`

```dockerfile
```

-	Layers:
	-	`sha256:e2f9be4571a10d9b155272d92fd449ff8715038275b1bc273e7f91d1a0b687d3`  
		Last Modified: Tue, 04 Aug 2026 02:33:53 GMT  
		Size: 29.2 MB (29188490 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:415223d5ba681c23764bc4d66428476ad9b73c8cc5c2599243d6e5df0fe961a5`  
		Last Modified: Tue, 04 Aug 2026 02:33:51 GMT  
		Size: 17.6 KB (17604 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-perception`

```console
$ docker pull ros@sha256:2dc78d2a1fac9bd898ce959cf980761d5306d3cfea3260bbd4faa5b3f463d266
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-perception` - linux; amd64

```console
$ docker pull ros@sha256:8f3b0399c3867c38fa42161b94dfa3f6439f43244734cfb74968064a8311b432
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1538090382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15b8e9f70e9b924a78ce56aa9aec48438c796a2741e009914fbeb19ada5b83e3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 12:48:27 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9094.tar --tag 26.04
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9094.tar
# Tue, 04 Aug 2026 01:45:32 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:47 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:51 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:43 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:43 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:43 GMT
ENV ROS_DISTRO=lyrical
# Tue, 04 Aug 2026 01:46:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:44 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:44 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:06 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:07 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:21:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:617772c7d19b9f9c4141bc73b37e6f4c5e4e69729f6881a73d0dc23676dbbd60`  
		Last Modified: Tue, 28 Jul 2026 09:46:38 GMT  
		Size: 41.6 MB (41568275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7fb98a8eddd1a70f99f205cb4b66e830a3e8ef4798f5636ece054a567b650de`  
		Last Modified: Tue, 28 Jul 2026 09:46:41 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6600ec0ac4da3d70b397a4126942960f2cf4e7303a97207db0ec857ddf7077c2`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 740.2 KB (740199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97bd30124542fe11b6b8e3840d1612bcd29a78f48bf5de2ebb33b25651dd0df9`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 12.8 MB (12753612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcbb78d1e674dc2402e2451653236413d1d8cf5e2cb98ee1b8155386e66d89f8`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 90.5 KB (90473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd45c76664f51f9efa5a9596ee41950f41bd1f0138b613413b532e0418188301`  
		Last Modified: Tue, 04 Aug 2026 01:47:25 GMT  
		Size: 143.3 MB (143330480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538caae360a338033e229bbb6346e517a449aae2d1ee1d1833f52bfa2278af02`  
		Last Modified: Tue, 04 Aug 2026 01:47:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77c0d835ca75ed1a967312e8662610125cb7a43615bb97092ad9a5ae2d4cbd30`  
		Last Modified: Tue, 04 Aug 2026 02:33:25 GMT  
		Size: 124.9 MB (124864778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecec3ba10b5d53b6d6f973b1b0ba83e181ecda6eb84eec26e5cfedabe76b3ea5`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 391.5 KB (391478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9992eaced8df4d58d760679631ac39a975c3db4683740ec6abfe09a0592268c9`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 130.8 KB (130821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05fae1ae93a6ab3e89d152e4a7c83c7abc2e9774fd74d2f6a82e56448aee965b`  
		Last Modified: Tue, 04 Aug 2026 02:33:23 GMT  
		Size: 25.7 MB (25713447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:592459462c3f3d2451197023f3c7b976336c2562ea6302a40d1c7327f80af8a1`  
		Last Modified: Tue, 04 Aug 2026 03:26:48 GMT  
		Size: 1.2 GB (1188506234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception` - unknown; unknown

```console
$ docker pull ros@sha256:cc93c8bd8e812293597d4efb3b51bbc2bbb236036b059ba2e0418609404aa04e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64344282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a4992c16cef962e2a26ac4ea061954064f118e17220695ff4b99d6a2ad0cd81`

```dockerfile
```

-	Layers:
	-	`sha256:273df5a2f36996e31bf11852bff37aaabec85f7eda6dc571c465e20cf7c21feb`  
		Last Modified: Tue, 04 Aug 2026 03:26:30 GMT  
		Size: 64.3 MB (64334591 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b4570e82f8ac60f4b99fe8ef4b8086055af43faa0650bcab4008ddee00639639`  
		Last Modified: Tue, 04 Aug 2026 03:26:28 GMT  
		Size: 9.7 KB (9691 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:2cc19facafb95ffc162e9875f21137f159f8d12fe6cc10d55053285879a5f5de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1481368152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35c40859c8b12521fd9983b386d87b0bb89da4f393e8e038418e6894cf3afa1e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 13:05:14 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9275.tar --tag 26.04
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9275.tar
# Tue, 04 Aug 2026 01:45:39 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:54 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:01 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:57 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:57 GMT
ENV ROS_DISTRO=lyrical
# Tue, 04 Aug 2026 01:46:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:57 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:39 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:41 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:33:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:22:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d73407a274fb6cb1e1017aae5257558853ec6bd76e38b87348173b539ca22894`  
		Last Modified: Tue, 28 Jul 2026 09:46:48 GMT  
		Size: 40.7 MB (40695089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:557836a62b7606e693caad19a768fa87fc346bff7d816ac03108c69adb1d684b`  
		Last Modified: Tue, 28 Jul 2026 09:46:51 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be87267d1e1f862dff3547e4a5c20e237f6bde838c01066eacf04c9308a993c3`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 740.6 KB (740636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc3feb02ad2b84b0509512d7dd2272765165e00d030fef8eb2991658dceb1a14`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 12.9 MB (12936259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56e55cc5f60675bef9702684217b1694e94a75a0896f76cfd57c0744c9e31be5`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 90.9 KB (90906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc127cb53887bd9252a3ab0251dc62ca1c362c2879152e18a938077b717b1c4`  
		Last Modified: Tue, 04 Aug 2026 01:47:40 GMT  
		Size: 136.6 MB (136564725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9829aacff4439238859b93870ef9421c81fdca07d68f20c1c9eab6007a40544`  
		Last Modified: Tue, 04 Aug 2026 01:47:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4a205756ab51571acb1f26eff5ff53fc0a4188915f490ac4f6f1211e32c65a8`  
		Last Modified: Tue, 04 Aug 2026 02:33:55 GMT  
		Size: 118.3 MB (118277863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e38d55127cf04815689f8ec64dad3e52707ad363311a052aaf33b937962f103`  
		Last Modified: Tue, 04 Aug 2026 02:33:51 GMT  
		Size: 391.5 KB (391479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:359b743f32fdc2babce47adab50b337298a989d3e0a7fb3538057808d9d061bc`  
		Last Modified: Tue, 04 Aug 2026 02:33:51 GMT  
		Size: 130.9 KB (130856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7823d736187e004a9d4accc28390ea83d249b2f3a2440dc3a2b6b2fec985e4b9`  
		Last Modified: Tue, 04 Aug 2026 02:33:53 GMT  
		Size: 24.7 MB (24661440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:664bf46c3e00428b49494db88436c744759ad4a60ce8a29ca61d5b21ed764697`  
		Last Modified: Tue, 04 Aug 2026 03:27:05 GMT  
		Size: 1.1 GB (1146878316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception` - unknown; unknown

```console
$ docker pull ros@sha256:608bac81a32cfc20b41b88673b817b5d6509b73c37c7ef98b8f5021537ec3ea2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64258584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed18a2ac07b2a177acc4f732a8dbc2c580fbf6fc4387c34f9130f4df21a80605`

```dockerfile
```

-	Layers:
	-	`sha256:fa9381b7559b22aa5ebd224b4a616128c9e7a5fb27dda1d2302d5ec809d724de`  
		Last Modified: Tue, 04 Aug 2026 03:26:47 GMT  
		Size: 64.2 MB (64248809 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41d10c06da8aa5b89f04e4ff6d3325c2a3449fad6d628598991b6ca8386d8f71`  
		Last Modified: Tue, 04 Aug 2026 03:26:45 GMT  
		Size: 9.8 KB (9775 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-perception-resolute`

```console
$ docker pull ros@sha256:2dc78d2a1fac9bd898ce959cf980761d5306d3cfea3260bbd4faa5b3f463d266
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-perception-resolute` - linux; amd64

```console
$ docker pull ros@sha256:8f3b0399c3867c38fa42161b94dfa3f6439f43244734cfb74968064a8311b432
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1538090382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15b8e9f70e9b924a78ce56aa9aec48438c796a2741e009914fbeb19ada5b83e3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 12:48:27 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9094.tar --tag 26.04
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9094.tar
# Tue, 04 Aug 2026 01:45:32 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:47 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:51 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:43 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:43 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:43 GMT
ENV ROS_DISTRO=lyrical
# Tue, 04 Aug 2026 01:46:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:44 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:44 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:06 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:07 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:21:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:617772c7d19b9f9c4141bc73b37e6f4c5e4e69729f6881a73d0dc23676dbbd60`  
		Last Modified: Tue, 28 Jul 2026 09:46:38 GMT  
		Size: 41.6 MB (41568275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7fb98a8eddd1a70f99f205cb4b66e830a3e8ef4798f5636ece054a567b650de`  
		Last Modified: Tue, 28 Jul 2026 09:46:41 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6600ec0ac4da3d70b397a4126942960f2cf4e7303a97207db0ec857ddf7077c2`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 740.2 KB (740199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97bd30124542fe11b6b8e3840d1612bcd29a78f48bf5de2ebb33b25651dd0df9`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 12.8 MB (12753612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcbb78d1e674dc2402e2451653236413d1d8cf5e2cb98ee1b8155386e66d89f8`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 90.5 KB (90473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd45c76664f51f9efa5a9596ee41950f41bd1f0138b613413b532e0418188301`  
		Last Modified: Tue, 04 Aug 2026 01:47:25 GMT  
		Size: 143.3 MB (143330480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538caae360a338033e229bbb6346e517a449aae2d1ee1d1833f52bfa2278af02`  
		Last Modified: Tue, 04 Aug 2026 01:47:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77c0d835ca75ed1a967312e8662610125cb7a43615bb97092ad9a5ae2d4cbd30`  
		Last Modified: Tue, 04 Aug 2026 02:33:25 GMT  
		Size: 124.9 MB (124864778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecec3ba10b5d53b6d6f973b1b0ba83e181ecda6eb84eec26e5cfedabe76b3ea5`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 391.5 KB (391478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9992eaced8df4d58d760679631ac39a975c3db4683740ec6abfe09a0592268c9`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 130.8 KB (130821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05fae1ae93a6ab3e89d152e4a7c83c7abc2e9774fd74d2f6a82e56448aee965b`  
		Last Modified: Tue, 04 Aug 2026 02:33:23 GMT  
		Size: 25.7 MB (25713447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:592459462c3f3d2451197023f3c7b976336c2562ea6302a40d1c7327f80af8a1`  
		Last Modified: Tue, 04 Aug 2026 03:26:48 GMT  
		Size: 1.2 GB (1188506234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:cc93c8bd8e812293597d4efb3b51bbc2bbb236036b059ba2e0418609404aa04e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64344282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a4992c16cef962e2a26ac4ea061954064f118e17220695ff4b99d6a2ad0cd81`

```dockerfile
```

-	Layers:
	-	`sha256:273df5a2f36996e31bf11852bff37aaabec85f7eda6dc571c465e20cf7c21feb`  
		Last Modified: Tue, 04 Aug 2026 03:26:30 GMT  
		Size: 64.3 MB (64334591 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b4570e82f8ac60f4b99fe8ef4b8086055af43faa0650bcab4008ddee00639639`  
		Last Modified: Tue, 04 Aug 2026 03:26:28 GMT  
		Size: 9.7 KB (9691 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-perception-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:2cc19facafb95ffc162e9875f21137f159f8d12fe6cc10d55053285879a5f5de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1481368152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35c40859c8b12521fd9983b386d87b0bb89da4f393e8e038418e6894cf3afa1e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 13:05:14 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9275.tar --tag 26.04
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9275.tar
# Tue, 04 Aug 2026 01:45:39 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:54 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:01 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:57 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:57 GMT
ENV ROS_DISTRO=lyrical
# Tue, 04 Aug 2026 01:46:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:57 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:39 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:41 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:33:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:22:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d73407a274fb6cb1e1017aae5257558853ec6bd76e38b87348173b539ca22894`  
		Last Modified: Tue, 28 Jul 2026 09:46:48 GMT  
		Size: 40.7 MB (40695089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:557836a62b7606e693caad19a768fa87fc346bff7d816ac03108c69adb1d684b`  
		Last Modified: Tue, 28 Jul 2026 09:46:51 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be87267d1e1f862dff3547e4a5c20e237f6bde838c01066eacf04c9308a993c3`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 740.6 KB (740636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc3feb02ad2b84b0509512d7dd2272765165e00d030fef8eb2991658dceb1a14`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 12.9 MB (12936259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56e55cc5f60675bef9702684217b1694e94a75a0896f76cfd57c0744c9e31be5`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 90.9 KB (90906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc127cb53887bd9252a3ab0251dc62ca1c362c2879152e18a938077b717b1c4`  
		Last Modified: Tue, 04 Aug 2026 01:47:40 GMT  
		Size: 136.6 MB (136564725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9829aacff4439238859b93870ef9421c81fdca07d68f20c1c9eab6007a40544`  
		Last Modified: Tue, 04 Aug 2026 01:47:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4a205756ab51571acb1f26eff5ff53fc0a4188915f490ac4f6f1211e32c65a8`  
		Last Modified: Tue, 04 Aug 2026 02:33:55 GMT  
		Size: 118.3 MB (118277863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e38d55127cf04815689f8ec64dad3e52707ad363311a052aaf33b937962f103`  
		Last Modified: Tue, 04 Aug 2026 02:33:51 GMT  
		Size: 391.5 KB (391479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:359b743f32fdc2babce47adab50b337298a989d3e0a7fb3538057808d9d061bc`  
		Last Modified: Tue, 04 Aug 2026 02:33:51 GMT  
		Size: 130.9 KB (130856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7823d736187e004a9d4accc28390ea83d249b2f3a2440dc3a2b6b2fec985e4b9`  
		Last Modified: Tue, 04 Aug 2026 02:33:53 GMT  
		Size: 24.7 MB (24661440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:664bf46c3e00428b49494db88436c744759ad4a60ce8a29ca61d5b21ed764697`  
		Last Modified: Tue, 04 Aug 2026 03:27:05 GMT  
		Size: 1.1 GB (1146878316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:608bac81a32cfc20b41b88673b817b5d6509b73c37c7ef98b8f5021537ec3ea2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64258584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed18a2ac07b2a177acc4f732a8dbc2c580fbf6fc4387c34f9130f4df21a80605`

```dockerfile
```

-	Layers:
	-	`sha256:fa9381b7559b22aa5ebd224b4a616128c9e7a5fb27dda1d2302d5ec809d724de`  
		Last Modified: Tue, 04 Aug 2026 03:26:47 GMT  
		Size: 64.2 MB (64248809 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41d10c06da8aa5b89f04e4ff6d3325c2a3449fad6d628598991b6ca8386d8f71`  
		Last Modified: Tue, 04 Aug 2026 03:26:45 GMT  
		Size: 9.8 KB (9775 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-ros-base`

```console
$ docker pull ros@sha256:122a787d0eb7e1b2c18370e35ef394332db5c11d242bea6f05f2b2911e26b04d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:62bffdcbb9e5e2c74927376fa8233af14a0b1eb4c99c9e7f76e8221ce7c12a53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.6 MB (349584148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75647cb72dca310891407beab365e98da8c118c816f961471cbfb5e38b960756`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 12:48:27 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9094.tar --tag 26.04
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9094.tar
# Tue, 04 Aug 2026 01:45:32 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:47 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:51 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:43 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:43 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:43 GMT
ENV ROS_DISTRO=lyrical
# Tue, 04 Aug 2026 01:46:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:44 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:44 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:06 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:07 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:617772c7d19b9f9c4141bc73b37e6f4c5e4e69729f6881a73d0dc23676dbbd60`  
		Last Modified: Tue, 28 Jul 2026 09:46:38 GMT  
		Size: 41.6 MB (41568275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7fb98a8eddd1a70f99f205cb4b66e830a3e8ef4798f5636ece054a567b650de`  
		Last Modified: Tue, 28 Jul 2026 09:46:41 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6600ec0ac4da3d70b397a4126942960f2cf4e7303a97207db0ec857ddf7077c2`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 740.2 KB (740199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97bd30124542fe11b6b8e3840d1612bcd29a78f48bf5de2ebb33b25651dd0df9`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 12.8 MB (12753612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcbb78d1e674dc2402e2451653236413d1d8cf5e2cb98ee1b8155386e66d89f8`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 90.5 KB (90473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd45c76664f51f9efa5a9596ee41950f41bd1f0138b613413b532e0418188301`  
		Last Modified: Tue, 04 Aug 2026 01:47:25 GMT  
		Size: 143.3 MB (143330480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538caae360a338033e229bbb6346e517a449aae2d1ee1d1833f52bfa2278af02`  
		Last Modified: Tue, 04 Aug 2026 01:47:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77c0d835ca75ed1a967312e8662610125cb7a43615bb97092ad9a5ae2d4cbd30`  
		Last Modified: Tue, 04 Aug 2026 02:33:25 GMT  
		Size: 124.9 MB (124864778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecec3ba10b5d53b6d6f973b1b0ba83e181ecda6eb84eec26e5cfedabe76b3ea5`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 391.5 KB (391478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9992eaced8df4d58d760679631ac39a975c3db4683740ec6abfe09a0592268c9`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 130.8 KB (130821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05fae1ae93a6ab3e89d152e4a7c83c7abc2e9774fd74d2f6a82e56448aee965b`  
		Last Modified: Tue, 04 Aug 2026 02:33:23 GMT  
		Size: 25.7 MB (25713447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:6bd02f2b9e6effa020e242ccb51a81cc481fdcb9ef635a077609ee2d36b8f87d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.1 MB (29141313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c0c31d3d1f6e5fbc026679e387fe04209587e41d092d5d6d57c616bfddf4155`

```dockerfile
```

-	Layers:
	-	`sha256:2fdaf0458c7469d1b65c60b8d1ef041cf1891abe64f2f5453cdbbe438ea5b6be`  
		Last Modified: Tue, 04 Aug 2026 02:33:23 GMT  
		Size: 29.1 MB (29123858 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8cee27e3df8a09b8e2faba93dd4eba88c3466cf863b4c9a0467b9026c76e1415`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 17.5 KB (17455 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:682edf3ddaaa7b22e249a8e0577e48b534adc81ba5f3582b3beefea586961bea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.5 MB (334489836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de21c3cf913d05da39d2c77e18e6457a417833c8bd13fbbbb2fabf8b1f3e5927`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 13:05:14 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9275.tar --tag 26.04
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9275.tar
# Tue, 04 Aug 2026 01:45:39 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:54 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:01 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:57 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:57 GMT
ENV ROS_DISTRO=lyrical
# Tue, 04 Aug 2026 01:46:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:57 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:39 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:41 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:33:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d73407a274fb6cb1e1017aae5257558853ec6bd76e38b87348173b539ca22894`  
		Last Modified: Tue, 28 Jul 2026 09:46:48 GMT  
		Size: 40.7 MB (40695089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:557836a62b7606e693caad19a768fa87fc346bff7d816ac03108c69adb1d684b`  
		Last Modified: Tue, 28 Jul 2026 09:46:51 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be87267d1e1f862dff3547e4a5c20e237f6bde838c01066eacf04c9308a993c3`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 740.6 KB (740636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc3feb02ad2b84b0509512d7dd2272765165e00d030fef8eb2991658dceb1a14`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 12.9 MB (12936259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56e55cc5f60675bef9702684217b1694e94a75a0896f76cfd57c0744c9e31be5`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 90.9 KB (90906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc127cb53887bd9252a3ab0251dc62ca1c362c2879152e18a938077b717b1c4`  
		Last Modified: Tue, 04 Aug 2026 01:47:40 GMT  
		Size: 136.6 MB (136564725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9829aacff4439238859b93870ef9421c81fdca07d68f20c1c9eab6007a40544`  
		Last Modified: Tue, 04 Aug 2026 01:47:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4a205756ab51571acb1f26eff5ff53fc0a4188915f490ac4f6f1211e32c65a8`  
		Last Modified: Tue, 04 Aug 2026 02:33:55 GMT  
		Size: 118.3 MB (118277863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e38d55127cf04815689f8ec64dad3e52707ad363311a052aaf33b937962f103`  
		Last Modified: Tue, 04 Aug 2026 02:33:51 GMT  
		Size: 391.5 KB (391479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:359b743f32fdc2babce47adab50b337298a989d3e0a7fb3538057808d9d061bc`  
		Last Modified: Tue, 04 Aug 2026 02:33:51 GMT  
		Size: 130.9 KB (130856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7823d736187e004a9d4accc28390ea83d249b2f3a2440dc3a2b6b2fec985e4b9`  
		Last Modified: Tue, 04 Aug 2026 02:33:53 GMT  
		Size: 24.7 MB (24661440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:3dab886b2fb00d773b88f2d922dd662b57585704342c73683b07d85191ce4811
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29206094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5618ba548816601ac25f7e2bde589787e0eead1c74fe31289a815ae9d379f8e`

```dockerfile
```

-	Layers:
	-	`sha256:e2f9be4571a10d9b155272d92fd449ff8715038275b1bc273e7f91d1a0b687d3`  
		Last Modified: Tue, 04 Aug 2026 02:33:53 GMT  
		Size: 29.2 MB (29188490 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:415223d5ba681c23764bc4d66428476ad9b73c8cc5c2599243d6e5df0fe961a5`  
		Last Modified: Tue, 04 Aug 2026 02:33:51 GMT  
		Size: 17.6 KB (17604 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-ros-base-resolute`

```console
$ docker pull ros@sha256:122a787d0eb7e1b2c18370e35ef394332db5c11d242bea6f05f2b2911e26b04d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-base-resolute` - linux; amd64

```console
$ docker pull ros@sha256:62bffdcbb9e5e2c74927376fa8233af14a0b1eb4c99c9e7f76e8221ce7c12a53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.6 MB (349584148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75647cb72dca310891407beab365e98da8c118c816f961471cbfb5e38b960756`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 12:48:27 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9094.tar --tag 26.04
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9094.tar
# Tue, 04 Aug 2026 01:45:32 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:47 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:51 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:43 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:43 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:43 GMT
ENV ROS_DISTRO=lyrical
# Tue, 04 Aug 2026 01:46:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:44 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:44 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:06 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:07 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:617772c7d19b9f9c4141bc73b37e6f4c5e4e69729f6881a73d0dc23676dbbd60`  
		Last Modified: Tue, 28 Jul 2026 09:46:38 GMT  
		Size: 41.6 MB (41568275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7fb98a8eddd1a70f99f205cb4b66e830a3e8ef4798f5636ece054a567b650de`  
		Last Modified: Tue, 28 Jul 2026 09:46:41 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6600ec0ac4da3d70b397a4126942960f2cf4e7303a97207db0ec857ddf7077c2`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 740.2 KB (740199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97bd30124542fe11b6b8e3840d1612bcd29a78f48bf5de2ebb33b25651dd0df9`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 12.8 MB (12753612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcbb78d1e674dc2402e2451653236413d1d8cf5e2cb98ee1b8155386e66d89f8`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 90.5 KB (90473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd45c76664f51f9efa5a9596ee41950f41bd1f0138b613413b532e0418188301`  
		Last Modified: Tue, 04 Aug 2026 01:47:25 GMT  
		Size: 143.3 MB (143330480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538caae360a338033e229bbb6346e517a449aae2d1ee1d1833f52bfa2278af02`  
		Last Modified: Tue, 04 Aug 2026 01:47:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77c0d835ca75ed1a967312e8662610125cb7a43615bb97092ad9a5ae2d4cbd30`  
		Last Modified: Tue, 04 Aug 2026 02:33:25 GMT  
		Size: 124.9 MB (124864778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecec3ba10b5d53b6d6f973b1b0ba83e181ecda6eb84eec26e5cfedabe76b3ea5`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 391.5 KB (391478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9992eaced8df4d58d760679631ac39a975c3db4683740ec6abfe09a0592268c9`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 130.8 KB (130821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05fae1ae93a6ab3e89d152e4a7c83c7abc2e9774fd74d2f6a82e56448aee965b`  
		Last Modified: Tue, 04 Aug 2026 02:33:23 GMT  
		Size: 25.7 MB (25713447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:6bd02f2b9e6effa020e242ccb51a81cc481fdcb9ef635a077609ee2d36b8f87d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.1 MB (29141313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c0c31d3d1f6e5fbc026679e387fe04209587e41d092d5d6d57c616bfddf4155`

```dockerfile
```

-	Layers:
	-	`sha256:2fdaf0458c7469d1b65c60b8d1ef041cf1891abe64f2f5453cdbbe438ea5b6be`  
		Last Modified: Tue, 04 Aug 2026 02:33:23 GMT  
		Size: 29.1 MB (29123858 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8cee27e3df8a09b8e2faba93dd4eba88c3466cf863b4c9a0467b9026c76e1415`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 17.5 KB (17455 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-ros-base-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:682edf3ddaaa7b22e249a8e0577e48b534adc81ba5f3582b3beefea586961bea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.5 MB (334489836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de21c3cf913d05da39d2c77e18e6457a417833c8bd13fbbbb2fabf8b1f3e5927`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 13:05:14 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9275.tar --tag 26.04
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9275.tar
# Tue, 04 Aug 2026 01:45:39 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:54 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:01 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:57 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:57 GMT
ENV ROS_DISTRO=lyrical
# Tue, 04 Aug 2026 01:46:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:57 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:39 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:41 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:33:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d73407a274fb6cb1e1017aae5257558853ec6bd76e38b87348173b539ca22894`  
		Last Modified: Tue, 28 Jul 2026 09:46:48 GMT  
		Size: 40.7 MB (40695089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:557836a62b7606e693caad19a768fa87fc346bff7d816ac03108c69adb1d684b`  
		Last Modified: Tue, 28 Jul 2026 09:46:51 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be87267d1e1f862dff3547e4a5c20e237f6bde838c01066eacf04c9308a993c3`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 740.6 KB (740636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc3feb02ad2b84b0509512d7dd2272765165e00d030fef8eb2991658dceb1a14`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 12.9 MB (12936259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56e55cc5f60675bef9702684217b1694e94a75a0896f76cfd57c0744c9e31be5`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 90.9 KB (90906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc127cb53887bd9252a3ab0251dc62ca1c362c2879152e18a938077b717b1c4`  
		Last Modified: Tue, 04 Aug 2026 01:47:40 GMT  
		Size: 136.6 MB (136564725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9829aacff4439238859b93870ef9421c81fdca07d68f20c1c9eab6007a40544`  
		Last Modified: Tue, 04 Aug 2026 01:47:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4a205756ab51571acb1f26eff5ff53fc0a4188915f490ac4f6f1211e32c65a8`  
		Last Modified: Tue, 04 Aug 2026 02:33:55 GMT  
		Size: 118.3 MB (118277863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e38d55127cf04815689f8ec64dad3e52707ad363311a052aaf33b937962f103`  
		Last Modified: Tue, 04 Aug 2026 02:33:51 GMT  
		Size: 391.5 KB (391479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:359b743f32fdc2babce47adab50b337298a989d3e0a7fb3538057808d9d061bc`  
		Last Modified: Tue, 04 Aug 2026 02:33:51 GMT  
		Size: 130.9 KB (130856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7823d736187e004a9d4accc28390ea83d249b2f3a2440dc3a2b6b2fec985e4b9`  
		Last Modified: Tue, 04 Aug 2026 02:33:53 GMT  
		Size: 24.7 MB (24661440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:3dab886b2fb00d773b88f2d922dd662b57585704342c73683b07d85191ce4811
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29206094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5618ba548816601ac25f7e2bde589787e0eead1c74fe31289a815ae9d379f8e`

```dockerfile
```

-	Layers:
	-	`sha256:e2f9be4571a10d9b155272d92fd449ff8715038275b1bc273e7f91d1a0b687d3`  
		Last Modified: Tue, 04 Aug 2026 02:33:53 GMT  
		Size: 29.2 MB (29188490 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:415223d5ba681c23764bc4d66428476ad9b73c8cc5c2599243d6e5df0fe961a5`  
		Last Modified: Tue, 04 Aug 2026 02:33:51 GMT  
		Size: 17.6 KB (17604 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-ros-core`

```console
$ docker pull ros@sha256:05272d2f48c0e4726497b71148df684a1f17cb952e4e882f4e98d58eb3fa83e4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:0ba284d188813eddb102ad54799bfd7101c07f077128690636cc14ca8ecc05b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.5 MB (198483624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7abbb8d20f93c5dce0c6ffd143cf6e5b7b27a55e0450655d3387f16dbbd386c4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 12:48:27 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9094.tar --tag 26.04
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9094.tar
# Tue, 04 Aug 2026 01:45:32 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:47 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:51 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:43 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:43 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:43 GMT
ENV ROS_DISTRO=lyrical
# Tue, 04 Aug 2026 01:46:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:44 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:617772c7d19b9f9c4141bc73b37e6f4c5e4e69729f6881a73d0dc23676dbbd60`  
		Last Modified: Tue, 28 Jul 2026 09:46:38 GMT  
		Size: 41.6 MB (41568275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7fb98a8eddd1a70f99f205cb4b66e830a3e8ef4798f5636ece054a567b650de`  
		Last Modified: Tue, 28 Jul 2026 09:46:41 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6600ec0ac4da3d70b397a4126942960f2cf4e7303a97207db0ec857ddf7077c2`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 740.2 KB (740199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97bd30124542fe11b6b8e3840d1612bcd29a78f48bf5de2ebb33b25651dd0df9`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 12.8 MB (12753612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcbb78d1e674dc2402e2451653236413d1d8cf5e2cb98ee1b8155386e66d89f8`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 90.5 KB (90473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd45c76664f51f9efa5a9596ee41950f41bd1f0138b613413b532e0418188301`  
		Last Modified: Tue, 04 Aug 2026 01:47:25 GMT  
		Size: 143.3 MB (143330480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538caae360a338033e229bbb6346e517a449aae2d1ee1d1833f52bfa2278af02`  
		Last Modified: Tue, 04 Aug 2026 01:47:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:2f0a82113a6a8847d1290ccc8cd0017b902d5ab5953c7904dcd6111eaf641004
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22743334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c30944d3d71ce06ca586d1cb9bca6e9494817ad80dfb1dbd7416b2a9f261939d`

```dockerfile
```

-	Layers:
	-	`sha256:3f940a41f40ebc5cb05bf89400b73a8235fc8cd1e02ec20b7bfd9db28077ac02`  
		Last Modified: Tue, 04 Aug 2026 01:47:23 GMT  
		Size: 22.7 MB (22727747 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c89e4c8a919829da6c21f929f1e6f294bb9937c9c5ffa6fd7dd21cacf663f147`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 15.6 KB (15587 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:cf063ed2afb45adae16ffc234841dfb9bef8e2b42f4cbe2416a924afb5c766e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.0 MB (191028198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b3304858526ddf2adabca127ab9c0974a834a8a3abd48b6018348c11a83dc05`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 13:05:14 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9275.tar --tag 26.04
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9275.tar
# Tue, 04 Aug 2026 01:45:39 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:54 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:01 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:57 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:57 GMT
ENV ROS_DISTRO=lyrical
# Tue, 04 Aug 2026 01:46:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:57 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d73407a274fb6cb1e1017aae5257558853ec6bd76e38b87348173b539ca22894`  
		Last Modified: Tue, 28 Jul 2026 09:46:48 GMT  
		Size: 40.7 MB (40695089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:557836a62b7606e693caad19a768fa87fc346bff7d816ac03108c69adb1d684b`  
		Last Modified: Tue, 28 Jul 2026 09:46:51 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be87267d1e1f862dff3547e4a5c20e237f6bde838c01066eacf04c9308a993c3`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 740.6 KB (740636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc3feb02ad2b84b0509512d7dd2272765165e00d030fef8eb2991658dceb1a14`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 12.9 MB (12936259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56e55cc5f60675bef9702684217b1694e94a75a0896f76cfd57c0744c9e31be5`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 90.9 KB (90906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc127cb53887bd9252a3ab0251dc62ca1c362c2879152e18a938077b717b1c4`  
		Last Modified: Tue, 04 Aug 2026 01:47:40 GMT  
		Size: 136.6 MB (136564725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9829aacff4439238859b93870ef9421c81fdca07d68f20c1c9eab6007a40544`  
		Last Modified: Tue, 04 Aug 2026 01:47:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:1c0df65f41c584a85b7ae1c89c61e3818083fd4b86063a756d06ec65f32ff3dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22716151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19a8561adaed40fae56a5b1bb67e16ebefc06ce06fcabc96120d9c366c6f4e57`

```dockerfile
```

-	Layers:
	-	`sha256:3d836036b2bf35b562c119f6fb0aef5c8a9dc9bacfbf6f07457d54b3e47fed78`  
		Last Modified: Tue, 04 Aug 2026 01:47:38 GMT  
		Size: 22.7 MB (22700439 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ffb05ed3da717ecd80791e6810ec775374cac88c83dd85d2554b76747b3572df`  
		Last Modified: Tue, 04 Aug 2026 01:47:36 GMT  
		Size: 15.7 KB (15712 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-ros-core-resolute`

```console
$ docker pull ros@sha256:05272d2f48c0e4726497b71148df684a1f17cb952e4e882f4e98d58eb3fa83e4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-core-resolute` - linux; amd64

```console
$ docker pull ros@sha256:0ba284d188813eddb102ad54799bfd7101c07f077128690636cc14ca8ecc05b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.5 MB (198483624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7abbb8d20f93c5dce0c6ffd143cf6e5b7b27a55e0450655d3387f16dbbd386c4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 12:48:27 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9094.tar --tag 26.04
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9094.tar
# Tue, 04 Aug 2026 01:45:32 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:47 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:51 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:43 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:43 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:43 GMT
ENV ROS_DISTRO=lyrical
# Tue, 04 Aug 2026 01:46:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:44 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:617772c7d19b9f9c4141bc73b37e6f4c5e4e69729f6881a73d0dc23676dbbd60`  
		Last Modified: Tue, 28 Jul 2026 09:46:38 GMT  
		Size: 41.6 MB (41568275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7fb98a8eddd1a70f99f205cb4b66e830a3e8ef4798f5636ece054a567b650de`  
		Last Modified: Tue, 28 Jul 2026 09:46:41 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6600ec0ac4da3d70b397a4126942960f2cf4e7303a97207db0ec857ddf7077c2`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 740.2 KB (740199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97bd30124542fe11b6b8e3840d1612bcd29a78f48bf5de2ebb33b25651dd0df9`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 12.8 MB (12753612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcbb78d1e674dc2402e2451653236413d1d8cf5e2cb98ee1b8155386e66d89f8`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 90.5 KB (90473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd45c76664f51f9efa5a9596ee41950f41bd1f0138b613413b532e0418188301`  
		Last Modified: Tue, 04 Aug 2026 01:47:25 GMT  
		Size: 143.3 MB (143330480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538caae360a338033e229bbb6346e517a449aae2d1ee1d1833f52bfa2278af02`  
		Last Modified: Tue, 04 Aug 2026 01:47:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:2f0a82113a6a8847d1290ccc8cd0017b902d5ab5953c7904dcd6111eaf641004
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22743334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c30944d3d71ce06ca586d1cb9bca6e9494817ad80dfb1dbd7416b2a9f261939d`

```dockerfile
```

-	Layers:
	-	`sha256:3f940a41f40ebc5cb05bf89400b73a8235fc8cd1e02ec20b7bfd9db28077ac02`  
		Last Modified: Tue, 04 Aug 2026 01:47:23 GMT  
		Size: 22.7 MB (22727747 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c89e4c8a919829da6c21f929f1e6f294bb9937c9c5ffa6fd7dd21cacf663f147`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 15.6 KB (15587 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-ros-core-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:cf063ed2afb45adae16ffc234841dfb9bef8e2b42f4cbe2416a924afb5c766e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.0 MB (191028198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b3304858526ddf2adabca127ab9c0974a834a8a3abd48b6018348c11a83dc05`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 13:05:14 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9275.tar --tag 26.04
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9275.tar
# Tue, 04 Aug 2026 01:45:39 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:54 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:01 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:57 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:57 GMT
ENV ROS_DISTRO=lyrical
# Tue, 04 Aug 2026 01:46:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:57 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d73407a274fb6cb1e1017aae5257558853ec6bd76e38b87348173b539ca22894`  
		Last Modified: Tue, 28 Jul 2026 09:46:48 GMT  
		Size: 40.7 MB (40695089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:557836a62b7606e693caad19a768fa87fc346bff7d816ac03108c69adb1d684b`  
		Last Modified: Tue, 28 Jul 2026 09:46:51 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be87267d1e1f862dff3547e4a5c20e237f6bde838c01066eacf04c9308a993c3`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 740.6 KB (740636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc3feb02ad2b84b0509512d7dd2272765165e00d030fef8eb2991658dceb1a14`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 12.9 MB (12936259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56e55cc5f60675bef9702684217b1694e94a75a0896f76cfd57c0744c9e31be5`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 90.9 KB (90906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc127cb53887bd9252a3ab0251dc62ca1c362c2879152e18a938077b717b1c4`  
		Last Modified: Tue, 04 Aug 2026 01:47:40 GMT  
		Size: 136.6 MB (136564725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9829aacff4439238859b93870ef9421c81fdca07d68f20c1c9eab6007a40544`  
		Last Modified: Tue, 04 Aug 2026 01:47:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:1c0df65f41c584a85b7ae1c89c61e3818083fd4b86063a756d06ec65f32ff3dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22716151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19a8561adaed40fae56a5b1bb67e16ebefc06ce06fcabc96120d9c366c6f4e57`

```dockerfile
```

-	Layers:
	-	`sha256:3d836036b2bf35b562c119f6fb0aef5c8a9dc9bacfbf6f07457d54b3e47fed78`  
		Last Modified: Tue, 04 Aug 2026 01:47:38 GMT  
		Size: 22.7 MB (22700439 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ffb05ed3da717ecd80791e6810ec775374cac88c83dd85d2554b76747b3572df`  
		Last Modified: Tue, 04 Aug 2026 01:47:36 GMT  
		Size: 15.7 KB (15712 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling`

```console
$ docker pull ros@sha256:fdbd65c54290345baffa3559475b767837883b056f130d500ff1dd9a3d9a27b3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling` - linux; amd64

```console
$ docker pull ros@sha256:47c8ef9a48fc05047777f73abe87c4d1f03f14376694a33eca22c01b1b0e1ebb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.0 MB (349950794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3ddbdd1ef635fa62a9462a7c8d6f21c5b10141c495d916bc4c9afb481695959`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 12:48:27 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9094.tar --tag 26.04
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9094.tar
# Tue, 04 Aug 2026 01:47:20 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:47:32 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:47:37 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:34 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:48:34 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:48:34 GMT
ENV ROS_DISTRO=rolling
# Tue, 04 Aug 2026 01:48:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:34 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:48:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:48:34 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:08 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:09 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:617772c7d19b9f9c4141bc73b37e6f4c5e4e69729f6881a73d0dc23676dbbd60`  
		Last Modified: Tue, 28 Jul 2026 09:46:38 GMT  
		Size: 41.6 MB (41568275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7fb98a8eddd1a70f99f205cb4b66e830a3e8ef4798f5636ece054a567b650de`  
		Last Modified: Tue, 28 Jul 2026 09:46:41 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:682b5d429ab8a035d3903c873f611d9826c2f3655182771e5a99242bbaa995d5`  
		Last Modified: Tue, 04 Aug 2026 01:49:17 GMT  
		Size: 740.2 KB (740213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:257128f5efb77905a75440964a0fa9e26de99c224a4b898a4509e96f7777f2ab`  
		Last Modified: Tue, 04 Aug 2026 01:49:18 GMT  
		Size: 12.8 MB (12753617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11412969dac8e0b57ab8a04312f7fbeedbc026c6c5b40869f262cef34a7a2f50`  
		Last Modified: Tue, 04 Aug 2026 01:49:17 GMT  
		Size: 90.5 KB (90503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44710f1fb76a94aa02ca6914d828e2b0fc6347a10c9c4ee0ef6f058408cb4384`  
		Last Modified: Tue, 04 Aug 2026 01:49:20 GMT  
		Size: 143.7 MB (143662361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:622d74507cf2aa2b0a23b07541428778ca5e27349bd94a247f60533e85fbac9c`  
		Last Modified: Tue, 04 Aug 2026 01:49:18 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b11fa10d04a32f149cd41ffe89f3804a58cf72655d7c7f29d817b99f6394087`  
		Last Modified: Tue, 04 Aug 2026 02:33:23 GMT  
		Size: 124.9 MB (124864497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8778090b2b0d9d51ca93d8964443d7132b64510cd63253ea3d547adc268ec9c`  
		Last Modified: Tue, 04 Aug 2026 02:33:19 GMT  
		Size: 361.5 KB (361472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8565b87d8270e7e5c0df25f81bd2d321efd30f56fef833ddcff5f82a3be16246`  
		Last Modified: Tue, 04 Aug 2026 02:33:19 GMT  
		Size: 130.8 KB (130819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5abbb19f1f221cb9d9da3b825bd7160751edc3d9706b87ac455ac300f5be7e9`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 25.8 MB (25778452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling` - unknown; unknown

```console
$ docker pull ros@sha256:cf320e232eb29fbfc9d6e4caf693ae7a8f02c3b4bc345aa1080203c0c8710a89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29158254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b5b8410eedd6747a44b247df8efdc3ac87d8b3990a92feb7ca77dd590f4258b`

```dockerfile
```

-	Layers:
	-	`sha256:b0478f0e6f7b064b8873e600f09ffa7024b187f4336d338b79b843ef5d7193d8`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 29.1 MB (29141091 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f6c6d9f183df97b82b4b8bcc93e12b92220090e89659424379677928186ee75f`  
		Last Modified: Tue, 04 Aug 2026 02:33:19 GMT  
		Size: 17.2 KB (17163 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7e0aeb51ac11553ff7e6db3797a93227bffd86743cd222f66c07013e4164aeff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.8 MB (334814080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:687756aa7f8d19a29f4fc0fae6b2b947f1dbfde90be652fc952ddad98fb3d198`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 13:05:14 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9275.tar --tag 26.04
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9275.tar
# Tue, 04 Aug 2026 01:47:21 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:47:35 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:47:42 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:42 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:48:42 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:48:42 GMT
ENV ROS_DISTRO=rolling
# Tue, 04 Aug 2026 01:48:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:42 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:48:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:48:42 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:44 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:47 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:48 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:33:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d73407a274fb6cb1e1017aae5257558853ec6bd76e38b87348173b539ca22894`  
		Last Modified: Tue, 28 Jul 2026 09:46:48 GMT  
		Size: 40.7 MB (40695089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:557836a62b7606e693caad19a768fa87fc346bff7d816ac03108c69adb1d684b`  
		Last Modified: Tue, 28 Jul 2026 09:46:51 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec143ee2047da2675de0faa0d887cf7333298839d98aab8faaeadfccf16b105e`  
		Last Modified: Tue, 04 Aug 2026 01:49:21 GMT  
		Size: 740.6 KB (740604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0fa76e0e25af24593bb56ab3cd630eab462d47f07d4a11de290152192cd2b35`  
		Last Modified: Tue, 04 Aug 2026 01:49:22 GMT  
		Size: 12.9 MB (12936330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e38743eed5473a5440771fcbce2fabad9bad09a759ef9909623fb81229cfe519`  
		Last Modified: Tue, 04 Aug 2026 01:49:21 GMT  
		Size: 90.9 KB (90943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:621ae0add5ebc66a12cf87118f96656978aee19a41167394221de9c08b96fa28`  
		Last Modified: Tue, 04 Aug 2026 01:49:25 GMT  
		Size: 136.9 MB (136855051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27d38b7d0f4a7a3422ab4aa0be4469ed8ef7bb65ad18c7ab4fc8e2663cd70ab4`  
		Last Modified: Tue, 04 Aug 2026 01:49:23 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aa4dcc5c59f1de2944046550a60a31f2688be54a4f1f8472d8bc51c0a7b5c7e`  
		Last Modified: Tue, 04 Aug 2026 02:34:03 GMT  
		Size: 118.3 MB (118277171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa64f3b72ecb747e5ca9aa46798292bc1a39d95b0106a40d199765bdfcbf4868`  
		Last Modified: Tue, 04 Aug 2026 02:34:00 GMT  
		Size: 361.5 KB (361477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4435fbdbd8c5273af08aa6c3718c4627ebc8f6ef6364f474a6ed7fa6fdbb96b2`  
		Last Modified: Tue, 04 Aug 2026 02:34:00 GMT  
		Size: 130.8 KB (130811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb1d0ec5ba73a143cf5362d4aba28de25c6a4659420e81826ec22c0a42e2b1f2`  
		Last Modified: Tue, 04 Aug 2026 02:34:02 GMT  
		Size: 24.7 MB (24726020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling` - unknown; unknown

```console
$ docker pull ros@sha256:53d7698962f590143488c8c41451ba25a3bde3a21978ff64a502f206b6ecd9b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29232733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b87f41be36c3f093ccb78cac679cc867367f1926140cb8f3e1cb58de8f88c2c4`

```dockerfile
```

-	Layers:
	-	`sha256:0bcd63f89516272416c510972fd063855fae193761853d9bbdc7b5ce08967098`  
		Last Modified: Tue, 04 Aug 2026 02:34:02 GMT  
		Size: 29.2 MB (29215433 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3c0922c214d2b210ee3419e3285510a538e421872c734f3cd36a187c9bac063`  
		Last Modified: Tue, 04 Aug 2026 02:34:00 GMT  
		Size: 17.3 KB (17300 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-perception`

```console
$ docker pull ros@sha256:11216825cf4bca4cb23670ce4cfe37753176c48bdb418169b2cffc94945a9b87
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-perception` - linux; amd64

```console
$ docker pull ros@sha256:98bf67ad51d4162a3f5e485b6a5039e499e36f4f804891a5d26c32dd7cba7d39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1528687645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:745a089fec2ed32674cede1b910e37fc34eca5373ca9d36667edc5bc562f8710`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 16:06:29 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.8989.tar --tag 26.04
# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-13T16:06:30.499069+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-13T16:06:30.499069+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.control_data.8989.tar
# Thu, 16 Jul 2026 00:37:01 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:12 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:18 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:10 GMT
ENV LANG=C.UTF-8
# Thu, 16 Jul 2026 00:38:10 GMT
ENV LC_ALL=C.UTF-8
# Thu, 16 Jul 2026 00:38:10 GMT
ENV ROS_DISTRO=rolling
# Thu, 16 Jul 2026 00:38:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:10 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 16 Jul 2026 00:38:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 16 Jul 2026 00:38:10 GMT
CMD ["bash"]
# Thu, 16 Jul 2026 01:17:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 01:17:58 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 16 Jul 2026 01:17:59 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 16 Jul 2026 01:18:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 02:19:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ed819469700fe2cd94f44a7c218a84e40cda16dd2e7e5238cbdef33e6153d536`  
		Last Modified: Mon, 13 Jul 2026 22:13:37 GMT  
		Size: 41.6 MB (41580757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3679419df184857c0d317d7cdaad6187f6c0f0b68dd2ed58becf174e28f4c1b`  
		Last Modified: Mon, 13 Jul 2026 22:13:40 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4d4ec5b8162b7bdc79d6910e2bf07b4d5239753384d6716803ef643b9fc9f1d`  
		Last Modified: Thu, 16 Jul 2026 00:38:52 GMT  
		Size: 741.1 KB (741067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba7ab849d94c28f521fe5eae380534ce75d6ba8844cb6d53f0b6d780b0607082`  
		Last Modified: Thu, 16 Jul 2026 00:38:53 GMT  
		Size: 9.8 MB (9784018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f5468cf8bb7ece550b332ae613d317da7f081a7ae6878acfc88a645e718cf49`  
		Last Modified: Thu, 16 Jul 2026 00:38:52 GMT  
		Size: 90.1 KB (90080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c16a252edd64fd4e0b3bb2510c4c0189b5277bd687e451992585d55a8b0383e`  
		Last Modified: Thu, 16 Jul 2026 00:38:56 GMT  
		Size: 136.8 MB (136835349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efa36fd8fe4fd568b93a41ba29dc466187c2ba3e30aac4cf1092351b01e5283c`  
		Last Modified: Thu, 16 Jul 2026 00:38:53 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cba190c6521da847653a8879de7ef1e782c95870360c6e8e3018452a93746732`  
		Last Modified: Thu, 16 Jul 2026 01:19:14 GMT  
		Size: 124.9 MB (124864076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:032c8e898432e45def3595b2f11c3b262fdcab16bc16cdf4957285998b580561`  
		Last Modified: Thu, 16 Jul 2026 01:19:10 GMT  
		Size: 373.2 KB (373217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b822d4cc2a52e077b5276f8ce026e84b6725442f68aa2dceeb20daa326a8d6b6`  
		Last Modified: Thu, 16 Jul 2026 01:19:10 GMT  
		Size: 130.8 KB (130804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b81d4a41a5d26b802dbd745837d8f2e0bec1a9c007ecbebe771d1924b90df366`  
		Last Modified: Thu, 16 Jul 2026 01:19:11 GMT  
		Size: 25.8 MB (25792662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29e43c211cfbc245a9bfe9782727910628335845f7580f1c220ac5c0aa099cca`  
		Last Modified: Thu, 16 Jul 2026 02:24:55 GMT  
		Size: 1.2 GB (1188495027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-perception` - unknown; unknown

```console
$ docker pull ros@sha256:3307ca9198a61504f8705215a52b64f64eb579e9488582e3a2aa9d2440d5034b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64346499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c348ffb492373b1cfbc0bc625e4224bcacf5c90a2dd549f14bd6778c1c76f76d`

```dockerfile
```

-	Layers:
	-	`sha256:afb53147cb1cef63b3697b3571bb993fbede43cb979f539304ec3452d1df0c9e`  
		Last Modified: Thu, 16 Jul 2026 02:24:34 GMT  
		Size: 64.3 MB (64336806 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:991e885f92898f8306b24b1854b7ad69a312141f5b0413674584130551d00cdc`  
		Last Modified: Thu, 16 Jul 2026 02:24:31 GMT  
		Size: 9.7 KB (9693 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:3f2f1b3fc834e9afbf89549d9daf11d92035f66e17d6c14de33f4bd1282caf74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1471981620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83ccbb2632db6f1f8560066f2cc16b3c75cf0dda49318f30c8d015fa44a9c632`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Jun 2026 04:19:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.9127.tar --tag 26.04
# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-06-27T04:19:53.170736+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-06-27T04:19:53.170736+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.control_data.9127.tar
# Thu, 09 Jul 2026 18:31:17 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:31:31 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:31:36 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:32:27 GMT
ENV LANG=C.UTF-8
# Thu, 09 Jul 2026 18:32:27 GMT
ENV LC_ALL=C.UTF-8
# Thu, 09 Jul 2026 18:32:27 GMT
ENV ROS_DISTRO=rolling
# Thu, 09 Jul 2026 18:32:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:32:27 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 09 Jul 2026 18:32:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 09 Jul 2026 18:32:27 GMT
CMD ["bash"]
# Thu, 09 Jul 2026 18:37:26 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:37:29 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 09 Jul 2026 18:37:33 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 09 Jul 2026 18:37:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 19:14:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:b2b4144bf8691339f4f1011754b5ed314a4cb9c03e57af4c022301022f36b79a`  
		Last Modified: Sat, 27 Jun 2026 11:14:43 GMT  
		Size: 40.7 MB (40711760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade0b5cbf7f1ac2f5ced1ed952e889f07199006cfbb44f6e2c7b85df005259ca`  
		Last Modified: Sat, 27 Jun 2026 11:14:46 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b212f396a8d7403086bea7814b524a8a476d936ea87bd795407c72f29c93c06`  
		Last Modified: Thu, 09 Jul 2026 18:33:05 GMT  
		Size: 742.0 KB (742032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:384fc61248925600a0cd688c6766d5dc8e9be47385266c4b9e57fcda86d2ed1f`  
		Last Modified: Thu, 09 Jul 2026 18:33:06 GMT  
		Size: 9.6 MB (9607107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54d8fec7cbfae0c5b67babc22a87591ea889647c1cfa0271c4216e61c0b06b00`  
		Last Modified: Thu, 09 Jul 2026 18:33:05 GMT  
		Size: 91.1 KB (91098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a15cddbe9789e5807f02c1f44acc072e1cf22050e93b14b9a2d49e357e490629`  
		Last Modified: Thu, 09 Jul 2026 18:33:09 GMT  
		Size: 130.2 MB (130199952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4baef65b99574c57f36722163f7eac27b5eace626399f04ae7e68236c167f196`  
		Last Modified: Thu, 09 Jul 2026 18:33:07 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40f53707932ffe7d1fb0f581bebdb046f570db5e5a5fe05563b64483788ae81c`  
		Last Modified: Thu, 09 Jul 2026 18:38:48 GMT  
		Size: 118.3 MB (118276238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6b1067915e749fb82d1cf7fc0c33acee692788c9bdddccb700e6dd2839b0039`  
		Last Modified: Thu, 09 Jul 2026 18:38:45 GMT  
		Size: 372.6 KB (372574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a9e2e7a4414c19adaf6ae13b5efd963fa29cb15b0bd84f32f92230b9221aac`  
		Last Modified: Thu, 09 Jul 2026 18:38:45 GMT  
		Size: 130.9 KB (130865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dba84455dbba6cbdd79476f6e4fa70e16abf4d574f88ec6b7abd7d102558eab3`  
		Last Modified: Thu, 09 Jul 2026 18:38:46 GMT  
		Size: 24.7 MB (24738576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4be9b396657f44c2d43ae0fbf13b64036791df347a36d0f051c6ac61cd3e14b`  
		Last Modified: Thu, 09 Jul 2026 19:19:00 GMT  
		Size: 1.1 GB (1147110830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-perception` - unknown; unknown

```console
$ docker pull ros@sha256:ae83e711178e56dda03535532419d1ff32187c84833c702c4d413a501789a6bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64260731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c3775709595dfe3d13a7496499c61c5a50d35ec6290dd56079b913d1e214a0f`

```dockerfile
```

-	Layers:
	-	`sha256:3c75211a66cace79bbc434a5e60ea97596a6f5903d0515d83ae8b2b74643e08e`  
		Last Modified: Thu, 09 Jul 2026 19:18:41 GMT  
		Size: 64.3 MB (64250958 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c4efebf91b56b959f4912cf6714b41f71fa37366ab5dd43b8a3c72e3c42b9f5`  
		Last Modified: Thu, 09 Jul 2026 19:18:38 GMT  
		Size: 9.8 KB (9773 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-perception-resolute`

```console
$ docker pull ros@sha256:11216825cf4bca4cb23670ce4cfe37753176c48bdb418169b2cffc94945a9b87
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-perception-resolute` - linux; amd64

```console
$ docker pull ros@sha256:98bf67ad51d4162a3f5e485b6a5039e499e36f4f804891a5d26c32dd7cba7d39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1528687645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:745a089fec2ed32674cede1b910e37fc34eca5373ca9d36667edc5bc562f8710`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 16:06:29 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.8989.tar --tag 26.04
# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-13T16:06:30.499069+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-13T16:06:30.499069+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.control_data.8989.tar
# Thu, 16 Jul 2026 00:37:01 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:12 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:18 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:10 GMT
ENV LANG=C.UTF-8
# Thu, 16 Jul 2026 00:38:10 GMT
ENV LC_ALL=C.UTF-8
# Thu, 16 Jul 2026 00:38:10 GMT
ENV ROS_DISTRO=rolling
# Thu, 16 Jul 2026 00:38:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:10 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 16 Jul 2026 00:38:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 16 Jul 2026 00:38:10 GMT
CMD ["bash"]
# Thu, 16 Jul 2026 01:17:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 01:17:58 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 16 Jul 2026 01:17:59 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 16 Jul 2026 01:18:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 02:19:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ed819469700fe2cd94f44a7c218a84e40cda16dd2e7e5238cbdef33e6153d536`  
		Last Modified: Mon, 13 Jul 2026 22:13:37 GMT  
		Size: 41.6 MB (41580757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3679419df184857c0d317d7cdaad6187f6c0f0b68dd2ed58becf174e28f4c1b`  
		Last Modified: Mon, 13 Jul 2026 22:13:40 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4d4ec5b8162b7bdc79d6910e2bf07b4d5239753384d6716803ef643b9fc9f1d`  
		Last Modified: Thu, 16 Jul 2026 00:38:52 GMT  
		Size: 741.1 KB (741067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba7ab849d94c28f521fe5eae380534ce75d6ba8844cb6d53f0b6d780b0607082`  
		Last Modified: Thu, 16 Jul 2026 00:38:53 GMT  
		Size: 9.8 MB (9784018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f5468cf8bb7ece550b332ae613d317da7f081a7ae6878acfc88a645e718cf49`  
		Last Modified: Thu, 16 Jul 2026 00:38:52 GMT  
		Size: 90.1 KB (90080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c16a252edd64fd4e0b3bb2510c4c0189b5277bd687e451992585d55a8b0383e`  
		Last Modified: Thu, 16 Jul 2026 00:38:56 GMT  
		Size: 136.8 MB (136835349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efa36fd8fe4fd568b93a41ba29dc466187c2ba3e30aac4cf1092351b01e5283c`  
		Last Modified: Thu, 16 Jul 2026 00:38:53 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cba190c6521da847653a8879de7ef1e782c95870360c6e8e3018452a93746732`  
		Last Modified: Thu, 16 Jul 2026 01:19:14 GMT  
		Size: 124.9 MB (124864076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:032c8e898432e45def3595b2f11c3b262fdcab16bc16cdf4957285998b580561`  
		Last Modified: Thu, 16 Jul 2026 01:19:10 GMT  
		Size: 373.2 KB (373217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b822d4cc2a52e077b5276f8ce026e84b6725442f68aa2dceeb20daa326a8d6b6`  
		Last Modified: Thu, 16 Jul 2026 01:19:10 GMT  
		Size: 130.8 KB (130804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b81d4a41a5d26b802dbd745837d8f2e0bec1a9c007ecbebe771d1924b90df366`  
		Last Modified: Thu, 16 Jul 2026 01:19:11 GMT  
		Size: 25.8 MB (25792662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29e43c211cfbc245a9bfe9782727910628335845f7580f1c220ac5c0aa099cca`  
		Last Modified: Thu, 16 Jul 2026 02:24:55 GMT  
		Size: 1.2 GB (1188495027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:3307ca9198a61504f8705215a52b64f64eb579e9488582e3a2aa9d2440d5034b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64346499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c348ffb492373b1cfbc0bc625e4224bcacf5c90a2dd549f14bd6778c1c76f76d`

```dockerfile
```

-	Layers:
	-	`sha256:afb53147cb1cef63b3697b3571bb993fbede43cb979f539304ec3452d1df0c9e`  
		Last Modified: Thu, 16 Jul 2026 02:24:34 GMT  
		Size: 64.3 MB (64336806 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:991e885f92898f8306b24b1854b7ad69a312141f5b0413674584130551d00cdc`  
		Last Modified: Thu, 16 Jul 2026 02:24:31 GMT  
		Size: 9.7 KB (9693 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-perception-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:3f2f1b3fc834e9afbf89549d9daf11d92035f66e17d6c14de33f4bd1282caf74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1471981620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83ccbb2632db6f1f8560066f2cc16b3c75cf0dda49318f30c8d015fa44a9c632`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Jun 2026 04:19:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.9127.tar --tag 26.04
# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-06-27T04:19:53.170736+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-06-27T04:19:53.170736+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.control_data.9127.tar
# Thu, 09 Jul 2026 18:31:17 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:31:31 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:31:36 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:32:27 GMT
ENV LANG=C.UTF-8
# Thu, 09 Jul 2026 18:32:27 GMT
ENV LC_ALL=C.UTF-8
# Thu, 09 Jul 2026 18:32:27 GMT
ENV ROS_DISTRO=rolling
# Thu, 09 Jul 2026 18:32:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:32:27 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 09 Jul 2026 18:32:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 09 Jul 2026 18:32:27 GMT
CMD ["bash"]
# Thu, 09 Jul 2026 18:37:26 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:37:29 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 09 Jul 2026 18:37:33 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 09 Jul 2026 18:37:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 19:14:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:b2b4144bf8691339f4f1011754b5ed314a4cb9c03e57af4c022301022f36b79a`  
		Last Modified: Sat, 27 Jun 2026 11:14:43 GMT  
		Size: 40.7 MB (40711760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade0b5cbf7f1ac2f5ced1ed952e889f07199006cfbb44f6e2c7b85df005259ca`  
		Last Modified: Sat, 27 Jun 2026 11:14:46 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b212f396a8d7403086bea7814b524a8a476d936ea87bd795407c72f29c93c06`  
		Last Modified: Thu, 09 Jul 2026 18:33:05 GMT  
		Size: 742.0 KB (742032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:384fc61248925600a0cd688c6766d5dc8e9be47385266c4b9e57fcda86d2ed1f`  
		Last Modified: Thu, 09 Jul 2026 18:33:06 GMT  
		Size: 9.6 MB (9607107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54d8fec7cbfae0c5b67babc22a87591ea889647c1cfa0271c4216e61c0b06b00`  
		Last Modified: Thu, 09 Jul 2026 18:33:05 GMT  
		Size: 91.1 KB (91098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a15cddbe9789e5807f02c1f44acc072e1cf22050e93b14b9a2d49e357e490629`  
		Last Modified: Thu, 09 Jul 2026 18:33:09 GMT  
		Size: 130.2 MB (130199952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4baef65b99574c57f36722163f7eac27b5eace626399f04ae7e68236c167f196`  
		Last Modified: Thu, 09 Jul 2026 18:33:07 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40f53707932ffe7d1fb0f581bebdb046f570db5e5a5fe05563b64483788ae81c`  
		Last Modified: Thu, 09 Jul 2026 18:38:48 GMT  
		Size: 118.3 MB (118276238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6b1067915e749fb82d1cf7fc0c33acee692788c9bdddccb700e6dd2839b0039`  
		Last Modified: Thu, 09 Jul 2026 18:38:45 GMT  
		Size: 372.6 KB (372574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a9e2e7a4414c19adaf6ae13b5efd963fa29cb15b0bd84f32f92230b9221aac`  
		Last Modified: Thu, 09 Jul 2026 18:38:45 GMT  
		Size: 130.9 KB (130865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dba84455dbba6cbdd79476f6e4fa70e16abf4d574f88ec6b7abd7d102558eab3`  
		Last Modified: Thu, 09 Jul 2026 18:38:46 GMT  
		Size: 24.7 MB (24738576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4be9b396657f44c2d43ae0fbf13b64036791df347a36d0f051c6ac61cd3e14b`  
		Last Modified: Thu, 09 Jul 2026 19:19:00 GMT  
		Size: 1.1 GB (1147110830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:ae83e711178e56dda03535532419d1ff32187c84833c702c4d413a501789a6bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64260731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c3775709595dfe3d13a7496499c61c5a50d35ec6290dd56079b913d1e214a0f`

```dockerfile
```

-	Layers:
	-	`sha256:3c75211a66cace79bbc434a5e60ea97596a6f5903d0515d83ae8b2b74643e08e`  
		Last Modified: Thu, 09 Jul 2026 19:18:41 GMT  
		Size: 64.3 MB (64250958 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c4efebf91b56b959f4912cf6714b41f71fa37366ab5dd43b8a3c72e3c42b9f5`  
		Last Modified: Thu, 09 Jul 2026 19:18:38 GMT  
		Size: 9.8 KB (9773 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-ros-base`

```console
$ docker pull ros@sha256:fdbd65c54290345baffa3559475b767837883b056f130d500ff1dd9a3d9a27b3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:47c8ef9a48fc05047777f73abe87c4d1f03f14376694a33eca22c01b1b0e1ebb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.0 MB (349950794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3ddbdd1ef635fa62a9462a7c8d6f21c5b10141c495d916bc4c9afb481695959`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 12:48:27 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9094.tar --tag 26.04
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9094.tar
# Tue, 04 Aug 2026 01:47:20 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:47:32 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:47:37 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:34 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:48:34 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:48:34 GMT
ENV ROS_DISTRO=rolling
# Tue, 04 Aug 2026 01:48:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:34 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:48:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:48:34 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:08 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:09 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:617772c7d19b9f9c4141bc73b37e6f4c5e4e69729f6881a73d0dc23676dbbd60`  
		Last Modified: Tue, 28 Jul 2026 09:46:38 GMT  
		Size: 41.6 MB (41568275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7fb98a8eddd1a70f99f205cb4b66e830a3e8ef4798f5636ece054a567b650de`  
		Last Modified: Tue, 28 Jul 2026 09:46:41 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:682b5d429ab8a035d3903c873f611d9826c2f3655182771e5a99242bbaa995d5`  
		Last Modified: Tue, 04 Aug 2026 01:49:17 GMT  
		Size: 740.2 KB (740213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:257128f5efb77905a75440964a0fa9e26de99c224a4b898a4509e96f7777f2ab`  
		Last Modified: Tue, 04 Aug 2026 01:49:18 GMT  
		Size: 12.8 MB (12753617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11412969dac8e0b57ab8a04312f7fbeedbc026c6c5b40869f262cef34a7a2f50`  
		Last Modified: Tue, 04 Aug 2026 01:49:17 GMT  
		Size: 90.5 KB (90503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44710f1fb76a94aa02ca6914d828e2b0fc6347a10c9c4ee0ef6f058408cb4384`  
		Last Modified: Tue, 04 Aug 2026 01:49:20 GMT  
		Size: 143.7 MB (143662361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:622d74507cf2aa2b0a23b07541428778ca5e27349bd94a247f60533e85fbac9c`  
		Last Modified: Tue, 04 Aug 2026 01:49:18 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b11fa10d04a32f149cd41ffe89f3804a58cf72655d7c7f29d817b99f6394087`  
		Last Modified: Tue, 04 Aug 2026 02:33:23 GMT  
		Size: 124.9 MB (124864497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8778090b2b0d9d51ca93d8964443d7132b64510cd63253ea3d547adc268ec9c`  
		Last Modified: Tue, 04 Aug 2026 02:33:19 GMT  
		Size: 361.5 KB (361472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8565b87d8270e7e5c0df25f81bd2d321efd30f56fef833ddcff5f82a3be16246`  
		Last Modified: Tue, 04 Aug 2026 02:33:19 GMT  
		Size: 130.8 KB (130819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5abbb19f1f221cb9d9da3b825bd7160751edc3d9706b87ac455ac300f5be7e9`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 25.8 MB (25778452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:cf320e232eb29fbfc9d6e4caf693ae7a8f02c3b4bc345aa1080203c0c8710a89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29158254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b5b8410eedd6747a44b247df8efdc3ac87d8b3990a92feb7ca77dd590f4258b`

```dockerfile
```

-	Layers:
	-	`sha256:b0478f0e6f7b064b8873e600f09ffa7024b187f4336d338b79b843ef5d7193d8`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 29.1 MB (29141091 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f6c6d9f183df97b82b4b8bcc93e12b92220090e89659424379677928186ee75f`  
		Last Modified: Tue, 04 Aug 2026 02:33:19 GMT  
		Size: 17.2 KB (17163 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7e0aeb51ac11553ff7e6db3797a93227bffd86743cd222f66c07013e4164aeff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.8 MB (334814080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:687756aa7f8d19a29f4fc0fae6b2b947f1dbfde90be652fc952ddad98fb3d198`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 13:05:14 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9275.tar --tag 26.04
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9275.tar
# Tue, 04 Aug 2026 01:47:21 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:47:35 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:47:42 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:42 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:48:42 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:48:42 GMT
ENV ROS_DISTRO=rolling
# Tue, 04 Aug 2026 01:48:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:42 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:48:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:48:42 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:44 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:47 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:48 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:33:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d73407a274fb6cb1e1017aae5257558853ec6bd76e38b87348173b539ca22894`  
		Last Modified: Tue, 28 Jul 2026 09:46:48 GMT  
		Size: 40.7 MB (40695089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:557836a62b7606e693caad19a768fa87fc346bff7d816ac03108c69adb1d684b`  
		Last Modified: Tue, 28 Jul 2026 09:46:51 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec143ee2047da2675de0faa0d887cf7333298839d98aab8faaeadfccf16b105e`  
		Last Modified: Tue, 04 Aug 2026 01:49:21 GMT  
		Size: 740.6 KB (740604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0fa76e0e25af24593bb56ab3cd630eab462d47f07d4a11de290152192cd2b35`  
		Last Modified: Tue, 04 Aug 2026 01:49:22 GMT  
		Size: 12.9 MB (12936330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e38743eed5473a5440771fcbce2fabad9bad09a759ef9909623fb81229cfe519`  
		Last Modified: Tue, 04 Aug 2026 01:49:21 GMT  
		Size: 90.9 KB (90943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:621ae0add5ebc66a12cf87118f96656978aee19a41167394221de9c08b96fa28`  
		Last Modified: Tue, 04 Aug 2026 01:49:25 GMT  
		Size: 136.9 MB (136855051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27d38b7d0f4a7a3422ab4aa0be4469ed8ef7bb65ad18c7ab4fc8e2663cd70ab4`  
		Last Modified: Tue, 04 Aug 2026 01:49:23 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aa4dcc5c59f1de2944046550a60a31f2688be54a4f1f8472d8bc51c0a7b5c7e`  
		Last Modified: Tue, 04 Aug 2026 02:34:03 GMT  
		Size: 118.3 MB (118277171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa64f3b72ecb747e5ca9aa46798292bc1a39d95b0106a40d199765bdfcbf4868`  
		Last Modified: Tue, 04 Aug 2026 02:34:00 GMT  
		Size: 361.5 KB (361477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4435fbdbd8c5273af08aa6c3718c4627ebc8f6ef6364f474a6ed7fa6fdbb96b2`  
		Last Modified: Tue, 04 Aug 2026 02:34:00 GMT  
		Size: 130.8 KB (130811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb1d0ec5ba73a143cf5362d4aba28de25c6a4659420e81826ec22c0a42e2b1f2`  
		Last Modified: Tue, 04 Aug 2026 02:34:02 GMT  
		Size: 24.7 MB (24726020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:53d7698962f590143488c8c41451ba25a3bde3a21978ff64a502f206b6ecd9b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29232733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b87f41be36c3f093ccb78cac679cc867367f1926140cb8f3e1cb58de8f88c2c4`

```dockerfile
```

-	Layers:
	-	`sha256:0bcd63f89516272416c510972fd063855fae193761853d9bbdc7b5ce08967098`  
		Last Modified: Tue, 04 Aug 2026 02:34:02 GMT  
		Size: 29.2 MB (29215433 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3c0922c214d2b210ee3419e3285510a538e421872c734f3cd36a187c9bac063`  
		Last Modified: Tue, 04 Aug 2026 02:34:00 GMT  
		Size: 17.3 KB (17300 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-ros-base-resolute`

```console
$ docker pull ros@sha256:fdbd65c54290345baffa3559475b767837883b056f130d500ff1dd9a3d9a27b3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-base-resolute` - linux; amd64

```console
$ docker pull ros@sha256:47c8ef9a48fc05047777f73abe87c4d1f03f14376694a33eca22c01b1b0e1ebb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.0 MB (349950794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3ddbdd1ef635fa62a9462a7c8d6f21c5b10141c495d916bc4c9afb481695959`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 12:48:27 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9094.tar --tag 26.04
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9094.tar
# Tue, 04 Aug 2026 01:47:20 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:47:32 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:47:37 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:34 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:48:34 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:48:34 GMT
ENV ROS_DISTRO=rolling
# Tue, 04 Aug 2026 01:48:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:34 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:48:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:48:34 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:08 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:09 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:617772c7d19b9f9c4141bc73b37e6f4c5e4e69729f6881a73d0dc23676dbbd60`  
		Last Modified: Tue, 28 Jul 2026 09:46:38 GMT  
		Size: 41.6 MB (41568275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7fb98a8eddd1a70f99f205cb4b66e830a3e8ef4798f5636ece054a567b650de`  
		Last Modified: Tue, 28 Jul 2026 09:46:41 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:682b5d429ab8a035d3903c873f611d9826c2f3655182771e5a99242bbaa995d5`  
		Last Modified: Tue, 04 Aug 2026 01:49:17 GMT  
		Size: 740.2 KB (740213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:257128f5efb77905a75440964a0fa9e26de99c224a4b898a4509e96f7777f2ab`  
		Last Modified: Tue, 04 Aug 2026 01:49:18 GMT  
		Size: 12.8 MB (12753617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11412969dac8e0b57ab8a04312f7fbeedbc026c6c5b40869f262cef34a7a2f50`  
		Last Modified: Tue, 04 Aug 2026 01:49:17 GMT  
		Size: 90.5 KB (90503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44710f1fb76a94aa02ca6914d828e2b0fc6347a10c9c4ee0ef6f058408cb4384`  
		Last Modified: Tue, 04 Aug 2026 01:49:20 GMT  
		Size: 143.7 MB (143662361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:622d74507cf2aa2b0a23b07541428778ca5e27349bd94a247f60533e85fbac9c`  
		Last Modified: Tue, 04 Aug 2026 01:49:18 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b11fa10d04a32f149cd41ffe89f3804a58cf72655d7c7f29d817b99f6394087`  
		Last Modified: Tue, 04 Aug 2026 02:33:23 GMT  
		Size: 124.9 MB (124864497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8778090b2b0d9d51ca93d8964443d7132b64510cd63253ea3d547adc268ec9c`  
		Last Modified: Tue, 04 Aug 2026 02:33:19 GMT  
		Size: 361.5 KB (361472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8565b87d8270e7e5c0df25f81bd2d321efd30f56fef833ddcff5f82a3be16246`  
		Last Modified: Tue, 04 Aug 2026 02:33:19 GMT  
		Size: 130.8 KB (130819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5abbb19f1f221cb9d9da3b825bd7160751edc3d9706b87ac455ac300f5be7e9`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 25.8 MB (25778452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:cf320e232eb29fbfc9d6e4caf693ae7a8f02c3b4bc345aa1080203c0c8710a89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29158254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b5b8410eedd6747a44b247df8efdc3ac87d8b3990a92feb7ca77dd590f4258b`

```dockerfile
```

-	Layers:
	-	`sha256:b0478f0e6f7b064b8873e600f09ffa7024b187f4336d338b79b843ef5d7193d8`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 29.1 MB (29141091 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f6c6d9f183df97b82b4b8bcc93e12b92220090e89659424379677928186ee75f`  
		Last Modified: Tue, 04 Aug 2026 02:33:19 GMT  
		Size: 17.2 KB (17163 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-base-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7e0aeb51ac11553ff7e6db3797a93227bffd86743cd222f66c07013e4164aeff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.8 MB (334814080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:687756aa7f8d19a29f4fc0fae6b2b947f1dbfde90be652fc952ddad98fb3d198`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 13:05:14 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9275.tar --tag 26.04
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9275.tar
# Tue, 04 Aug 2026 01:47:21 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:47:35 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:47:42 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:42 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:48:42 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:48:42 GMT
ENV ROS_DISTRO=rolling
# Tue, 04 Aug 2026 01:48:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:42 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:48:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:48:42 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:44 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:47 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:48 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:33:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d73407a274fb6cb1e1017aae5257558853ec6bd76e38b87348173b539ca22894`  
		Last Modified: Tue, 28 Jul 2026 09:46:48 GMT  
		Size: 40.7 MB (40695089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:557836a62b7606e693caad19a768fa87fc346bff7d816ac03108c69adb1d684b`  
		Last Modified: Tue, 28 Jul 2026 09:46:51 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec143ee2047da2675de0faa0d887cf7333298839d98aab8faaeadfccf16b105e`  
		Last Modified: Tue, 04 Aug 2026 01:49:21 GMT  
		Size: 740.6 KB (740604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0fa76e0e25af24593bb56ab3cd630eab462d47f07d4a11de290152192cd2b35`  
		Last Modified: Tue, 04 Aug 2026 01:49:22 GMT  
		Size: 12.9 MB (12936330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e38743eed5473a5440771fcbce2fabad9bad09a759ef9909623fb81229cfe519`  
		Last Modified: Tue, 04 Aug 2026 01:49:21 GMT  
		Size: 90.9 KB (90943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:621ae0add5ebc66a12cf87118f96656978aee19a41167394221de9c08b96fa28`  
		Last Modified: Tue, 04 Aug 2026 01:49:25 GMT  
		Size: 136.9 MB (136855051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27d38b7d0f4a7a3422ab4aa0be4469ed8ef7bb65ad18c7ab4fc8e2663cd70ab4`  
		Last Modified: Tue, 04 Aug 2026 01:49:23 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aa4dcc5c59f1de2944046550a60a31f2688be54a4f1f8472d8bc51c0a7b5c7e`  
		Last Modified: Tue, 04 Aug 2026 02:34:03 GMT  
		Size: 118.3 MB (118277171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa64f3b72ecb747e5ca9aa46798292bc1a39d95b0106a40d199765bdfcbf4868`  
		Last Modified: Tue, 04 Aug 2026 02:34:00 GMT  
		Size: 361.5 KB (361477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4435fbdbd8c5273af08aa6c3718c4627ebc8f6ef6364f474a6ed7fa6fdbb96b2`  
		Last Modified: Tue, 04 Aug 2026 02:34:00 GMT  
		Size: 130.8 KB (130811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb1d0ec5ba73a143cf5362d4aba28de25c6a4659420e81826ec22c0a42e2b1f2`  
		Last Modified: Tue, 04 Aug 2026 02:34:02 GMT  
		Size: 24.7 MB (24726020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:53d7698962f590143488c8c41451ba25a3bde3a21978ff64a502f206b6ecd9b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29232733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b87f41be36c3f093ccb78cac679cc867367f1926140cb8f3e1cb58de8f88c2c4`

```dockerfile
```

-	Layers:
	-	`sha256:0bcd63f89516272416c510972fd063855fae193761853d9bbdc7b5ce08967098`  
		Last Modified: Tue, 04 Aug 2026 02:34:02 GMT  
		Size: 29.2 MB (29215433 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3c0922c214d2b210ee3419e3285510a538e421872c734f3cd36a187c9bac063`  
		Last Modified: Tue, 04 Aug 2026 02:34:00 GMT  
		Size: 17.3 KB (17300 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-ros-core`

```console
$ docker pull ros@sha256:5a4f4d2ce27f2e3062470d6e722b36b64191a1d45cce1e337ab4fa81c0f1350e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:a9e20ce7f2a36b79bf3000c4870f0f3e923c1dd430f48732e13f4124c0f03e48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.8 MB (198815554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1110a028e4adb2ffb0b6cb1cbe99af42f683a17424e7c29ffa88efa43d7cfbb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 12:48:27 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9094.tar --tag 26.04
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9094.tar
# Tue, 04 Aug 2026 01:47:20 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:47:32 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:47:37 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:34 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:48:34 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:48:34 GMT
ENV ROS_DISTRO=rolling
# Tue, 04 Aug 2026 01:48:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:34 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:48:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:48:34 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:617772c7d19b9f9c4141bc73b37e6f4c5e4e69729f6881a73d0dc23676dbbd60`  
		Last Modified: Tue, 28 Jul 2026 09:46:38 GMT  
		Size: 41.6 MB (41568275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7fb98a8eddd1a70f99f205cb4b66e830a3e8ef4798f5636ece054a567b650de`  
		Last Modified: Tue, 28 Jul 2026 09:46:41 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:682b5d429ab8a035d3903c873f611d9826c2f3655182771e5a99242bbaa995d5`  
		Last Modified: Tue, 04 Aug 2026 01:49:17 GMT  
		Size: 740.2 KB (740213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:257128f5efb77905a75440964a0fa9e26de99c224a4b898a4509e96f7777f2ab`  
		Last Modified: Tue, 04 Aug 2026 01:49:18 GMT  
		Size: 12.8 MB (12753617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11412969dac8e0b57ab8a04312f7fbeedbc026c6c5b40869f262cef34a7a2f50`  
		Last Modified: Tue, 04 Aug 2026 01:49:17 GMT  
		Size: 90.5 KB (90503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44710f1fb76a94aa02ca6914d828e2b0fc6347a10c9c4ee0ef6f058408cb4384`  
		Last Modified: Tue, 04 Aug 2026 01:49:20 GMT  
		Size: 143.7 MB (143662361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:622d74507cf2aa2b0a23b07541428778ca5e27349bd94a247f60533e85fbac9c`  
		Last Modified: Tue, 04 Aug 2026 01:49:18 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:2c15e5410fadf5cebb5a241814ae54e42451a3bb989ff8700a86c09d8bab9fa5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22759975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b72557e57ea0672feb383ffcec954ec6308440af69e3e3cb8720a5527ed75f73`

```dockerfile
```

-	Layers:
	-	`sha256:df98265ef41189972c9f844efb3324778c84c1fd5a047e0183c9014bf8b914c3`  
		Last Modified: Tue, 04 Aug 2026 01:49:18 GMT  
		Size: 22.7 MB (22744292 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f326b1c04f2e62fa560c534db4ab830ecccce947cbf0ba096f12ab95cc0fbb7`  
		Last Modified: Tue, 04 Aug 2026 01:49:17 GMT  
		Size: 15.7 KB (15683 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:4620e86b7070408a07b6235d16ce659c490d05f252b5b02a643bd44fb6ba58cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.3 MB (191318601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e9830ff68897361c5735a604ac8632509b107baa99fa25c1e5e9ab49eaa9ed0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 13:05:14 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9275.tar --tag 26.04
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9275.tar
# Tue, 04 Aug 2026 01:47:21 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:47:35 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:47:42 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:42 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:48:42 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:48:42 GMT
ENV ROS_DISTRO=rolling
# Tue, 04 Aug 2026 01:48:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:42 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:48:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:48:42 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d73407a274fb6cb1e1017aae5257558853ec6bd76e38b87348173b539ca22894`  
		Last Modified: Tue, 28 Jul 2026 09:46:48 GMT  
		Size: 40.7 MB (40695089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:557836a62b7606e693caad19a768fa87fc346bff7d816ac03108c69adb1d684b`  
		Last Modified: Tue, 28 Jul 2026 09:46:51 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec143ee2047da2675de0faa0d887cf7333298839d98aab8faaeadfccf16b105e`  
		Last Modified: Tue, 04 Aug 2026 01:49:21 GMT  
		Size: 740.6 KB (740604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0fa76e0e25af24593bb56ab3cd630eab462d47f07d4a11de290152192cd2b35`  
		Last Modified: Tue, 04 Aug 2026 01:49:22 GMT  
		Size: 12.9 MB (12936330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e38743eed5473a5440771fcbce2fabad9bad09a759ef9909623fb81229cfe519`  
		Last Modified: Tue, 04 Aug 2026 01:49:21 GMT  
		Size: 90.9 KB (90943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:621ae0add5ebc66a12cf87118f96656978aee19a41167394221de9c08b96fa28`  
		Last Modified: Tue, 04 Aug 2026 01:49:25 GMT  
		Size: 136.9 MB (136855051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27d38b7d0f4a7a3422ab4aa0be4469ed8ef7bb65ad18c7ab4fc8e2663cd70ab4`  
		Last Modified: Tue, 04 Aug 2026 01:49:23 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:af4629a532c836a5516159c3b2ff327407eb6a337f294099afa9605dd9b8bbc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22732791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:373790ae403d6b2fa0f20180d74c681565a368387e97f6977eb36cf5affc6294`

```dockerfile
```

-	Layers:
	-	`sha256:ae947175879f6043f79e9d5932185c8c2977d0ae3cd0dce98b97362f9604189c`  
		Last Modified: Tue, 04 Aug 2026 01:49:22 GMT  
		Size: 22.7 MB (22716984 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:194028628a64af1727d1b702c398179d49b1bb1699c958be9c99b68064b6a0da`  
		Last Modified: Tue, 04 Aug 2026 01:49:21 GMT  
		Size: 15.8 KB (15807 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-ros-core-resolute`

```console
$ docker pull ros@sha256:5a4f4d2ce27f2e3062470d6e722b36b64191a1d45cce1e337ab4fa81c0f1350e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-core-resolute` - linux; amd64

```console
$ docker pull ros@sha256:a9e20ce7f2a36b79bf3000c4870f0f3e923c1dd430f48732e13f4124c0f03e48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.8 MB (198815554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1110a028e4adb2ffb0b6cb1cbe99af42f683a17424e7c29ffa88efa43d7cfbb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 12:48:27 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9094.tar --tag 26.04
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9094.tar
# Tue, 04 Aug 2026 01:47:20 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:47:32 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:47:37 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:34 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:48:34 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:48:34 GMT
ENV ROS_DISTRO=rolling
# Tue, 04 Aug 2026 01:48:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:34 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:48:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:48:34 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:617772c7d19b9f9c4141bc73b37e6f4c5e4e69729f6881a73d0dc23676dbbd60`  
		Last Modified: Tue, 28 Jul 2026 09:46:38 GMT  
		Size: 41.6 MB (41568275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7fb98a8eddd1a70f99f205cb4b66e830a3e8ef4798f5636ece054a567b650de`  
		Last Modified: Tue, 28 Jul 2026 09:46:41 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:682b5d429ab8a035d3903c873f611d9826c2f3655182771e5a99242bbaa995d5`  
		Last Modified: Tue, 04 Aug 2026 01:49:17 GMT  
		Size: 740.2 KB (740213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:257128f5efb77905a75440964a0fa9e26de99c224a4b898a4509e96f7777f2ab`  
		Last Modified: Tue, 04 Aug 2026 01:49:18 GMT  
		Size: 12.8 MB (12753617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11412969dac8e0b57ab8a04312f7fbeedbc026c6c5b40869f262cef34a7a2f50`  
		Last Modified: Tue, 04 Aug 2026 01:49:17 GMT  
		Size: 90.5 KB (90503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44710f1fb76a94aa02ca6914d828e2b0fc6347a10c9c4ee0ef6f058408cb4384`  
		Last Modified: Tue, 04 Aug 2026 01:49:20 GMT  
		Size: 143.7 MB (143662361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:622d74507cf2aa2b0a23b07541428778ca5e27349bd94a247f60533e85fbac9c`  
		Last Modified: Tue, 04 Aug 2026 01:49:18 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:2c15e5410fadf5cebb5a241814ae54e42451a3bb989ff8700a86c09d8bab9fa5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22759975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b72557e57ea0672feb383ffcec954ec6308440af69e3e3cb8720a5527ed75f73`

```dockerfile
```

-	Layers:
	-	`sha256:df98265ef41189972c9f844efb3324778c84c1fd5a047e0183c9014bf8b914c3`  
		Last Modified: Tue, 04 Aug 2026 01:49:18 GMT  
		Size: 22.7 MB (22744292 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f326b1c04f2e62fa560c534db4ab830ecccce947cbf0ba096f12ab95cc0fbb7`  
		Last Modified: Tue, 04 Aug 2026 01:49:17 GMT  
		Size: 15.7 KB (15683 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-core-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:4620e86b7070408a07b6235d16ce659c490d05f252b5b02a643bd44fb6ba58cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.3 MB (191318601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e9830ff68897361c5735a604ac8632509b107baa99fa25c1e5e9ab49eaa9ed0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 13:05:14 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9275.tar --tag 26.04
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9275.tar
# Tue, 04 Aug 2026 01:47:21 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:47:35 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:47:42 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:42 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:48:42 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:48:42 GMT
ENV ROS_DISTRO=rolling
# Tue, 04 Aug 2026 01:48:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:42 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:48:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:48:42 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d73407a274fb6cb1e1017aae5257558853ec6bd76e38b87348173b539ca22894`  
		Last Modified: Tue, 28 Jul 2026 09:46:48 GMT  
		Size: 40.7 MB (40695089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:557836a62b7606e693caad19a768fa87fc346bff7d816ac03108c69adb1d684b`  
		Last Modified: Tue, 28 Jul 2026 09:46:51 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec143ee2047da2675de0faa0d887cf7333298839d98aab8faaeadfccf16b105e`  
		Last Modified: Tue, 04 Aug 2026 01:49:21 GMT  
		Size: 740.6 KB (740604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0fa76e0e25af24593bb56ab3cd630eab462d47f07d4a11de290152192cd2b35`  
		Last Modified: Tue, 04 Aug 2026 01:49:22 GMT  
		Size: 12.9 MB (12936330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e38743eed5473a5440771fcbce2fabad9bad09a759ef9909623fb81229cfe519`  
		Last Modified: Tue, 04 Aug 2026 01:49:21 GMT  
		Size: 90.9 KB (90943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:621ae0add5ebc66a12cf87118f96656978aee19a41167394221de9c08b96fa28`  
		Last Modified: Tue, 04 Aug 2026 01:49:25 GMT  
		Size: 136.9 MB (136855051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27d38b7d0f4a7a3422ab4aa0be4469ed8ef7bb65ad18c7ab4fc8e2663cd70ab4`  
		Last Modified: Tue, 04 Aug 2026 01:49:23 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:af4629a532c836a5516159c3b2ff327407eb6a337f294099afa9605dd9b8bbc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22732791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:373790ae403d6b2fa0f20180d74c681565a368387e97f6977eb36cf5affc6294`

```dockerfile
```

-	Layers:
	-	`sha256:ae947175879f6043f79e9d5932185c8c2977d0ae3cd0dce98b97362f9604189c`  
		Last Modified: Tue, 04 Aug 2026 01:49:22 GMT  
		Size: 22.7 MB (22716984 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:194028628a64af1727d1b702c398179d49b1bb1699c958be9c99b68064b6a0da`  
		Last Modified: Tue, 04 Aug 2026 01:49:21 GMT  
		Size: 15.8 KB (15807 bytes)  
		MIME: application/vnd.in-toto+json
