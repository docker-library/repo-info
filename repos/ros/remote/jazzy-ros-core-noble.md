## `ros:jazzy-ros-core-noble`

```console
$ docker pull ros@sha256:32114cd33511c91307d4f5dea184dcbfb9385860bee9839b772332c8fc103856
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-core-noble` - linux; amd64

```console
$ docker pull ros@sha256:ff387faa0c8fe671e57ff948e79ea3f06b6446fdf3483c18534b02b797801d9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.7 MB (157745721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fea7d16c1f1e4839b7acd104090494952589f7f8eb589d84e1dd1b34b172bc04`
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

### `ros:jazzy-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:6d38c8796b9f33ad691d95742103b8f8a9abb4f13685adb17374f50ed215ffb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18622527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff5d004e16d7edf0785c1e829da4a3b44e15ec764f7b41b042c5612449da47ce`

```dockerfile
```

-	Layers:
	-	`sha256:12aec67e7c1c485e198e6c4cfc5084319f97742d9c9b7a6f43b211ec30bfe674`  
		Last Modified: Wed, 16 Sep 2026 03:28:39 GMT  
		Size: 18.6 MB (18607919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03be2f6d4facc2f8bd49220633629aef4d4ccd58d032ebb92eaa6db9eca1a36a`  
		Last Modified: Wed, 16 Sep 2026 03:28:38 GMT  
		Size: 14.6 KB (14608 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-core-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:e5da8fd0bdf52ea93499c96ca58b54de147d1e60770ffa4033642e37d9abf115
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.8 MB (151771665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9df25bdf5d9bb5b0cf8b58c05d2c5431ea73a7a8b5e9c0ca14813a230c31623`
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

### `ros:jazzy-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:081fff18eda7afd49fae22fe2f36ddd5906a12f621b36135accb1651d34a991a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18596658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:219fd3df413b5443da0d71893b4f245f12d9dc4f48089adcdaa71ccb993c8c14`

```dockerfile
```

-	Layers:
	-	`sha256:0c8a89b1b8e446c4588f6d82ebbd63bf1a7f13bd779b96206d02b30e4b128036`  
		Last Modified: Wed, 16 Sep 2026 03:28:21 GMT  
		Size: 18.6 MB (18581925 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a58429bd28fcf4815cdb961a56ab51e821baa73e2c87e2efea3ec19779e139a`  
		Last Modified: Wed, 16 Sep 2026 03:28:20 GMT  
		Size: 14.7 KB (14733 bytes)  
		MIME: application/vnd.in-toto+json
