## `ros:kilted-perception-noble`

```console
$ docker pull ros@sha256:33e6206ddbc9959736d5c1a9224c7555997e1d8671eaa8753d8d7a958d12f787
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-perception-noble` - linux; amd64

```console
$ docker pull ros@sha256:541fe0a74cfe64c9be55ab3a5c128d019a6dded1833fbf067928bcd1bd4b6793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1081936340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dc4a400ff585d6ee02af4e9985e405ef3e6cbe4712e36065af72239315e4dd6`
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
# Wed, 16 Sep 2026 03:27:20 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:29 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:34 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:18 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:28:18 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:28:18 GMT
ENV ROS_DISTRO=kilted
# Wed, 16 Sep 2026 03:28:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:18 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:28:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:28:18 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:17 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:18 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 05:17:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1557bb60e7451b48abc3f20dadc74b3c175a9bd6144658f7b817942a2ceca07`  
		Last Modified: Wed, 16 Sep 2026 03:28:44 GMT  
		Size: 683.4 KB (683390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35603fe7d60ec83cb8a43974b6fa7fd4ed7ce5c18032b94cc59cc7bfadb2f09a`  
		Last Modified: Wed, 16 Sep 2026 03:28:44 GMT  
		Size: 6.7 MB (6711360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13ba1248908c659b35f33e69231cf1d9bd93c3505d899f2302146a11cb440504`  
		Last Modified: Wed, 16 Sep 2026 03:28:44 GMT  
		Size: 94.8 KB (94775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a3972d4f761bfef2810026cccd2ffb0bed6c2a41cea5ccd6de4149420c2bd06`  
		Last Modified: Wed, 16 Sep 2026 03:28:47 GMT  
		Size: 121.2 MB (121179131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:129220389dcb270b372e9adc1e2dd350a4f02ee97ed7e167d4b145ba28076052`  
		Last Modified: Wed, 16 Sep 2026 03:28:45 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46a8b9fc2a4117a0a4905a6527e1c9ec6fdf6fe52212b7f1e33c4e559988ad12`  
		Last Modified: Wed, 16 Sep 2026 04:25:11 GMT  
		Size: 110.2 MB (110245387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81bf82810e44c2fe195860cd330b812e5c9894c973139ea8e07928d57ae1f21f`  
		Last Modified: Wed, 16 Sep 2026 04:25:07 GMT  
		Size: 374.0 KB (373989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2242ac7654481f1cd8c57b87668b2b2284e4c6d889a181de0a88a762111425dd`  
		Last Modified: Wed, 16 Sep 2026 04:25:08 GMT  
		Size: 2.7 KB (2664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:071576c24e45af6133ccba95c04c37e26cb936524de683ea719558581a4184a1`  
		Last Modified: Wed, 16 Sep 2026 04:25:09 GMT  
		Size: 27.9 MB (27891930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42baeb04b9c5109807ac6a5158098aed38e5fcfc40db7373eedc7d98052f73d5`  
		Last Modified: Wed, 16 Sep 2026 05:20:15 GMT  
		Size: 785.0 MB (784989401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:8ab064a19052b81add31424daeed326c13c4e3f17e30ad6f460ae58e43ba7e61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61070933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46c5b6fc655c9e25b5d8c9c1e56226c0ae04207b3b22b5bd144081fa176eb894`

```dockerfile
```

-	Layers:
	-	`sha256:4e13d1ee5252e8e609fe6387f9d1a7138408b477864baacf1d34ffff866b8d3e`  
		Last Modified: Wed, 16 Sep 2026 05:20:03 GMT  
		Size: 61.1 MB (61061582 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b4abfe0aa6b17f4b8c32801e8457f84150e329b27349c31e21ee1d45e2988a91`  
		Last Modified: Wed, 16 Sep 2026 05:20:00 GMT  
		Size: 9.4 KB (9351 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-perception-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b55ca2b550f6355b59ad7eed3607346f5e144ee73564a65cb8950d7a7720cea2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **984.6 MB (984613020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a227cf2b7b5d7fd4a8eeea72cdef2aeedf43a3ed4c13abf47e02b313097fd31`
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
# Wed, 16 Sep 2026 03:27:17 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:29 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:35 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:21 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:28:21 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:28:21 GMT
ENV ROS_DISTRO=kilted
# Wed, 16 Sep 2026 03:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:22 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:28:22 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:28:22 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:18 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:19 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 05:16:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abf10216e1dd5ba871e52105e48e78398f8cfe4d9ef03c4303f536dd28862f5f`  
		Last Modified: Wed, 16 Sep 2026 03:28:50 GMT  
		Size: 683.5 KB (683460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f39263a8db9e2ee558a8d66412a4f400ce9fb09d3eedf497559219c66e93c480`  
		Last Modified: Wed, 16 Sep 2026 03:28:50 GMT  
		Size: 6.7 MB (6726624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f3d7bc506a5fba9ce059ed283905da96d8c2e8e9d6945371625b7edc8e77120`  
		Last Modified: Wed, 16 Sep 2026 03:28:50 GMT  
		Size: 94.8 KB (94830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c766dd8b9feb00d14f838e3590607ea491532c88c894a68f2037dfe27605e60`  
		Last Modified: Wed, 16 Sep 2026 03:28:53 GMT  
		Size: 116.0 MB (115977186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cefe2207a4cb04e4dd6657af23f4ff844e2c1a5557c362a891d49a26c1cbe41`  
		Last Modified: Wed, 16 Sep 2026 03:28:51 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cc774af47f1388884f36155e7d6823b6417b4ca8f23b9c10615e1460260f420`  
		Last Modified: Wed, 16 Sep 2026 04:25:19 GMT  
		Size: 105.7 MB (105665664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:057d940f8e063ec11c47478b4f16b45bd7345797946462bdd585676f72dd81b7`  
		Last Modified: Wed, 16 Sep 2026 04:25:16 GMT  
		Size: 374.0 KB (373998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:948a7af8942c28f8ea3588429f182fef0ec66ea06d6f372aa4d9081aea1c0439`  
		Last Modified: Wed, 16 Sep 2026 04:25:16 GMT  
		Size: 2.7 KB (2652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6714446d220a9872eeea99d5ffed3c37e5214ad4110b2f86933351eea601dd4e`  
		Last Modified: Wed, 16 Sep 2026 04:25:17 GMT  
		Size: 27.0 MB (27008123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df9f92c448f448ae6a41e21e941ce5022331338ed601e2bd0d42ab4a1fcc3eca`  
		Last Modified: Wed, 16 Sep 2026 05:19:53 GMT  
		Size: 699.1 MB (699138706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:dd6c1f56cc3759fd3d9a7ddcf59e1787eb7d7d264734d24c568a485c94d62067
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61001538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bce7c29f5058e7b46b75c467f44ecb7a3a380da5db9afe4f4692bbb76f27d5b5`

```dockerfile
```

-	Layers:
	-	`sha256:912294a6a0f66824d6ccfa73fcda6f45028c32f78e8b9ab47181409bc28e1310`  
		Last Modified: Wed, 16 Sep 2026 05:19:34 GMT  
		Size: 61.0 MB (60992106 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ceb2da5d1a560d83aa1f4e496f509880ff6f29335971a21e72182ab2e9ff261a`  
		Last Modified: Wed, 16 Sep 2026 05:19:32 GMT  
		Size: 9.4 KB (9432 bytes)  
		MIME: application/vnd.in-toto+json
