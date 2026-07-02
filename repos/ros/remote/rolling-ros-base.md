## `ros:rolling-ros-base`

```console
$ docker pull ros@sha256:bf5dc8579c97c4ab719cf23170f5fa1e432de130419fdc3db67d9fd4bfddcf90
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:49d365ad22a6f6910230feaa1b0b19c6e16c7832e98d029eed34ee873079f998
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.5 MB (314462828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28d42b3dc6efc7b92edc513817f8ab412b56035b8d89b9a39ef98e30868d106c`
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

### `ros:rolling-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:1452fd4a9dd28ab7d011b0fdb6450b048015a44d7214b08e97c31b42f5641576
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.8 MB (25786458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70b0d8f0e0e72b3cf2c0d5f62b141e44660377409bf36d2445026bbb4f497fa3`

```dockerfile
```

-	Layers:
	-	`sha256:ade760ae250304fa83e09f9fec966b3eef90642faf8bd456350aed97906a2ef7`  
		Last Modified: Thu, 02 Jul 2026 05:35:38 GMT  
		Size: 25.8 MB (25770093 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68d2a70165c86fbaa91a3477ae8f8979fd22d6b63761658283d07bc8e53633de`  
		Last Modified: Thu, 02 Jul 2026 05:35:36 GMT  
		Size: 16.4 KB (16365 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:23e53800ecdf38ee8d5829f9461ee9298ff9a4a802905b3cd008a7a71e9d21ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.4 MB (302356101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd4ace904f96e984fb0046230649182bf02baf8fa9aa342be80eb5a5ab0a778e`
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

### `ros:rolling-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:af225eb9d301d042454dead112cd35e9bffbc0ae460cf977258cb82c06a131b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.8 MB (25809059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35b9470914e298bcb92deb4470f77493168b524803872f1a89016cd7b34d5835`

```dockerfile
```

-	Layers:
	-	`sha256:b5c1536de54f93617ada09132d4ad96476143fb0c01df078fea6e30af07edc2a`  
		Last Modified: Thu, 02 Jul 2026 05:36:31 GMT  
		Size: 25.8 MB (25792557 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b17709c584f6e93c3d4f627b4577bdf314dd39fd39f5a0700798e119ae8a54d4`  
		Last Modified: Thu, 02 Jul 2026 05:36:29 GMT  
		Size: 16.5 KB (16502 bytes)  
		MIME: application/vnd.in-toto+json
