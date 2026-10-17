## `ros:humble-ros-core-jammy`

```console
$ docker pull ros@sha256:5180d76c096cf07b09da94de0f16897d706a093122f02401a23409c4b7368cec
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-core-jammy` - linux; amd64

```console
$ docker pull ros@sha256:87c589c17fb652967d8005b2bad5baf19642b2a35547c207187d29e56f2b703e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.2 MB (142245182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80f2e0e33e2257d066f0f08ddad23e618bad53a612d676162ab1d726f786d855`
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

### `ros:humble-ros-core-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:5e6b780162ca01f6f9698adc5d5af57b3f729ed3209aa298357b222d501f170c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17931528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ed0c510c83193e2627b33b63830c481bab68269928a09223b386dedbefc605e`

```dockerfile
```

-	Layers:
	-	`sha256:342233ed97a3001d5a0fc3da0d627cc062e544f06fde191357c2a7799be7d8dd`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 17.9 MB (17916902 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55a51d9891f9b20bccf5f8c9d46dde7ece614cbad427c793cfc2c8ec7199aff6`  
		Last Modified: Sat, 17 Oct 2026 00:35:20 GMT  
		Size: 14.6 KB (14626 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-core-jammy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:676e187e8e5cdb7d4a9325cee86c72bb337ffa1c4cfcd13b5732b3da47006937
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.9 MB (137946304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96934ce68effc42bc47fbff930c20fc5db85784b874f77af1c1ba5cf4b763bd5`
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

### `ros:humble-ros-core-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:014cb071c44732261929b13c6ada215fa1da0ba2d3204a7e4f9da4241ce77226
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17917998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00a40b4fcec342213fee3953fc9a195787d4fc1557d05fd6a845fb4d1780510e`

```dockerfile
```

-	Layers:
	-	`sha256:0788ed2776440a5b09c22a94a999bd9403051a7b74f667c203ec578f58c0aa4b`  
		Last Modified: Sat, 17 Oct 2026 00:35:16 GMT  
		Size: 17.9 MB (17903247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34427405df332b44b7a0de9e5955fb39a211de5923272c3cd53cc72dac23b47b`  
		Last Modified: Sat, 17 Oct 2026 00:35:15 GMT  
		Size: 14.8 KB (14751 bytes)  
		MIME: application/vnd.in-toto+json
