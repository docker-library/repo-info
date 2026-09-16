## `ros:jazzy-perception-noble`

```console
$ docker pull ros@sha256:6a5106b1fca69b930e6d08b9d6b0e588b5b6165f6390020ae5ac402be8b3ad1e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-perception-noble` - linux; amd64

```console
$ docker pull ros@sha256:60954237b148d6ad4de4b504046c9a6be0408a6b44177fddf5df55d76c8818ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1081439940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c418c6bb0ba3bcdb5c901e1bb41327e4f351c68f90292072d1343f0047c9e00a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:27:09 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:20 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:26 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:10 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:28:10 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:28:10 GMT
ENV ROS_DISTRO=jazzy
# Wed, 16 Sep 2026 03:28:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:10 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:28:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:28:10 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:08 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:12 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 05:17:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:411d5722aad223f8265d6d143a62eadf286e3e9a54ddd5aef04d8ed08a896fc5`  
		Last Modified: Wed, 16 Sep 2026 03:28:37 GMT  
		Size: 683.4 KB (683386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4db0d7873e577f8e15608310df9ba95733530d4621e29410be6719224b8d27f5`  
		Last Modified: Wed, 16 Sep 2026 03:28:38 GMT  
		Size: 6.7 MB (6711317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f09008c530794caf9438b067efbd54fa43686e5863e10be97da0658049ad5bf`  
		Last Modified: Wed, 16 Sep 2026 03:28:37 GMT  
		Size: 94.8 KB (94773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76f194b7726392d91142cee504b91409ecebb36f2365ff40819aef42028b6098`  
		Last Modified: Wed, 16 Sep 2026 03:28:41 GMT  
		Size: 120.5 MB (120491933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c27308c73173c723bcb372e677c70fd17aafa6e0b47a918460acd13c6c12e99`  
		Last Modified: Wed, 16 Sep 2026 03:28:39 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64428e4ac7f14703072aa425a80263a0ac14f9de36d13f720d2a37bb1779ec1d`  
		Last Modified: Wed, 16 Sep 2026 04:25:14 GMT  
		Size: 110.2 MB (110243224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bec494cb9e76dfeaf4baf6f839fe3d07d066306904c0e67cc4f76d29e4c6de1`  
		Last Modified: Wed, 16 Sep 2026 04:25:11 GMT  
		Size: 412.7 KB (412666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d194989e3d1d6448632c64f3de6dcee3cbbcd9a8efe02fdc9e903be307275e32`  
		Last Modified: Wed, 16 Sep 2026 04:25:10 GMT  
		Size: 2.7 KB (2687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2001efbb0e926d39872069cd04e1ba0f1c853e9880c8b9d54b358983030928c`  
		Last Modified: Wed, 16 Sep 2026 04:25:12 GMT  
		Size: 28.1 MB (28082927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e69a9d9bd9a8befb9f9b1e2614c3ee5f1555656917f16b76aa8ea7e4780dc3f`  
		Last Modified: Wed, 16 Sep 2026 05:20:05 GMT  
		Size: 785.0 MB (784952715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:c8986127f0a431dd9f6137d999b7aa1c96213fbef447bb82554a5bb0a443e493
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61114020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bbb7623f2cd2b74ad4ac3625e1f8dcc2bde2d881651c9958546da77cc03b69e`

```dockerfile
```

-	Layers:
	-	`sha256:0bc1bc8d259a541d879a255ad503573aac74f47bbf51f604a83ec433e1ff7f4a`  
		Last Modified: Wed, 16 Sep 2026 05:19:52 GMT  
		Size: 61.1 MB (61104681 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e77b8d36801bfaeddbc109d24c89e07c9c4ab24ceabdd7891cff17d49e9520e`  
		Last Modified: Wed, 16 Sep 2026 05:19:50 GMT  
		Size: 9.3 KB (9339 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-perception-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:4c3a78469dd9d55ca641e49683975ba16a6d39544339c8fb96ccd09df1533c38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **984.2 MB (984162519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4987c6f4191d82597e8bedfd0ee7c662e3d029b1894c6fdfcc45ce67bb7611b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:26:51 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:02 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:09 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:52 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:27:52 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:27:52 GMT
ENV ROS_DISTRO=jazzy
# Wed, 16 Sep 2026 03:27:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:52 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:27:52 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:27:52 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:12 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:15 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:17 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 05:17:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276b3ceda33c5f4b672c5aefee267efbd3e14f818eee6a1d0f280451a14900ef`  
		Last Modified: Wed, 16 Sep 2026 03:28:20 GMT  
		Size: 683.5 KB (683465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d9ab50484ceb1a6307835cbcf30dab74d1f56f6ecfb14427bbcc1ab15e65828`  
		Last Modified: Wed, 16 Sep 2026 03:28:20 GMT  
		Size: 6.7 MB (6726583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:327a8ca85603e75c177ca03c612414c97c6ee23035ece692dc5a2a96f95a530f`  
		Last Modified: Wed, 16 Sep 2026 03:28:20 GMT  
		Size: 94.8 KB (94808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dd9f63e30e22982dab0312299fa1abafcd461ca629f5e8ed42409fc7ed072dd`  
		Last Modified: Wed, 16 Sep 2026 03:28:23 GMT  
		Size: 115.3 MB (115325032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ee5384c387cdf36798cf2b558b789fea6a6bdc7452c670a313e0e7d926d819f`  
		Last Modified: Wed, 16 Sep 2026 03:28:21 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6927be7c7c57759e48ef07d829d67170bfb7328e6117ba17934dd12edd7e86f5`  
		Last Modified: Wed, 16 Sep 2026 04:25:12 GMT  
		Size: 105.7 MB (105663052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcaa75511da49ba8fa4784d367920b4405a535dd6aade114589e880f48d7b62d`  
		Last Modified: Wed, 16 Sep 2026 04:25:09 GMT  
		Size: 412.7 KB (412669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:746ee5fd6ce1368747504af89c278b3007c4ba51bb0e2bdb3900bc866521e868`  
		Last Modified: Wed, 16 Sep 2026 04:25:09 GMT  
		Size: 2.7 KB (2657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47f83ec666747268737374b6d85c4cea802d514d88ea638f96165cd1e29756a0`  
		Last Modified: Wed, 16 Sep 2026 04:25:11 GMT  
		Size: 27.2 MB (27197786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6165216db54d79541d96df103b6c083a2ef20e7df1c27d8353711a6a7df9bb4`  
		Last Modified: Wed, 16 Sep 2026 05:20:14 GMT  
		Size: 699.1 MB (699114690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:a9a2cf3c1f73247759279de67981554232cd2f1e37cdb7ebcbde9ab299276108
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61044619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc3dcbbefb939d8c43928ab9f5ab904f3710699c46ac9780f137afcc242b47f6`

```dockerfile
```

-	Layers:
	-	`sha256:82022ecf68250478346f1c08b336be75382fefb28a9b4206e929e8f99593d37a`  
		Last Modified: Wed, 16 Sep 2026 05:20:03 GMT  
		Size: 61.0 MB (61035200 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a90cb3e61152b830d0f567d97ba223a2f0e9111797109d169fb91681203fc902`  
		Last Modified: Wed, 16 Sep 2026 05:20:00 GMT  
		Size: 9.4 KB (9419 bytes)  
		MIME: application/vnd.in-toto+json
