## `ros:jazzy-perception`

```console
$ docker pull ros@sha256:63407fb78383d0c68849c2913a3b6a5675069d2c2c33c21b3e7c454e028e8b5d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-perception` - linux; amd64

```console
$ docker pull ros@sha256:7b2aaa6e177aaf4b0e568ab90d44866374a596988e014fe0942da9b43aa24269
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1081322704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7e3bfce896c784ff6732cff89ff68c72d42a20eb5ac27286a7a59ef014bd307`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:16 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:24 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:28 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:09 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:09 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:09 GMT
ENV ROS_DISTRO=jazzy
# Tue, 18 Aug 2026 19:26:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:09 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:09 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 20:23:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:23:41 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 20:23:59 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 20:24:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 21:16:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fc144bf2fa9369c1b905a8f5325cb931caa17631addf664424280970d958860`  
		Last Modified: Tue, 18 Aug 2026 19:26:37 GMT  
		Size: 683.4 KB (683353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45fa819c5593caccc1cfc679df9cd10fefc0371ab95c20f0764ea534fcbb9c4c`  
		Last Modified: Tue, 18 Aug 2026 19:26:37 GMT  
		Size: 6.7 MB (6709417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b21474dcac3c48681623e4add31db5b211bb573d1869993e142d89c66d69934a`  
		Last Modified: Tue, 18 Aug 2026 19:26:37 GMT  
		Size: 94.7 KB (94727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54493cf121989fd5a5216b2e3868cf07c378d34d95f3c865571bf414633c408d`  
		Last Modified: Tue, 18 Aug 2026 19:26:40 GMT  
		Size: 120.5 MB (120459240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cda397495263e78306d155b13b5350b3678458ee610ac6a6bcce5b5b35617aea`  
		Last Modified: Tue, 18 Aug 2026 19:26:36 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa61c3b78b8a527c2c014b1a761bb9782400da95745756d9e7adb8eea62183f3`  
		Last Modified: Tue, 18 Aug 2026 20:24:49 GMT  
		Size: 110.2 MB (110191895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfeaea64934d427fdbdd559a19bccced576cb4b8b74af403feee7d56ddd57bc3`  
		Last Modified: Tue, 18 Aug 2026 20:24:45 GMT  
		Size: 409.8 KB (409822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a0ac9fceaa8e1d3cff872e59ff443b85fa560d471ddd3175e31db2fad1066f9`  
		Last Modified: Tue, 18 Aug 2026 20:24:45 GMT  
		Size: 2.6 KB (2569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8411d72f4b8d1a32d36a409d255c8e7f71951e6eecb2cbb35b4d27a5ca35348`  
		Last Modified: Tue, 18 Aug 2026 20:24:47 GMT  
		Size: 28.1 MB (28079344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:899f768c12c5b86621afb75921e79604063d5019c9f32cd3639d7c24c469a4d0`  
		Last Modified: Tue, 18 Aug 2026 21:19:31 GMT  
		Size: 784.9 MB (784939335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception` - unknown; unknown

```console
$ docker pull ros@sha256:47017824db5c0874d7ac8e6b152756850d98c08fcd71c452bc6171d5f3e9a6a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61116757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d536b23bff15d0751679373231b0bd3002f2b46755c6e2abc879b9672467b1b`

```dockerfile
```

-	Layers:
	-	`sha256:83e53d214a510963c07da1fdd5ec7ee3dcd5e06beedd627f4bd6a6b406160054`  
		Last Modified: Tue, 18 Aug 2026 21:19:19 GMT  
		Size: 61.1 MB (61107418 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:916a1d5a8d479308047ac21284de010fd4a40e12127ea7630aa1df91f6682f83`  
		Last Modified: Tue, 18 Aug 2026 21:19:17 GMT  
		Size: 9.3 KB (9339 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:cf36a2ca2ce9d3f239ab3df02430d580a7d643d907cd7bf0926b6f18fb7bd769
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **983.9 MB (983884762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:714efbee46cc0700ad1ff91caadabf173b6de670557096d438941b2d62dc5e0c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:17 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:25 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:29 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:06 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:06 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:06 GMT
ENV ROS_DISTRO=jazzy
# Tue, 18 Aug 2026 19:26:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:07 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:07 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 20:24:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:24:07 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 20:24:08 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 20:24:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 21:16:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02772dfc3a5fae7955e9e391724ecd55bbe318285e021b91a13dacf3088f95b9`  
		Last Modified: Tue, 18 Aug 2026 19:26:34 GMT  
		Size: 683.4 KB (683392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9b69bcc24d33923b499b032c6f025872b6ccd11ab8dd2ffd20d83f63a295900`  
		Last Modified: Tue, 18 Aug 2026 19:26:35 GMT  
		Size: 6.7 MB (6723998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c78357500e5fbbf1a3b0474900cc310f7bc92917b35e50486f705989e48b8d24`  
		Last Modified: Tue, 18 Aug 2026 19:26:34 GMT  
		Size: 94.7 KB (94719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76e1cab8e7767650bc30f450224a5381259325759eb754db90270a5856921096`  
		Last Modified: Tue, 18 Aug 2026 19:26:37 GMT  
		Size: 115.2 MB (115241033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cda397495263e78306d155b13b5350b3678458ee610ac6a6bcce5b5b35617aea`  
		Last Modified: Tue, 18 Aug 2026 19:26:36 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76d153a4b9db0cb118278fb00415bc859c03ffaad0f1ddd9f56a0238dfa63a23`  
		Last Modified: Tue, 18 Aug 2026 20:25:03 GMT  
		Size: 105.6 MB (105602820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fec7af2f0621ee36ad6707e5803931d8ef7e6e61453a09592341a33badeccb8`  
		Last Modified: Tue, 18 Aug 2026 20:24:59 GMT  
		Size: 409.8 KB (409828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1f35151bd6a352d9ffda9d1b17f657f750b21eb77f558d14171e63ade2926a4`  
		Last Modified: Tue, 18 Aug 2026 20:25:00 GMT  
		Size: 2.5 KB (2512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:600c7c7a1562f5b64f08bdb9440ac70fedde3dd1500777710db926aa67e26875`  
		Last Modified: Tue, 18 Aug 2026 20:25:01 GMT  
		Size: 27.2 MB (27193612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e2a71eac49ea840d80e894e5dc96e3ef50402d887a329fcce3d868d554229b9`  
		Last Modified: Tue, 18 Aug 2026 21:19:38 GMT  
		Size: 699.0 MB (699045418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception` - unknown; unknown

```console
$ docker pull ros@sha256:4354c5064f8eb3f037732766dad4bf0942b075e46be1e7b6c81ae602e85bb5d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61047356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c3220797d27a8b39b9465b14857ca4b16595da13cd8593db177514ff4a410fa`

```dockerfile
```

-	Layers:
	-	`sha256:38fbb617ffe9e8f7851b2626b3c5288657d112e5dc3e79b71852aee5018766e3`  
		Last Modified: Tue, 18 Aug 2026 21:19:26 GMT  
		Size: 61.0 MB (61037937 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:977018eab027475ef00d6821788d49439025a04a419f164d8a7e1e9bf698cfb7`  
		Last Modified: Tue, 18 Aug 2026 21:19:23 GMT  
		Size: 9.4 KB (9419 bytes)  
		MIME: application/vnd.in-toto+json
