## `ros:jazzy-ros-base`

```console
$ docker pull ros@sha256:5147d3ae250ce754afd399f6bfec15b33dd4e473ca357e30432a3182031bfad6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:3f3a309d342b0f8a9212d195a416d5c50deb1716edc8bdfe5e134bcaa38d708c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.3 MB (303299725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d0f756e46e309508e42938f6eaa7ccc7b38cd658c1bc7a87c451923d2fa889e`
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

### `ros:jazzy-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:270dcf1a2be53d0bf70238e7417bf2d5ea2aa85e31ea2a2df505f81d737adf82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24938754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3c00288fb9d01e9ddc4b0189d72b4f29fd9a627db26f78f288a38d8af0058b8`

```dockerfile
```

-	Layers:
	-	`sha256:61ce53ae98ed1dc6c2f9f43d71ab3448b0d46c3e8f3f52b84a4c1c46ecb69945`  
		Last Modified: Fri, 20 Nov 2026 04:27:01 GMT  
		Size: 24.9 MB (24922425 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c82a0e709f8559ed2532805f5c38f277bd80c033b8fa7a5ae4d05122a2af06d`  
		Last Modified: Fri, 20 Nov 2026 04:26:59 GMT  
		Size: 16.3 KB (16329 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ff9683e990606b51cf829e9f42b82bd59b33352158f4d4435b9bb7785a22b7bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.6 MB (291608535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d0941d2d8facfbf8d466c5dbf87f5ca6ab9945d7ab1f5bbd095b7b5611f1768`
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

### `ros:jazzy-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:42256adfd4eb4a3b2e9f00665b6631fa4cccb293537169f1f1e6f5673def38c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 MB (24961146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f48c26dad1ccbd9c1151ccf485cd3e14def3f3bfbc45c5941a7b80a4f689d6fd`

```dockerfile
```

-	Layers:
	-	`sha256:600cfa67220444fdce9666e4eb174fcce8dfac96622921bbd6dcf6e798880a65`  
		Last Modified: Fri, 20 Nov 2026 04:28:59 GMT  
		Size: 24.9 MB (24944680 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8dafb0fee2c5d9676648e15473f2c1c7d0531d247d45fa9f4b3d201a7c2c268f`  
		Last Modified: Fri, 20 Nov 2026 04:28:58 GMT  
		Size: 16.5 KB (16466 bytes)  
		MIME: application/vnd.in-toto+json
