## `ros:humble-perception`

```console
$ docker pull ros@sha256:f27dab3fde9d7e242c79533f48040d859ea636307a39144a4e7827fa9fd6b6dd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-perception` - linux; amd64

```console
$ docker pull ros@sha256:fcc425862f95d4f485f648e8c81762a5c0d71e34deb1f20e36504bdc2280715f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **956.7 MB (956731350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68e9f9a5634c179be07fbaa1d1c45be40af0edfe6c26c340b3f178caa2eb0579`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:33:58 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:10 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:16 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:55 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:34:55 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:34:55 GMT
ENV ROS_DISTRO=humble
# Sat, 17 Oct 2026 00:34:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:56 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:34:56 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:34:56 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:32:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:32:04 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:32:08 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:32:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:22:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9904ab127ba78ee4b30d5200b16e4e42d280cf6d50e42d8ae7a5f71e0e863819`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 1.2 MB (1214871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78c70217b3fe739a40e2f7040e541415fc34c7318e3aae1381b41e527ddce2b5`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 6.0 MB (5952779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc4b2c880f02ab1e8612794519cffee9954689b26cd90371cbe03ac0c720e91e`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 97.9 KB (97910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6d6d419bae97b3f51d6a4bc9002c4d6498ab6092cbcc5f3c1776fc60fb43c7b`  
		Last Modified: Sat, 17 Oct 2026 00:35:23 GMT  
		Size: 105.2 MB (105226949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cffab2e723c86dec0fa9e46219df1614cf6db43823cfe6687af16f9abd79197d`  
		Last Modified: Sat, 17 Oct 2026 00:35:22 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00a4c143b725e7f104760f165954304740b2f20df0a04a04657774ee17fdb5b3`  
		Last Modified: Sat, 17 Oct 2026 01:32:58 GMT  
		Size: 98.2 MB (98200466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2af1b1b2c77286e0cd12ad50c5abda043ecbb72d9d95b608428db5ee0403800`  
		Last Modified: Sat, 17 Oct 2026 01:32:55 GMT  
		Size: 392.6 KB (392618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffc6e1132ce87f4563e5f29f3b8306e2f8468f6b3ecd3c53d31324f57d6b09b3`  
		Last Modified: Sat, 17 Oct 2026 01:32:55 GMT  
		Size: 2.7 KB (2693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:893f6ba9f8e798baf64f716e675663994855d41a093dd2d4dd8d0f7c397ba40d`  
		Last Modified: Sat, 17 Oct 2026 01:32:56 GMT  
		Size: 23.3 MB (23349670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9ed1f51228997d2bb6aae1d8017b5b476a0a53fddad6aa8fca68ccf114d21f7`  
		Last Modified: Sat, 17 Oct 2026 02:25:24 GMT  
		Size: 692.5 MB (692540721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception` - unknown; unknown

```console
$ docker pull ros@sha256:bd9aacfe355329bf068a186e5a4306a29ecb21a1030f72519e5eb9449a586690
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.1 MB (59073462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdf105d95e7e5823705a937d115c51b17ec6f9bfe7018fbd254cb3a7b106763a`

```dockerfile
```

-	Layers:
	-	`sha256:6abbe18b0faf606af8c9966845ef41372164984827ed75d1d6ad9ab8c8ee23c5`  
		Last Modified: Sat, 17 Oct 2026 02:25:13 GMT  
		Size: 59.1 MB (59064111 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4dc09a282897df0bda941fbe224f5e5f81de9a29de055dc67100cc3279d1b098`  
		Last Modified: Sat, 17 Oct 2026 02:25:11 GMT  
		Size: 9.4 KB (9351 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:694ed367611d611b5f96b0e449aa6a3bc454b0730b1784521fbe462101215c64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **917.5 MB (917464769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd90764d10e34cf981187724be1657f61a52d8ff32f8a75c54b0f041cf6c66f7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:33:49 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:00 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:07 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:49 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:34:49 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:34:49 GMT
ENV ROS_DISTRO=humble
# Sat, 17 Oct 2026 00:34:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:50 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:34:50 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:34:50 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:32:59 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:33:03 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:33:05 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:33:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:21:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade8b0f02839ba9ff322ac84eef7adc86edaa48ede77cf7208c2232db8f75033`  
		Last Modified: Sat, 17 Oct 2026 00:35:15 GMT  
		Size: 1.2 MB (1214927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d018904a4a6301015a0eaedd3eba643bfabc578e649d522b2e0d71a33c479e4b`  
		Last Modified: Sat, 17 Oct 2026 00:35:16 GMT  
		Size: 5.9 MB (5912740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb3045688293f0dfe1281c9a23307a570058ad90223852811eca6af5a0cdac36`  
		Last Modified: Sat, 17 Oct 2026 00:35:15 GMT  
		Size: 98.0 KB (97982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d48401550df9f6fb751752a283dae32886ef4178173e1c4e4c9d5787df7c8b0`  
		Last Modified: Sat, 17 Oct 2026 00:35:19 GMT  
		Size: 103.0 MB (103035736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:113b50c487bbd3f2794cb35423fbfe39a273708fe612fc4f0ee0dd649ac9df30`  
		Last Modified: Sat, 17 Oct 2026 00:35:17 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b2f3ee9bb9f63be959c20771457b01abd2cfb572346ea6908c6390ccad5c8df`  
		Last Modified: Sat, 17 Oct 2026 01:34:34 GMT  
		Size: 95.8 MB (95839149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c95136dccec446e226591ee2bad2c4a31846663aadafa9977419858b58d722f6`  
		Last Modified: Sat, 17 Oct 2026 01:34:00 GMT  
		Size: 392.6 KB (392616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdf1eafcc3fc662c1c61b6ef4d88e2c858d044cbadc96069aa5bda355eea200c`  
		Last Modified: Sat, 17 Oct 2026 01:33:59 GMT  
		Size: 2.7 KB (2687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1da8a308b537eb93d4c5bce7518c606f6fd558db5fd28e3c0151d2036f06ac7`  
		Last Modified: Sat, 17 Oct 2026 01:34:10 GMT  
		Size: 22.8 MB (22754801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b64a8bc65d176168987b836de05d1aac9770d3980717c0d388d8e2c6f0f478ac`  
		Last Modified: Sat, 17 Oct 2026 02:24:17 GMT  
		Size: 660.5 MB (660529212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception` - unknown; unknown

```console
$ docker pull ros@sha256:5779cfa4cfb1c87938469853df51cba5a533564122862f57d7e53fccc97449c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.1 MB (59057868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a02ad8d1e4c2f7d66cb9952fe7e1edf4dad84d7f27e1ee2cc58e527bc04b54e7`

```dockerfile
```

-	Layers:
	-	`sha256:4c6cfe80d9e41a2345ed39cba9f7c08101eefd1ae94881155acd835ac32a10b3`  
		Last Modified: Sat, 17 Oct 2026 02:24:06 GMT  
		Size: 59.0 MB (59048436 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:effb67fa02853b03f07f637edb93831e73f89e250466c16337b66949c3365a2a`  
		Last Modified: Sat, 17 Oct 2026 02:24:03 GMT  
		Size: 9.4 KB (9432 bytes)  
		MIME: application/vnd.in-toto+json
