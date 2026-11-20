## `ros:jazzy-perception`

```console
$ docker pull ros@sha256:233408de3a53d864d7f5e1c8c6ff7948d126162f22221c8f0a8785ab7b03095b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-perception` - linux; amd64

```console
$ docker pull ros@sha256:0cd2f05ef62cb4d8da40919b12afddc3661ee3c8566071aff4c9abfeb6bc74a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1089310861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faa13a6f0d4d4ae2e5b0897f134977396fc3ce37e67fd398d7c04d120b4f56be`
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
# Fri, 20 Nov 2026 04:26:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:26:09 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 20 Nov 2026 04:26:10 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 20 Nov 2026 04:26:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 05:16:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
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
	-	`sha256:146a3246cf3ffa9dcedc744bc1bee788a964f08bf9132e598f71e4a4872216c5`  
		Last Modified: Fri, 20 Nov 2026 04:27:03 GMT  
		Size: 110.2 MB (110245763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f676d118bb2f167da7d6cca304c3a5eefee838ebeb925c937bb7d5adc993f18`  
		Last Modified: Fri, 20 Nov 2026 04:26:59 GMT  
		Size: 412.5 KB (412523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3544becc02e5723b695da171848d8f7dbd2327a3053a10949f762e4753da5d3`  
		Last Modified: Fri, 20 Nov 2026 04:26:59 GMT  
		Size: 2.6 KB (2649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b849b7235b1a2b72638b414f23a11f1f75d4fabcd5069d4fd99b75ed6a3d1b48`  
		Last Modified: Fri, 20 Nov 2026 04:27:01 GMT  
		Size: 28.1 MB (28096444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66bdb54e748fc0c124748eb47b97723d1cb7cd69efef5b156ddf4555db8f0b2d`  
		Last Modified: Fri, 20 Nov 2026 05:19:10 GMT  
		Size: 786.0 MB (786011136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception` - unknown; unknown

```console
$ docker pull ros@sha256:500f48fb7219fc6acd008b24720817e4cdafb9134309f9f542067d2872a36f98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61115072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:149d4cbc42a3de39208495be0885eb4150f3e1e2a52d10f431d241394948871d`

```dockerfile
```

-	Layers:
	-	`sha256:b4d82a78ce5c1ee751b288c53cf248cebb79858597726e651fa1b3a2285c7761`  
		Last Modified: Fri, 20 Nov 2026 05:18:57 GMT  
		Size: 61.1 MB (61105733 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ab362d30b9073c99edd872684bf7c7e3f05bc63f7ee6a0c09ac11feee82dcbc`  
		Last Modified: Fri, 20 Nov 2026 05:18:55 GMT  
		Size: 9.3 KB (9339 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5619d29521f0fefe9d98e7b9accfb0c567bc5aed3ca08ff863c81163ae10d930
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **991.8 MB (991773070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c0e4d36c8bf619f73ba682a13d3849dc767b0395957c8ac47ef6fdefa1d7eae`
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
# Fri, 20 Nov 2026 04:27:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:27:31 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 20 Nov 2026 04:27:32 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 20 Nov 2026 04:28:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 05:22:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
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
	-	`sha256:1ae9996ec381163ddad358678943cd0f5dfeac6f183b9055a4b1d321b6908ea2`  
		Last Modified: Fri, 20 Nov 2026 04:29:01 GMT  
		Size: 105.7 MB (105661857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:026b03e33849e0b9c087e331732eaa51f74fcc3ca8a6055ba30c6e823f3a9999`  
		Last Modified: Fri, 20 Nov 2026 04:28:58 GMT  
		Size: 412.5 KB (412522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84bc346492d3e6cb024c761c87f83e80b07e5f643be7c4babded39a7935d320a`  
		Last Modified: Fri, 20 Nov 2026 04:28:58 GMT  
		Size: 2.7 KB (2659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcb24648b13604dbcde60b8507191ff0c60021f86dccc07fb8f44d1965701c07`  
		Last Modified: Fri, 20 Nov 2026 04:29:00 GMT  
		Size: 27.2 MB (27203081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8baaf94266d56ade4f47d3dc22757375348aa7631b6a32b36ebe931d7f9eabed`  
		Last Modified: Fri, 20 Nov 2026 05:25:56 GMT  
		Size: 700.2 MB (700164535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception` - unknown; unknown

```console
$ docker pull ros@sha256:a6cda0f09bd4079e31cabb0236701d94641665153cdbd411329c4974e5b108b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61045671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d47f6bcb632b6e685316460b67151204165e360a502850b722c6f2a44971c09`

```dockerfile
```

-	Layers:
	-	`sha256:3873d2bbc07954b490897b431e6a501efa248da08e62a54d3f4b322069a4b721`  
		Last Modified: Fri, 20 Nov 2026 05:25:45 GMT  
		Size: 61.0 MB (61036252 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40d78798e65a57c60dae6a9424c42d6cc2f2a9741d00f18d7a72acb4c9b35f21`  
		Last Modified: Fri, 20 Nov 2026 05:25:43 GMT  
		Size: 9.4 KB (9419 bytes)  
		MIME: application/vnd.in-toto+json
