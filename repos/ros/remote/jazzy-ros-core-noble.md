## `ros:jazzy-ros-core-noble`

```console
$ docker pull ros@sha256:d0b8e70ceecc98a1d475c6b9ca96de9c90bf4e91e7163bf4c7543b794ff7d1f2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-core-noble` - linux; amd64

```console
$ docker pull ros@sha256:5b662a920781379e8569ab59d5c92180fa424114020e0e42cfed7f284fb466af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.5 MB (164542346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28b9f404bd9d7f5ebce2436c33f5c72de93e80a0bea1ac811717ec30afcacb8d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:29:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:01 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:05 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:47 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:30:47 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:30:47 GMT
ENV ROS_DISTRO=jazzy
# Fri, 20 Nov 2026 03:30:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:48 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:30:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:30:48 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59c825bc61bb7a569375d723d1d88dde790793b05be7f6ad998dafc7b015c29d`  
		Last Modified: Fri, 20 Nov 2026 03:31:16 GMT  
		Size: 683.2 KB (683233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4db21acf9befd9cf5cc4cd01c77044d5b4580f72f7878fe2951a6ad68b82e09`  
		Last Modified: Fri, 20 Nov 2026 03:31:16 GMT  
		Size: 6.7 MB (6714049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:100b8c7152d5685a8e4ecfde6681d28d928124aad9859acab83d3a88dffbb3ff`  
		Last Modified: Fri, 20 Nov 2026 03:31:16 GMT  
		Size: 94.6 KB (94632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78a22a3874f0958f885b71b394fc121eb676a9cec9b39f579083931e287a90f1`  
		Last Modified: Fri, 20 Nov 2026 03:31:19 GMT  
		Size: 127.3 MB (127256938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:739a7e58dc0beb7f6a92c87655d74f38fc48c413986ca6c5c8f4b9922b2da0a0`  
		Last Modified: Fri, 20 Nov 2026 03:31:17 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:51fc6fd4beb29ab86a8bb275212f04a7e5284e8a38dd0e02e4067a7454d1801a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18623258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0f7e014730b36ae473f99aaf74e00f24d3615f663aadc43fdbb1d452a5fc4b8`

```dockerfile
```

-	Layers:
	-	`sha256:444ece04a2cb563595fa2b34db28db5e26a090d0344d6b73c48c5e0d9b237123`  
		Last Modified: Fri, 20 Nov 2026 03:31:17 GMT  
		Size: 18.6 MB (18608650 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3dda53a10a79837c3573b553146884c9aa77833d9f63d09dccb1e3838eeedeff`  
		Last Modified: Fri, 20 Nov 2026 03:31:16 GMT  
		Size: 14.6 KB (14608 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-core-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:0b30f02c094354894ea95fd783f363f5c857f6456a24cfef06a3e3dda15b5199
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.3 MB (158328416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9145775ae7071ca0a25105a3a95bc08922d7d37291bd49fe1c7037e28e2e2a4c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:30:44 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:51 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:56 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:19 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:32:19 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:32:19 GMT
ENV ROS_DISTRO=jazzy
# Fri, 20 Nov 2026 03:32:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:19 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:32:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:32:19 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:199bbc3cc6c907600a4c87fdccf212a716f7140c0c2334de856b460527866bdc`  
		Last Modified: Fri, 20 Nov 2026 03:32:47 GMT  
		Size: 683.5 KB (683463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4c246bc906fde52bf6d9763aa74a336ed48b0efc1ef9e79353b5d72db88037`  
		Last Modified: Fri, 20 Nov 2026 03:32:48 GMT  
		Size: 6.7 MB (6729420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3eb2da7dee57117e25cb53d657ce34ff7bd9916e28186f51e7b1866b85529e9`  
		Last Modified: Fri, 20 Nov 2026 03:32:47 GMT  
		Size: 94.9 KB (94861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b61250e59c47910ba100cd142c4a2cdf1a5a111df37f12664bdb2fa0c8794ee4`  
		Last Modified: Fri, 20 Nov 2026 03:32:50 GMT  
		Size: 121.9 MB (121855159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d543abdf5cbec27e15e21d299b2049a172153c2c75c72ad21801658abcc94675`  
		Last Modified: Fri, 20 Nov 2026 03:32:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:4648b3fd23356ed4cbba4948004f135920fe03f44e5f000e8d1ce058f7dd1b1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18597389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:261e847e6637793e29ce041abcbd5410eafa4fc677760a119ccbb68dbba55919`

```dockerfile
```

-	Layers:
	-	`sha256:59bebf8f739a276ad6a1f80a5d53f71c2dc96b6f6570659dd0dbba7108a03d56`  
		Last Modified: Fri, 20 Nov 2026 03:32:48 GMT  
		Size: 18.6 MB (18582656 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31a0ea0328a51c8bffde1f51e289ab830b94d8fb762c9321fed3eb631062edcc`  
		Last Modified: Fri, 20 Nov 2026 03:32:47 GMT  
		Size: 14.7 KB (14733 bytes)  
		MIME: application/vnd.in-toto+json
