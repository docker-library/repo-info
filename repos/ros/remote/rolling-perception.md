## `ros:rolling-perception`

```console
$ docker pull ros@sha256:e2b3d3186ca06b9405a32cf5a089a1591a41f1688274b4be5320938bb7eed4ea
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-perception` - linux; amd64

```console
$ docker pull ros@sha256:270b76d899e099be11ede161b1c2a5c2fd78a23ebd72cf30c5093d7ad4e37bdc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1099238243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51123de7cd9547e15e8afe6f3a864a3b3babae03a4a6c4fbfa1ba62fe2463d05`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:33:37 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:43 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:35:03 GMT
RUN curl -L -s -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.1.0/ros2-apt-source_1.1.0.noble_all.deb     && echo "35441f3092fd05773a3c397fab38661bec466584c7a1f1c05366579997cb5fe7 /tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:35:42 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:35:42 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:35:42 GMT
ENV ROS_DISTRO=rolling
# Thu, 02 Jul 2026 02:35:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:35:42 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:35:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:35:42 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:34:40 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:34:43 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:34:44 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:35:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 06:23:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.13.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55d19762b182a49ab0994b35d750697254a3b742ff8927291ac49b68edb9b5ac`  
		Last Modified: Thu, 02 Jul 2026 02:34:50 GMT  
		Size: 684.2 KB (684190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d40f630f7895264cadcef82226739a2dcc268702646bdbd37b5e8218b8a49333`  
		Last Modified: Thu, 02 Jul 2026 02:34:50 GMT  
		Size: 6.7 MB (6708430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cedcafbe5d0d9aa4c2d222e3f0a86d1a77b1b6f008ac6ac19e851bca350d90f`  
		Last Modified: Thu, 02 Jul 2026 02:36:10 GMT  
		Size: 94.3 KB (94338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9cc28c71176b139ae7ac330d447a0f9755bc541d810310b653fca0f9378f4c3`  
		Last Modified: Thu, 02 Jul 2026 02:36:14 GMT  
		Size: 136.3 MB (136292186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43908e91537de3b5d0cc56433eff5e656ab349601bf7df5eafb96eba0c752f2c`  
		Last Modified: Thu, 02 Jul 2026 02:36:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04c2b240ed9a98c8cf3441d7d4b942900bcfb3d38e0cb467d416239a49e329e8`  
		Last Modified: Thu, 02 Jul 2026 05:35:40 GMT  
		Size: 112.6 MB (112598975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5daba24b6f9900af121df2d9fdd2cfdba92d3e35500d801757467ff0f2314cde`  
		Last Modified: Thu, 02 Jul 2026 05:35:36 GMT  
		Size: 372.4 KB (372385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8209072e68e9277ffd6f70c1934bc0e655a4a1e18ffca2d262cfcbf5efa83e6b`  
		Last Modified: Thu, 02 Jul 2026 05:35:36 GMT  
		Size: 2.5 KB (2497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e0c1262c385b554bb71158ccaea7e19ea04bb43edd66dc4c8a0aeda5501dca7`  
		Last Modified: Thu, 02 Jul 2026 05:35:38 GMT  
		Size: 28.0 MB (27974030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5006793d21ac8e732d700fd62e894611c1a79d4016144da9350ce7d8ece3d837`  
		Last Modified: Thu, 02 Jul 2026 06:26:14 GMT  
		Size: 784.8 MB (784775415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-perception` - unknown; unknown

```console
$ docker pull ros@sha256:8418fab5b2522df54ec0da16460ba6c450e9096b9f7a898523a9774687eb77b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61985107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14f5c4fb1bf78ebc0934e0c3c2a1c0da43784dd908c1a17490bd5a54af4e963c`

```dockerfile
```

-	Layers:
	-	`sha256:181c2b5526a9314a37d6d443c6e43756acb9afbf81144ac54816364f5e49f840`  
		Last Modified: Thu, 02 Jul 2026 06:26:01 GMT  
		Size: 62.0 MB (61975746 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df9ff400fb8673483e1395f722314a04385061a8d2b66e903e4632edff939fad`  
		Last Modified: Thu, 02 Jul 2026 06:25:57 GMT  
		Size: 9.4 KB (9361 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:711f6ded462bae7431cb486e123040c7477e7bc5a0574b6ae32031cc46314313
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1001252147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9309186916be5ff0c0cd5a891deb95e227a65c3adeb3cdafe512ba6a28548ba2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:34:25 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:34 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:39 GMT
RUN curl -L -s -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.1.0/ros2-apt-source_1.1.0.noble_all.deb     && echo "35441f3092fd05773a3c397fab38661bec466584c7a1f1c05366579997cb5fe7 /tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:35:22 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:35:22 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:35:22 GMT
ENV ROS_DISTRO=rolling
# Thu, 02 Jul 2026 02:35:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:35:22 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:35:22 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:35:22 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:35:29 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:35:33 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:35:34 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:35:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 06:21:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.13.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a171f192582a07548dffbaf1eb1e523ac3f86d442c9dff2d5848528e1123eb3`  
		Last Modified: Thu, 02 Jul 2026 02:35:53 GMT  
		Size: 684.3 KB (684294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24819b233fc2c5616182ed8229faf061661382d60f67280f1c5627052074c238`  
		Last Modified: Thu, 02 Jul 2026 02:35:53 GMT  
		Size: 6.7 MB (6723404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97370d83f37d7af38024b415a8988ff313d97f72611dd8dd7b129b3e3607f969`  
		Last Modified: Thu, 02 Jul 2026 02:35:53 GMT  
		Size: 94.4 KB (94385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:675146c64cb42018f832d566a062d5ae7e3cb0dbde3a90bf4dbb7d315645b14b`  
		Last Modified: Thu, 02 Jul 2026 02:35:57 GMT  
		Size: 130.5 MB (130524367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0edba4808615c2681724862c574ec5659526d240dc978efaa7f637a27d16f3d`  
		Last Modified: Thu, 02 Jul 2026 02:35:54 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7de2e7e2d4146c4e9b8fb0fa8293200cf9504667cc3685428673e1c32e15237`  
		Last Modified: Thu, 02 Jul 2026 05:36:33 GMT  
		Size: 108.0 MB (107995193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19d5ce49271e49688dcfc1aba78b5a029e829f516de751bdfd08e1bb3661d84b`  
		Last Modified: Thu, 02 Jul 2026 05:36:29 GMT  
		Size: 372.4 KB (372384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9bad151ff8985ae9fda0da36a1df40d5e7fc725ecec90e90315369e75daf032`  
		Last Modified: Thu, 02 Jul 2026 05:36:30 GMT  
		Size: 2.5 KB (2504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0caa4a13fa30571317bdcbfd03cf7e1248fc6de83109ddca20438c65ba4a64de`  
		Last Modified: Thu, 02 Jul 2026 05:36:31 GMT  
		Size: 27.1 MB (27075195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee71ea945c52f76bc85b92eaed8d6c6ea34dd594888aed99f5c15bec4c1bad63`  
		Last Modified: Thu, 02 Jul 2026 06:24:10 GMT  
		Size: 698.9 MB (698896046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-perception` - unknown; unknown

```console
$ docker pull ros@sha256:d5032931753e33a0ff42fb565a405e5c718cc9ac546e418576e98940d4a88845
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61915915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f7588aa60060a2bff1deb4f41117ab8bdb4b0f4646746902e589855c5d2e6da`

```dockerfile
```

-	Layers:
	-	`sha256:31ea98f4c80b5cd9d19fe07930b77cac92fdba77be7facde09cc78c58fc29c08`  
		Last Modified: Thu, 02 Jul 2026 06:23:57 GMT  
		Size: 61.9 MB (61906474 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04ae5253da1b27ad1c9a71443a3a4d56dc3553d9ecae033cb66be112ba89a31e`  
		Last Modified: Thu, 02 Jul 2026 06:23:54 GMT  
		Size: 9.4 KB (9441 bytes)  
		MIME: application/vnd.in-toto+json
