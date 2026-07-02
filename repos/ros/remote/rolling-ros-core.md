## `ros:rolling-ros-core`

```console
$ docker pull ros@sha256:5e4cfb43bf93b5b9d79f5f3248e39185f071dd26263c906c49397bd3e602cc9f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:fb264bc910f0c3ef2491e55c4ced7eedff5763a8792e0c6a41989c4f119c910f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.5 MB (173514941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9c0ff6eb396924e65bde7da97fface8ed4e16e8556424d8cd6ca82bfe6c7c82`
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

### `ros:rolling-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:be445abffee5a74da87c01743e1fca155900d755c708a80a54173c6b2555e0d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19536212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:409072d20243c4d255a92fa4cdd5ba995ed81f77725a3dd02cc20ffb85a7214f`

```dockerfile
```

-	Layers:
	-	`sha256:e16f6329ef221aada497aac4086f078b070d55d895c2eb0440d149c44c71d731`  
		Last Modified: Thu, 02 Jul 2026 02:36:11 GMT  
		Size: 19.5 MB (19521590 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c040917da84a927dd0a98f3fdef622b38da5ee4192b36be9ad0d8d63b805e4fc`  
		Last Modified: Thu, 02 Jul 2026 02:36:10 GMT  
		Size: 14.6 KB (14622 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:1149b61f4f81efafac75b374212a722c9348a55564e47c4779f549dbdf2ef33c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.9 MB (166910825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67ea584dda99b294acecb3535701750d7f388f94e210aa23d919bdd752911454`
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

### `ros:rolling-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:7c759a4e1bea52586379cec8e29b62ec9ac7a5376a91cf8904ecf03c2eaa2fc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19510552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e92ddd95a381845f12dfe95a59902fce8ecfb3cd8450a38f346555e0f7ee1007`

```dockerfile
```

-	Layers:
	-	`sha256:e84768265d8e11d19ec43f081c879cbe120aba3ce1d8d5ca1250740acecdbdd5`  
		Last Modified: Thu, 02 Jul 2026 02:35:54 GMT  
		Size: 19.5 MB (19495806 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:57954c9e0c186afa8bc5e9553fc85aa87002281015f96a31fa35714f33888820`  
		Last Modified: Thu, 02 Jul 2026 02:35:53 GMT  
		Size: 14.7 KB (14746 bytes)  
		MIME: application/vnd.in-toto+json
