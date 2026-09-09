<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ros`

-	[`ros:humble`](#roshumble)
-	[`ros:humble-perception`](#roshumble-perception)
-	[`ros:humble-perception-jammy`](#roshumble-perception-jammy)
-	[`ros:humble-ros-base`](#roshumble-ros-base)
-	[`ros:humble-ros-base-jammy`](#roshumble-ros-base-jammy)
-	[`ros:humble-ros-core`](#roshumble-ros-core)
-	[`ros:humble-ros-core-jammy`](#roshumble-ros-core-jammy)
-	[`ros:jazzy`](#rosjazzy)
-	[`ros:jazzy-perception`](#rosjazzy-perception)
-	[`ros:jazzy-perception-noble`](#rosjazzy-perception-noble)
-	[`ros:jazzy-ros-base`](#rosjazzy-ros-base)
-	[`ros:jazzy-ros-base-noble`](#rosjazzy-ros-base-noble)
-	[`ros:jazzy-ros-core`](#rosjazzy-ros-core)
-	[`ros:jazzy-ros-core-noble`](#rosjazzy-ros-core-noble)
-	[`ros:kilted`](#roskilted)
-	[`ros:kilted-perception`](#roskilted-perception)
-	[`ros:kilted-perception-noble`](#roskilted-perception-noble)
-	[`ros:kilted-ros-base`](#roskilted-ros-base)
-	[`ros:kilted-ros-base-noble`](#roskilted-ros-base-noble)
-	[`ros:kilted-ros-core`](#roskilted-ros-core)
-	[`ros:kilted-ros-core-noble`](#roskilted-ros-core-noble)
-	[`ros:latest`](#roslatest)
-	[`ros:lyrical`](#roslyrical)
-	[`ros:lyrical-perception`](#roslyrical-perception)
-	[`ros:lyrical-perception-resolute`](#roslyrical-perception-resolute)
-	[`ros:lyrical-ros-base`](#roslyrical-ros-base)
-	[`ros:lyrical-ros-base-resolute`](#roslyrical-ros-base-resolute)
-	[`ros:lyrical-ros-core`](#roslyrical-ros-core)
-	[`ros:lyrical-ros-core-resolute`](#roslyrical-ros-core-resolute)
-	[`ros:rolling`](#rosrolling)
-	[`ros:rolling-perception`](#rosrolling-perception)
-	[`ros:rolling-perception-resolute`](#rosrolling-perception-resolute)
-	[`ros:rolling-ros-base`](#rosrolling-ros-base)
-	[`ros:rolling-ros-base-resolute`](#rosrolling-ros-base-resolute)
-	[`ros:rolling-ros-core`](#rosrolling-ros-core)
-	[`ros:rolling-ros-core-resolute`](#rosrolling-ros-core-resolute)

## `ros:humble`

```console
$ docker pull ros@sha256:1813d3c85d7f96ff7d3012d865204583255740182db5d0065f8f8cd029a83138
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble` - linux; amd64

```console
$ docker pull ros@sha256:ba0391e31ffcfc5a1014578ecb0f4ca438be9d624b6375c85576ae16bc5232e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (272013411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab91f7bbc8af87f468127aaa6c4d7f46fed4fa1f03b3a96b6ca44eed03d0ac0b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:35:43 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:35:55 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:00 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:38 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:36:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:36:38 GMT
ENV ROS_DISTRO=humble
# Wed, 09 Sep 2026 02:36:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:38 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:36:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:36:38 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:30:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:30:40 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:30:44 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:31:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ab7a43d012fe74edb3e506d4f7559e3de034e350953f18f35561ee666dfa934`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 1.2 MB (1212718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:424ca8e32ad63fc1a991f3f728865951a15772959c85bdd0385ab2aaa6ed0851`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 6.0 MB (5951842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68d747d6bc0c88b68985074a914f0e62c428dfc66120b02a31bedf3d96452f6a`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 97.9 KB (97903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e2bcc6e0d7c56988ba91775ffaef3927992fb9526089a2146403a698634ee3d`  
		Last Modified: Wed, 09 Sep 2026 02:37:05 GMT  
		Size: 110.8 MB (110766089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dba3fcfdb7627f6fe1e51129ee4ef5ad692a2947ff8e9eb3516bf0299a7211c`  
		Last Modified: Wed, 09 Sep 2026 02:37:03 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d05cd56127d190f48e8a2230b0013087395b2046b7ddb4ebc9afdd91ab6ecc64`  
		Last Modified: Wed, 09 Sep 2026 03:31:35 GMT  
		Size: 100.5 MB (100494574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b09b376ac040fab215f20445d3b336a29aeb7a6391f8c726838abd9e32738d7`  
		Last Modified: Wed, 09 Sep 2026 03:31:32 GMT  
		Size: 388.4 KB (388368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d101cf321e989844c4ac044b5cee7c8fbf7e9f9377ce137fb41253893545e3a8`  
		Last Modified: Wed, 09 Sep 2026 03:31:32 GMT  
		Size: 2.5 KB (2515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a59ac259e0b4e54135543c9d4f452c169a08e61fd9b21d465dd89fa8d8ccaee6`  
		Last Modified: Wed, 09 Sep 2026 03:31:33 GMT  
		Size: 23.3 MB (23348955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble` - unknown; unknown

```console
$ docker pull ros@sha256:595783a3f598d167206c6ef9968157ab36b14c56ea761ac967a617d0175e3043
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23986089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eb80cc6519fd7656c5c448ecb6492f0f128e6205e7fe37918a6f890540ae75e`

```dockerfile
```

-	Layers:
	-	`sha256:ec078c459c09616751d6dfe1da031fb997ce6e4b3c0186a9010ac193d42acb1b`  
		Last Modified: Wed, 09 Sep 2026 03:31:33 GMT  
		Size: 24.0 MB (23969737 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95c85ef5deff8c5152eea187b98498222982709593fe0a9b470e2d2ac2674072`  
		Last Modified: Wed, 09 Sep 2026 03:31:32 GMT  
		Size: 16.4 KB (16352 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:86eaec9ba3b5f345090bf92c3f1d7b9f7af369ebc3232876908467ce622e1cd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.6 MB (263627507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0faddd2534a5aa74f0c2ef9d3bfd0c2a3887158100b0035a88bf31f902cc3a7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:39:55 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:07 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:13 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:55 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 01:40:55 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 01:40:55 GMT
ENV ROS_DISTRO=humble
# Wed, 09 Sep 2026 01:40:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:55 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 01:40:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 01:40:55 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 02:33:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:12 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 02:33:16 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 02:33:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bddee01edb498613b105a34c4130f2da848572201e36cf5fb3300423adff03a`  
		Last Modified: Wed, 09 Sep 2026 01:41:21 GMT  
		Size: 1.2 MB (1212881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2689441d1be6d178401a5d18063478b90856de2f73d36c5d2ed6ec7939b024de`  
		Last Modified: Wed, 09 Sep 2026 01:41:21 GMT  
		Size: 5.9 MB (5911693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d117015c18640441b139baf153187d59a51b4081523dcde75fca284ece0af69c`  
		Last Modified: Wed, 09 Sep 2026 01:41:20 GMT  
		Size: 97.9 KB (97943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70c2fb207aceae4e92786b3b43645c1ecc27d57d83766730a27cb97958067c12`  
		Last Modified: Wed, 09 Sep 2026 01:41:24 GMT  
		Size: 107.5 MB (107508551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e29307c8452e8a0b956f4ebb158707234771e9c96b70069b8f01930456a9850d`  
		Last Modified: Wed, 09 Sep 2026 01:41:22 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8665be449e86a83d11fd7d4902565359b153087dda740341fff929defe9c42b`  
		Last Modified: Wed, 09 Sep 2026 02:34:14 GMT  
		Size: 98.1 MB (98077760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:379256ae1e7e798b14f3cd888e0c959ec39d0ac002a085022cb40d344e3981d3`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 388.4 KB (388368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e721a166e322d4351efad038eb6256c493c4639d513ff65cee9286a349d4443f`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 2.5 KB (2541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6b521e9556387a93b2b6b423aaf47ce77b62d731235fbc50995b57a4a2f83e3`  
		Last Modified: Wed, 09 Sep 2026 02:34:11 GMT  
		Size: 22.7 MB (22744826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble` - unknown; unknown

```console
$ docker pull ros@sha256:6c91a7bf49129e647903f25f8e6230d265b3ce142eca1b89574be56a4f67ac8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23999239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcbeb23bfd474150d418c10d58917f13d97b5c67482c6037711f7eae014bb48e`

```dockerfile
```

-	Layers:
	-	`sha256:39841b696bacaee9787953842099270c92814fde3c2a5b2689773992d3ea94d8`  
		Last Modified: Wed, 09 Sep 2026 02:34:11 GMT  
		Size: 24.0 MB (23982754 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42ff4b57c3a0279723aa43f77a38831f8614b194a595453b48f81c0a8a6a3500`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 16.5 KB (16485 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-perception`

```console
$ docker pull ros@sha256:7ba242c32a03f05141a167fa759080cc71a56a5e6270234731bb5a70ae02efaf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-perception` - linux; amd64

```console
$ docker pull ros@sha256:1f9b2e86899d09f79a42e1f61f17159b43a6889120b769472fcc7fff9e1f9804
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **964.2 MB (964152039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4e14e18ad00c4bc55b756c9bea36cc81243f2acc4912c3a8b9cd870e5e3cb1d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:35:43 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:35:55 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:00 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:38 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:36:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:36:38 GMT
ENV ROS_DISTRO=humble
# Wed, 09 Sep 2026 02:36:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:38 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:36:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:36:38 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:30:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:30:40 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:30:44 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:31:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:20:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ab7a43d012fe74edb3e506d4f7559e3de034e350953f18f35561ee666dfa934`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 1.2 MB (1212718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:424ca8e32ad63fc1a991f3f728865951a15772959c85bdd0385ab2aaa6ed0851`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 6.0 MB (5951842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68d747d6bc0c88b68985074a914f0e62c428dfc66120b02a31bedf3d96452f6a`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 97.9 KB (97903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e2bcc6e0d7c56988ba91775ffaef3927992fb9526089a2146403a698634ee3d`  
		Last Modified: Wed, 09 Sep 2026 02:37:05 GMT  
		Size: 110.8 MB (110766089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dba3fcfdb7627f6fe1e51129ee4ef5ad692a2947ff8e9eb3516bf0299a7211c`  
		Last Modified: Wed, 09 Sep 2026 02:37:03 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d05cd56127d190f48e8a2230b0013087395b2046b7ddb4ebc9afdd91ab6ecc64`  
		Last Modified: Wed, 09 Sep 2026 03:31:35 GMT  
		Size: 100.5 MB (100494574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b09b376ac040fab215f20445d3b336a29aeb7a6391f8c726838abd9e32738d7`  
		Last Modified: Wed, 09 Sep 2026 03:31:32 GMT  
		Size: 388.4 KB (388368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d101cf321e989844c4ac044b5cee7c8fbf7e9f9377ce137fb41253893545e3a8`  
		Last Modified: Wed, 09 Sep 2026 03:31:32 GMT  
		Size: 2.5 KB (2515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a59ac259e0b4e54135543c9d4f452c169a08e61fd9b21d465dd89fa8d8ccaee6`  
		Last Modified: Wed, 09 Sep 2026 03:31:33 GMT  
		Size: 23.3 MB (23348955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91c25dfd1af19f54fe52c7cf28800ada2f5b6d6b491e33081348182776b1e26b`  
		Last Modified: Wed, 09 Sep 2026 04:26:09 GMT  
		Size: 692.1 MB (692138628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception` - unknown; unknown

```console
$ docker pull ros@sha256:74f01dc09336a949c82a0039caed494bca3dd11c6dd53924001787724d9ac769
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.1 MB (59084946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbede74c078ea1c881c2de30796ab94db2aa10cc029b7d086bf313348a583be9`

```dockerfile
```

-	Layers:
	-	`sha256:4dd878e2ccefb487fb25c37e82b95205164bef5b7fcfd219e23ceb8612ef32a8`  
		Last Modified: Wed, 09 Sep 2026 04:23:47 GMT  
		Size: 59.1 MB (59075593 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13b0793059312dab47c4f702907c60de9add8d1b354291c3a12415178189a91d`  
		Last Modified: Wed, 09 Sep 2026 04:22:44 GMT  
		Size: 9.4 KB (9353 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:e97326ff7389c51622646ce332a3b7f53626a3f697cd0d691dd04dcbe4fe8104
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **923.8 MB (923777618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cdb41df3091f8c34a6516c1b5b7e11d289ba8291fc722ee677669b32c7aa738`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:39:55 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:07 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:13 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:55 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 01:40:55 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 01:40:55 GMT
ENV ROS_DISTRO=humble
# Wed, 09 Sep 2026 01:40:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:55 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 01:40:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 01:40:55 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 02:33:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:12 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 02:33:16 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 02:33:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:43:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bddee01edb498613b105a34c4130f2da848572201e36cf5fb3300423adff03a`  
		Last Modified: Wed, 09 Sep 2026 01:41:21 GMT  
		Size: 1.2 MB (1212881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2689441d1be6d178401a5d18063478b90856de2f73d36c5d2ed6ec7939b024de`  
		Last Modified: Wed, 09 Sep 2026 01:41:21 GMT  
		Size: 5.9 MB (5911693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d117015c18640441b139baf153187d59a51b4081523dcde75fca284ece0af69c`  
		Last Modified: Wed, 09 Sep 2026 01:41:20 GMT  
		Size: 97.9 KB (97943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70c2fb207aceae4e92786b3b43645c1ecc27d57d83766730a27cb97958067c12`  
		Last Modified: Wed, 09 Sep 2026 01:41:24 GMT  
		Size: 107.5 MB (107508551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e29307c8452e8a0b956f4ebb158707234771e9c96b70069b8f01930456a9850d`  
		Last Modified: Wed, 09 Sep 2026 01:41:22 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8665be449e86a83d11fd7d4902565359b153087dda740341fff929defe9c42b`  
		Last Modified: Wed, 09 Sep 2026 02:34:14 GMT  
		Size: 98.1 MB (98077760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:379256ae1e7e798b14f3cd888e0c959ec39d0ac002a085022cb40d344e3981d3`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 388.4 KB (388368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e721a166e322d4351efad038eb6256c493c4639d513ff65cee9286a349d4443f`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 2.5 KB (2541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6b521e9556387a93b2b6b423aaf47ce77b62d731235fbc50995b57a4a2f83e3`  
		Last Modified: Wed, 09 Sep 2026 02:34:11 GMT  
		Size: 22.7 MB (22744826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1d6b2c7d2309c160e0fa02b683e1af7a1e78036bbf039d65870e94fbe8ffa15`  
		Last Modified: Wed, 09 Sep 2026 03:46:34 GMT  
		Size: 660.2 MB (660150111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception` - unknown; unknown

```console
$ docker pull ros@sha256:13738bbcbc7db91f4638441e2880827c906af39f5d21b3d6330b4f06e03945db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.1 MB (59069350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cb547572f1938fce2a74823a128d54c4afba9120b0f539ee925a91fd981ae2a`

```dockerfile
```

-	Layers:
	-	`sha256:73c438fa48b483f9c941e1fbc3e715c4a84acc6a465abe81135b6b41e07f4c93`  
		Last Modified: Wed, 09 Sep 2026 03:46:22 GMT  
		Size: 59.1 MB (59059918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30c8a74f4cedb4df319394a4874a16218c2fe419828a610b301622da273b54fd`  
		Last Modified: Wed, 09 Sep 2026 03:46:20 GMT  
		Size: 9.4 KB (9432 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-perception-jammy`

```console
$ docker pull ros@sha256:7ba242c32a03f05141a167fa759080cc71a56a5e6270234731bb5a70ae02efaf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-perception-jammy` - linux; amd64

```console
$ docker pull ros@sha256:1f9b2e86899d09f79a42e1f61f17159b43a6889120b769472fcc7fff9e1f9804
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **964.2 MB (964152039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4e14e18ad00c4bc55b756c9bea36cc81243f2acc4912c3a8b9cd870e5e3cb1d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:35:43 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:35:55 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:00 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:38 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:36:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:36:38 GMT
ENV ROS_DISTRO=humble
# Wed, 09 Sep 2026 02:36:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:38 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:36:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:36:38 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:30:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:30:40 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:30:44 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:31:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:20:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ab7a43d012fe74edb3e506d4f7559e3de034e350953f18f35561ee666dfa934`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 1.2 MB (1212718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:424ca8e32ad63fc1a991f3f728865951a15772959c85bdd0385ab2aaa6ed0851`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 6.0 MB (5951842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68d747d6bc0c88b68985074a914f0e62c428dfc66120b02a31bedf3d96452f6a`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 97.9 KB (97903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e2bcc6e0d7c56988ba91775ffaef3927992fb9526089a2146403a698634ee3d`  
		Last Modified: Wed, 09 Sep 2026 02:37:05 GMT  
		Size: 110.8 MB (110766089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dba3fcfdb7627f6fe1e51129ee4ef5ad692a2947ff8e9eb3516bf0299a7211c`  
		Last Modified: Wed, 09 Sep 2026 02:37:03 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d05cd56127d190f48e8a2230b0013087395b2046b7ddb4ebc9afdd91ab6ecc64`  
		Last Modified: Wed, 09 Sep 2026 03:31:35 GMT  
		Size: 100.5 MB (100494574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b09b376ac040fab215f20445d3b336a29aeb7a6391f8c726838abd9e32738d7`  
		Last Modified: Wed, 09 Sep 2026 03:31:32 GMT  
		Size: 388.4 KB (388368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d101cf321e989844c4ac044b5cee7c8fbf7e9f9377ce137fb41253893545e3a8`  
		Last Modified: Wed, 09 Sep 2026 03:31:32 GMT  
		Size: 2.5 KB (2515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a59ac259e0b4e54135543c9d4f452c169a08e61fd9b21d465dd89fa8d8ccaee6`  
		Last Modified: Wed, 09 Sep 2026 03:31:33 GMT  
		Size: 23.3 MB (23348955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91c25dfd1af19f54fe52c7cf28800ada2f5b6d6b491e33081348182776b1e26b`  
		Last Modified: Wed, 09 Sep 2026 04:26:09 GMT  
		Size: 692.1 MB (692138628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:74f01dc09336a949c82a0039caed494bca3dd11c6dd53924001787724d9ac769
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.1 MB (59084946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbede74c078ea1c881c2de30796ab94db2aa10cc029b7d086bf313348a583be9`

```dockerfile
```

-	Layers:
	-	`sha256:4dd878e2ccefb487fb25c37e82b95205164bef5b7fcfd219e23ceb8612ef32a8`  
		Last Modified: Wed, 09 Sep 2026 04:23:47 GMT  
		Size: 59.1 MB (59075593 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13b0793059312dab47c4f702907c60de9add8d1b354291c3a12415178189a91d`  
		Last Modified: Wed, 09 Sep 2026 04:22:44 GMT  
		Size: 9.4 KB (9353 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-perception-jammy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:e97326ff7389c51622646ce332a3b7f53626a3f697cd0d691dd04dcbe4fe8104
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **923.8 MB (923777618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cdb41df3091f8c34a6516c1b5b7e11d289ba8291fc722ee677669b32c7aa738`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:39:55 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:07 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:13 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:55 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 01:40:55 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 01:40:55 GMT
ENV ROS_DISTRO=humble
# Wed, 09 Sep 2026 01:40:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:55 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 01:40:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 01:40:55 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 02:33:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:12 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 02:33:16 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 02:33:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:43:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bddee01edb498613b105a34c4130f2da848572201e36cf5fb3300423adff03a`  
		Last Modified: Wed, 09 Sep 2026 01:41:21 GMT  
		Size: 1.2 MB (1212881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2689441d1be6d178401a5d18063478b90856de2f73d36c5d2ed6ec7939b024de`  
		Last Modified: Wed, 09 Sep 2026 01:41:21 GMT  
		Size: 5.9 MB (5911693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d117015c18640441b139baf153187d59a51b4081523dcde75fca284ece0af69c`  
		Last Modified: Wed, 09 Sep 2026 01:41:20 GMT  
		Size: 97.9 KB (97943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70c2fb207aceae4e92786b3b43645c1ecc27d57d83766730a27cb97958067c12`  
		Last Modified: Wed, 09 Sep 2026 01:41:24 GMT  
		Size: 107.5 MB (107508551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e29307c8452e8a0b956f4ebb158707234771e9c96b70069b8f01930456a9850d`  
		Last Modified: Wed, 09 Sep 2026 01:41:22 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8665be449e86a83d11fd7d4902565359b153087dda740341fff929defe9c42b`  
		Last Modified: Wed, 09 Sep 2026 02:34:14 GMT  
		Size: 98.1 MB (98077760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:379256ae1e7e798b14f3cd888e0c959ec39d0ac002a085022cb40d344e3981d3`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 388.4 KB (388368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e721a166e322d4351efad038eb6256c493c4639d513ff65cee9286a349d4443f`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 2.5 KB (2541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6b521e9556387a93b2b6b423aaf47ce77b62d731235fbc50995b57a4a2f83e3`  
		Last Modified: Wed, 09 Sep 2026 02:34:11 GMT  
		Size: 22.7 MB (22744826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1d6b2c7d2309c160e0fa02b683e1af7a1e78036bbf039d65870e94fbe8ffa15`  
		Last Modified: Wed, 09 Sep 2026 03:46:34 GMT  
		Size: 660.2 MB (660150111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:13738bbcbc7db91f4638441e2880827c906af39f5d21b3d6330b4f06e03945db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.1 MB (59069350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cb547572f1938fce2a74823a128d54c4afba9120b0f539ee925a91fd981ae2a`

```dockerfile
```

-	Layers:
	-	`sha256:73c438fa48b483f9c941e1fbc3e715c4a84acc6a465abe81135b6b41e07f4c93`  
		Last Modified: Wed, 09 Sep 2026 03:46:22 GMT  
		Size: 59.1 MB (59059918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30c8a74f4cedb4df319394a4874a16218c2fe419828a610b301622da273b54fd`  
		Last Modified: Wed, 09 Sep 2026 03:46:20 GMT  
		Size: 9.4 KB (9432 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-ros-base`

```console
$ docker pull ros@sha256:1813d3c85d7f96ff7d3012d865204583255740182db5d0065f8f8cd029a83138
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:ba0391e31ffcfc5a1014578ecb0f4ca438be9d624b6375c85576ae16bc5232e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (272013411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab91f7bbc8af87f468127aaa6c4d7f46fed4fa1f03b3a96b6ca44eed03d0ac0b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:35:43 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:35:55 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:00 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:38 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:36:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:36:38 GMT
ENV ROS_DISTRO=humble
# Wed, 09 Sep 2026 02:36:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:38 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:36:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:36:38 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:30:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:30:40 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:30:44 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:31:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ab7a43d012fe74edb3e506d4f7559e3de034e350953f18f35561ee666dfa934`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 1.2 MB (1212718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:424ca8e32ad63fc1a991f3f728865951a15772959c85bdd0385ab2aaa6ed0851`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 6.0 MB (5951842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68d747d6bc0c88b68985074a914f0e62c428dfc66120b02a31bedf3d96452f6a`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 97.9 KB (97903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e2bcc6e0d7c56988ba91775ffaef3927992fb9526089a2146403a698634ee3d`  
		Last Modified: Wed, 09 Sep 2026 02:37:05 GMT  
		Size: 110.8 MB (110766089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dba3fcfdb7627f6fe1e51129ee4ef5ad692a2947ff8e9eb3516bf0299a7211c`  
		Last Modified: Wed, 09 Sep 2026 02:37:03 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d05cd56127d190f48e8a2230b0013087395b2046b7ddb4ebc9afdd91ab6ecc64`  
		Last Modified: Wed, 09 Sep 2026 03:31:35 GMT  
		Size: 100.5 MB (100494574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b09b376ac040fab215f20445d3b336a29aeb7a6391f8c726838abd9e32738d7`  
		Last Modified: Wed, 09 Sep 2026 03:31:32 GMT  
		Size: 388.4 KB (388368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d101cf321e989844c4ac044b5cee7c8fbf7e9f9377ce137fb41253893545e3a8`  
		Last Modified: Wed, 09 Sep 2026 03:31:32 GMT  
		Size: 2.5 KB (2515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a59ac259e0b4e54135543c9d4f452c169a08e61fd9b21d465dd89fa8d8ccaee6`  
		Last Modified: Wed, 09 Sep 2026 03:31:33 GMT  
		Size: 23.3 MB (23348955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:595783a3f598d167206c6ef9968157ab36b14c56ea761ac967a617d0175e3043
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23986089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eb80cc6519fd7656c5c448ecb6492f0f128e6205e7fe37918a6f890540ae75e`

```dockerfile
```

-	Layers:
	-	`sha256:ec078c459c09616751d6dfe1da031fb997ce6e4b3c0186a9010ac193d42acb1b`  
		Last Modified: Wed, 09 Sep 2026 03:31:33 GMT  
		Size: 24.0 MB (23969737 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95c85ef5deff8c5152eea187b98498222982709593fe0a9b470e2d2ac2674072`  
		Last Modified: Wed, 09 Sep 2026 03:31:32 GMT  
		Size: 16.4 KB (16352 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:86eaec9ba3b5f345090bf92c3f1d7b9f7af369ebc3232876908467ce622e1cd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.6 MB (263627507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0faddd2534a5aa74f0c2ef9d3bfd0c2a3887158100b0035a88bf31f902cc3a7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:39:55 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:07 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:13 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:55 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 01:40:55 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 01:40:55 GMT
ENV ROS_DISTRO=humble
# Wed, 09 Sep 2026 01:40:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:55 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 01:40:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 01:40:55 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 02:33:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:12 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 02:33:16 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 02:33:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bddee01edb498613b105a34c4130f2da848572201e36cf5fb3300423adff03a`  
		Last Modified: Wed, 09 Sep 2026 01:41:21 GMT  
		Size: 1.2 MB (1212881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2689441d1be6d178401a5d18063478b90856de2f73d36c5d2ed6ec7939b024de`  
		Last Modified: Wed, 09 Sep 2026 01:41:21 GMT  
		Size: 5.9 MB (5911693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d117015c18640441b139baf153187d59a51b4081523dcde75fca284ece0af69c`  
		Last Modified: Wed, 09 Sep 2026 01:41:20 GMT  
		Size: 97.9 KB (97943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70c2fb207aceae4e92786b3b43645c1ecc27d57d83766730a27cb97958067c12`  
		Last Modified: Wed, 09 Sep 2026 01:41:24 GMT  
		Size: 107.5 MB (107508551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e29307c8452e8a0b956f4ebb158707234771e9c96b70069b8f01930456a9850d`  
		Last Modified: Wed, 09 Sep 2026 01:41:22 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8665be449e86a83d11fd7d4902565359b153087dda740341fff929defe9c42b`  
		Last Modified: Wed, 09 Sep 2026 02:34:14 GMT  
		Size: 98.1 MB (98077760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:379256ae1e7e798b14f3cd888e0c959ec39d0ac002a085022cb40d344e3981d3`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 388.4 KB (388368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e721a166e322d4351efad038eb6256c493c4639d513ff65cee9286a349d4443f`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 2.5 KB (2541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6b521e9556387a93b2b6b423aaf47ce77b62d731235fbc50995b57a4a2f83e3`  
		Last Modified: Wed, 09 Sep 2026 02:34:11 GMT  
		Size: 22.7 MB (22744826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:6c91a7bf49129e647903f25f8e6230d265b3ce142eca1b89574be56a4f67ac8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23999239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcbeb23bfd474150d418c10d58917f13d97b5c67482c6037711f7eae014bb48e`

```dockerfile
```

-	Layers:
	-	`sha256:39841b696bacaee9787953842099270c92814fde3c2a5b2689773992d3ea94d8`  
		Last Modified: Wed, 09 Sep 2026 02:34:11 GMT  
		Size: 24.0 MB (23982754 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42ff4b57c3a0279723aa43f77a38831f8614b194a595453b48f81c0a8a6a3500`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 16.5 KB (16485 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-ros-base-jammy`

```console
$ docker pull ros@sha256:1813d3c85d7f96ff7d3012d865204583255740182db5d0065f8f8cd029a83138
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-base-jammy` - linux; amd64

```console
$ docker pull ros@sha256:ba0391e31ffcfc5a1014578ecb0f4ca438be9d624b6375c85576ae16bc5232e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (272013411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab91f7bbc8af87f468127aaa6c4d7f46fed4fa1f03b3a96b6ca44eed03d0ac0b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:35:43 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:35:55 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:00 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:38 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:36:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:36:38 GMT
ENV ROS_DISTRO=humble
# Wed, 09 Sep 2026 02:36:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:38 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:36:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:36:38 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:30:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:30:40 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:30:44 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:31:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ab7a43d012fe74edb3e506d4f7559e3de034e350953f18f35561ee666dfa934`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 1.2 MB (1212718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:424ca8e32ad63fc1a991f3f728865951a15772959c85bdd0385ab2aaa6ed0851`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 6.0 MB (5951842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68d747d6bc0c88b68985074a914f0e62c428dfc66120b02a31bedf3d96452f6a`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 97.9 KB (97903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e2bcc6e0d7c56988ba91775ffaef3927992fb9526089a2146403a698634ee3d`  
		Last Modified: Wed, 09 Sep 2026 02:37:05 GMT  
		Size: 110.8 MB (110766089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dba3fcfdb7627f6fe1e51129ee4ef5ad692a2947ff8e9eb3516bf0299a7211c`  
		Last Modified: Wed, 09 Sep 2026 02:37:03 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d05cd56127d190f48e8a2230b0013087395b2046b7ddb4ebc9afdd91ab6ecc64`  
		Last Modified: Wed, 09 Sep 2026 03:31:35 GMT  
		Size: 100.5 MB (100494574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b09b376ac040fab215f20445d3b336a29aeb7a6391f8c726838abd9e32738d7`  
		Last Modified: Wed, 09 Sep 2026 03:31:32 GMT  
		Size: 388.4 KB (388368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d101cf321e989844c4ac044b5cee7c8fbf7e9f9377ce137fb41253893545e3a8`  
		Last Modified: Wed, 09 Sep 2026 03:31:32 GMT  
		Size: 2.5 KB (2515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a59ac259e0b4e54135543c9d4f452c169a08e61fd9b21d465dd89fa8d8ccaee6`  
		Last Modified: Wed, 09 Sep 2026 03:31:33 GMT  
		Size: 23.3 MB (23348955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-base-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:595783a3f598d167206c6ef9968157ab36b14c56ea761ac967a617d0175e3043
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23986089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eb80cc6519fd7656c5c448ecb6492f0f128e6205e7fe37918a6f890540ae75e`

```dockerfile
```

-	Layers:
	-	`sha256:ec078c459c09616751d6dfe1da031fb997ce6e4b3c0186a9010ac193d42acb1b`  
		Last Modified: Wed, 09 Sep 2026 03:31:33 GMT  
		Size: 24.0 MB (23969737 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95c85ef5deff8c5152eea187b98498222982709593fe0a9b470e2d2ac2674072`  
		Last Modified: Wed, 09 Sep 2026 03:31:32 GMT  
		Size: 16.4 KB (16352 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-base-jammy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:86eaec9ba3b5f345090bf92c3f1d7b9f7af369ebc3232876908467ce622e1cd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.6 MB (263627507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0faddd2534a5aa74f0c2ef9d3bfd0c2a3887158100b0035a88bf31f902cc3a7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:39:55 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:07 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:13 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:55 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 01:40:55 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 01:40:55 GMT
ENV ROS_DISTRO=humble
# Wed, 09 Sep 2026 01:40:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:55 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 01:40:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 01:40:55 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 02:33:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:12 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 02:33:16 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 02:33:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bddee01edb498613b105a34c4130f2da848572201e36cf5fb3300423adff03a`  
		Last Modified: Wed, 09 Sep 2026 01:41:21 GMT  
		Size: 1.2 MB (1212881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2689441d1be6d178401a5d18063478b90856de2f73d36c5d2ed6ec7939b024de`  
		Last Modified: Wed, 09 Sep 2026 01:41:21 GMT  
		Size: 5.9 MB (5911693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d117015c18640441b139baf153187d59a51b4081523dcde75fca284ece0af69c`  
		Last Modified: Wed, 09 Sep 2026 01:41:20 GMT  
		Size: 97.9 KB (97943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70c2fb207aceae4e92786b3b43645c1ecc27d57d83766730a27cb97958067c12`  
		Last Modified: Wed, 09 Sep 2026 01:41:24 GMT  
		Size: 107.5 MB (107508551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e29307c8452e8a0b956f4ebb158707234771e9c96b70069b8f01930456a9850d`  
		Last Modified: Wed, 09 Sep 2026 01:41:22 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8665be449e86a83d11fd7d4902565359b153087dda740341fff929defe9c42b`  
		Last Modified: Wed, 09 Sep 2026 02:34:14 GMT  
		Size: 98.1 MB (98077760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:379256ae1e7e798b14f3cd888e0c959ec39d0ac002a085022cb40d344e3981d3`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 388.4 KB (388368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e721a166e322d4351efad038eb6256c493c4639d513ff65cee9286a349d4443f`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 2.5 KB (2541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6b521e9556387a93b2b6b423aaf47ce77b62d731235fbc50995b57a4a2f83e3`  
		Last Modified: Wed, 09 Sep 2026 02:34:11 GMT  
		Size: 22.7 MB (22744826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-base-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:6c91a7bf49129e647903f25f8e6230d265b3ce142eca1b89574be56a4f67ac8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23999239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcbeb23bfd474150d418c10d58917f13d97b5c67482c6037711f7eae014bb48e`

```dockerfile
```

-	Layers:
	-	`sha256:39841b696bacaee9787953842099270c92814fde3c2a5b2689773992d3ea94d8`  
		Last Modified: Wed, 09 Sep 2026 02:34:11 GMT  
		Size: 24.0 MB (23982754 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42ff4b57c3a0279723aa43f77a38831f8614b194a595453b48f81c0a8a6a3500`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 16.5 KB (16485 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-ros-core`

```console
$ docker pull ros@sha256:d2bbb43b75b4b73b0552fcedf0aa195d8e9bdd21fe50c02e5c0a791951a55f8e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:00e8ee27be2e594747b6ba8c2791a2724e3a38a7fe66366bbd05e4e7da7ce55d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.8 MB (147778999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c4bb0917c301abad49df5bf1973932e79cbae730e593d630d94faced39cf4b1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:35:43 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:35:55 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:00 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:38 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:36:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:36:38 GMT
ENV ROS_DISTRO=humble
# Wed, 09 Sep 2026 02:36:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:38 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:36:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:36:38 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ab7a43d012fe74edb3e506d4f7559e3de034e350953f18f35561ee666dfa934`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 1.2 MB (1212718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:424ca8e32ad63fc1a991f3f728865951a15772959c85bdd0385ab2aaa6ed0851`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 6.0 MB (5951842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68d747d6bc0c88b68985074a914f0e62c428dfc66120b02a31bedf3d96452f6a`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 97.9 KB (97903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e2bcc6e0d7c56988ba91775ffaef3927992fb9526089a2146403a698634ee3d`  
		Last Modified: Wed, 09 Sep 2026 02:37:05 GMT  
		Size: 110.8 MB (110766089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dba3fcfdb7627f6fe1e51129ee4ef5ad692a2947ff8e9eb3516bf0299a7211c`  
		Last Modified: Wed, 09 Sep 2026 02:37:03 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:b62401e85ea3eac33f1696d7b4e7c70c26bb167aaa43e61921e9f5596ea705d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17943628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fde5fd4f4989d3ce519244d802f0b842491b4b1f4f3cbdb98910c31716c3d4d6`

```dockerfile
```

-	Layers:
	-	`sha256:386b2204438e0e6bdbdbe648d366559c5b25d1e360f58bdf0429bca35957589b`  
		Last Modified: Wed, 09 Sep 2026 02:37:03 GMT  
		Size: 17.9 MB (17929002 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b4c951534735bfda98da263c11edf212931c878ca692a450a342aa0189232d3`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 14.6 KB (14626 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:2817b1c693fa4cd4d4422c2df755e328c2f1630e99bd5414d411d71a58f93b35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.4 MB (142414012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6259339ddd8b7f854258d4e1fb37c4989d6f25a14f2d6b9223acd1998d385435`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:39:55 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:07 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:13 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:55 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 01:40:55 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 01:40:55 GMT
ENV ROS_DISTRO=humble
# Wed, 09 Sep 2026 01:40:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:55 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 01:40:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 01:40:55 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bddee01edb498613b105a34c4130f2da848572201e36cf5fb3300423adff03a`  
		Last Modified: Wed, 09 Sep 2026 01:41:21 GMT  
		Size: 1.2 MB (1212881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2689441d1be6d178401a5d18063478b90856de2f73d36c5d2ed6ec7939b024de`  
		Last Modified: Wed, 09 Sep 2026 01:41:21 GMT  
		Size: 5.9 MB (5911693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d117015c18640441b139baf153187d59a51b4081523dcde75fca284ece0af69c`  
		Last Modified: Wed, 09 Sep 2026 01:41:20 GMT  
		Size: 97.9 KB (97943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70c2fb207aceae4e92786b3b43645c1ecc27d57d83766730a27cb97958067c12`  
		Last Modified: Wed, 09 Sep 2026 01:41:24 GMT  
		Size: 107.5 MB (107508551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e29307c8452e8a0b956f4ebb158707234771e9c96b70069b8f01930456a9850d`  
		Last Modified: Wed, 09 Sep 2026 01:41:22 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:4f9da9e88e54fc52b8c0f8dc1e3f8fa3ae8cf5c453cd0e169e11246509945685
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17930098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7115df052db516440560d702f4cc517b4d2a493273a9d6c6f0ac93c13a00775`

```dockerfile
```

-	Layers:
	-	`sha256:0e440a9db67d7ea1dbe9ee864072c4ee2f4cc0307bdeaa1dfd5ed35bf830669b`  
		Last Modified: Wed, 09 Sep 2026 01:41:21 GMT  
		Size: 17.9 MB (17915347 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:688ad5a529c3d8c9ed7b76aae1956e85c22df92b5f725acffc95052ba1d0ed2a`  
		Last Modified: Wed, 09 Sep 2026 01:41:20 GMT  
		Size: 14.8 KB (14751 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-ros-core-jammy`

```console
$ docker pull ros@sha256:d2bbb43b75b4b73b0552fcedf0aa195d8e9bdd21fe50c02e5c0a791951a55f8e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-core-jammy` - linux; amd64

```console
$ docker pull ros@sha256:00e8ee27be2e594747b6ba8c2791a2724e3a38a7fe66366bbd05e4e7da7ce55d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.8 MB (147778999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c4bb0917c301abad49df5bf1973932e79cbae730e593d630d94faced39cf4b1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:35:43 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:35:55 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:00 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:38 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:36:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:36:38 GMT
ENV ROS_DISTRO=humble
# Wed, 09 Sep 2026 02:36:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:38 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:36:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:36:38 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ab7a43d012fe74edb3e506d4f7559e3de034e350953f18f35561ee666dfa934`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 1.2 MB (1212718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:424ca8e32ad63fc1a991f3f728865951a15772959c85bdd0385ab2aaa6ed0851`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 6.0 MB (5951842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68d747d6bc0c88b68985074a914f0e62c428dfc66120b02a31bedf3d96452f6a`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 97.9 KB (97903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e2bcc6e0d7c56988ba91775ffaef3927992fb9526089a2146403a698634ee3d`  
		Last Modified: Wed, 09 Sep 2026 02:37:05 GMT  
		Size: 110.8 MB (110766089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dba3fcfdb7627f6fe1e51129ee4ef5ad692a2947ff8e9eb3516bf0299a7211c`  
		Last Modified: Wed, 09 Sep 2026 02:37:03 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:b62401e85ea3eac33f1696d7b4e7c70c26bb167aaa43e61921e9f5596ea705d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17943628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fde5fd4f4989d3ce519244d802f0b842491b4b1f4f3cbdb98910c31716c3d4d6`

```dockerfile
```

-	Layers:
	-	`sha256:386b2204438e0e6bdbdbe648d366559c5b25d1e360f58bdf0429bca35957589b`  
		Last Modified: Wed, 09 Sep 2026 02:37:03 GMT  
		Size: 17.9 MB (17929002 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b4c951534735bfda98da263c11edf212931c878ca692a450a342aa0189232d3`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 14.6 KB (14626 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-core-jammy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:2817b1c693fa4cd4d4422c2df755e328c2f1630e99bd5414d411d71a58f93b35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.4 MB (142414012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6259339ddd8b7f854258d4e1fb37c4989d6f25a14f2d6b9223acd1998d385435`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:39:55 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:07 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:13 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:55 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 01:40:55 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 01:40:55 GMT
ENV ROS_DISTRO=humble
# Wed, 09 Sep 2026 01:40:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:55 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 01:40:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 01:40:55 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bddee01edb498613b105a34c4130f2da848572201e36cf5fb3300423adff03a`  
		Last Modified: Wed, 09 Sep 2026 01:41:21 GMT  
		Size: 1.2 MB (1212881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2689441d1be6d178401a5d18063478b90856de2f73d36c5d2ed6ec7939b024de`  
		Last Modified: Wed, 09 Sep 2026 01:41:21 GMT  
		Size: 5.9 MB (5911693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d117015c18640441b139baf153187d59a51b4081523dcde75fca284ece0af69c`  
		Last Modified: Wed, 09 Sep 2026 01:41:20 GMT  
		Size: 97.9 KB (97943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70c2fb207aceae4e92786b3b43645c1ecc27d57d83766730a27cb97958067c12`  
		Last Modified: Wed, 09 Sep 2026 01:41:24 GMT  
		Size: 107.5 MB (107508551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e29307c8452e8a0b956f4ebb158707234771e9c96b70069b8f01930456a9850d`  
		Last Modified: Wed, 09 Sep 2026 01:41:22 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:4f9da9e88e54fc52b8c0f8dc1e3f8fa3ae8cf5c453cd0e169e11246509945685
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17930098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7115df052db516440560d702f4cc517b4d2a493273a9d6c6f0ac93c13a00775`

```dockerfile
```

-	Layers:
	-	`sha256:0e440a9db67d7ea1dbe9ee864072c4ee2f4cc0307bdeaa1dfd5ed35bf830669b`  
		Last Modified: Wed, 09 Sep 2026 01:41:21 GMT  
		Size: 17.9 MB (17915347 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:688ad5a529c3d8c9ed7b76aae1956e85c22df92b5f725acffc95052ba1d0ed2a`  
		Last Modified: Wed, 09 Sep 2026 01:41:20 GMT  
		Size: 14.8 KB (14751 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy`

```console
$ docker pull ros@sha256:386d06ec6d4188f731bae5678e07b4cb64a4e4d4152090c0bd1f881dcf7706f5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy` - linux; amd64

```console
$ docker pull ros@sha256:d4bc3d61176d0b1e67ed604d8fbcb841c55bbe8db49a54c1c1e1eeb6b7ff7e6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.5 MB (296461040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8f596a863ffc2ff8cde0b0f1ecd81370a81f111a9df9a76d24c07ab0f07ab45`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:36:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:35 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:42 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:37:23 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:37:23 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:37:23 GMT
ENV ROS_DISTRO=jazzy
# Wed, 09 Sep 2026 02:37:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:37:23 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:37:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:37:23 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:30:41 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:30:43 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:30:45 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:31:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96956bf73b034e26d662de73f9ebf723c63eec7dc414ac739c942dc73ae68f9a`  
		Last Modified: Wed, 09 Sep 2026 02:37:50 GMT  
		Size: 683.4 KB (683384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe29682277ae479e1f68cbed0bf002ee59f6c419ce5fa8c070b664e898e4f3c7`  
		Last Modified: Wed, 09 Sep 2026 02:37:51 GMT  
		Size: 6.7 MB (6710881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb005c64ea48e98ae88520fc24e2e1ca764d57ae81bbe8f50d97c6c7ae8721f3`  
		Last Modified: Wed, 09 Sep 2026 02:37:50 GMT  
		Size: 94.7 KB (94738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3092fae2595765336cb3858dd123e7caf1261ce9b765075f5a4d89fef9c3a919`  
		Last Modified: Wed, 09 Sep 2026 02:37:54 GMT  
		Size: 120.5 MB (120495834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a398f2aa538587dc2c40f50cff543fc80db9d575806d75d18a7362c287711e5`  
		Last Modified: Wed, 09 Sep 2026 02:37:52 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62beaeaff58dbc39a59c0d0ed378cccc0c6ffc38efe30dd71e954986325836fb`  
		Last Modified: Wed, 09 Sep 2026 03:31:44 GMT  
		Size: 110.2 MB (110216432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c6689f23a59cb3a87d621460355ff2d61c104e2f031b61825d835e3f0cbdf5`  
		Last Modified: Wed, 09 Sep 2026 03:31:41 GMT  
		Size: 412.4 KB (412436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:953ace926a23c6775be0d2887c35e4d63c699812817af8722a366ad6079c65ce`  
		Last Modified: Wed, 09 Sep 2026 03:31:41 GMT  
		Size: 2.5 KB (2501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01f17b12da39482a0f5bdc9b2a7cd6b760cbdb74442c28dfacaa90166e2778e8`  
		Last Modified: Wed, 09 Sep 2026 03:31:42 GMT  
		Size: 28.1 MB (28081386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy` - unknown; unknown

```console
$ docker pull ros@sha256:031ad78cfcc8bfa602875e0f0a6a1c630101de8edfbc98226c6f4c9820991f81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24948853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:743d93ffbe839ac866445ed77966225474c760778a4f453df93a13c77765ee89`

```dockerfile
```

-	Layers:
	-	`sha256:2d6f03658e54e6478673526c392c1f76ba3cce006f7e8010b199b21d58a87faf`  
		Last Modified: Wed, 09 Sep 2026 03:31:42 GMT  
		Size: 24.9 MB (24932524 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f8ba58245ba49349c2d2cd6809790019321e9940181f35cc42cfcce9cf7a7e2`  
		Last Modified: Wed, 09 Sep 2026 03:31:40 GMT  
		Size: 16.3 KB (16329 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:21d41e7d6d521b3386c1db6ea963d85a49be86ce079600226fe5f0122992f70e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.0 MB (285023449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8118e51a06ff85e667ac176134b975bd1f639c9589ca5c55aa05da512d4bebf1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:32:42 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:32:55 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:00 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:42 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:33:42 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:33:42 GMT
ENV ROS_DISTRO=jazzy
# Wed, 09 Sep 2026 02:33:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:42 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:33:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:33:42 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:41:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:41:58 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:42:02 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:42:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69c8e128b04851215e1e4f2d7e3e409a09cbd108e00a7bc78c1a992a27f34015`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 683.5 KB (683487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:612dbb2dfffa006420029e8b61cbe69035d21c62b4f2f9dafc525632ce75b868`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 6.7 MB (6726402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:791b9e41800f69a2d648215c38b431b06f984b26514e98f56603fab4fc8f7102`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 94.8 KB (94795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75940d8b498b0f1e3e62ee49599619ee66ed0c9d9b4f9cd4af942fb3cd873adb`  
		Last Modified: Wed, 09 Sep 2026 02:34:13 GMT  
		Size: 115.3 MB (115320459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fb35690e9e72fcc85509bb28e9aae6ea055ae8eb4b675b119b495b414884e71`  
		Last Modified: Wed, 09 Sep 2026 02:34:11 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc2c23fc59c108280a5f2d2fb975c3c3a85cd9f0be90da322bb6d2d82fb5d8a6`  
		Last Modified: Wed, 09 Sep 2026 03:43:02 GMT  
		Size: 105.6 MB (105649195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a893c64436ea913dc424db5c4b652ac12f3fc5eaeab517a486711e19840961d7`  
		Last Modified: Wed, 09 Sep 2026 03:42:58 GMT  
		Size: 412.4 KB (412443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a87eca6868b61d2a6ecc09c0d5782f069d16e92fafab6fb0f68b1930f5d412e`  
		Last Modified: Wed, 09 Sep 2026 03:42:58 GMT  
		Size: 2.5 KB (2515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f3e2bdef84243853d73f55e93404ce7d5641cf9055ec75744a2904889ddeaf2`  
		Last Modified: Wed, 09 Sep 2026 03:43:00 GMT  
		Size: 27.2 MB (27193942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy` - unknown; unknown

```console
$ docker pull ros@sha256:ea9cf7fa962e66e37609dfd525692de68ef121cf42f2b751189ad5aba6655e4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 MB (24971245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ee0ddcc8f4bd6ab4ed7f81e45785ce68e210e6a098967e3e1f26685995ebe9a`

```dockerfile
```

-	Layers:
	-	`sha256:421fdd87b92a40982ff24ddf52362404d57f0f95b65076c10eb87de037e7a78c`  
		Last Modified: Wed, 09 Sep 2026 03:42:59 GMT  
		Size: 25.0 MB (24954779 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:290298f7c01fb8f3b98f08c1d5f8828ddbcc3bd13a91ca5ef7978b6c1a079191`  
		Last Modified: Wed, 09 Sep 2026 03:42:58 GMT  
		Size: 16.5 KB (16466 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-perception`

```console
$ docker pull ros@sha256:69733de7998aeb0e4b4f2317674b7d7da3bfb9f9aa4d132ec4d0e2ba6c635f40
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-perception` - linux; amd64

```console
$ docker pull ros@sha256:482b1d8b62606e8c8b71fa888ce6fbdf3cad6548e62774cf0333b8ef986534cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1081448179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6fa18bfc41e4d5fcc34ec239bf350cec6176ff858cc143f0d67a7e23f4a252d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:36:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:35 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:42 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:37:23 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:37:23 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:37:23 GMT
ENV ROS_DISTRO=jazzy
# Wed, 09 Sep 2026 02:37:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:37:23 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:37:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:37:23 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:30:41 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:30:43 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:30:45 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:31:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:20:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96956bf73b034e26d662de73f9ebf723c63eec7dc414ac739c942dc73ae68f9a`  
		Last Modified: Wed, 09 Sep 2026 02:37:50 GMT  
		Size: 683.4 KB (683384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe29682277ae479e1f68cbed0bf002ee59f6c419ce5fa8c070b664e898e4f3c7`  
		Last Modified: Wed, 09 Sep 2026 02:37:51 GMT  
		Size: 6.7 MB (6710881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb005c64ea48e98ae88520fc24e2e1ca764d57ae81bbe8f50d97c6c7ae8721f3`  
		Last Modified: Wed, 09 Sep 2026 02:37:50 GMT  
		Size: 94.7 KB (94738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3092fae2595765336cb3858dd123e7caf1261ce9b765075f5a4d89fef9c3a919`  
		Last Modified: Wed, 09 Sep 2026 02:37:54 GMT  
		Size: 120.5 MB (120495834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a398f2aa538587dc2c40f50cff543fc80db9d575806d75d18a7362c287711e5`  
		Last Modified: Wed, 09 Sep 2026 02:37:52 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62beaeaff58dbc39a59c0d0ed378cccc0c6ffc38efe30dd71e954986325836fb`  
		Last Modified: Wed, 09 Sep 2026 03:31:44 GMT  
		Size: 110.2 MB (110216432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c6689f23a59cb3a87d621460355ff2d61c104e2f031b61825d835e3f0cbdf5`  
		Last Modified: Wed, 09 Sep 2026 03:31:41 GMT  
		Size: 412.4 KB (412436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:953ace926a23c6775be0d2887c35e4d63c699812817af8722a366ad6079c65ce`  
		Last Modified: Wed, 09 Sep 2026 03:31:41 GMT  
		Size: 2.5 KB (2501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01f17b12da39482a0f5bdc9b2a7cd6b760cbdb74442c28dfacaa90166e2778e8`  
		Last Modified: Wed, 09 Sep 2026 03:31:42 GMT  
		Size: 28.1 MB (28081386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a63177165d1ec5239ecab7d50b9f41b1cf2516d5ae6e7f3d490dcb0533325761`  
		Last Modified: Wed, 09 Sep 2026 04:23:18 GMT  
		Size: 785.0 MB (784987139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception` - unknown; unknown

```console
$ docker pull ros@sha256:6180c033f9e1a9b053bd43f748cecf466497dc0ac85647cd1bfeaeeb672abe9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61121837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d48bc29580264e6965471a13a9bd0931dddb318471e904f939ca133efff7686a`

```dockerfile
```

-	Layers:
	-	`sha256:9f4898af636d783ffa2c113436f7e7560ebf649e6ca2a2ea41e6eb04617573b1`  
		Last Modified: Wed, 09 Sep 2026 04:23:05 GMT  
		Size: 61.1 MB (61112498 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d0fcee8c2c00b16edb105196ba3eeda585261f650cd28583af182a93c85fbffe`  
		Last Modified: Wed, 09 Sep 2026 04:23:03 GMT  
		Size: 9.3 KB (9339 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:cb8aba3ef4c4ba0e30d596b808d13d75c99ff8a6bd92b14f2e955cc9ff08da5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **984.1 MB (984085278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3344c2320609a9f8f40d5179fe5b23e3cd361b8fe3604f7c413b5bb820e42889`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:32:42 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:32:55 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:00 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:42 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:33:42 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:33:42 GMT
ENV ROS_DISTRO=jazzy
# Wed, 09 Sep 2026 02:33:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:42 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:33:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:33:42 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:41:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:41:58 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:42:02 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:42:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:18:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69c8e128b04851215e1e4f2d7e3e409a09cbd108e00a7bc78c1a992a27f34015`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 683.5 KB (683487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:612dbb2dfffa006420029e8b61cbe69035d21c62b4f2f9dafc525632ce75b868`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 6.7 MB (6726402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:791b9e41800f69a2d648215c38b431b06f984b26514e98f56603fab4fc8f7102`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 94.8 KB (94795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75940d8b498b0f1e3e62ee49599619ee66ed0c9d9b4f9cd4af942fb3cd873adb`  
		Last Modified: Wed, 09 Sep 2026 02:34:13 GMT  
		Size: 115.3 MB (115320459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fb35690e9e72fcc85509bb28e9aae6ea055ae8eb4b675b119b495b414884e71`  
		Last Modified: Wed, 09 Sep 2026 02:34:11 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc2c23fc59c108280a5f2d2fb975c3c3a85cd9f0be90da322bb6d2d82fb5d8a6`  
		Last Modified: Wed, 09 Sep 2026 03:43:02 GMT  
		Size: 105.6 MB (105649195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a893c64436ea913dc424db5c4b652ac12f3fc5eaeab517a486711e19840961d7`  
		Last Modified: Wed, 09 Sep 2026 03:42:58 GMT  
		Size: 412.4 KB (412443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a87eca6868b61d2a6ecc09c0d5782f069d16e92fafab6fb0f68b1930f5d412e`  
		Last Modified: Wed, 09 Sep 2026 03:42:58 GMT  
		Size: 2.5 KB (2515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f3e2bdef84243853d73f55e93404ce7d5641cf9055ec75744a2904889ddeaf2`  
		Last Modified: Wed, 09 Sep 2026 03:43:00 GMT  
		Size: 27.2 MB (27193942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c7b8e3875b8c2f6c0071d898fcee9d1c7edf281645401c9fa4a4e79f5c5ec0`  
		Last Modified: Wed, 09 Sep 2026 04:21:50 GMT  
		Size: 699.1 MB (699061829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception` - unknown; unknown

```console
$ docker pull ros@sha256:5e7c31a05641698651ac2212ebaf75757f32374beb48d8ec6a64be33af0f0e5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61052436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f4b1805dfcda2e1d1d9f60598d00e57b0b76b912835eb08549c15e55b59ea53`

```dockerfile
```

-	Layers:
	-	`sha256:30a6fd36836f70f6794f649bc82a12f635b5ead9d8bbad3b82589055ffc8fc08`  
		Last Modified: Wed, 09 Sep 2026 04:21:40 GMT  
		Size: 61.0 MB (61043017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0776eefe33f967267e49a8da0b735c1be6f6031fe719caa0321d26ab6d95f0b5`  
		Last Modified: Wed, 09 Sep 2026 04:21:38 GMT  
		Size: 9.4 KB (9419 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-perception-noble`

```console
$ docker pull ros@sha256:69733de7998aeb0e4b4f2317674b7d7da3bfb9f9aa4d132ec4d0e2ba6c635f40
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-perception-noble` - linux; amd64

```console
$ docker pull ros@sha256:482b1d8b62606e8c8b71fa888ce6fbdf3cad6548e62774cf0333b8ef986534cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1081448179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6fa18bfc41e4d5fcc34ec239bf350cec6176ff858cc143f0d67a7e23f4a252d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:36:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:35 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:42 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:37:23 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:37:23 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:37:23 GMT
ENV ROS_DISTRO=jazzy
# Wed, 09 Sep 2026 02:37:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:37:23 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:37:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:37:23 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:30:41 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:30:43 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:30:45 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:31:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:20:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96956bf73b034e26d662de73f9ebf723c63eec7dc414ac739c942dc73ae68f9a`  
		Last Modified: Wed, 09 Sep 2026 02:37:50 GMT  
		Size: 683.4 KB (683384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe29682277ae479e1f68cbed0bf002ee59f6c419ce5fa8c070b664e898e4f3c7`  
		Last Modified: Wed, 09 Sep 2026 02:37:51 GMT  
		Size: 6.7 MB (6710881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb005c64ea48e98ae88520fc24e2e1ca764d57ae81bbe8f50d97c6c7ae8721f3`  
		Last Modified: Wed, 09 Sep 2026 02:37:50 GMT  
		Size: 94.7 KB (94738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3092fae2595765336cb3858dd123e7caf1261ce9b765075f5a4d89fef9c3a919`  
		Last Modified: Wed, 09 Sep 2026 02:37:54 GMT  
		Size: 120.5 MB (120495834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a398f2aa538587dc2c40f50cff543fc80db9d575806d75d18a7362c287711e5`  
		Last Modified: Wed, 09 Sep 2026 02:37:52 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62beaeaff58dbc39a59c0d0ed378cccc0c6ffc38efe30dd71e954986325836fb`  
		Last Modified: Wed, 09 Sep 2026 03:31:44 GMT  
		Size: 110.2 MB (110216432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c6689f23a59cb3a87d621460355ff2d61c104e2f031b61825d835e3f0cbdf5`  
		Last Modified: Wed, 09 Sep 2026 03:31:41 GMT  
		Size: 412.4 KB (412436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:953ace926a23c6775be0d2887c35e4d63c699812817af8722a366ad6079c65ce`  
		Last Modified: Wed, 09 Sep 2026 03:31:41 GMT  
		Size: 2.5 KB (2501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01f17b12da39482a0f5bdc9b2a7cd6b760cbdb74442c28dfacaa90166e2778e8`  
		Last Modified: Wed, 09 Sep 2026 03:31:42 GMT  
		Size: 28.1 MB (28081386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a63177165d1ec5239ecab7d50b9f41b1cf2516d5ae6e7f3d490dcb0533325761`  
		Last Modified: Wed, 09 Sep 2026 04:23:18 GMT  
		Size: 785.0 MB (784987139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:6180c033f9e1a9b053bd43f748cecf466497dc0ac85647cd1bfeaeeb672abe9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61121837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d48bc29580264e6965471a13a9bd0931dddb318471e904f939ca133efff7686a`

```dockerfile
```

-	Layers:
	-	`sha256:9f4898af636d783ffa2c113436f7e7560ebf649e6ca2a2ea41e6eb04617573b1`  
		Last Modified: Wed, 09 Sep 2026 04:23:05 GMT  
		Size: 61.1 MB (61112498 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d0fcee8c2c00b16edb105196ba3eeda585261f650cd28583af182a93c85fbffe`  
		Last Modified: Wed, 09 Sep 2026 04:23:03 GMT  
		Size: 9.3 KB (9339 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-perception-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:cb8aba3ef4c4ba0e30d596b808d13d75c99ff8a6bd92b14f2e955cc9ff08da5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **984.1 MB (984085278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3344c2320609a9f8f40d5179fe5b23e3cd361b8fe3604f7c413b5bb820e42889`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:32:42 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:32:55 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:00 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:42 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:33:42 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:33:42 GMT
ENV ROS_DISTRO=jazzy
# Wed, 09 Sep 2026 02:33:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:42 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:33:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:33:42 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:41:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:41:58 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:42:02 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:42:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:18:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69c8e128b04851215e1e4f2d7e3e409a09cbd108e00a7bc78c1a992a27f34015`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 683.5 KB (683487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:612dbb2dfffa006420029e8b61cbe69035d21c62b4f2f9dafc525632ce75b868`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 6.7 MB (6726402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:791b9e41800f69a2d648215c38b431b06f984b26514e98f56603fab4fc8f7102`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 94.8 KB (94795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75940d8b498b0f1e3e62ee49599619ee66ed0c9d9b4f9cd4af942fb3cd873adb`  
		Last Modified: Wed, 09 Sep 2026 02:34:13 GMT  
		Size: 115.3 MB (115320459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fb35690e9e72fcc85509bb28e9aae6ea055ae8eb4b675b119b495b414884e71`  
		Last Modified: Wed, 09 Sep 2026 02:34:11 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc2c23fc59c108280a5f2d2fb975c3c3a85cd9f0be90da322bb6d2d82fb5d8a6`  
		Last Modified: Wed, 09 Sep 2026 03:43:02 GMT  
		Size: 105.6 MB (105649195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a893c64436ea913dc424db5c4b652ac12f3fc5eaeab517a486711e19840961d7`  
		Last Modified: Wed, 09 Sep 2026 03:42:58 GMT  
		Size: 412.4 KB (412443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a87eca6868b61d2a6ecc09c0d5782f069d16e92fafab6fb0f68b1930f5d412e`  
		Last Modified: Wed, 09 Sep 2026 03:42:58 GMT  
		Size: 2.5 KB (2515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f3e2bdef84243853d73f55e93404ce7d5641cf9055ec75744a2904889ddeaf2`  
		Last Modified: Wed, 09 Sep 2026 03:43:00 GMT  
		Size: 27.2 MB (27193942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c7b8e3875b8c2f6c0071d898fcee9d1c7edf281645401c9fa4a4e79f5c5ec0`  
		Last Modified: Wed, 09 Sep 2026 04:21:50 GMT  
		Size: 699.1 MB (699061829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:5e7c31a05641698651ac2212ebaf75757f32374beb48d8ec6a64be33af0f0e5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61052436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f4b1805dfcda2e1d1d9f60598d00e57b0b76b912835eb08549c15e55b59ea53`

```dockerfile
```

-	Layers:
	-	`sha256:30a6fd36836f70f6794f649bc82a12f635b5ead9d8bbad3b82589055ffc8fc08`  
		Last Modified: Wed, 09 Sep 2026 04:21:40 GMT  
		Size: 61.0 MB (61043017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0776eefe33f967267e49a8da0b735c1be6f6031fe719caa0321d26ab6d95f0b5`  
		Last Modified: Wed, 09 Sep 2026 04:21:38 GMT  
		Size: 9.4 KB (9419 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-ros-base`

```console
$ docker pull ros@sha256:386d06ec6d4188f731bae5678e07b4cb64a4e4d4152090c0bd1f881dcf7706f5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:d4bc3d61176d0b1e67ed604d8fbcb841c55bbe8db49a54c1c1e1eeb6b7ff7e6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.5 MB (296461040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8f596a863ffc2ff8cde0b0f1ecd81370a81f111a9df9a76d24c07ab0f07ab45`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:36:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:35 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:42 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:37:23 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:37:23 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:37:23 GMT
ENV ROS_DISTRO=jazzy
# Wed, 09 Sep 2026 02:37:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:37:23 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:37:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:37:23 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:30:41 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:30:43 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:30:45 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:31:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96956bf73b034e26d662de73f9ebf723c63eec7dc414ac739c942dc73ae68f9a`  
		Last Modified: Wed, 09 Sep 2026 02:37:50 GMT  
		Size: 683.4 KB (683384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe29682277ae479e1f68cbed0bf002ee59f6c419ce5fa8c070b664e898e4f3c7`  
		Last Modified: Wed, 09 Sep 2026 02:37:51 GMT  
		Size: 6.7 MB (6710881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb005c64ea48e98ae88520fc24e2e1ca764d57ae81bbe8f50d97c6c7ae8721f3`  
		Last Modified: Wed, 09 Sep 2026 02:37:50 GMT  
		Size: 94.7 KB (94738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3092fae2595765336cb3858dd123e7caf1261ce9b765075f5a4d89fef9c3a919`  
		Last Modified: Wed, 09 Sep 2026 02:37:54 GMT  
		Size: 120.5 MB (120495834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a398f2aa538587dc2c40f50cff543fc80db9d575806d75d18a7362c287711e5`  
		Last Modified: Wed, 09 Sep 2026 02:37:52 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62beaeaff58dbc39a59c0d0ed378cccc0c6ffc38efe30dd71e954986325836fb`  
		Last Modified: Wed, 09 Sep 2026 03:31:44 GMT  
		Size: 110.2 MB (110216432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c6689f23a59cb3a87d621460355ff2d61c104e2f031b61825d835e3f0cbdf5`  
		Last Modified: Wed, 09 Sep 2026 03:31:41 GMT  
		Size: 412.4 KB (412436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:953ace926a23c6775be0d2887c35e4d63c699812817af8722a366ad6079c65ce`  
		Last Modified: Wed, 09 Sep 2026 03:31:41 GMT  
		Size: 2.5 KB (2501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01f17b12da39482a0f5bdc9b2a7cd6b760cbdb74442c28dfacaa90166e2778e8`  
		Last Modified: Wed, 09 Sep 2026 03:31:42 GMT  
		Size: 28.1 MB (28081386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:031ad78cfcc8bfa602875e0f0a6a1c630101de8edfbc98226c6f4c9820991f81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24948853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:743d93ffbe839ac866445ed77966225474c760778a4f453df93a13c77765ee89`

```dockerfile
```

-	Layers:
	-	`sha256:2d6f03658e54e6478673526c392c1f76ba3cce006f7e8010b199b21d58a87faf`  
		Last Modified: Wed, 09 Sep 2026 03:31:42 GMT  
		Size: 24.9 MB (24932524 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f8ba58245ba49349c2d2cd6809790019321e9940181f35cc42cfcce9cf7a7e2`  
		Last Modified: Wed, 09 Sep 2026 03:31:40 GMT  
		Size: 16.3 KB (16329 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:21d41e7d6d521b3386c1db6ea963d85a49be86ce079600226fe5f0122992f70e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.0 MB (285023449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8118e51a06ff85e667ac176134b975bd1f639c9589ca5c55aa05da512d4bebf1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:32:42 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:32:55 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:00 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:42 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:33:42 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:33:42 GMT
ENV ROS_DISTRO=jazzy
# Wed, 09 Sep 2026 02:33:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:42 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:33:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:33:42 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:41:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:41:58 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:42:02 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:42:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69c8e128b04851215e1e4f2d7e3e409a09cbd108e00a7bc78c1a992a27f34015`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 683.5 KB (683487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:612dbb2dfffa006420029e8b61cbe69035d21c62b4f2f9dafc525632ce75b868`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 6.7 MB (6726402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:791b9e41800f69a2d648215c38b431b06f984b26514e98f56603fab4fc8f7102`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 94.8 KB (94795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75940d8b498b0f1e3e62ee49599619ee66ed0c9d9b4f9cd4af942fb3cd873adb`  
		Last Modified: Wed, 09 Sep 2026 02:34:13 GMT  
		Size: 115.3 MB (115320459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fb35690e9e72fcc85509bb28e9aae6ea055ae8eb4b675b119b495b414884e71`  
		Last Modified: Wed, 09 Sep 2026 02:34:11 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc2c23fc59c108280a5f2d2fb975c3c3a85cd9f0be90da322bb6d2d82fb5d8a6`  
		Last Modified: Wed, 09 Sep 2026 03:43:02 GMT  
		Size: 105.6 MB (105649195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a893c64436ea913dc424db5c4b652ac12f3fc5eaeab517a486711e19840961d7`  
		Last Modified: Wed, 09 Sep 2026 03:42:58 GMT  
		Size: 412.4 KB (412443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a87eca6868b61d2a6ecc09c0d5782f069d16e92fafab6fb0f68b1930f5d412e`  
		Last Modified: Wed, 09 Sep 2026 03:42:58 GMT  
		Size: 2.5 KB (2515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f3e2bdef84243853d73f55e93404ce7d5641cf9055ec75744a2904889ddeaf2`  
		Last Modified: Wed, 09 Sep 2026 03:43:00 GMT  
		Size: 27.2 MB (27193942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:ea9cf7fa962e66e37609dfd525692de68ef121cf42f2b751189ad5aba6655e4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 MB (24971245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ee0ddcc8f4bd6ab4ed7f81e45785ce68e210e6a098967e3e1f26685995ebe9a`

```dockerfile
```

-	Layers:
	-	`sha256:421fdd87b92a40982ff24ddf52362404d57f0f95b65076c10eb87de037e7a78c`  
		Last Modified: Wed, 09 Sep 2026 03:42:59 GMT  
		Size: 25.0 MB (24954779 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:290298f7c01fb8f3b98f08c1d5f8828ddbcc3bd13a91ca5ef7978b6c1a079191`  
		Last Modified: Wed, 09 Sep 2026 03:42:58 GMT  
		Size: 16.5 KB (16466 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-ros-base-noble`

```console
$ docker pull ros@sha256:386d06ec6d4188f731bae5678e07b4cb64a4e4d4152090c0bd1f881dcf7706f5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-base-noble` - linux; amd64

```console
$ docker pull ros@sha256:d4bc3d61176d0b1e67ed604d8fbcb841c55bbe8db49a54c1c1e1eeb6b7ff7e6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.5 MB (296461040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8f596a863ffc2ff8cde0b0f1ecd81370a81f111a9df9a76d24c07ab0f07ab45`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:36:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:35 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:42 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:37:23 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:37:23 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:37:23 GMT
ENV ROS_DISTRO=jazzy
# Wed, 09 Sep 2026 02:37:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:37:23 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:37:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:37:23 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:30:41 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:30:43 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:30:45 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:31:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96956bf73b034e26d662de73f9ebf723c63eec7dc414ac739c942dc73ae68f9a`  
		Last Modified: Wed, 09 Sep 2026 02:37:50 GMT  
		Size: 683.4 KB (683384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe29682277ae479e1f68cbed0bf002ee59f6c419ce5fa8c070b664e898e4f3c7`  
		Last Modified: Wed, 09 Sep 2026 02:37:51 GMT  
		Size: 6.7 MB (6710881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb005c64ea48e98ae88520fc24e2e1ca764d57ae81bbe8f50d97c6c7ae8721f3`  
		Last Modified: Wed, 09 Sep 2026 02:37:50 GMT  
		Size: 94.7 KB (94738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3092fae2595765336cb3858dd123e7caf1261ce9b765075f5a4d89fef9c3a919`  
		Last Modified: Wed, 09 Sep 2026 02:37:54 GMT  
		Size: 120.5 MB (120495834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a398f2aa538587dc2c40f50cff543fc80db9d575806d75d18a7362c287711e5`  
		Last Modified: Wed, 09 Sep 2026 02:37:52 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62beaeaff58dbc39a59c0d0ed378cccc0c6ffc38efe30dd71e954986325836fb`  
		Last Modified: Wed, 09 Sep 2026 03:31:44 GMT  
		Size: 110.2 MB (110216432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c6689f23a59cb3a87d621460355ff2d61c104e2f031b61825d835e3f0cbdf5`  
		Last Modified: Wed, 09 Sep 2026 03:31:41 GMT  
		Size: 412.4 KB (412436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:953ace926a23c6775be0d2887c35e4d63c699812817af8722a366ad6079c65ce`  
		Last Modified: Wed, 09 Sep 2026 03:31:41 GMT  
		Size: 2.5 KB (2501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01f17b12da39482a0f5bdc9b2a7cd6b760cbdb74442c28dfacaa90166e2778e8`  
		Last Modified: Wed, 09 Sep 2026 03:31:42 GMT  
		Size: 28.1 MB (28081386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:031ad78cfcc8bfa602875e0f0a6a1c630101de8edfbc98226c6f4c9820991f81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24948853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:743d93ffbe839ac866445ed77966225474c760778a4f453df93a13c77765ee89`

```dockerfile
```

-	Layers:
	-	`sha256:2d6f03658e54e6478673526c392c1f76ba3cce006f7e8010b199b21d58a87faf`  
		Last Modified: Wed, 09 Sep 2026 03:31:42 GMT  
		Size: 24.9 MB (24932524 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f8ba58245ba49349c2d2cd6809790019321e9940181f35cc42cfcce9cf7a7e2`  
		Last Modified: Wed, 09 Sep 2026 03:31:40 GMT  
		Size: 16.3 KB (16329 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-base-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:21d41e7d6d521b3386c1db6ea963d85a49be86ce079600226fe5f0122992f70e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.0 MB (285023449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8118e51a06ff85e667ac176134b975bd1f639c9589ca5c55aa05da512d4bebf1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:32:42 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:32:55 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:00 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:42 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:33:42 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:33:42 GMT
ENV ROS_DISTRO=jazzy
# Wed, 09 Sep 2026 02:33:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:42 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:33:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:33:42 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:41:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:41:58 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:42:02 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:42:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69c8e128b04851215e1e4f2d7e3e409a09cbd108e00a7bc78c1a992a27f34015`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 683.5 KB (683487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:612dbb2dfffa006420029e8b61cbe69035d21c62b4f2f9dafc525632ce75b868`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 6.7 MB (6726402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:791b9e41800f69a2d648215c38b431b06f984b26514e98f56603fab4fc8f7102`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 94.8 KB (94795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75940d8b498b0f1e3e62ee49599619ee66ed0c9d9b4f9cd4af942fb3cd873adb`  
		Last Modified: Wed, 09 Sep 2026 02:34:13 GMT  
		Size: 115.3 MB (115320459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fb35690e9e72fcc85509bb28e9aae6ea055ae8eb4b675b119b495b414884e71`  
		Last Modified: Wed, 09 Sep 2026 02:34:11 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc2c23fc59c108280a5f2d2fb975c3c3a85cd9f0be90da322bb6d2d82fb5d8a6`  
		Last Modified: Wed, 09 Sep 2026 03:43:02 GMT  
		Size: 105.6 MB (105649195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a893c64436ea913dc424db5c4b652ac12f3fc5eaeab517a486711e19840961d7`  
		Last Modified: Wed, 09 Sep 2026 03:42:58 GMT  
		Size: 412.4 KB (412443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a87eca6868b61d2a6ecc09c0d5782f069d16e92fafab6fb0f68b1930f5d412e`  
		Last Modified: Wed, 09 Sep 2026 03:42:58 GMT  
		Size: 2.5 KB (2515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f3e2bdef84243853d73f55e93404ce7d5641cf9055ec75744a2904889ddeaf2`  
		Last Modified: Wed, 09 Sep 2026 03:43:00 GMT  
		Size: 27.2 MB (27193942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:ea9cf7fa962e66e37609dfd525692de68ef121cf42f2b751189ad5aba6655e4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 MB (24971245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ee0ddcc8f4bd6ab4ed7f81e45785ce68e210e6a098967e3e1f26685995ebe9a`

```dockerfile
```

-	Layers:
	-	`sha256:421fdd87b92a40982ff24ddf52362404d57f0f95b65076c10eb87de037e7a78c`  
		Last Modified: Wed, 09 Sep 2026 03:42:59 GMT  
		Size: 25.0 MB (24954779 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:290298f7c01fb8f3b98f08c1d5f8828ddbcc3bd13a91ca5ef7978b6c1a079191`  
		Last Modified: Wed, 09 Sep 2026 03:42:58 GMT  
		Size: 16.5 KB (16466 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-ros-core`

```console
$ docker pull ros@sha256:0fca5eb8d5e2240dcf0c002065c3eb13efe126f4d9382503917ea7ffdce694bc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:a884e8d532e9ad0e467f28cad7db88d92b018b53c36b28cc7511de0abb6b26b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.7 MB (157748285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d04152728e1c913497c0e873dc681c0cd1a130c7f2fbe530e5ff66c61d6454b5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:36:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:35 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:42 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:37:23 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:37:23 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:37:23 GMT
ENV ROS_DISTRO=jazzy
# Wed, 09 Sep 2026 02:37:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:37:23 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:37:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:37:23 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96956bf73b034e26d662de73f9ebf723c63eec7dc414ac739c942dc73ae68f9a`  
		Last Modified: Wed, 09 Sep 2026 02:37:50 GMT  
		Size: 683.4 KB (683384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe29682277ae479e1f68cbed0bf002ee59f6c419ce5fa8c070b664e898e4f3c7`  
		Last Modified: Wed, 09 Sep 2026 02:37:51 GMT  
		Size: 6.7 MB (6710881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb005c64ea48e98ae88520fc24e2e1ca764d57ae81bbe8f50d97c6c7ae8721f3`  
		Last Modified: Wed, 09 Sep 2026 02:37:50 GMT  
		Size: 94.7 KB (94738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3092fae2595765336cb3858dd123e7caf1261ce9b765075f5a4d89fef9c3a919`  
		Last Modified: Wed, 09 Sep 2026 02:37:54 GMT  
		Size: 120.5 MB (120495834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a398f2aa538587dc2c40f50cff543fc80db9d575806d75d18a7362c287711e5`  
		Last Modified: Wed, 09 Sep 2026 02:37:52 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:fb4c94081609285fae81eb032c97d784f980b87f27410764b689fd7b4118ad0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18634452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:486d8d63bf11315aed2f07c40f98412b384181d0fc4cf6ee449a7f7954c55440`

```dockerfile
```

-	Layers:
	-	`sha256:bdd8d8d718204391c274be3e6b2777182bd5ab578735317ceb919d83af566f91`  
		Last Modified: Wed, 09 Sep 2026 02:37:51 GMT  
		Size: 18.6 MB (18619844 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cbd5007ea2785576b3a122ca58803615475efa63eb541f1be91c712c82ffe18c`  
		Last Modified: Wed, 09 Sep 2026 02:37:50 GMT  
		Size: 14.6 KB (14608 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:bbe1658e5d31653c3828eafc7e4ad759eab2cfce81244c1351f30c15103f87cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.8 MB (151765354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bba51d381ef16ec4d510c87a6c6c154409f9b1387c47c09e92ec7b4224867b89`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:32:42 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:32:55 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:00 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:42 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:33:42 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:33:42 GMT
ENV ROS_DISTRO=jazzy
# Wed, 09 Sep 2026 02:33:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:42 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:33:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:33:42 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69c8e128b04851215e1e4f2d7e3e409a09cbd108e00a7bc78c1a992a27f34015`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 683.5 KB (683487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:612dbb2dfffa006420029e8b61cbe69035d21c62b4f2f9dafc525632ce75b868`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 6.7 MB (6726402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:791b9e41800f69a2d648215c38b431b06f984b26514e98f56603fab4fc8f7102`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 94.8 KB (94795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75940d8b498b0f1e3e62ee49599619ee66ed0c9d9b4f9cd4af942fb3cd873adb`  
		Last Modified: Wed, 09 Sep 2026 02:34:13 GMT  
		Size: 115.3 MB (115320459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fb35690e9e72fcc85509bb28e9aae6ea055ae8eb4b675b119b495b414884e71`  
		Last Modified: Wed, 09 Sep 2026 02:34:11 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:37b2c4e9917a01a362cacac10a700a77b2efbafb928fc2cd64ed597533109146
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18608583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab9f3c61113d6a0a8c18a365f613119de883e1f4f627441b0610439ffc418301`

```dockerfile
```

-	Layers:
	-	`sha256:4c21304a1295db3e42b9c2b56bf7eefd949bd2b51b337129c4653eb9983fbc07`  
		Last Modified: Wed, 09 Sep 2026 02:34:11 GMT  
		Size: 18.6 MB (18593850 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a232c50debe6de2e9ae46b792e355415f4709162ccebb1713eca17feac026e5`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 14.7 KB (14733 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-ros-core-noble`

```console
$ docker pull ros@sha256:0fca5eb8d5e2240dcf0c002065c3eb13efe126f4d9382503917ea7ffdce694bc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-core-noble` - linux; amd64

```console
$ docker pull ros@sha256:a884e8d532e9ad0e467f28cad7db88d92b018b53c36b28cc7511de0abb6b26b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.7 MB (157748285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d04152728e1c913497c0e873dc681c0cd1a130c7f2fbe530e5ff66c61d6454b5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:36:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:35 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:42 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:37:23 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:37:23 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:37:23 GMT
ENV ROS_DISTRO=jazzy
# Wed, 09 Sep 2026 02:37:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:37:23 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:37:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:37:23 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96956bf73b034e26d662de73f9ebf723c63eec7dc414ac739c942dc73ae68f9a`  
		Last Modified: Wed, 09 Sep 2026 02:37:50 GMT  
		Size: 683.4 KB (683384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe29682277ae479e1f68cbed0bf002ee59f6c419ce5fa8c070b664e898e4f3c7`  
		Last Modified: Wed, 09 Sep 2026 02:37:51 GMT  
		Size: 6.7 MB (6710881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb005c64ea48e98ae88520fc24e2e1ca764d57ae81bbe8f50d97c6c7ae8721f3`  
		Last Modified: Wed, 09 Sep 2026 02:37:50 GMT  
		Size: 94.7 KB (94738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3092fae2595765336cb3858dd123e7caf1261ce9b765075f5a4d89fef9c3a919`  
		Last Modified: Wed, 09 Sep 2026 02:37:54 GMT  
		Size: 120.5 MB (120495834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a398f2aa538587dc2c40f50cff543fc80db9d575806d75d18a7362c287711e5`  
		Last Modified: Wed, 09 Sep 2026 02:37:52 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:fb4c94081609285fae81eb032c97d784f980b87f27410764b689fd7b4118ad0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18634452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:486d8d63bf11315aed2f07c40f98412b384181d0fc4cf6ee449a7f7954c55440`

```dockerfile
```

-	Layers:
	-	`sha256:bdd8d8d718204391c274be3e6b2777182bd5ab578735317ceb919d83af566f91`  
		Last Modified: Wed, 09 Sep 2026 02:37:51 GMT  
		Size: 18.6 MB (18619844 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cbd5007ea2785576b3a122ca58803615475efa63eb541f1be91c712c82ffe18c`  
		Last Modified: Wed, 09 Sep 2026 02:37:50 GMT  
		Size: 14.6 KB (14608 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-core-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:bbe1658e5d31653c3828eafc7e4ad759eab2cfce81244c1351f30c15103f87cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.8 MB (151765354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bba51d381ef16ec4d510c87a6c6c154409f9b1387c47c09e92ec7b4224867b89`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:32:42 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:32:55 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:00 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:42 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:33:42 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:33:42 GMT
ENV ROS_DISTRO=jazzy
# Wed, 09 Sep 2026 02:33:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:42 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:33:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:33:42 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69c8e128b04851215e1e4f2d7e3e409a09cbd108e00a7bc78c1a992a27f34015`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 683.5 KB (683487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:612dbb2dfffa006420029e8b61cbe69035d21c62b4f2f9dafc525632ce75b868`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 6.7 MB (6726402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:791b9e41800f69a2d648215c38b431b06f984b26514e98f56603fab4fc8f7102`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 94.8 KB (94795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75940d8b498b0f1e3e62ee49599619ee66ed0c9d9b4f9cd4af942fb3cd873adb`  
		Last Modified: Wed, 09 Sep 2026 02:34:13 GMT  
		Size: 115.3 MB (115320459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fb35690e9e72fcc85509bb28e9aae6ea055ae8eb4b675b119b495b414884e71`  
		Last Modified: Wed, 09 Sep 2026 02:34:11 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:37b2c4e9917a01a362cacac10a700a77b2efbafb928fc2cd64ed597533109146
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18608583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab9f3c61113d6a0a8c18a365f613119de883e1f4f627441b0610439ffc418301`

```dockerfile
```

-	Layers:
	-	`sha256:4c21304a1295db3e42b9c2b56bf7eefd949bd2b51b337129c4653eb9983fbc07`  
		Last Modified: Wed, 09 Sep 2026 02:34:11 GMT  
		Size: 18.6 MB (18593850 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a232c50debe6de2e9ae46b792e355415f4709162ccebb1713eca17feac026e5`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 14.7 KB (14733 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted`

```console
$ docker pull ros@sha256:0fe3d66b179ac21e56f4b88118022e71f9bb167508430fc0036929691f5a2e8f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted` - linux; amd64

```console
$ docker pull ros@sha256:1027b1c72dddf05e101f66f5442c91e816a004283b83aef60457e2bd408a0480
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.9 MB (296913900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63ef7f5c2dafb0030d180619039f298bf4243b2b13afbc763a9acf40ade9c0b7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:37:16 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:37:27 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:37:34 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:39:23 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:39:23 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:39:23 GMT
ENV ROS_DISTRO=kilted
# Wed, 09 Sep 2026 02:39:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:39:23 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:39:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:39:23 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:30:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:30:41 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:30:44 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:31:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49bb2a964d591029379b2d0358308ae2b1b7e2bb724a7cb6362819a3d3505495`  
		Last Modified: Wed, 09 Sep 2026 02:39:48 GMT  
		Size: 683.4 KB (683383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2584c3f4a0fb14b03304e2b7213e99496672839466d74cf416fb4f92210b564d`  
		Last Modified: Wed, 09 Sep 2026 02:39:48 GMT  
		Size: 6.7 MB (6710956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:231c5ec116aded7b525678c9fbb80f82080b9093d8d7c0eb99c92daf102ea3e4`  
		Last Modified: Wed, 09 Sep 2026 02:39:48 GMT  
		Size: 94.8 KB (94754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc2e78231aa2d2658441aa690629142f9e48313ea60ed64057b019ffa82cdb70`  
		Last Modified: Wed, 09 Sep 2026 02:39:51 GMT  
		Size: 121.2 MB (121174006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:577b1dbd3bee32d2776424e1b584848833c0037c898de5d3676a7b62c95a3b17`  
		Last Modified: Wed, 09 Sep 2026 02:39:50 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b6238b40be7195b1ff93726ca7746491c84d3e8c5bd6dcd7989b26997a8018c`  
		Last Modified: Wed, 09 Sep 2026 03:31:46 GMT  
		Size: 110.2 MB (110219100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fee94c3630276f20caf9f884cf338f188fac77c130ddda118b151da3f435100a`  
		Last Modified: Wed, 09 Sep 2026 03:31:42 GMT  
		Size: 373.9 KB (373902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf2b1baa86139c92393dde84d1966fec6cd641dafd1fbba7686298f4b37836a`  
		Last Modified: Wed, 09 Sep 2026 03:31:42 GMT  
		Size: 2.5 KB (2511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bf1418a677ec0a9a05a4e2c84f9c62749bdc21421b5a6cff457969d2ab1a735`  
		Last Modified: Wed, 09 Sep 2026 03:31:44 GMT  
		Size: 27.9 MB (27891839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted` - unknown; unknown

```console
$ docker pull ros@sha256:0d421233afe6d0951eec717ab65042f26dfe0fc43e63a74e6dbfb3f98367e4a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24888925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0c1b9d25244feb60a47eef94f111930665218fad5d2b59d3dae809fa44e36f9`

```dockerfile
```

-	Layers:
	-	`sha256:f1e2537faede4f603b0bebc93df12ad26dcc23f50ac38aa2265bba0c834f87a4`  
		Last Modified: Wed, 09 Sep 2026 03:31:44 GMT  
		Size: 24.9 MB (24872579 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9560fb8ee92e6b5e82ee7479b36591f9c6f4289e131dad4476ea69731e0318f4`  
		Last Modified: Wed, 09 Sep 2026 03:31:42 GMT  
		Size: 16.3 KB (16346 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:4a2e28417dc812c4efed1544a0585134c1d0acf90d07b8fe2415e4a64186b0af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.5 MB (285455596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d051e688fb8722aebc668fa90ccb7e9fa7124be7daa67ebfeb7fd099cc4748de`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:32:43 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:32:54 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:00 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:45 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:33:45 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:33:45 GMT
ENV ROS_DISTRO=kilted
# Wed, 09 Sep 2026 02:33:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:45 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:33:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:33:45 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:41:59 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:42:02 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:42:03 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:42:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a9b8c5b649d7f4652c4f90a0be83e701335065e9d7b377d25632f961139b2ef`  
		Last Modified: Wed, 09 Sep 2026 02:34:14 GMT  
		Size: 683.5 KB (683484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e24e2ffe0cbd326bff4bc231ff93b00db454a4a51d5b6244bb2b15b4998e1fff`  
		Last Modified: Wed, 09 Sep 2026 02:34:14 GMT  
		Size: 6.7 MB (6726440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:572a09c252e72e1644c9e46a8f4d5f105dcc00f5f74ca53ab52651ec25daeb32`  
		Last Modified: Wed, 09 Sep 2026 02:34:14 GMT  
		Size: 94.8 KB (94804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce4fd0d9a49c2cfca0e07d440d10b1a4abbabf0bb581a6e9ebd6c5081d57443a`  
		Last Modified: Wed, 09 Sep 2026 02:34:17 GMT  
		Size: 116.0 MB (115975153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fb35690e9e72fcc85509bb28e9aae6ea055ae8eb4b675b119b495b414884e71`  
		Last Modified: Wed, 09 Sep 2026 02:34:11 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:694cdba5a21af47ed9f47057289eae06e005a49d34d9f8bf09731e3cd2a73370`  
		Last Modified: Wed, 09 Sep 2026 03:42:59 GMT  
		Size: 105.7 MB (105651092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feb6985d0693d7c96d3b7e7f561ed8d83af45a3cc6a390012600b132387e61c1`  
		Last Modified: Wed, 09 Sep 2026 03:42:56 GMT  
		Size: 373.9 KB (373902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b98269f080e5e4d9b833baca47024452c9861727e07ed526398f457191365a3`  
		Last Modified: Wed, 09 Sep 2026 03:42:56 GMT  
		Size: 2.5 KB (2503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18e5766a0391ae0c2f241bec42e726977c449e079ec4f390d63bbfc7d2b413c9`  
		Last Modified: Wed, 09 Sep 2026 03:42:58 GMT  
		Size: 27.0 MB (27008007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted` - unknown; unknown

```console
$ docker pull ros@sha256:c15bed3fefee8e51c4465e5020f89251f0927a65025eba589754bf8947be6e6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24911323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eff844fbe86826364484768a60998310611b80c6b62017885fc724e6e8a7eb59`

```dockerfile
```

-	Layers:
	-	`sha256:1f463faa96d4ca4aad5b4a3d668423b074a2c19488779bd4fc12f8ea018a9b1b`  
		Last Modified: Wed, 09 Sep 2026 03:42:57 GMT  
		Size: 24.9 MB (24894839 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f15f54345578d4252ce2f709551f7f0852c680c879186677c47e2f5c8b669577`  
		Last Modified: Wed, 09 Sep 2026 03:42:56 GMT  
		Size: 16.5 KB (16484 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-perception`

```console
$ docker pull ros@sha256:9bde58ca8863f5ea57375f7bb9ae4e07a6b7b26d4b90d457b42f744ae581f098
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-perception` - linux; amd64

```console
$ docker pull ros@sha256:f7fca6bf658e0470982c24c8d7e6c18c9a5de338b5ac199cfdde9bdf673df997
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1081892880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81f0782036228dac6ce6c86d5ebccf8c81c4683412cedb49126baf11ffd44f61`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:37:16 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:37:27 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:37:34 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:39:23 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:39:23 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:39:23 GMT
ENV ROS_DISTRO=kilted
# Wed, 09 Sep 2026 02:39:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:39:23 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:39:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:39:23 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:30:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:30:41 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:30:44 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:31:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:21:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49bb2a964d591029379b2d0358308ae2b1b7e2bb724a7cb6362819a3d3505495`  
		Last Modified: Wed, 09 Sep 2026 02:39:48 GMT  
		Size: 683.4 KB (683383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2584c3f4a0fb14b03304e2b7213e99496672839466d74cf416fb4f92210b564d`  
		Last Modified: Wed, 09 Sep 2026 02:39:48 GMT  
		Size: 6.7 MB (6710956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:231c5ec116aded7b525678c9fbb80f82080b9093d8d7c0eb99c92daf102ea3e4`  
		Last Modified: Wed, 09 Sep 2026 02:39:48 GMT  
		Size: 94.8 KB (94754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc2e78231aa2d2658441aa690629142f9e48313ea60ed64057b019ffa82cdb70`  
		Last Modified: Wed, 09 Sep 2026 02:39:51 GMT  
		Size: 121.2 MB (121174006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:577b1dbd3bee32d2776424e1b584848833c0037c898de5d3676a7b62c95a3b17`  
		Last Modified: Wed, 09 Sep 2026 02:39:50 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b6238b40be7195b1ff93726ca7746491c84d3e8c5bd6dcd7989b26997a8018c`  
		Last Modified: Wed, 09 Sep 2026 03:31:46 GMT  
		Size: 110.2 MB (110219100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fee94c3630276f20caf9f884cf338f188fac77c130ddda118b151da3f435100a`  
		Last Modified: Wed, 09 Sep 2026 03:31:42 GMT  
		Size: 373.9 KB (373902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf2b1baa86139c92393dde84d1966fec6cd641dafd1fbba7686298f4b37836a`  
		Last Modified: Wed, 09 Sep 2026 03:31:42 GMT  
		Size: 2.5 KB (2511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bf1418a677ec0a9a05a4e2c84f9c62749bdc21421b5a6cff457969d2ab1a735`  
		Last Modified: Wed, 09 Sep 2026 03:31:44 GMT  
		Size: 27.9 MB (27891839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:addfd4926bb2b9e2b76583eb6b8cdf535280cde4f2f21fc5e8374ffc0ccf4958`  
		Last Modified: Wed, 09 Sep 2026 04:24:31 GMT  
		Size: 785.0 MB (784978980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception` - unknown; unknown

```console
$ docker pull ros@sha256:db431b7ad247452462c6ba8a9e0f8b857a7f705b22e82149158fcfe4eb7253d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61069584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b62424e5fc3f826e7aebe5d431fdb10e3c1833c18e286b1abcf384e2be34dde1`

```dockerfile
```

-	Layers:
	-	`sha256:81eb8dc222fbff1c2803abbdb51d7f915d2c26cb6877c5c5bf94638a8f6d7a07`  
		Last Modified: Wed, 09 Sep 2026 04:24:18 GMT  
		Size: 61.1 MB (61060232 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3cffb769b1894a388c6368c10f4bba4d3fe26731abdda760a23dab4492b264a`  
		Last Modified: Wed, 09 Sep 2026 04:24:15 GMT  
		Size: 9.4 KB (9352 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:4413c7ce4711316a159857d10adcac61b725567d62558993a4bf9d034328be58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **984.6 MB (984593071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f727e180ceff7e677bc7cef3651a3d6ad6c58feb6af7e1cd4d1fe5f44f85cf1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:32:43 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:32:54 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:00 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:45 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:33:45 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:33:45 GMT
ENV ROS_DISTRO=kilted
# Wed, 09 Sep 2026 02:33:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:45 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:33:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:33:45 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:41:59 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:42:02 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:42:03 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:42:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:18:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a9b8c5b649d7f4652c4f90a0be83e701335065e9d7b377d25632f961139b2ef`  
		Last Modified: Wed, 09 Sep 2026 02:34:14 GMT  
		Size: 683.5 KB (683484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e24e2ffe0cbd326bff4bc231ff93b00db454a4a51d5b6244bb2b15b4998e1fff`  
		Last Modified: Wed, 09 Sep 2026 02:34:14 GMT  
		Size: 6.7 MB (6726440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:572a09c252e72e1644c9e46a8f4d5f105dcc00f5f74ca53ab52651ec25daeb32`  
		Last Modified: Wed, 09 Sep 2026 02:34:14 GMT  
		Size: 94.8 KB (94804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce4fd0d9a49c2cfca0e07d440d10b1a4abbabf0bb581a6e9ebd6c5081d57443a`  
		Last Modified: Wed, 09 Sep 2026 02:34:17 GMT  
		Size: 116.0 MB (115975153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fb35690e9e72fcc85509bb28e9aae6ea055ae8eb4b675b119b495b414884e71`  
		Last Modified: Wed, 09 Sep 2026 02:34:11 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:694cdba5a21af47ed9f47057289eae06e005a49d34d9f8bf09731e3cd2a73370`  
		Last Modified: Wed, 09 Sep 2026 03:42:59 GMT  
		Size: 105.7 MB (105651092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feb6985d0693d7c96d3b7e7f561ed8d83af45a3cc6a390012600b132387e61c1`  
		Last Modified: Wed, 09 Sep 2026 03:42:56 GMT  
		Size: 373.9 KB (373902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b98269f080e5e4d9b833baca47024452c9861727e07ed526398f457191365a3`  
		Last Modified: Wed, 09 Sep 2026 03:42:56 GMT  
		Size: 2.5 KB (2503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18e5766a0391ae0c2f241bec42e726977c449e079ec4f390d63bbfc7d2b413c9`  
		Last Modified: Wed, 09 Sep 2026 03:42:58 GMT  
		Size: 27.0 MB (27008007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aaba6c6265b8953e0ef7fd7ba4348dbb4595664d5922d2e2d2fdf73a020cbaa`  
		Last Modified: Wed, 09 Sep 2026 04:21:49 GMT  
		Size: 699.1 MB (699137475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception` - unknown; unknown

```console
$ docker pull ros@sha256:b3ffc63292f797323cc96022572ecf1be03cab962abe837ce2484ba07bf77509
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61000188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffc34bcfc9cef5b49f0a5d174b798be9ed3181973bebeef6214d5473806b5a28`

```dockerfile
```

-	Layers:
	-	`sha256:6536bdf3a5a2cacb88e8757eeb59dc7457735aef55dc5e7e8a9591a8f2b3ffa9`  
		Last Modified: Wed, 09 Sep 2026 04:21:37 GMT  
		Size: 61.0 MB (60990756 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff2974ba60a134d582932f4b5fd48a5a7acfa0bab653a858694d93b185911ee3`  
		Last Modified: Wed, 09 Sep 2026 04:21:34 GMT  
		Size: 9.4 KB (9432 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-perception-noble`

```console
$ docker pull ros@sha256:9bde58ca8863f5ea57375f7bb9ae4e07a6b7b26d4b90d457b42f744ae581f098
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-perception-noble` - linux; amd64

```console
$ docker pull ros@sha256:f7fca6bf658e0470982c24c8d7e6c18c9a5de338b5ac199cfdde9bdf673df997
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1081892880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81f0782036228dac6ce6c86d5ebccf8c81c4683412cedb49126baf11ffd44f61`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:37:16 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:37:27 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:37:34 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:39:23 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:39:23 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:39:23 GMT
ENV ROS_DISTRO=kilted
# Wed, 09 Sep 2026 02:39:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:39:23 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:39:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:39:23 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:30:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:30:41 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:30:44 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:31:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:21:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49bb2a964d591029379b2d0358308ae2b1b7e2bb724a7cb6362819a3d3505495`  
		Last Modified: Wed, 09 Sep 2026 02:39:48 GMT  
		Size: 683.4 KB (683383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2584c3f4a0fb14b03304e2b7213e99496672839466d74cf416fb4f92210b564d`  
		Last Modified: Wed, 09 Sep 2026 02:39:48 GMT  
		Size: 6.7 MB (6710956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:231c5ec116aded7b525678c9fbb80f82080b9093d8d7c0eb99c92daf102ea3e4`  
		Last Modified: Wed, 09 Sep 2026 02:39:48 GMT  
		Size: 94.8 KB (94754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc2e78231aa2d2658441aa690629142f9e48313ea60ed64057b019ffa82cdb70`  
		Last Modified: Wed, 09 Sep 2026 02:39:51 GMT  
		Size: 121.2 MB (121174006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:577b1dbd3bee32d2776424e1b584848833c0037c898de5d3676a7b62c95a3b17`  
		Last Modified: Wed, 09 Sep 2026 02:39:50 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b6238b40be7195b1ff93726ca7746491c84d3e8c5bd6dcd7989b26997a8018c`  
		Last Modified: Wed, 09 Sep 2026 03:31:46 GMT  
		Size: 110.2 MB (110219100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fee94c3630276f20caf9f884cf338f188fac77c130ddda118b151da3f435100a`  
		Last Modified: Wed, 09 Sep 2026 03:31:42 GMT  
		Size: 373.9 KB (373902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf2b1baa86139c92393dde84d1966fec6cd641dafd1fbba7686298f4b37836a`  
		Last Modified: Wed, 09 Sep 2026 03:31:42 GMT  
		Size: 2.5 KB (2511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bf1418a677ec0a9a05a4e2c84f9c62749bdc21421b5a6cff457969d2ab1a735`  
		Last Modified: Wed, 09 Sep 2026 03:31:44 GMT  
		Size: 27.9 MB (27891839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:addfd4926bb2b9e2b76583eb6b8cdf535280cde4f2f21fc5e8374ffc0ccf4958`  
		Last Modified: Wed, 09 Sep 2026 04:24:31 GMT  
		Size: 785.0 MB (784978980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:db431b7ad247452462c6ba8a9e0f8b857a7f705b22e82149158fcfe4eb7253d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61069584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b62424e5fc3f826e7aebe5d431fdb10e3c1833c18e286b1abcf384e2be34dde1`

```dockerfile
```

-	Layers:
	-	`sha256:81eb8dc222fbff1c2803abbdb51d7f915d2c26cb6877c5c5bf94638a8f6d7a07`  
		Last Modified: Wed, 09 Sep 2026 04:24:18 GMT  
		Size: 61.1 MB (61060232 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3cffb769b1894a388c6368c10f4bba4d3fe26731abdda760a23dab4492b264a`  
		Last Modified: Wed, 09 Sep 2026 04:24:15 GMT  
		Size: 9.4 KB (9352 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-perception-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:4413c7ce4711316a159857d10adcac61b725567d62558993a4bf9d034328be58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **984.6 MB (984593071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f727e180ceff7e677bc7cef3651a3d6ad6c58feb6af7e1cd4d1fe5f44f85cf1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:32:43 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:32:54 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:00 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:45 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:33:45 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:33:45 GMT
ENV ROS_DISTRO=kilted
# Wed, 09 Sep 2026 02:33:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:45 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:33:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:33:45 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:41:59 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:42:02 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:42:03 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:42:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:18:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a9b8c5b649d7f4652c4f90a0be83e701335065e9d7b377d25632f961139b2ef`  
		Last Modified: Wed, 09 Sep 2026 02:34:14 GMT  
		Size: 683.5 KB (683484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e24e2ffe0cbd326bff4bc231ff93b00db454a4a51d5b6244bb2b15b4998e1fff`  
		Last Modified: Wed, 09 Sep 2026 02:34:14 GMT  
		Size: 6.7 MB (6726440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:572a09c252e72e1644c9e46a8f4d5f105dcc00f5f74ca53ab52651ec25daeb32`  
		Last Modified: Wed, 09 Sep 2026 02:34:14 GMT  
		Size: 94.8 KB (94804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce4fd0d9a49c2cfca0e07d440d10b1a4abbabf0bb581a6e9ebd6c5081d57443a`  
		Last Modified: Wed, 09 Sep 2026 02:34:17 GMT  
		Size: 116.0 MB (115975153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fb35690e9e72fcc85509bb28e9aae6ea055ae8eb4b675b119b495b414884e71`  
		Last Modified: Wed, 09 Sep 2026 02:34:11 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:694cdba5a21af47ed9f47057289eae06e005a49d34d9f8bf09731e3cd2a73370`  
		Last Modified: Wed, 09 Sep 2026 03:42:59 GMT  
		Size: 105.7 MB (105651092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feb6985d0693d7c96d3b7e7f561ed8d83af45a3cc6a390012600b132387e61c1`  
		Last Modified: Wed, 09 Sep 2026 03:42:56 GMT  
		Size: 373.9 KB (373902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b98269f080e5e4d9b833baca47024452c9861727e07ed526398f457191365a3`  
		Last Modified: Wed, 09 Sep 2026 03:42:56 GMT  
		Size: 2.5 KB (2503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18e5766a0391ae0c2f241bec42e726977c449e079ec4f390d63bbfc7d2b413c9`  
		Last Modified: Wed, 09 Sep 2026 03:42:58 GMT  
		Size: 27.0 MB (27008007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aaba6c6265b8953e0ef7fd7ba4348dbb4595664d5922d2e2d2fdf73a020cbaa`  
		Last Modified: Wed, 09 Sep 2026 04:21:49 GMT  
		Size: 699.1 MB (699137475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:b3ffc63292f797323cc96022572ecf1be03cab962abe837ce2484ba07bf77509
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61000188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffc34bcfc9cef5b49f0a5d174b798be9ed3181973bebeef6214d5473806b5a28`

```dockerfile
```

-	Layers:
	-	`sha256:6536bdf3a5a2cacb88e8757eeb59dc7457735aef55dc5e7e8a9591a8f2b3ffa9`  
		Last Modified: Wed, 09 Sep 2026 04:21:37 GMT  
		Size: 61.0 MB (60990756 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff2974ba60a134d582932f4b5fd48a5a7acfa0bab653a858694d93b185911ee3`  
		Last Modified: Wed, 09 Sep 2026 04:21:34 GMT  
		Size: 9.4 KB (9432 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-ros-base`

```console
$ docker pull ros@sha256:0fe3d66b179ac21e56f4b88118022e71f9bb167508430fc0036929691f5a2e8f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:1027b1c72dddf05e101f66f5442c91e816a004283b83aef60457e2bd408a0480
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.9 MB (296913900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63ef7f5c2dafb0030d180619039f298bf4243b2b13afbc763a9acf40ade9c0b7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:37:16 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:37:27 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:37:34 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:39:23 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:39:23 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:39:23 GMT
ENV ROS_DISTRO=kilted
# Wed, 09 Sep 2026 02:39:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:39:23 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:39:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:39:23 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:30:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:30:41 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:30:44 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:31:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49bb2a964d591029379b2d0358308ae2b1b7e2bb724a7cb6362819a3d3505495`  
		Last Modified: Wed, 09 Sep 2026 02:39:48 GMT  
		Size: 683.4 KB (683383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2584c3f4a0fb14b03304e2b7213e99496672839466d74cf416fb4f92210b564d`  
		Last Modified: Wed, 09 Sep 2026 02:39:48 GMT  
		Size: 6.7 MB (6710956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:231c5ec116aded7b525678c9fbb80f82080b9093d8d7c0eb99c92daf102ea3e4`  
		Last Modified: Wed, 09 Sep 2026 02:39:48 GMT  
		Size: 94.8 KB (94754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc2e78231aa2d2658441aa690629142f9e48313ea60ed64057b019ffa82cdb70`  
		Last Modified: Wed, 09 Sep 2026 02:39:51 GMT  
		Size: 121.2 MB (121174006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:577b1dbd3bee32d2776424e1b584848833c0037c898de5d3676a7b62c95a3b17`  
		Last Modified: Wed, 09 Sep 2026 02:39:50 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b6238b40be7195b1ff93726ca7746491c84d3e8c5bd6dcd7989b26997a8018c`  
		Last Modified: Wed, 09 Sep 2026 03:31:46 GMT  
		Size: 110.2 MB (110219100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fee94c3630276f20caf9f884cf338f188fac77c130ddda118b151da3f435100a`  
		Last Modified: Wed, 09 Sep 2026 03:31:42 GMT  
		Size: 373.9 KB (373902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf2b1baa86139c92393dde84d1966fec6cd641dafd1fbba7686298f4b37836a`  
		Last Modified: Wed, 09 Sep 2026 03:31:42 GMT  
		Size: 2.5 KB (2511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bf1418a677ec0a9a05a4e2c84f9c62749bdc21421b5a6cff457969d2ab1a735`  
		Last Modified: Wed, 09 Sep 2026 03:31:44 GMT  
		Size: 27.9 MB (27891839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:0d421233afe6d0951eec717ab65042f26dfe0fc43e63a74e6dbfb3f98367e4a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24888925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0c1b9d25244feb60a47eef94f111930665218fad5d2b59d3dae809fa44e36f9`

```dockerfile
```

-	Layers:
	-	`sha256:f1e2537faede4f603b0bebc93df12ad26dcc23f50ac38aa2265bba0c834f87a4`  
		Last Modified: Wed, 09 Sep 2026 03:31:44 GMT  
		Size: 24.9 MB (24872579 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9560fb8ee92e6b5e82ee7479b36591f9c6f4289e131dad4476ea69731e0318f4`  
		Last Modified: Wed, 09 Sep 2026 03:31:42 GMT  
		Size: 16.3 KB (16346 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:4a2e28417dc812c4efed1544a0585134c1d0acf90d07b8fe2415e4a64186b0af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.5 MB (285455596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d051e688fb8722aebc668fa90ccb7e9fa7124be7daa67ebfeb7fd099cc4748de`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:32:43 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:32:54 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:00 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:45 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:33:45 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:33:45 GMT
ENV ROS_DISTRO=kilted
# Wed, 09 Sep 2026 02:33:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:45 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:33:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:33:45 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:41:59 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:42:02 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:42:03 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:42:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a9b8c5b649d7f4652c4f90a0be83e701335065e9d7b377d25632f961139b2ef`  
		Last Modified: Wed, 09 Sep 2026 02:34:14 GMT  
		Size: 683.5 KB (683484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e24e2ffe0cbd326bff4bc231ff93b00db454a4a51d5b6244bb2b15b4998e1fff`  
		Last Modified: Wed, 09 Sep 2026 02:34:14 GMT  
		Size: 6.7 MB (6726440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:572a09c252e72e1644c9e46a8f4d5f105dcc00f5f74ca53ab52651ec25daeb32`  
		Last Modified: Wed, 09 Sep 2026 02:34:14 GMT  
		Size: 94.8 KB (94804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce4fd0d9a49c2cfca0e07d440d10b1a4abbabf0bb581a6e9ebd6c5081d57443a`  
		Last Modified: Wed, 09 Sep 2026 02:34:17 GMT  
		Size: 116.0 MB (115975153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fb35690e9e72fcc85509bb28e9aae6ea055ae8eb4b675b119b495b414884e71`  
		Last Modified: Wed, 09 Sep 2026 02:34:11 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:694cdba5a21af47ed9f47057289eae06e005a49d34d9f8bf09731e3cd2a73370`  
		Last Modified: Wed, 09 Sep 2026 03:42:59 GMT  
		Size: 105.7 MB (105651092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feb6985d0693d7c96d3b7e7f561ed8d83af45a3cc6a390012600b132387e61c1`  
		Last Modified: Wed, 09 Sep 2026 03:42:56 GMT  
		Size: 373.9 KB (373902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b98269f080e5e4d9b833baca47024452c9861727e07ed526398f457191365a3`  
		Last Modified: Wed, 09 Sep 2026 03:42:56 GMT  
		Size: 2.5 KB (2503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18e5766a0391ae0c2f241bec42e726977c449e079ec4f390d63bbfc7d2b413c9`  
		Last Modified: Wed, 09 Sep 2026 03:42:58 GMT  
		Size: 27.0 MB (27008007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:c15bed3fefee8e51c4465e5020f89251f0927a65025eba589754bf8947be6e6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24911323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eff844fbe86826364484768a60998310611b80c6b62017885fc724e6e8a7eb59`

```dockerfile
```

-	Layers:
	-	`sha256:1f463faa96d4ca4aad5b4a3d668423b074a2c19488779bd4fc12f8ea018a9b1b`  
		Last Modified: Wed, 09 Sep 2026 03:42:57 GMT  
		Size: 24.9 MB (24894839 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f15f54345578d4252ce2f709551f7f0852c680c879186677c47e2f5c8b669577`  
		Last Modified: Wed, 09 Sep 2026 03:42:56 GMT  
		Size: 16.5 KB (16484 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-ros-base-noble`

```console
$ docker pull ros@sha256:0fe3d66b179ac21e56f4b88118022e71f9bb167508430fc0036929691f5a2e8f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-base-noble` - linux; amd64

```console
$ docker pull ros@sha256:1027b1c72dddf05e101f66f5442c91e816a004283b83aef60457e2bd408a0480
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.9 MB (296913900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63ef7f5c2dafb0030d180619039f298bf4243b2b13afbc763a9acf40ade9c0b7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:37:16 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:37:27 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:37:34 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:39:23 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:39:23 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:39:23 GMT
ENV ROS_DISTRO=kilted
# Wed, 09 Sep 2026 02:39:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:39:23 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:39:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:39:23 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:30:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:30:41 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:30:44 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:31:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49bb2a964d591029379b2d0358308ae2b1b7e2bb724a7cb6362819a3d3505495`  
		Last Modified: Wed, 09 Sep 2026 02:39:48 GMT  
		Size: 683.4 KB (683383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2584c3f4a0fb14b03304e2b7213e99496672839466d74cf416fb4f92210b564d`  
		Last Modified: Wed, 09 Sep 2026 02:39:48 GMT  
		Size: 6.7 MB (6710956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:231c5ec116aded7b525678c9fbb80f82080b9093d8d7c0eb99c92daf102ea3e4`  
		Last Modified: Wed, 09 Sep 2026 02:39:48 GMT  
		Size: 94.8 KB (94754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc2e78231aa2d2658441aa690629142f9e48313ea60ed64057b019ffa82cdb70`  
		Last Modified: Wed, 09 Sep 2026 02:39:51 GMT  
		Size: 121.2 MB (121174006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:577b1dbd3bee32d2776424e1b584848833c0037c898de5d3676a7b62c95a3b17`  
		Last Modified: Wed, 09 Sep 2026 02:39:50 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b6238b40be7195b1ff93726ca7746491c84d3e8c5bd6dcd7989b26997a8018c`  
		Last Modified: Wed, 09 Sep 2026 03:31:46 GMT  
		Size: 110.2 MB (110219100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fee94c3630276f20caf9f884cf338f188fac77c130ddda118b151da3f435100a`  
		Last Modified: Wed, 09 Sep 2026 03:31:42 GMT  
		Size: 373.9 KB (373902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf2b1baa86139c92393dde84d1966fec6cd641dafd1fbba7686298f4b37836a`  
		Last Modified: Wed, 09 Sep 2026 03:31:42 GMT  
		Size: 2.5 KB (2511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bf1418a677ec0a9a05a4e2c84f9c62749bdc21421b5a6cff457969d2ab1a735`  
		Last Modified: Wed, 09 Sep 2026 03:31:44 GMT  
		Size: 27.9 MB (27891839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:0d421233afe6d0951eec717ab65042f26dfe0fc43e63a74e6dbfb3f98367e4a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24888925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0c1b9d25244feb60a47eef94f111930665218fad5d2b59d3dae809fa44e36f9`

```dockerfile
```

-	Layers:
	-	`sha256:f1e2537faede4f603b0bebc93df12ad26dcc23f50ac38aa2265bba0c834f87a4`  
		Last Modified: Wed, 09 Sep 2026 03:31:44 GMT  
		Size: 24.9 MB (24872579 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9560fb8ee92e6b5e82ee7479b36591f9c6f4289e131dad4476ea69731e0318f4`  
		Last Modified: Wed, 09 Sep 2026 03:31:42 GMT  
		Size: 16.3 KB (16346 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-base-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:4a2e28417dc812c4efed1544a0585134c1d0acf90d07b8fe2415e4a64186b0af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.5 MB (285455596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d051e688fb8722aebc668fa90ccb7e9fa7124be7daa67ebfeb7fd099cc4748de`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:32:43 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:32:54 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:00 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:45 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:33:45 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:33:45 GMT
ENV ROS_DISTRO=kilted
# Wed, 09 Sep 2026 02:33:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:45 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:33:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:33:45 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:41:59 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:42:02 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:42:03 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:42:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a9b8c5b649d7f4652c4f90a0be83e701335065e9d7b377d25632f961139b2ef`  
		Last Modified: Wed, 09 Sep 2026 02:34:14 GMT  
		Size: 683.5 KB (683484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e24e2ffe0cbd326bff4bc231ff93b00db454a4a51d5b6244bb2b15b4998e1fff`  
		Last Modified: Wed, 09 Sep 2026 02:34:14 GMT  
		Size: 6.7 MB (6726440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:572a09c252e72e1644c9e46a8f4d5f105dcc00f5f74ca53ab52651ec25daeb32`  
		Last Modified: Wed, 09 Sep 2026 02:34:14 GMT  
		Size: 94.8 KB (94804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce4fd0d9a49c2cfca0e07d440d10b1a4abbabf0bb581a6e9ebd6c5081d57443a`  
		Last Modified: Wed, 09 Sep 2026 02:34:17 GMT  
		Size: 116.0 MB (115975153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fb35690e9e72fcc85509bb28e9aae6ea055ae8eb4b675b119b495b414884e71`  
		Last Modified: Wed, 09 Sep 2026 02:34:11 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:694cdba5a21af47ed9f47057289eae06e005a49d34d9f8bf09731e3cd2a73370`  
		Last Modified: Wed, 09 Sep 2026 03:42:59 GMT  
		Size: 105.7 MB (105651092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feb6985d0693d7c96d3b7e7f561ed8d83af45a3cc6a390012600b132387e61c1`  
		Last Modified: Wed, 09 Sep 2026 03:42:56 GMT  
		Size: 373.9 KB (373902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b98269f080e5e4d9b833baca47024452c9861727e07ed526398f457191365a3`  
		Last Modified: Wed, 09 Sep 2026 03:42:56 GMT  
		Size: 2.5 KB (2503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18e5766a0391ae0c2f241bec42e726977c449e079ec4f390d63bbfc7d2b413c9`  
		Last Modified: Wed, 09 Sep 2026 03:42:58 GMT  
		Size: 27.0 MB (27008007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:c15bed3fefee8e51c4465e5020f89251f0927a65025eba589754bf8947be6e6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24911323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eff844fbe86826364484768a60998310611b80c6b62017885fc724e6e8a7eb59`

```dockerfile
```

-	Layers:
	-	`sha256:1f463faa96d4ca4aad5b4a3d668423b074a2c19488779bd4fc12f8ea018a9b1b`  
		Last Modified: Wed, 09 Sep 2026 03:42:57 GMT  
		Size: 24.9 MB (24894839 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f15f54345578d4252ce2f709551f7f0852c680c879186677c47e2f5c8b669577`  
		Last Modified: Wed, 09 Sep 2026 03:42:56 GMT  
		Size: 16.5 KB (16484 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-ros-core`

```console
$ docker pull ros@sha256:5a7c84549a65168e65546abff5c7924237aa69cf7c173c98040323312c652d73
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:76d2c94e0722e15ff1f09313ab97f229830eabf13d3a1880c1d4e9ed309c7c9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.4 MB (158426548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31b3c277508eafbdc52aeb56ce8c72dceb9a11b439ee141bca01743b697d4006`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:37:16 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:37:27 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:37:34 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:39:23 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:39:23 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:39:23 GMT
ENV ROS_DISTRO=kilted
# Wed, 09 Sep 2026 02:39:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:39:23 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:39:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:39:23 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49bb2a964d591029379b2d0358308ae2b1b7e2bb724a7cb6362819a3d3505495`  
		Last Modified: Wed, 09 Sep 2026 02:39:48 GMT  
		Size: 683.4 KB (683383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2584c3f4a0fb14b03304e2b7213e99496672839466d74cf416fb4f92210b564d`  
		Last Modified: Wed, 09 Sep 2026 02:39:48 GMT  
		Size: 6.7 MB (6710956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:231c5ec116aded7b525678c9fbb80f82080b9093d8d7c0eb99c92daf102ea3e4`  
		Last Modified: Wed, 09 Sep 2026 02:39:48 GMT  
		Size: 94.8 KB (94754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc2e78231aa2d2658441aa690629142f9e48313ea60ed64057b019ffa82cdb70`  
		Last Modified: Wed, 09 Sep 2026 02:39:51 GMT  
		Size: 121.2 MB (121174006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:577b1dbd3bee32d2776424e1b584848833c0037c898de5d3676a7b62c95a3b17`  
		Last Modified: Wed, 09 Sep 2026 02:39:50 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:7b736492861dafee33fb45bc331d7a0da44ef1d10dadab0d23d95bf0a18151a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18628888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d08b1086cb989fe0d307dfb12b0fa23f5fa620996715da295ee7d0a170f72a7b`

```dockerfile
```

-	Layers:
	-	`sha256:8d85271ac8615b8dce4466b42c34bba4fbdd9d1a5f58e62a91e4a7d2582815c2`  
		Last Modified: Wed, 09 Sep 2026 02:39:49 GMT  
		Size: 18.6 MB (18614267 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b777406a0b804d70dd9ea3ef15798201e3800a61f4242256b959aaa3ce3fca5`  
		Last Modified: Wed, 09 Sep 2026 02:39:48 GMT  
		Size: 14.6 KB (14621 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:43b85d4cf48eeb4f0c1eba69b366767ed4550be278c71c0e61c37fa9af8685d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.4 MB (152420092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d26d8005985d5de8d95cc231856839af1dfa5a869080dc3ffd2909d5094b36bb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:32:43 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:32:54 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:00 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:45 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:33:45 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:33:45 GMT
ENV ROS_DISTRO=kilted
# Wed, 09 Sep 2026 02:33:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:45 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:33:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:33:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a9b8c5b649d7f4652c4f90a0be83e701335065e9d7b377d25632f961139b2ef`  
		Last Modified: Wed, 09 Sep 2026 02:34:14 GMT  
		Size: 683.5 KB (683484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e24e2ffe0cbd326bff4bc231ff93b00db454a4a51d5b6244bb2b15b4998e1fff`  
		Last Modified: Wed, 09 Sep 2026 02:34:14 GMT  
		Size: 6.7 MB (6726440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:572a09c252e72e1644c9e46a8f4d5f105dcc00f5f74ca53ab52651ec25daeb32`  
		Last Modified: Wed, 09 Sep 2026 02:34:14 GMT  
		Size: 94.8 KB (94804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce4fd0d9a49c2cfca0e07d440d10b1a4abbabf0bb581a6e9ebd6c5081d57443a`  
		Last Modified: Wed, 09 Sep 2026 02:34:17 GMT  
		Size: 116.0 MB (115975153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fb35690e9e72fcc85509bb28e9aae6ea055ae8eb4b675b119b495b414884e71`  
		Last Modified: Wed, 09 Sep 2026 02:34:11 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:46ae5f7e2045978e78c9ad1802fe47d2d81021f05fe52445a344cd166f191353
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18603023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e9af9195c160997cd20eec149243cb02e0bf523d4dd0c5528ad51573e056b28`

```dockerfile
```

-	Layers:
	-	`sha256:53c35894a478157a5bea302be43f4df5cd4f1cf31372b856806bb95b3cb0f031`  
		Last Modified: Wed, 09 Sep 2026 02:34:15 GMT  
		Size: 18.6 MB (18588278 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a32d5a45ffa47459f4d52334e12fc72fd0822c790039d7ed36dd1414e4c65500`  
		Last Modified: Wed, 09 Sep 2026 02:34:14 GMT  
		Size: 14.7 KB (14745 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-ros-core-noble`

```console
$ docker pull ros@sha256:5a7c84549a65168e65546abff5c7924237aa69cf7c173c98040323312c652d73
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-core-noble` - linux; amd64

```console
$ docker pull ros@sha256:76d2c94e0722e15ff1f09313ab97f229830eabf13d3a1880c1d4e9ed309c7c9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.4 MB (158426548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31b3c277508eafbdc52aeb56ce8c72dceb9a11b439ee141bca01743b697d4006`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:37:16 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:37:27 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:37:34 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:39:23 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:39:23 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:39:23 GMT
ENV ROS_DISTRO=kilted
# Wed, 09 Sep 2026 02:39:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:39:23 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:39:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:39:23 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49bb2a964d591029379b2d0358308ae2b1b7e2bb724a7cb6362819a3d3505495`  
		Last Modified: Wed, 09 Sep 2026 02:39:48 GMT  
		Size: 683.4 KB (683383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2584c3f4a0fb14b03304e2b7213e99496672839466d74cf416fb4f92210b564d`  
		Last Modified: Wed, 09 Sep 2026 02:39:48 GMT  
		Size: 6.7 MB (6710956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:231c5ec116aded7b525678c9fbb80f82080b9093d8d7c0eb99c92daf102ea3e4`  
		Last Modified: Wed, 09 Sep 2026 02:39:48 GMT  
		Size: 94.8 KB (94754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc2e78231aa2d2658441aa690629142f9e48313ea60ed64057b019ffa82cdb70`  
		Last Modified: Wed, 09 Sep 2026 02:39:51 GMT  
		Size: 121.2 MB (121174006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:577b1dbd3bee32d2776424e1b584848833c0037c898de5d3676a7b62c95a3b17`  
		Last Modified: Wed, 09 Sep 2026 02:39:50 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:7b736492861dafee33fb45bc331d7a0da44ef1d10dadab0d23d95bf0a18151a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18628888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d08b1086cb989fe0d307dfb12b0fa23f5fa620996715da295ee7d0a170f72a7b`

```dockerfile
```

-	Layers:
	-	`sha256:8d85271ac8615b8dce4466b42c34bba4fbdd9d1a5f58e62a91e4a7d2582815c2`  
		Last Modified: Wed, 09 Sep 2026 02:39:49 GMT  
		Size: 18.6 MB (18614267 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b777406a0b804d70dd9ea3ef15798201e3800a61f4242256b959aaa3ce3fca5`  
		Last Modified: Wed, 09 Sep 2026 02:39:48 GMT  
		Size: 14.6 KB (14621 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-core-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:43b85d4cf48eeb4f0c1eba69b366767ed4550be278c71c0e61c37fa9af8685d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.4 MB (152420092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d26d8005985d5de8d95cc231856839af1dfa5a869080dc3ffd2909d5094b36bb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:32:43 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:32:54 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:00 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:45 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:33:45 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:33:45 GMT
ENV ROS_DISTRO=kilted
# Wed, 09 Sep 2026 02:33:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:45 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:33:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:33:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a9b8c5b649d7f4652c4f90a0be83e701335065e9d7b377d25632f961139b2ef`  
		Last Modified: Wed, 09 Sep 2026 02:34:14 GMT  
		Size: 683.5 KB (683484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e24e2ffe0cbd326bff4bc231ff93b00db454a4a51d5b6244bb2b15b4998e1fff`  
		Last Modified: Wed, 09 Sep 2026 02:34:14 GMT  
		Size: 6.7 MB (6726440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:572a09c252e72e1644c9e46a8f4d5f105dcc00f5f74ca53ab52651ec25daeb32`  
		Last Modified: Wed, 09 Sep 2026 02:34:14 GMT  
		Size: 94.8 KB (94804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce4fd0d9a49c2cfca0e07d440d10b1a4abbabf0bb581a6e9ebd6c5081d57443a`  
		Last Modified: Wed, 09 Sep 2026 02:34:17 GMT  
		Size: 116.0 MB (115975153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fb35690e9e72fcc85509bb28e9aae6ea055ae8eb4b675b119b495b414884e71`  
		Last Modified: Wed, 09 Sep 2026 02:34:11 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:46ae5f7e2045978e78c9ad1802fe47d2d81021f05fe52445a344cd166f191353
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18603023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e9af9195c160997cd20eec149243cb02e0bf523d4dd0c5528ad51573e056b28`

```dockerfile
```

-	Layers:
	-	`sha256:53c35894a478157a5bea302be43f4df5cd4f1cf31372b856806bb95b3cb0f031`  
		Last Modified: Wed, 09 Sep 2026 02:34:15 GMT  
		Size: 18.6 MB (18588278 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a32d5a45ffa47459f4d52334e12fc72fd0822c790039d7ed36dd1414e4c65500`  
		Last Modified: Wed, 09 Sep 2026 02:34:14 GMT  
		Size: 14.7 KB (14745 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:latest`

```console
$ docker pull ros@sha256:dbb2a254523ee3c40ec9fc07956bc1042253c7beb3b6dad4a4585d85c99e9716
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:latest` - linux; amd64

```console
$ docker pull ros@sha256:3be0e6056579cf89e1eb0153863aca1e8207188afc4acaac66ac19cb7997f727
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.2 MB (349209613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ad9ffba904492daaf44994966b36a71bf09768a1540e1df6e959fb4d1fefe77`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 01 Sep 2026 20:36:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.9485.tar --tag 26.04
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-01T20:37:00.369571+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-01T20:37:00.369571+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.control_data.9485.tar
# Wed, 09 Sep 2026 02:38:07 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:38:21 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:38:26 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:39:20 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:39:20 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:39:20 GMT
ENV ROS_DISTRO=lyrical
# Wed, 09 Sep 2026 02:39:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:39:20 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:39:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:39:20 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:30:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:30:59 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:31:00 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:31:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:08f5f5b2a2b0d2a960804adef3bd1783c5f2c20f42db5e290dc05d9529d11ae2`  
		Last Modified: Wed, 02 Sep 2026 10:46:03 GMT  
		Size: 41.6 MB (41602703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a7c4f6d8c3863707c14af40aad062db2bb477271491c7d3e99e03394dd261e3`  
		Last Modified: Wed, 02 Sep 2026 10:46:06 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ce8ee0b8a82476b3bd26c504678b9995756f1739bcb449ddc444484c15d4082`  
		Last Modified: Wed, 09 Sep 2026 02:39:59 GMT  
		Size: 741.5 KB (741486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92b6ffc2cd101411c685959009ad8ef11efd7ea616f25bd74de6f22a331330f3`  
		Last Modified: Wed, 09 Sep 2026 02:39:59 GMT  
		Size: 9.8 MB (9783835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20f6484ff65301b9b0c380751ec140b24523ecf210380eccbeb1d51ae67ab0fa`  
		Last Modified: Wed, 09 Sep 2026 02:39:59 GMT  
		Size: 91.7 KB (91705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eb8f4f667de9c5bbae560cd7b5b218c817f7c9225ad628dc2684e6770d93631`  
		Last Modified: Wed, 09 Sep 2026 02:40:03 GMT  
		Size: 143.4 MB (143405349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:694ead40e1fddf2d24fd498727f6ddc714628beb600d79be749da72dab0b6ce7`  
		Last Modified: Wed, 09 Sep 2026 02:40:00 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b572dbefb81bb5446b6f029252199f2fea36a08077acac526a1ec873256f204e`  
		Last Modified: Wed, 09 Sep 2026 03:32:14 GMT  
		Size: 127.3 MB (127335634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39661be686a916677ecc0ee87fd7e641e1fc8caddbf4469b7d92893281701fbf`  
		Last Modified: Wed, 09 Sep 2026 03:32:10 GMT  
		Size: 401.2 KB (401164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:835e900bb5c73859cdf26c71e8e0e89816f49505a7b8578fc7d24804c05b07fd`  
		Last Modified: Wed, 09 Sep 2026 03:32:11 GMT  
		Size: 130.8 KB (130819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90adab432563faaa786940a68c9ddcbf963aef904b6ced77356a93ecbceab76f`  
		Last Modified: Wed, 09 Sep 2026 03:32:12 GMT  
		Size: 25.7 MB (25716330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:latest` - unknown; unknown

```console
$ docker pull ros@sha256:7d4259dbbf426ce0ad68383ddf71993602c89707140336c6ece0c79a96d0ad2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29150657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a93067344561e4b85a089de90bdcaef004a9f11e7178bdfded8f19baaa33928`

```dockerfile
```

-	Layers:
	-	`sha256:815ee418fc54d3bcabb87de5db590adb9ceb7592dffbb2a8c08d0dcfe19240d2`  
		Last Modified: Wed, 09 Sep 2026 03:32:12 GMT  
		Size: 29.1 MB (29133207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c76e67705e3484f06e31113d0f6eac84dedc5a72bb65beaab07f2dbd57ddb7f4`  
		Last Modified: Wed, 09 Sep 2026 03:32:10 GMT  
		Size: 17.4 KB (17450 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:latest` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:423e8c770f1bddc1b61aa23de753e4aa705f4e948c2c5f69409037caa990a59b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.7 MB (333682333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04f4e5c0bbf2ca61872b627b573c84952c4969974a05f916f4fb265d8489bfe4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.9504.tar --tag 26.04
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-01T20:40:13.648724+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-01T20:40:13.648724+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.control_data.9504.tar
# Wed, 09 Sep 2026 02:32:45 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:00 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:06 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:34:00 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:34:00 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:34:00 GMT
ENV ROS_DISTRO=lyrical
# Wed, 09 Sep 2026 02:34:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:34:00 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:34:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:34:00 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:42:12 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:42:14 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:42:16 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:42:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:56f0dbdea7403d4e7167e2c10f4212e62e9887f6701e295380c2c043a7f360a4`  
		Last Modified: Wed, 02 Sep 2026 10:46:14 GMT  
		Size: 40.7 MB (40734829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7189ca5dbddf377ce4968cfdcd1b9dcb34cd8528a48f0a7925b6c0ae89cf7603`  
		Last Modified: Wed, 02 Sep 2026 10:46:17 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8546ff29b635872e2d6955c28f372cfdca29b876d1e225f74f1e2a10228c0b53`  
		Last Modified: Wed, 09 Sep 2026 02:34:39 GMT  
		Size: 741.7 KB (741681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9af7c5aee8fc6cd7ec51f810635cfa1c64006472f505cdd6bcff22d1880b6959`  
		Last Modified: Wed, 09 Sep 2026 02:34:40 GMT  
		Size: 9.6 MB (9607126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4003888ceb9694bf06638cdb28232b53b05cf924cc2d7b897e837ec18ab68721`  
		Last Modified: Wed, 09 Sep 2026 02:34:40 GMT  
		Size: 91.9 KB (91939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dfb752acfed6849404275e7e2406f6d5db3cbcc5615f2166937de94a1e852e3`  
		Last Modified: Wed, 09 Sep 2026 02:34:43 GMT  
		Size: 136.6 MB (136618607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95aba2ee933ffa5e234fd67499c5da0f3409579dc81c9e3a8f11378d63458a44`  
		Last Modified: Wed, 09 Sep 2026 02:34:41 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69ca5378dea79b103d12b392f8d0d00b09f3f3747722674909a8cfabf592a0ce`  
		Last Modified: Wed, 09 Sep 2026 03:43:26 GMT  
		Size: 120.7 MB (120688910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40428a66d0a5bdaff393834c384de5024dbb0ee793525de51b948990d677bb3b`  
		Last Modified: Wed, 09 Sep 2026 03:43:23 GMT  
		Size: 401.2 KB (401160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:695df8541c11b0d1ef38da66f41c9194fb207d907a25c048468efcd089afd441`  
		Last Modified: Wed, 09 Sep 2026 03:43:23 GMT  
		Size: 130.9 KB (130863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e45ee833d858d2cce444a0964d193a862df2a746ea66713fde50c06094c31d7`  
		Last Modified: Wed, 09 Sep 2026 03:43:24 GMT  
		Size: 24.7 MB (24666632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:latest` - unknown; unknown

```console
$ docker pull ros@sha256:f64bad21cabf7160c7d2a62d4165de02a1bcb7e5fecf7046c07e5c9e9e219523
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29215438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f13aa53487d63b4b33b4b19bfa4a1abb2b6680720f93bb215250f9568c4250ad`

```dockerfile
```

-	Layers:
	-	`sha256:51ded230c7b48adf6368ac461b649a90c5c9b30db9e3034b6123213a25d3f3a8`  
		Last Modified: Wed, 09 Sep 2026 03:43:24 GMT  
		Size: 29.2 MB (29197839 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:391e2225fa9a35bcfdb53a3ea9f6b4a663d08b9724c881c6c04ffec1e9aa2ef2`  
		Last Modified: Wed, 09 Sep 2026 03:43:23 GMT  
		Size: 17.6 KB (17599 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical`

```console
$ docker pull ros@sha256:dbb2a254523ee3c40ec9fc07956bc1042253c7beb3b6dad4a4585d85c99e9716
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical` - linux; amd64

```console
$ docker pull ros@sha256:3be0e6056579cf89e1eb0153863aca1e8207188afc4acaac66ac19cb7997f727
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.2 MB (349209613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ad9ffba904492daaf44994966b36a71bf09768a1540e1df6e959fb4d1fefe77`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 01 Sep 2026 20:36:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.9485.tar --tag 26.04
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-01T20:37:00.369571+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-01T20:37:00.369571+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.control_data.9485.tar
# Wed, 09 Sep 2026 02:38:07 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:38:21 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:38:26 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:39:20 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:39:20 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:39:20 GMT
ENV ROS_DISTRO=lyrical
# Wed, 09 Sep 2026 02:39:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:39:20 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:39:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:39:20 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:30:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:30:59 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:31:00 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:31:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:08f5f5b2a2b0d2a960804adef3bd1783c5f2c20f42db5e290dc05d9529d11ae2`  
		Last Modified: Wed, 02 Sep 2026 10:46:03 GMT  
		Size: 41.6 MB (41602703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a7c4f6d8c3863707c14af40aad062db2bb477271491c7d3e99e03394dd261e3`  
		Last Modified: Wed, 02 Sep 2026 10:46:06 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ce8ee0b8a82476b3bd26c504678b9995756f1739bcb449ddc444484c15d4082`  
		Last Modified: Wed, 09 Sep 2026 02:39:59 GMT  
		Size: 741.5 KB (741486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92b6ffc2cd101411c685959009ad8ef11efd7ea616f25bd74de6f22a331330f3`  
		Last Modified: Wed, 09 Sep 2026 02:39:59 GMT  
		Size: 9.8 MB (9783835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20f6484ff65301b9b0c380751ec140b24523ecf210380eccbeb1d51ae67ab0fa`  
		Last Modified: Wed, 09 Sep 2026 02:39:59 GMT  
		Size: 91.7 KB (91705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eb8f4f667de9c5bbae560cd7b5b218c817f7c9225ad628dc2684e6770d93631`  
		Last Modified: Wed, 09 Sep 2026 02:40:03 GMT  
		Size: 143.4 MB (143405349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:694ead40e1fddf2d24fd498727f6ddc714628beb600d79be749da72dab0b6ce7`  
		Last Modified: Wed, 09 Sep 2026 02:40:00 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b572dbefb81bb5446b6f029252199f2fea36a08077acac526a1ec873256f204e`  
		Last Modified: Wed, 09 Sep 2026 03:32:14 GMT  
		Size: 127.3 MB (127335634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39661be686a916677ecc0ee87fd7e641e1fc8caddbf4469b7d92893281701fbf`  
		Last Modified: Wed, 09 Sep 2026 03:32:10 GMT  
		Size: 401.2 KB (401164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:835e900bb5c73859cdf26c71e8e0e89816f49505a7b8578fc7d24804c05b07fd`  
		Last Modified: Wed, 09 Sep 2026 03:32:11 GMT  
		Size: 130.8 KB (130819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90adab432563faaa786940a68c9ddcbf963aef904b6ced77356a93ecbceab76f`  
		Last Modified: Wed, 09 Sep 2026 03:32:12 GMT  
		Size: 25.7 MB (25716330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical` - unknown; unknown

```console
$ docker pull ros@sha256:7d4259dbbf426ce0ad68383ddf71993602c89707140336c6ece0c79a96d0ad2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29150657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a93067344561e4b85a089de90bdcaef004a9f11e7178bdfded8f19baaa33928`

```dockerfile
```

-	Layers:
	-	`sha256:815ee418fc54d3bcabb87de5db590adb9ceb7592dffbb2a8c08d0dcfe19240d2`  
		Last Modified: Wed, 09 Sep 2026 03:32:12 GMT  
		Size: 29.1 MB (29133207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c76e67705e3484f06e31113d0f6eac84dedc5a72bb65beaab07f2dbd57ddb7f4`  
		Last Modified: Wed, 09 Sep 2026 03:32:10 GMT  
		Size: 17.4 KB (17450 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:423e8c770f1bddc1b61aa23de753e4aa705f4e948c2c5f69409037caa990a59b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.7 MB (333682333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04f4e5c0bbf2ca61872b627b573c84952c4969974a05f916f4fb265d8489bfe4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.9504.tar --tag 26.04
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-01T20:40:13.648724+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-01T20:40:13.648724+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.control_data.9504.tar
# Wed, 09 Sep 2026 02:32:45 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:00 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:06 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:34:00 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:34:00 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:34:00 GMT
ENV ROS_DISTRO=lyrical
# Wed, 09 Sep 2026 02:34:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:34:00 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:34:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:34:00 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:42:12 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:42:14 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:42:16 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:42:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:56f0dbdea7403d4e7167e2c10f4212e62e9887f6701e295380c2c043a7f360a4`  
		Last Modified: Wed, 02 Sep 2026 10:46:14 GMT  
		Size: 40.7 MB (40734829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7189ca5dbddf377ce4968cfdcd1b9dcb34cd8528a48f0a7925b6c0ae89cf7603`  
		Last Modified: Wed, 02 Sep 2026 10:46:17 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8546ff29b635872e2d6955c28f372cfdca29b876d1e225f74f1e2a10228c0b53`  
		Last Modified: Wed, 09 Sep 2026 02:34:39 GMT  
		Size: 741.7 KB (741681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9af7c5aee8fc6cd7ec51f810635cfa1c64006472f505cdd6bcff22d1880b6959`  
		Last Modified: Wed, 09 Sep 2026 02:34:40 GMT  
		Size: 9.6 MB (9607126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4003888ceb9694bf06638cdb28232b53b05cf924cc2d7b897e837ec18ab68721`  
		Last Modified: Wed, 09 Sep 2026 02:34:40 GMT  
		Size: 91.9 KB (91939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dfb752acfed6849404275e7e2406f6d5db3cbcc5615f2166937de94a1e852e3`  
		Last Modified: Wed, 09 Sep 2026 02:34:43 GMT  
		Size: 136.6 MB (136618607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95aba2ee933ffa5e234fd67499c5da0f3409579dc81c9e3a8f11378d63458a44`  
		Last Modified: Wed, 09 Sep 2026 02:34:41 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69ca5378dea79b103d12b392f8d0d00b09f3f3747722674909a8cfabf592a0ce`  
		Last Modified: Wed, 09 Sep 2026 03:43:26 GMT  
		Size: 120.7 MB (120688910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40428a66d0a5bdaff393834c384de5024dbb0ee793525de51b948990d677bb3b`  
		Last Modified: Wed, 09 Sep 2026 03:43:23 GMT  
		Size: 401.2 KB (401160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:695df8541c11b0d1ef38da66f41c9194fb207d907a25c048468efcd089afd441`  
		Last Modified: Wed, 09 Sep 2026 03:43:23 GMT  
		Size: 130.9 KB (130863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e45ee833d858d2cce444a0964d193a862df2a746ea66713fde50c06094c31d7`  
		Last Modified: Wed, 09 Sep 2026 03:43:24 GMT  
		Size: 24.7 MB (24666632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical` - unknown; unknown

```console
$ docker pull ros@sha256:f64bad21cabf7160c7d2a62d4165de02a1bcb7e5fecf7046c07e5c9e9e219523
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29215438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f13aa53487d63b4b33b4b19bfa4a1abb2b6680720f93bb215250f9568c4250ad`

```dockerfile
```

-	Layers:
	-	`sha256:51ded230c7b48adf6368ac461b649a90c5c9b30db9e3034b6123213a25d3f3a8`  
		Last Modified: Wed, 09 Sep 2026 03:43:24 GMT  
		Size: 29.2 MB (29197839 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:391e2225fa9a35bcfdb53a3ea9f6b4a663d08b9724c881c6c04ffec1e9aa2ef2`  
		Last Modified: Wed, 09 Sep 2026 03:43:23 GMT  
		Size: 17.6 KB (17599 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-perception`

```console
$ docker pull ros@sha256:16f4131c5b9b0d483e9fcdfad86a6cf1666039285f04fe7af91e1b0f81362d73
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-perception` - linux; amd64

```console
$ docker pull ros@sha256:5b35172969d68d31850bb01a8d7e823c1685a089e2a74582e84a60b5d5643af9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1537801596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c494d0dda5c5c86f06dcd62288304efa36a53c0f7b565c32c190fac937985291`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 01 Sep 2026 20:36:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.9485.tar --tag 26.04
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-01T20:37:00.369571+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-01T20:37:00.369571+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.control_data.9485.tar
# Wed, 09 Sep 2026 02:38:07 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:38:21 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:38:26 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:39:20 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:39:20 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:39:20 GMT
ENV ROS_DISTRO=lyrical
# Wed, 09 Sep 2026 02:39:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:39:20 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:39:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:39:20 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:30:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:30:59 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:31:00 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:31:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:22:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:08f5f5b2a2b0d2a960804adef3bd1783c5f2c20f42db5e290dc05d9529d11ae2`  
		Last Modified: Wed, 02 Sep 2026 10:46:03 GMT  
		Size: 41.6 MB (41602703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a7c4f6d8c3863707c14af40aad062db2bb477271491c7d3e99e03394dd261e3`  
		Last Modified: Wed, 02 Sep 2026 10:46:06 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ce8ee0b8a82476b3bd26c504678b9995756f1739bcb449ddc444484c15d4082`  
		Last Modified: Wed, 09 Sep 2026 02:39:59 GMT  
		Size: 741.5 KB (741486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92b6ffc2cd101411c685959009ad8ef11efd7ea616f25bd74de6f22a331330f3`  
		Last Modified: Wed, 09 Sep 2026 02:39:59 GMT  
		Size: 9.8 MB (9783835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20f6484ff65301b9b0c380751ec140b24523ecf210380eccbeb1d51ae67ab0fa`  
		Last Modified: Wed, 09 Sep 2026 02:39:59 GMT  
		Size: 91.7 KB (91705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eb8f4f667de9c5bbae560cd7b5b218c817f7c9225ad628dc2684e6770d93631`  
		Last Modified: Wed, 09 Sep 2026 02:40:03 GMT  
		Size: 143.4 MB (143405349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:694ead40e1fddf2d24fd498727f6ddc714628beb600d79be749da72dab0b6ce7`  
		Last Modified: Wed, 09 Sep 2026 02:40:00 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b572dbefb81bb5446b6f029252199f2fea36a08077acac526a1ec873256f204e`  
		Last Modified: Wed, 09 Sep 2026 03:32:14 GMT  
		Size: 127.3 MB (127335634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39661be686a916677ecc0ee87fd7e641e1fc8caddbf4469b7d92893281701fbf`  
		Last Modified: Wed, 09 Sep 2026 03:32:10 GMT  
		Size: 401.2 KB (401164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:835e900bb5c73859cdf26c71e8e0e89816f49505a7b8578fc7d24804c05b07fd`  
		Last Modified: Wed, 09 Sep 2026 03:32:11 GMT  
		Size: 130.8 KB (130819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90adab432563faaa786940a68c9ddcbf963aef904b6ced77356a93ecbceab76f`  
		Last Modified: Wed, 09 Sep 2026 03:32:12 GMT  
		Size: 25.7 MB (25716330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f46d109b838e194bd3a8ef68943889eee5c19ee0c0beb304514ad067fc85641c`  
		Last Modified: Wed, 09 Sep 2026 04:27:20 GMT  
		Size: 1.2 GB (1188591983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception` - unknown; unknown

```console
$ docker pull ros@sha256:1af71b0c1338250a46b0a7bfb20e9824d53e0fad685bf22f0293b83f5dc5efcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64352683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81280704f76f2a35647809822ece611e6e39b73fbbb3f31e914b8ad7b5db50f2`

```dockerfile
```

-	Layers:
	-	`sha256:efac6844829199133fd6dbe7f5a91bc47f4f488d9ae3bc3478db45b87ef1ce66`  
		Last Modified: Wed, 09 Sep 2026 04:27:02 GMT  
		Size: 64.3 MB (64342990 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f171f74115650a4b0d1e16eefe3f4479ccbabf2ad51c74732aa0a4b57d0eeed`  
		Last Modified: Wed, 09 Sep 2026 04:26:58 GMT  
		Size: 9.7 KB (9693 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:a024655d21ffdd0e0c3118a6423abe7e7c27dd59d0bf348bff906e12429cf9fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1480890790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24e12c095b94e45f4c76b705793492939a213318d987012c56e4d5867d95610f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.9504.tar --tag 26.04
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-01T20:40:13.648724+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-01T20:40:13.648724+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.control_data.9504.tar
# Wed, 09 Sep 2026 02:32:45 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:00 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:06 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:34:00 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:34:00 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:34:00 GMT
ENV ROS_DISTRO=lyrical
# Wed, 09 Sep 2026 02:34:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:34:00 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:34:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:34:00 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:42:12 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:42:14 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:42:16 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:42:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:20:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:56f0dbdea7403d4e7167e2c10f4212e62e9887f6701e295380c2c043a7f360a4`  
		Last Modified: Wed, 02 Sep 2026 10:46:14 GMT  
		Size: 40.7 MB (40734829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7189ca5dbddf377ce4968cfdcd1b9dcb34cd8528a48f0a7925b6c0ae89cf7603`  
		Last Modified: Wed, 02 Sep 2026 10:46:17 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8546ff29b635872e2d6955c28f372cfdca29b876d1e225f74f1e2a10228c0b53`  
		Last Modified: Wed, 09 Sep 2026 02:34:39 GMT  
		Size: 741.7 KB (741681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9af7c5aee8fc6cd7ec51f810635cfa1c64006472f505cdd6bcff22d1880b6959`  
		Last Modified: Wed, 09 Sep 2026 02:34:40 GMT  
		Size: 9.6 MB (9607126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4003888ceb9694bf06638cdb28232b53b05cf924cc2d7b897e837ec18ab68721`  
		Last Modified: Wed, 09 Sep 2026 02:34:40 GMT  
		Size: 91.9 KB (91939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dfb752acfed6849404275e7e2406f6d5db3cbcc5615f2166937de94a1e852e3`  
		Last Modified: Wed, 09 Sep 2026 02:34:43 GMT  
		Size: 136.6 MB (136618607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95aba2ee933ffa5e234fd67499c5da0f3409579dc81c9e3a8f11378d63458a44`  
		Last Modified: Wed, 09 Sep 2026 02:34:41 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69ca5378dea79b103d12b392f8d0d00b09f3f3747722674909a8cfabf592a0ce`  
		Last Modified: Wed, 09 Sep 2026 03:43:26 GMT  
		Size: 120.7 MB (120688910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40428a66d0a5bdaff393834c384de5024dbb0ee793525de51b948990d677bb3b`  
		Last Modified: Wed, 09 Sep 2026 03:43:23 GMT  
		Size: 401.2 KB (401160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:695df8541c11b0d1ef38da66f41c9194fb207d907a25c048468efcd089afd441`  
		Last Modified: Wed, 09 Sep 2026 03:43:23 GMT  
		Size: 130.9 KB (130863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e45ee833d858d2cce444a0964d193a862df2a746ea66713fde50c06094c31d7`  
		Last Modified: Wed, 09 Sep 2026 03:43:24 GMT  
		Size: 24.7 MB (24666632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e8cdb0c2d41d2c52783e9fdbea590e10f07477fba238a6b1ce477cd0ada2ca9`  
		Last Modified: Wed, 09 Sep 2026 04:25:33 GMT  
		Size: 1.1 GB (1147208457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception` - unknown; unknown

```console
$ docker pull ros@sha256:9d1420aee5cccff8ae47326696ec81b4bff8bf073eece8c53c873959b746f537
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64266980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01c36618634bbe260d29abf424b8f574018a611ab741d2591a5ebcd5be227d11`

```dockerfile
```

-	Layers:
	-	`sha256:8ffeb2915181a90c9ada7856c47568f57e64494653c0b4a749ae1d176cf312bb`  
		Last Modified: Wed, 09 Sep 2026 04:25:14 GMT  
		Size: 64.3 MB (64257208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e9089ad9dd16b6405b09203744ff2493f076c20280d47309ade40bcc29f11c3`  
		Last Modified: Wed, 09 Sep 2026 04:25:11 GMT  
		Size: 9.8 KB (9772 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-perception-resolute`

```console
$ docker pull ros@sha256:16f4131c5b9b0d483e9fcdfad86a6cf1666039285f04fe7af91e1b0f81362d73
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-perception-resolute` - linux; amd64

```console
$ docker pull ros@sha256:5b35172969d68d31850bb01a8d7e823c1685a089e2a74582e84a60b5d5643af9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1537801596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c494d0dda5c5c86f06dcd62288304efa36a53c0f7b565c32c190fac937985291`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 01 Sep 2026 20:36:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.9485.tar --tag 26.04
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-01T20:37:00.369571+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-01T20:37:00.369571+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.control_data.9485.tar
# Wed, 09 Sep 2026 02:38:07 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:38:21 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:38:26 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:39:20 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:39:20 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:39:20 GMT
ENV ROS_DISTRO=lyrical
# Wed, 09 Sep 2026 02:39:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:39:20 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:39:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:39:20 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:30:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:30:59 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:31:00 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:31:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:22:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:08f5f5b2a2b0d2a960804adef3bd1783c5f2c20f42db5e290dc05d9529d11ae2`  
		Last Modified: Wed, 02 Sep 2026 10:46:03 GMT  
		Size: 41.6 MB (41602703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a7c4f6d8c3863707c14af40aad062db2bb477271491c7d3e99e03394dd261e3`  
		Last Modified: Wed, 02 Sep 2026 10:46:06 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ce8ee0b8a82476b3bd26c504678b9995756f1739bcb449ddc444484c15d4082`  
		Last Modified: Wed, 09 Sep 2026 02:39:59 GMT  
		Size: 741.5 KB (741486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92b6ffc2cd101411c685959009ad8ef11efd7ea616f25bd74de6f22a331330f3`  
		Last Modified: Wed, 09 Sep 2026 02:39:59 GMT  
		Size: 9.8 MB (9783835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20f6484ff65301b9b0c380751ec140b24523ecf210380eccbeb1d51ae67ab0fa`  
		Last Modified: Wed, 09 Sep 2026 02:39:59 GMT  
		Size: 91.7 KB (91705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eb8f4f667de9c5bbae560cd7b5b218c817f7c9225ad628dc2684e6770d93631`  
		Last Modified: Wed, 09 Sep 2026 02:40:03 GMT  
		Size: 143.4 MB (143405349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:694ead40e1fddf2d24fd498727f6ddc714628beb600d79be749da72dab0b6ce7`  
		Last Modified: Wed, 09 Sep 2026 02:40:00 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b572dbefb81bb5446b6f029252199f2fea36a08077acac526a1ec873256f204e`  
		Last Modified: Wed, 09 Sep 2026 03:32:14 GMT  
		Size: 127.3 MB (127335634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39661be686a916677ecc0ee87fd7e641e1fc8caddbf4469b7d92893281701fbf`  
		Last Modified: Wed, 09 Sep 2026 03:32:10 GMT  
		Size: 401.2 KB (401164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:835e900bb5c73859cdf26c71e8e0e89816f49505a7b8578fc7d24804c05b07fd`  
		Last Modified: Wed, 09 Sep 2026 03:32:11 GMT  
		Size: 130.8 KB (130819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90adab432563faaa786940a68c9ddcbf963aef904b6ced77356a93ecbceab76f`  
		Last Modified: Wed, 09 Sep 2026 03:32:12 GMT  
		Size: 25.7 MB (25716330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f46d109b838e194bd3a8ef68943889eee5c19ee0c0beb304514ad067fc85641c`  
		Last Modified: Wed, 09 Sep 2026 04:27:20 GMT  
		Size: 1.2 GB (1188591983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:1af71b0c1338250a46b0a7bfb20e9824d53e0fad685bf22f0293b83f5dc5efcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64352683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81280704f76f2a35647809822ece611e6e39b73fbbb3f31e914b8ad7b5db50f2`

```dockerfile
```

-	Layers:
	-	`sha256:efac6844829199133fd6dbe7f5a91bc47f4f488d9ae3bc3478db45b87ef1ce66`  
		Last Modified: Wed, 09 Sep 2026 04:27:02 GMT  
		Size: 64.3 MB (64342990 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f171f74115650a4b0d1e16eefe3f4479ccbabf2ad51c74732aa0a4b57d0eeed`  
		Last Modified: Wed, 09 Sep 2026 04:26:58 GMT  
		Size: 9.7 KB (9693 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-perception-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:a024655d21ffdd0e0c3118a6423abe7e7c27dd59d0bf348bff906e12429cf9fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1480890790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24e12c095b94e45f4c76b705793492939a213318d987012c56e4d5867d95610f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.9504.tar --tag 26.04
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-01T20:40:13.648724+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-01T20:40:13.648724+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.control_data.9504.tar
# Wed, 09 Sep 2026 02:32:45 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:00 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:06 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:34:00 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:34:00 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:34:00 GMT
ENV ROS_DISTRO=lyrical
# Wed, 09 Sep 2026 02:34:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:34:00 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:34:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:34:00 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:42:12 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:42:14 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:42:16 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:42:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:20:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:56f0dbdea7403d4e7167e2c10f4212e62e9887f6701e295380c2c043a7f360a4`  
		Last Modified: Wed, 02 Sep 2026 10:46:14 GMT  
		Size: 40.7 MB (40734829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7189ca5dbddf377ce4968cfdcd1b9dcb34cd8528a48f0a7925b6c0ae89cf7603`  
		Last Modified: Wed, 02 Sep 2026 10:46:17 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8546ff29b635872e2d6955c28f372cfdca29b876d1e225f74f1e2a10228c0b53`  
		Last Modified: Wed, 09 Sep 2026 02:34:39 GMT  
		Size: 741.7 KB (741681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9af7c5aee8fc6cd7ec51f810635cfa1c64006472f505cdd6bcff22d1880b6959`  
		Last Modified: Wed, 09 Sep 2026 02:34:40 GMT  
		Size: 9.6 MB (9607126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4003888ceb9694bf06638cdb28232b53b05cf924cc2d7b897e837ec18ab68721`  
		Last Modified: Wed, 09 Sep 2026 02:34:40 GMT  
		Size: 91.9 KB (91939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dfb752acfed6849404275e7e2406f6d5db3cbcc5615f2166937de94a1e852e3`  
		Last Modified: Wed, 09 Sep 2026 02:34:43 GMT  
		Size: 136.6 MB (136618607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95aba2ee933ffa5e234fd67499c5da0f3409579dc81c9e3a8f11378d63458a44`  
		Last Modified: Wed, 09 Sep 2026 02:34:41 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69ca5378dea79b103d12b392f8d0d00b09f3f3747722674909a8cfabf592a0ce`  
		Last Modified: Wed, 09 Sep 2026 03:43:26 GMT  
		Size: 120.7 MB (120688910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40428a66d0a5bdaff393834c384de5024dbb0ee793525de51b948990d677bb3b`  
		Last Modified: Wed, 09 Sep 2026 03:43:23 GMT  
		Size: 401.2 KB (401160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:695df8541c11b0d1ef38da66f41c9194fb207d907a25c048468efcd089afd441`  
		Last Modified: Wed, 09 Sep 2026 03:43:23 GMT  
		Size: 130.9 KB (130863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e45ee833d858d2cce444a0964d193a862df2a746ea66713fde50c06094c31d7`  
		Last Modified: Wed, 09 Sep 2026 03:43:24 GMT  
		Size: 24.7 MB (24666632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e8cdb0c2d41d2c52783e9fdbea590e10f07477fba238a6b1ce477cd0ada2ca9`  
		Last Modified: Wed, 09 Sep 2026 04:25:33 GMT  
		Size: 1.1 GB (1147208457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:9d1420aee5cccff8ae47326696ec81b4bff8bf073eece8c53c873959b746f537
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64266980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01c36618634bbe260d29abf424b8f574018a611ab741d2591a5ebcd5be227d11`

```dockerfile
```

-	Layers:
	-	`sha256:8ffeb2915181a90c9ada7856c47568f57e64494653c0b4a749ae1d176cf312bb`  
		Last Modified: Wed, 09 Sep 2026 04:25:14 GMT  
		Size: 64.3 MB (64257208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e9089ad9dd16b6405b09203744ff2493f076c20280d47309ade40bcc29f11c3`  
		Last Modified: Wed, 09 Sep 2026 04:25:11 GMT  
		Size: 9.8 KB (9772 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-ros-base`

```console
$ docker pull ros@sha256:dbb2a254523ee3c40ec9fc07956bc1042253c7beb3b6dad4a4585d85c99e9716
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:3be0e6056579cf89e1eb0153863aca1e8207188afc4acaac66ac19cb7997f727
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.2 MB (349209613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ad9ffba904492daaf44994966b36a71bf09768a1540e1df6e959fb4d1fefe77`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 01 Sep 2026 20:36:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.9485.tar --tag 26.04
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-01T20:37:00.369571+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-01T20:37:00.369571+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.control_data.9485.tar
# Wed, 09 Sep 2026 02:38:07 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:38:21 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:38:26 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:39:20 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:39:20 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:39:20 GMT
ENV ROS_DISTRO=lyrical
# Wed, 09 Sep 2026 02:39:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:39:20 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:39:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:39:20 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:30:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:30:59 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:31:00 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:31:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:08f5f5b2a2b0d2a960804adef3bd1783c5f2c20f42db5e290dc05d9529d11ae2`  
		Last Modified: Wed, 02 Sep 2026 10:46:03 GMT  
		Size: 41.6 MB (41602703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a7c4f6d8c3863707c14af40aad062db2bb477271491c7d3e99e03394dd261e3`  
		Last Modified: Wed, 02 Sep 2026 10:46:06 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ce8ee0b8a82476b3bd26c504678b9995756f1739bcb449ddc444484c15d4082`  
		Last Modified: Wed, 09 Sep 2026 02:39:59 GMT  
		Size: 741.5 KB (741486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92b6ffc2cd101411c685959009ad8ef11efd7ea616f25bd74de6f22a331330f3`  
		Last Modified: Wed, 09 Sep 2026 02:39:59 GMT  
		Size: 9.8 MB (9783835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20f6484ff65301b9b0c380751ec140b24523ecf210380eccbeb1d51ae67ab0fa`  
		Last Modified: Wed, 09 Sep 2026 02:39:59 GMT  
		Size: 91.7 KB (91705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eb8f4f667de9c5bbae560cd7b5b218c817f7c9225ad628dc2684e6770d93631`  
		Last Modified: Wed, 09 Sep 2026 02:40:03 GMT  
		Size: 143.4 MB (143405349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:694ead40e1fddf2d24fd498727f6ddc714628beb600d79be749da72dab0b6ce7`  
		Last Modified: Wed, 09 Sep 2026 02:40:00 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b572dbefb81bb5446b6f029252199f2fea36a08077acac526a1ec873256f204e`  
		Last Modified: Wed, 09 Sep 2026 03:32:14 GMT  
		Size: 127.3 MB (127335634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39661be686a916677ecc0ee87fd7e641e1fc8caddbf4469b7d92893281701fbf`  
		Last Modified: Wed, 09 Sep 2026 03:32:10 GMT  
		Size: 401.2 KB (401164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:835e900bb5c73859cdf26c71e8e0e89816f49505a7b8578fc7d24804c05b07fd`  
		Last Modified: Wed, 09 Sep 2026 03:32:11 GMT  
		Size: 130.8 KB (130819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90adab432563faaa786940a68c9ddcbf963aef904b6ced77356a93ecbceab76f`  
		Last Modified: Wed, 09 Sep 2026 03:32:12 GMT  
		Size: 25.7 MB (25716330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:7d4259dbbf426ce0ad68383ddf71993602c89707140336c6ece0c79a96d0ad2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29150657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a93067344561e4b85a089de90bdcaef004a9f11e7178bdfded8f19baaa33928`

```dockerfile
```

-	Layers:
	-	`sha256:815ee418fc54d3bcabb87de5db590adb9ceb7592dffbb2a8c08d0dcfe19240d2`  
		Last Modified: Wed, 09 Sep 2026 03:32:12 GMT  
		Size: 29.1 MB (29133207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c76e67705e3484f06e31113d0f6eac84dedc5a72bb65beaab07f2dbd57ddb7f4`  
		Last Modified: Wed, 09 Sep 2026 03:32:10 GMT  
		Size: 17.4 KB (17450 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:423e8c770f1bddc1b61aa23de753e4aa705f4e948c2c5f69409037caa990a59b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.7 MB (333682333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04f4e5c0bbf2ca61872b627b573c84952c4969974a05f916f4fb265d8489bfe4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.9504.tar --tag 26.04
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-01T20:40:13.648724+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-01T20:40:13.648724+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.control_data.9504.tar
# Wed, 09 Sep 2026 02:32:45 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:00 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:06 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:34:00 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:34:00 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:34:00 GMT
ENV ROS_DISTRO=lyrical
# Wed, 09 Sep 2026 02:34:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:34:00 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:34:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:34:00 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:42:12 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:42:14 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:42:16 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:42:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:56f0dbdea7403d4e7167e2c10f4212e62e9887f6701e295380c2c043a7f360a4`  
		Last Modified: Wed, 02 Sep 2026 10:46:14 GMT  
		Size: 40.7 MB (40734829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7189ca5dbddf377ce4968cfdcd1b9dcb34cd8528a48f0a7925b6c0ae89cf7603`  
		Last Modified: Wed, 02 Sep 2026 10:46:17 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8546ff29b635872e2d6955c28f372cfdca29b876d1e225f74f1e2a10228c0b53`  
		Last Modified: Wed, 09 Sep 2026 02:34:39 GMT  
		Size: 741.7 KB (741681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9af7c5aee8fc6cd7ec51f810635cfa1c64006472f505cdd6bcff22d1880b6959`  
		Last Modified: Wed, 09 Sep 2026 02:34:40 GMT  
		Size: 9.6 MB (9607126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4003888ceb9694bf06638cdb28232b53b05cf924cc2d7b897e837ec18ab68721`  
		Last Modified: Wed, 09 Sep 2026 02:34:40 GMT  
		Size: 91.9 KB (91939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dfb752acfed6849404275e7e2406f6d5db3cbcc5615f2166937de94a1e852e3`  
		Last Modified: Wed, 09 Sep 2026 02:34:43 GMT  
		Size: 136.6 MB (136618607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95aba2ee933ffa5e234fd67499c5da0f3409579dc81c9e3a8f11378d63458a44`  
		Last Modified: Wed, 09 Sep 2026 02:34:41 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69ca5378dea79b103d12b392f8d0d00b09f3f3747722674909a8cfabf592a0ce`  
		Last Modified: Wed, 09 Sep 2026 03:43:26 GMT  
		Size: 120.7 MB (120688910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40428a66d0a5bdaff393834c384de5024dbb0ee793525de51b948990d677bb3b`  
		Last Modified: Wed, 09 Sep 2026 03:43:23 GMT  
		Size: 401.2 KB (401160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:695df8541c11b0d1ef38da66f41c9194fb207d907a25c048468efcd089afd441`  
		Last Modified: Wed, 09 Sep 2026 03:43:23 GMT  
		Size: 130.9 KB (130863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e45ee833d858d2cce444a0964d193a862df2a746ea66713fde50c06094c31d7`  
		Last Modified: Wed, 09 Sep 2026 03:43:24 GMT  
		Size: 24.7 MB (24666632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:f64bad21cabf7160c7d2a62d4165de02a1bcb7e5fecf7046c07e5c9e9e219523
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29215438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f13aa53487d63b4b33b4b19bfa4a1abb2b6680720f93bb215250f9568c4250ad`

```dockerfile
```

-	Layers:
	-	`sha256:51ded230c7b48adf6368ac461b649a90c5c9b30db9e3034b6123213a25d3f3a8`  
		Last Modified: Wed, 09 Sep 2026 03:43:24 GMT  
		Size: 29.2 MB (29197839 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:391e2225fa9a35bcfdb53a3ea9f6b4a663d08b9724c881c6c04ffec1e9aa2ef2`  
		Last Modified: Wed, 09 Sep 2026 03:43:23 GMT  
		Size: 17.6 KB (17599 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-ros-base-resolute`

```console
$ docker pull ros@sha256:dbb2a254523ee3c40ec9fc07956bc1042253c7beb3b6dad4a4585d85c99e9716
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-base-resolute` - linux; amd64

```console
$ docker pull ros@sha256:3be0e6056579cf89e1eb0153863aca1e8207188afc4acaac66ac19cb7997f727
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.2 MB (349209613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ad9ffba904492daaf44994966b36a71bf09768a1540e1df6e959fb4d1fefe77`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 01 Sep 2026 20:36:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.9485.tar --tag 26.04
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-01T20:37:00.369571+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-01T20:37:00.369571+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.control_data.9485.tar
# Wed, 09 Sep 2026 02:38:07 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:38:21 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:38:26 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:39:20 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:39:20 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:39:20 GMT
ENV ROS_DISTRO=lyrical
# Wed, 09 Sep 2026 02:39:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:39:20 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:39:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:39:20 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:30:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:30:59 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:31:00 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:31:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:08f5f5b2a2b0d2a960804adef3bd1783c5f2c20f42db5e290dc05d9529d11ae2`  
		Last Modified: Wed, 02 Sep 2026 10:46:03 GMT  
		Size: 41.6 MB (41602703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a7c4f6d8c3863707c14af40aad062db2bb477271491c7d3e99e03394dd261e3`  
		Last Modified: Wed, 02 Sep 2026 10:46:06 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ce8ee0b8a82476b3bd26c504678b9995756f1739bcb449ddc444484c15d4082`  
		Last Modified: Wed, 09 Sep 2026 02:39:59 GMT  
		Size: 741.5 KB (741486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92b6ffc2cd101411c685959009ad8ef11efd7ea616f25bd74de6f22a331330f3`  
		Last Modified: Wed, 09 Sep 2026 02:39:59 GMT  
		Size: 9.8 MB (9783835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20f6484ff65301b9b0c380751ec140b24523ecf210380eccbeb1d51ae67ab0fa`  
		Last Modified: Wed, 09 Sep 2026 02:39:59 GMT  
		Size: 91.7 KB (91705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eb8f4f667de9c5bbae560cd7b5b218c817f7c9225ad628dc2684e6770d93631`  
		Last Modified: Wed, 09 Sep 2026 02:40:03 GMT  
		Size: 143.4 MB (143405349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:694ead40e1fddf2d24fd498727f6ddc714628beb600d79be749da72dab0b6ce7`  
		Last Modified: Wed, 09 Sep 2026 02:40:00 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b572dbefb81bb5446b6f029252199f2fea36a08077acac526a1ec873256f204e`  
		Last Modified: Wed, 09 Sep 2026 03:32:14 GMT  
		Size: 127.3 MB (127335634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39661be686a916677ecc0ee87fd7e641e1fc8caddbf4469b7d92893281701fbf`  
		Last Modified: Wed, 09 Sep 2026 03:32:10 GMT  
		Size: 401.2 KB (401164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:835e900bb5c73859cdf26c71e8e0e89816f49505a7b8578fc7d24804c05b07fd`  
		Last Modified: Wed, 09 Sep 2026 03:32:11 GMT  
		Size: 130.8 KB (130819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90adab432563faaa786940a68c9ddcbf963aef904b6ced77356a93ecbceab76f`  
		Last Modified: Wed, 09 Sep 2026 03:32:12 GMT  
		Size: 25.7 MB (25716330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:7d4259dbbf426ce0ad68383ddf71993602c89707140336c6ece0c79a96d0ad2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29150657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a93067344561e4b85a089de90bdcaef004a9f11e7178bdfded8f19baaa33928`

```dockerfile
```

-	Layers:
	-	`sha256:815ee418fc54d3bcabb87de5db590adb9ceb7592dffbb2a8c08d0dcfe19240d2`  
		Last Modified: Wed, 09 Sep 2026 03:32:12 GMT  
		Size: 29.1 MB (29133207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c76e67705e3484f06e31113d0f6eac84dedc5a72bb65beaab07f2dbd57ddb7f4`  
		Last Modified: Wed, 09 Sep 2026 03:32:10 GMT  
		Size: 17.4 KB (17450 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-ros-base-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:423e8c770f1bddc1b61aa23de753e4aa705f4e948c2c5f69409037caa990a59b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.7 MB (333682333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04f4e5c0bbf2ca61872b627b573c84952c4969974a05f916f4fb265d8489bfe4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.9504.tar --tag 26.04
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-01T20:40:13.648724+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-01T20:40:13.648724+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.control_data.9504.tar
# Wed, 09 Sep 2026 02:32:45 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:00 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:06 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:34:00 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:34:00 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:34:00 GMT
ENV ROS_DISTRO=lyrical
# Wed, 09 Sep 2026 02:34:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:34:00 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:34:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:34:00 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:42:12 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:42:14 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:42:16 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:42:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:56f0dbdea7403d4e7167e2c10f4212e62e9887f6701e295380c2c043a7f360a4`  
		Last Modified: Wed, 02 Sep 2026 10:46:14 GMT  
		Size: 40.7 MB (40734829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7189ca5dbddf377ce4968cfdcd1b9dcb34cd8528a48f0a7925b6c0ae89cf7603`  
		Last Modified: Wed, 02 Sep 2026 10:46:17 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8546ff29b635872e2d6955c28f372cfdca29b876d1e225f74f1e2a10228c0b53`  
		Last Modified: Wed, 09 Sep 2026 02:34:39 GMT  
		Size: 741.7 KB (741681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9af7c5aee8fc6cd7ec51f810635cfa1c64006472f505cdd6bcff22d1880b6959`  
		Last Modified: Wed, 09 Sep 2026 02:34:40 GMT  
		Size: 9.6 MB (9607126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4003888ceb9694bf06638cdb28232b53b05cf924cc2d7b897e837ec18ab68721`  
		Last Modified: Wed, 09 Sep 2026 02:34:40 GMT  
		Size: 91.9 KB (91939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dfb752acfed6849404275e7e2406f6d5db3cbcc5615f2166937de94a1e852e3`  
		Last Modified: Wed, 09 Sep 2026 02:34:43 GMT  
		Size: 136.6 MB (136618607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95aba2ee933ffa5e234fd67499c5da0f3409579dc81c9e3a8f11378d63458a44`  
		Last Modified: Wed, 09 Sep 2026 02:34:41 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69ca5378dea79b103d12b392f8d0d00b09f3f3747722674909a8cfabf592a0ce`  
		Last Modified: Wed, 09 Sep 2026 03:43:26 GMT  
		Size: 120.7 MB (120688910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40428a66d0a5bdaff393834c384de5024dbb0ee793525de51b948990d677bb3b`  
		Last Modified: Wed, 09 Sep 2026 03:43:23 GMT  
		Size: 401.2 KB (401160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:695df8541c11b0d1ef38da66f41c9194fb207d907a25c048468efcd089afd441`  
		Last Modified: Wed, 09 Sep 2026 03:43:23 GMT  
		Size: 130.9 KB (130863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e45ee833d858d2cce444a0964d193a862df2a746ea66713fde50c06094c31d7`  
		Last Modified: Wed, 09 Sep 2026 03:43:24 GMT  
		Size: 24.7 MB (24666632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:f64bad21cabf7160c7d2a62d4165de02a1bcb7e5fecf7046c07e5c9e9e219523
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29215438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f13aa53487d63b4b33b4b19bfa4a1abb2b6680720f93bb215250f9568c4250ad`

```dockerfile
```

-	Layers:
	-	`sha256:51ded230c7b48adf6368ac461b649a90c5c9b30db9e3034b6123213a25d3f3a8`  
		Last Modified: Wed, 09 Sep 2026 03:43:24 GMT  
		Size: 29.2 MB (29197839 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:391e2225fa9a35bcfdb53a3ea9f6b4a663d08b9724c881c6c04ffec1e9aa2ef2`  
		Last Modified: Wed, 09 Sep 2026 03:43:23 GMT  
		Size: 17.6 KB (17599 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-ros-core`

```console
$ docker pull ros@sha256:b13a9b34e89a9ebc8458e060a5de3e1b6383a87c044ee5a314bc7c2240ff81fd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:7fc402597b51e79e7dcce57d7d17d91a7e6d213c882ce337bc3b575be41e6251
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.6 MB (195625666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39ccebde0c5b11c1e2321225d9f99038589f56042b6a8591700a2cd218fdf309`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 01 Sep 2026 20:36:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.9485.tar --tag 26.04
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-01T20:37:00.369571+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-01T20:37:00.369571+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.control_data.9485.tar
# Wed, 09 Sep 2026 02:38:07 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:38:21 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:38:26 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:39:20 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:39:20 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:39:20 GMT
ENV ROS_DISTRO=lyrical
# Wed, 09 Sep 2026 02:39:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:39:20 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:39:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:39:20 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:08f5f5b2a2b0d2a960804adef3bd1783c5f2c20f42db5e290dc05d9529d11ae2`  
		Last Modified: Wed, 02 Sep 2026 10:46:03 GMT  
		Size: 41.6 MB (41602703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a7c4f6d8c3863707c14af40aad062db2bb477271491c7d3e99e03394dd261e3`  
		Last Modified: Wed, 02 Sep 2026 10:46:06 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ce8ee0b8a82476b3bd26c504678b9995756f1739bcb449ddc444484c15d4082`  
		Last Modified: Wed, 09 Sep 2026 02:39:59 GMT  
		Size: 741.5 KB (741486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92b6ffc2cd101411c685959009ad8ef11efd7ea616f25bd74de6f22a331330f3`  
		Last Modified: Wed, 09 Sep 2026 02:39:59 GMT  
		Size: 9.8 MB (9783835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20f6484ff65301b9b0c380751ec140b24523ecf210380eccbeb1d51ae67ab0fa`  
		Last Modified: Wed, 09 Sep 2026 02:39:59 GMT  
		Size: 91.7 KB (91705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eb8f4f667de9c5bbae560cd7b5b218c817f7c9225ad628dc2684e6770d93631`  
		Last Modified: Wed, 09 Sep 2026 02:40:03 GMT  
		Size: 143.4 MB (143405349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:694ead40e1fddf2d24fd498727f6ddc714628beb600d79be749da72dab0b6ce7`  
		Last Modified: Wed, 09 Sep 2026 02:40:00 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:72ef8cc16bee9c9348d332bb6b74a518a180537abadd2b696c400be0dab763c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22749587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d97c0501b69fe434b04aff38060e867fb124aa40b6f666d53b1c8502cbfd434c`

```dockerfile
```

-	Layers:
	-	`sha256:ba43221adfdcc5941acd1441a029dfa57c301795596039a72ee6d65993bf057b`  
		Last Modified: Wed, 09 Sep 2026 02:40:00 GMT  
		Size: 22.7 MB (22734004 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:027094f85e744f893cadb79ac1d861d0f4ff9af39a9b220e1a78bc2b60d6d489`  
		Last Modified: Wed, 09 Sep 2026 02:39:59 GMT  
		Size: 15.6 KB (15583 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:0a95bff3e4a4385609b74c8b4100af7b21cb0895a0d720599243c93ad8c9245b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.8 MB (187794768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3999a6f6bc407c50508e57ced522c742e0f682e1cd32712e38456275e3ffe044`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.9504.tar --tag 26.04
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-01T20:40:13.648724+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-01T20:40:13.648724+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.control_data.9504.tar
# Wed, 09 Sep 2026 02:32:45 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:00 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:06 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:34:00 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:34:00 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:34:00 GMT
ENV ROS_DISTRO=lyrical
# Wed, 09 Sep 2026 02:34:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:34:00 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:34:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:34:00 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:56f0dbdea7403d4e7167e2c10f4212e62e9887f6701e295380c2c043a7f360a4`  
		Last Modified: Wed, 02 Sep 2026 10:46:14 GMT  
		Size: 40.7 MB (40734829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7189ca5dbddf377ce4968cfdcd1b9dcb34cd8528a48f0a7925b6c0ae89cf7603`  
		Last Modified: Wed, 02 Sep 2026 10:46:17 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8546ff29b635872e2d6955c28f372cfdca29b876d1e225f74f1e2a10228c0b53`  
		Last Modified: Wed, 09 Sep 2026 02:34:39 GMT  
		Size: 741.7 KB (741681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9af7c5aee8fc6cd7ec51f810635cfa1c64006472f505cdd6bcff22d1880b6959`  
		Last Modified: Wed, 09 Sep 2026 02:34:40 GMT  
		Size: 9.6 MB (9607126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4003888ceb9694bf06638cdb28232b53b05cf924cc2d7b897e837ec18ab68721`  
		Last Modified: Wed, 09 Sep 2026 02:34:40 GMT  
		Size: 91.9 KB (91939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dfb752acfed6849404275e7e2406f6d5db3cbcc5615f2166937de94a1e852e3`  
		Last Modified: Wed, 09 Sep 2026 02:34:43 GMT  
		Size: 136.6 MB (136618607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95aba2ee933ffa5e234fd67499c5da0f3409579dc81c9e3a8f11378d63458a44`  
		Last Modified: Wed, 09 Sep 2026 02:34:41 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:a447dfbe4c15646a1823086433477ea09fd0f2baf49a68384569d452712d36d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22722404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66f597afaf67e6b176e1a72dab5818b2b3065742a5b5eb9169c45113c5286ded`

```dockerfile
```

-	Layers:
	-	`sha256:a5144add476415da816c810f373136ee1bf151918930da3d8fbc78a01c500079`  
		Last Modified: Wed, 09 Sep 2026 02:34:40 GMT  
		Size: 22.7 MB (22706696 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d0cfb7d960f2b2af42f44b64e3d05a3267a46d1a1738718505f31da18b57ab2b`  
		Last Modified: Wed, 09 Sep 2026 02:34:39 GMT  
		Size: 15.7 KB (15708 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-ros-core-resolute`

```console
$ docker pull ros@sha256:b13a9b34e89a9ebc8458e060a5de3e1b6383a87c044ee5a314bc7c2240ff81fd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-core-resolute` - linux; amd64

```console
$ docker pull ros@sha256:7fc402597b51e79e7dcce57d7d17d91a7e6d213c882ce337bc3b575be41e6251
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.6 MB (195625666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39ccebde0c5b11c1e2321225d9f99038589f56042b6a8591700a2cd218fdf309`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 01 Sep 2026 20:36:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.9485.tar --tag 26.04
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-01T20:37:00.369571+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-01T20:37:00.369571+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.control_data.9485.tar
# Wed, 09 Sep 2026 02:38:07 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:38:21 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:38:26 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:39:20 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:39:20 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:39:20 GMT
ENV ROS_DISTRO=lyrical
# Wed, 09 Sep 2026 02:39:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:39:20 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:39:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:39:20 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:08f5f5b2a2b0d2a960804adef3bd1783c5f2c20f42db5e290dc05d9529d11ae2`  
		Last Modified: Wed, 02 Sep 2026 10:46:03 GMT  
		Size: 41.6 MB (41602703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a7c4f6d8c3863707c14af40aad062db2bb477271491c7d3e99e03394dd261e3`  
		Last Modified: Wed, 02 Sep 2026 10:46:06 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ce8ee0b8a82476b3bd26c504678b9995756f1739bcb449ddc444484c15d4082`  
		Last Modified: Wed, 09 Sep 2026 02:39:59 GMT  
		Size: 741.5 KB (741486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92b6ffc2cd101411c685959009ad8ef11efd7ea616f25bd74de6f22a331330f3`  
		Last Modified: Wed, 09 Sep 2026 02:39:59 GMT  
		Size: 9.8 MB (9783835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20f6484ff65301b9b0c380751ec140b24523ecf210380eccbeb1d51ae67ab0fa`  
		Last Modified: Wed, 09 Sep 2026 02:39:59 GMT  
		Size: 91.7 KB (91705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eb8f4f667de9c5bbae560cd7b5b218c817f7c9225ad628dc2684e6770d93631`  
		Last Modified: Wed, 09 Sep 2026 02:40:03 GMT  
		Size: 143.4 MB (143405349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:694ead40e1fddf2d24fd498727f6ddc714628beb600d79be749da72dab0b6ce7`  
		Last Modified: Wed, 09 Sep 2026 02:40:00 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:72ef8cc16bee9c9348d332bb6b74a518a180537abadd2b696c400be0dab763c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22749587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d97c0501b69fe434b04aff38060e867fb124aa40b6f666d53b1c8502cbfd434c`

```dockerfile
```

-	Layers:
	-	`sha256:ba43221adfdcc5941acd1441a029dfa57c301795596039a72ee6d65993bf057b`  
		Last Modified: Wed, 09 Sep 2026 02:40:00 GMT  
		Size: 22.7 MB (22734004 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:027094f85e744f893cadb79ac1d861d0f4ff9af39a9b220e1a78bc2b60d6d489`  
		Last Modified: Wed, 09 Sep 2026 02:39:59 GMT  
		Size: 15.6 KB (15583 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-ros-core-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:0a95bff3e4a4385609b74c8b4100af7b21cb0895a0d720599243c93ad8c9245b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.8 MB (187794768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3999a6f6bc407c50508e57ced522c742e0f682e1cd32712e38456275e3ffe044`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.9504.tar --tag 26.04
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-01T20:40:13.648724+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-01T20:40:13.648724+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.control_data.9504.tar
# Wed, 09 Sep 2026 02:32:45 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:00 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:06 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:34:00 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:34:00 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:34:00 GMT
ENV ROS_DISTRO=lyrical
# Wed, 09 Sep 2026 02:34:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:34:00 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:34:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:34:00 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:56f0dbdea7403d4e7167e2c10f4212e62e9887f6701e295380c2c043a7f360a4`  
		Last Modified: Wed, 02 Sep 2026 10:46:14 GMT  
		Size: 40.7 MB (40734829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7189ca5dbddf377ce4968cfdcd1b9dcb34cd8528a48f0a7925b6c0ae89cf7603`  
		Last Modified: Wed, 02 Sep 2026 10:46:17 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8546ff29b635872e2d6955c28f372cfdca29b876d1e225f74f1e2a10228c0b53`  
		Last Modified: Wed, 09 Sep 2026 02:34:39 GMT  
		Size: 741.7 KB (741681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9af7c5aee8fc6cd7ec51f810635cfa1c64006472f505cdd6bcff22d1880b6959`  
		Last Modified: Wed, 09 Sep 2026 02:34:40 GMT  
		Size: 9.6 MB (9607126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4003888ceb9694bf06638cdb28232b53b05cf924cc2d7b897e837ec18ab68721`  
		Last Modified: Wed, 09 Sep 2026 02:34:40 GMT  
		Size: 91.9 KB (91939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dfb752acfed6849404275e7e2406f6d5db3cbcc5615f2166937de94a1e852e3`  
		Last Modified: Wed, 09 Sep 2026 02:34:43 GMT  
		Size: 136.6 MB (136618607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95aba2ee933ffa5e234fd67499c5da0f3409579dc81c9e3a8f11378d63458a44`  
		Last Modified: Wed, 09 Sep 2026 02:34:41 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:a447dfbe4c15646a1823086433477ea09fd0f2baf49a68384569d452712d36d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22722404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66f597afaf67e6b176e1a72dab5818b2b3065742a5b5eb9169c45113c5286ded`

```dockerfile
```

-	Layers:
	-	`sha256:a5144add476415da816c810f373136ee1bf151918930da3d8fbc78a01c500079`  
		Last Modified: Wed, 09 Sep 2026 02:34:40 GMT  
		Size: 22.7 MB (22706696 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d0cfb7d960f2b2af42f44b64e3d05a3267a46d1a1738718505f31da18b57ab2b`  
		Last Modified: Wed, 09 Sep 2026 02:34:39 GMT  
		Size: 15.7 KB (15708 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling`

```console
$ docker pull ros@sha256:7fd952a7f1f87c990f7b55f1e9cdf4e267010e52efd990665a94f7e41c7ce561
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling` - linux; amd64

```console
$ docker pull ros@sha256:19a2aec88315b852a4420cc52b4639bfaf0699848f157e1557baebef7d037e65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.5 MB (349527657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:257ec6b327b65586f1b808dc6d25279ee1d45683bd6eaf58fbfbba628d3b5b45`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 01 Sep 2026 20:36:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.9485.tar --tag 26.04
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-01T20:37:00.369571+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-01T20:37:00.369571+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.control_data.9485.tar
# Wed, 09 Sep 2026 02:39:24 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:39:38 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:39:44 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:40:37 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:40:37 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:40:37 GMT
ENV ROS_DISTRO=rolling
# Wed, 09 Sep 2026 02:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:40:37 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:40:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:40:37 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:30:54 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:30:56 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:30:58 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:31:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:08f5f5b2a2b0d2a960804adef3bd1783c5f2c20f42db5e290dc05d9529d11ae2`  
		Last Modified: Wed, 02 Sep 2026 10:46:03 GMT  
		Size: 41.6 MB (41602703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a7c4f6d8c3863707c14af40aad062db2bb477271491c7d3e99e03394dd261e3`  
		Last Modified: Wed, 02 Sep 2026 10:46:06 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:547e2a397c18788ad08b55531c2ff7390909206aea61dd305be97a7756bd0cc2`  
		Last Modified: Wed, 09 Sep 2026 02:41:16 GMT  
		Size: 741.5 KB (741504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0beddd533d07fa4f56373fe8fa4089cb62749befa1f485c9448178c5e417847`  
		Last Modified: Wed, 09 Sep 2026 02:41:17 GMT  
		Size: 9.8 MB (9783839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:758f4973a08e9574760c2b2dc07b9f252558e1a28525a578cc2750626d79fd7e`  
		Last Modified: Wed, 09 Sep 2026 02:41:16 GMT  
		Size: 91.7 KB (91727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bbdd120909528d121c59bcf6e34071315f369a9f28c05a574d99371506f86cd`  
		Last Modified: Wed, 09 Sep 2026 02:41:20 GMT  
		Size: 143.7 MB (143697563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e5c2c621fc5cf24589f14cb74f77a2349ecf1bc70319d5b1252fb02b36db5d8`  
		Last Modified: Wed, 09 Sep 2026 02:41:17 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28e1369e91e417f81997d88872e795e8cab32b57af7c7cd6eb333b5d15d2282f`  
		Last Modified: Wed, 09 Sep 2026 03:32:16 GMT  
		Size: 127.3 MB (127335764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecb045f01a5469c0819291274c8f01d121edcca3d1229688804d84a5111a94ac`  
		Last Modified: Wed, 09 Sep 2026 03:32:12 GMT  
		Size: 364.8 KB (364821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba88f06caf0c07499ec401e37e4ea91007b75a06dd9ec60959731fb0278b5901`  
		Last Modified: Wed, 09 Sep 2026 03:32:12 GMT  
		Size: 130.8 KB (130811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d015695855054c8969eaca79695c7a57ad6f03377f94a6b6dfd8b639d65e86b`  
		Last Modified: Wed, 09 Sep 2026 03:32:14 GMT  
		Size: 25.8 MB (25778336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling` - unknown; unknown

```console
$ docker pull ros@sha256:55d033a0d4aa8ad0c305a4307224d688fc40d4f4e6a4d2fef355d90295415793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29160954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c3e004d6599e83cf56c965f69664f4c9a97a36b410bcfbb74453485c3d2a8ad`

```dockerfile
```

-	Layers:
	-	`sha256:eaec155306e3e4a93c71b630137bb402165b616ee9306a2b4b68e1330ec6a923`  
		Last Modified: Wed, 09 Sep 2026 03:32:14 GMT  
		Size: 29.1 MB (29143796 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7babfe86633590eb350a0a8f93d0fe18443abe027b07addee88d719e65428907`  
		Last Modified: Wed, 09 Sep 2026 03:32:12 GMT  
		Size: 17.2 KB (17158 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:f7bfeca57f16f1938e081aaaca91101e45e8650bf337db4eaad755053d9121bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.0 MB (333977977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c52f194c00aa33a6207c7236397e05637816961ec1aaa93bdc9c08892b9a421`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.9504.tar --tag 26.04
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-01T20:40:13.648724+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-01T20:40:13.648724+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.control_data.9504.tar
# Wed, 09 Sep 2026 02:34:25 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:34:37 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:34:42 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:35:38 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:35:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:35:38 GMT
ENV ROS_DISTRO=rolling
# Wed, 09 Sep 2026 02:35:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:35:38 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:35:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:35:38 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:42:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:42:24 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:42:26 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:42:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:56f0dbdea7403d4e7167e2c10f4212e62e9887f6701e295380c2c043a7f360a4`  
		Last Modified: Wed, 02 Sep 2026 10:46:14 GMT  
		Size: 40.7 MB (40734829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7189ca5dbddf377ce4968cfdcd1b9dcb34cd8528a48f0a7925b6c0ae89cf7603`  
		Last Modified: Wed, 02 Sep 2026 10:46:17 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c438b3d945e112f84f0a4be0545840f6556984b01ea4da14ca9d66d30dc58b2`  
		Last Modified: Wed, 09 Sep 2026 02:36:16 GMT  
		Size: 741.7 KB (741674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26b1c934cfee68b88ca686e24a2ae95741e151f53c99a783f54daf5850aca1e6`  
		Last Modified: Wed, 09 Sep 2026 02:36:17 GMT  
		Size: 9.6 MB (9607070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bed05825d81155f4f636c53b39ae99b0e96b201201cce7e813da326fbc0051b`  
		Last Modified: Wed, 09 Sep 2026 02:36:17 GMT  
		Size: 92.0 KB (91958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:929c8a96a7cfcd63fe0647d99ec0fa85f4f2dd70454e77bbb43748fda5980a4d`  
		Last Modified: Wed, 09 Sep 2026 02:36:20 GMT  
		Size: 136.9 MB (136893601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bba95311feaf834f23b2c1f361216b73aa05849c5cf9eada3d8d53979ce1c82`  
		Last Modified: Wed, 09 Sep 2026 02:36:18 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e13d8860b25ee6c499ee7e307feb37b97a710109c952ca1c4bffd8804b1b16d`  
		Last Modified: Wed, 09 Sep 2026 03:43:37 GMT  
		Size: 120.7 MB (120688567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77f997806a3e0e9497e6c7ee7bc463ac87861154c9df5a552c483fcc63743666`  
		Last Modified: Wed, 09 Sep 2026 03:43:33 GMT  
		Size: 364.8 KB (364821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c09e7ce9db0fe70fa509bc664e07e55a67112f5a451db7a95ca82334a8d3cd08`  
		Last Modified: Wed, 09 Sep 2026 03:43:33 GMT  
		Size: 130.9 KB (130868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48598ef3207bf4f96e0608753727c54e028900456868f6f5fb199218c66ff367`  
		Last Modified: Wed, 09 Sep 2026 03:43:35 GMT  
		Size: 24.7 MB (24724001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling` - unknown; unknown

```console
$ docker pull ros@sha256:ac72ed46958bc8e674b9e130695a2a070174bfc957a1fefa84f4879439a8118c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29225711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cd6bd758ac09c0c6a4457534dc07b702c0c7063ef777e6e97c1f0e6b96627ed`

```dockerfile
```

-	Layers:
	-	`sha256:0079b12f9dd9cc409969990bf66fab9657b7dbe4b78ef9aa28de9b173f442dce`  
		Last Modified: Wed, 09 Sep 2026 03:43:35 GMT  
		Size: 29.2 MB (29208416 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9efaca3c7a99b19c046d49d9bc1303e2cdc47083a92458f92d71b77480f200be`  
		Last Modified: Wed, 09 Sep 2026 03:43:33 GMT  
		Size: 17.3 KB (17295 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-perception`

```console
$ docker pull ros@sha256:11216825cf4bca4cb23670ce4cfe37753176c48bdb418169b2cffc94945a9b87
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-perception` - linux; amd64

```console
$ docker pull ros@sha256:98bf67ad51d4162a3f5e485b6a5039e499e36f4f804891a5d26c32dd7cba7d39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1528687645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:745a089fec2ed32674cede1b910e37fc34eca5373ca9d36667edc5bc562f8710`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 16:06:29 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.8989.tar --tag 26.04
# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-13T16:06:30.499069+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-13T16:06:30.499069+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.control_data.8989.tar
# Thu, 16 Jul 2026 00:37:01 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:12 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:18 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:10 GMT
ENV LANG=C.UTF-8
# Thu, 16 Jul 2026 00:38:10 GMT
ENV LC_ALL=C.UTF-8
# Thu, 16 Jul 2026 00:38:10 GMT
ENV ROS_DISTRO=rolling
# Thu, 16 Jul 2026 00:38:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:10 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 16 Jul 2026 00:38:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 16 Jul 2026 00:38:10 GMT
CMD ["bash"]
# Thu, 16 Jul 2026 01:17:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 01:17:58 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 16 Jul 2026 01:17:59 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 16 Jul 2026 01:18:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 02:19:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ed819469700fe2cd94f44a7c218a84e40cda16dd2e7e5238cbdef33e6153d536`  
		Last Modified: Mon, 13 Jul 2026 22:13:37 GMT  
		Size: 41.6 MB (41580757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3679419df184857c0d317d7cdaad6187f6c0f0b68dd2ed58becf174e28f4c1b`  
		Last Modified: Mon, 13 Jul 2026 22:13:40 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4d4ec5b8162b7bdc79d6910e2bf07b4d5239753384d6716803ef643b9fc9f1d`  
		Last Modified: Thu, 16 Jul 2026 00:38:52 GMT  
		Size: 741.1 KB (741067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba7ab849d94c28f521fe5eae380534ce75d6ba8844cb6d53f0b6d780b0607082`  
		Last Modified: Thu, 16 Jul 2026 00:38:53 GMT  
		Size: 9.8 MB (9784018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f5468cf8bb7ece550b332ae613d317da7f081a7ae6878acfc88a645e718cf49`  
		Last Modified: Thu, 16 Jul 2026 00:38:52 GMT  
		Size: 90.1 KB (90080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c16a252edd64fd4e0b3bb2510c4c0189b5277bd687e451992585d55a8b0383e`  
		Last Modified: Thu, 16 Jul 2026 00:38:56 GMT  
		Size: 136.8 MB (136835349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efa36fd8fe4fd568b93a41ba29dc466187c2ba3e30aac4cf1092351b01e5283c`  
		Last Modified: Thu, 16 Jul 2026 00:38:53 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cba190c6521da847653a8879de7ef1e782c95870360c6e8e3018452a93746732`  
		Last Modified: Thu, 16 Jul 2026 01:19:14 GMT  
		Size: 124.9 MB (124864076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:032c8e898432e45def3595b2f11c3b262fdcab16bc16cdf4957285998b580561`  
		Last Modified: Thu, 16 Jul 2026 01:19:10 GMT  
		Size: 373.2 KB (373217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b822d4cc2a52e077b5276f8ce026e84b6725442f68aa2dceeb20daa326a8d6b6`  
		Last Modified: Thu, 16 Jul 2026 01:19:10 GMT  
		Size: 130.8 KB (130804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b81d4a41a5d26b802dbd745837d8f2e0bec1a9c007ecbebe771d1924b90df366`  
		Last Modified: Thu, 16 Jul 2026 01:19:11 GMT  
		Size: 25.8 MB (25792662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29e43c211cfbc245a9bfe9782727910628335845f7580f1c220ac5c0aa099cca`  
		Last Modified: Thu, 16 Jul 2026 02:24:55 GMT  
		Size: 1.2 GB (1188495027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-perception` - unknown; unknown

```console
$ docker pull ros@sha256:3307ca9198a61504f8705215a52b64f64eb579e9488582e3a2aa9d2440d5034b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64346499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c348ffb492373b1cfbc0bc625e4224bcacf5c90a2dd549f14bd6778c1c76f76d`

```dockerfile
```

-	Layers:
	-	`sha256:afb53147cb1cef63b3697b3571bb993fbede43cb979f539304ec3452d1df0c9e`  
		Last Modified: Thu, 16 Jul 2026 02:24:34 GMT  
		Size: 64.3 MB (64336806 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:991e885f92898f8306b24b1854b7ad69a312141f5b0413674584130551d00cdc`  
		Last Modified: Thu, 16 Jul 2026 02:24:31 GMT  
		Size: 9.7 KB (9693 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:3f2f1b3fc834e9afbf89549d9daf11d92035f66e17d6c14de33f4bd1282caf74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1471981620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83ccbb2632db6f1f8560066f2cc16b3c75cf0dda49318f30c8d015fa44a9c632`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Jun 2026 04:19:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.9127.tar --tag 26.04
# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-06-27T04:19:53.170736+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-06-27T04:19:53.170736+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.control_data.9127.tar
# Thu, 09 Jul 2026 18:31:17 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:31:31 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:31:36 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:32:27 GMT
ENV LANG=C.UTF-8
# Thu, 09 Jul 2026 18:32:27 GMT
ENV LC_ALL=C.UTF-8
# Thu, 09 Jul 2026 18:32:27 GMT
ENV ROS_DISTRO=rolling
# Thu, 09 Jul 2026 18:32:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:32:27 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 09 Jul 2026 18:32:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 09 Jul 2026 18:32:27 GMT
CMD ["bash"]
# Thu, 09 Jul 2026 18:37:26 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:37:29 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 09 Jul 2026 18:37:33 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 09 Jul 2026 18:37:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 19:14:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:b2b4144bf8691339f4f1011754b5ed314a4cb9c03e57af4c022301022f36b79a`  
		Last Modified: Sat, 27 Jun 2026 11:14:43 GMT  
		Size: 40.7 MB (40711760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade0b5cbf7f1ac2f5ced1ed952e889f07199006cfbb44f6e2c7b85df005259ca`  
		Last Modified: Sat, 27 Jun 2026 11:14:46 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b212f396a8d7403086bea7814b524a8a476d936ea87bd795407c72f29c93c06`  
		Last Modified: Thu, 09 Jul 2026 18:33:05 GMT  
		Size: 742.0 KB (742032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:384fc61248925600a0cd688c6766d5dc8e9be47385266c4b9e57fcda86d2ed1f`  
		Last Modified: Thu, 09 Jul 2026 18:33:06 GMT  
		Size: 9.6 MB (9607107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54d8fec7cbfae0c5b67babc22a87591ea889647c1cfa0271c4216e61c0b06b00`  
		Last Modified: Thu, 09 Jul 2026 18:33:05 GMT  
		Size: 91.1 KB (91098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a15cddbe9789e5807f02c1f44acc072e1cf22050e93b14b9a2d49e357e490629`  
		Last Modified: Thu, 09 Jul 2026 18:33:09 GMT  
		Size: 130.2 MB (130199952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4baef65b99574c57f36722163f7eac27b5eace626399f04ae7e68236c167f196`  
		Last Modified: Thu, 09 Jul 2026 18:33:07 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40f53707932ffe7d1fb0f581bebdb046f570db5e5a5fe05563b64483788ae81c`  
		Last Modified: Thu, 09 Jul 2026 18:38:48 GMT  
		Size: 118.3 MB (118276238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6b1067915e749fb82d1cf7fc0c33acee692788c9bdddccb700e6dd2839b0039`  
		Last Modified: Thu, 09 Jul 2026 18:38:45 GMT  
		Size: 372.6 KB (372574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a9e2e7a4414c19adaf6ae13b5efd963fa29cb15b0bd84f32f92230b9221aac`  
		Last Modified: Thu, 09 Jul 2026 18:38:45 GMT  
		Size: 130.9 KB (130865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dba84455dbba6cbdd79476f6e4fa70e16abf4d574f88ec6b7abd7d102558eab3`  
		Last Modified: Thu, 09 Jul 2026 18:38:46 GMT  
		Size: 24.7 MB (24738576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4be9b396657f44c2d43ae0fbf13b64036791df347a36d0f051c6ac61cd3e14b`  
		Last Modified: Thu, 09 Jul 2026 19:19:00 GMT  
		Size: 1.1 GB (1147110830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-perception` - unknown; unknown

```console
$ docker pull ros@sha256:ae83e711178e56dda03535532419d1ff32187c84833c702c4d413a501789a6bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64260731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c3775709595dfe3d13a7496499c61c5a50d35ec6290dd56079b913d1e214a0f`

```dockerfile
```

-	Layers:
	-	`sha256:3c75211a66cace79bbc434a5e60ea97596a6f5903d0515d83ae8b2b74643e08e`  
		Last Modified: Thu, 09 Jul 2026 19:18:41 GMT  
		Size: 64.3 MB (64250958 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c4efebf91b56b959f4912cf6714b41f71fa37366ab5dd43b8a3c72e3c42b9f5`  
		Last Modified: Thu, 09 Jul 2026 19:18:38 GMT  
		Size: 9.8 KB (9773 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-perception-resolute`

```console
$ docker pull ros@sha256:11216825cf4bca4cb23670ce4cfe37753176c48bdb418169b2cffc94945a9b87
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-perception-resolute` - linux; amd64

```console
$ docker pull ros@sha256:98bf67ad51d4162a3f5e485b6a5039e499e36f4f804891a5d26c32dd7cba7d39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1528687645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:745a089fec2ed32674cede1b910e37fc34eca5373ca9d36667edc5bc562f8710`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 16:06:29 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.8989.tar --tag 26.04
# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-13T16:06:30.499069+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-13T16:06:30.499069+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.control_data.8989.tar
# Thu, 16 Jul 2026 00:37:01 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:12 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:18 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:10 GMT
ENV LANG=C.UTF-8
# Thu, 16 Jul 2026 00:38:10 GMT
ENV LC_ALL=C.UTF-8
# Thu, 16 Jul 2026 00:38:10 GMT
ENV ROS_DISTRO=rolling
# Thu, 16 Jul 2026 00:38:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:10 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 16 Jul 2026 00:38:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 16 Jul 2026 00:38:10 GMT
CMD ["bash"]
# Thu, 16 Jul 2026 01:17:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 01:17:58 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 16 Jul 2026 01:17:59 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 16 Jul 2026 01:18:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 02:19:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ed819469700fe2cd94f44a7c218a84e40cda16dd2e7e5238cbdef33e6153d536`  
		Last Modified: Mon, 13 Jul 2026 22:13:37 GMT  
		Size: 41.6 MB (41580757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3679419df184857c0d317d7cdaad6187f6c0f0b68dd2ed58becf174e28f4c1b`  
		Last Modified: Mon, 13 Jul 2026 22:13:40 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4d4ec5b8162b7bdc79d6910e2bf07b4d5239753384d6716803ef643b9fc9f1d`  
		Last Modified: Thu, 16 Jul 2026 00:38:52 GMT  
		Size: 741.1 KB (741067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba7ab849d94c28f521fe5eae380534ce75d6ba8844cb6d53f0b6d780b0607082`  
		Last Modified: Thu, 16 Jul 2026 00:38:53 GMT  
		Size: 9.8 MB (9784018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f5468cf8bb7ece550b332ae613d317da7f081a7ae6878acfc88a645e718cf49`  
		Last Modified: Thu, 16 Jul 2026 00:38:52 GMT  
		Size: 90.1 KB (90080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c16a252edd64fd4e0b3bb2510c4c0189b5277bd687e451992585d55a8b0383e`  
		Last Modified: Thu, 16 Jul 2026 00:38:56 GMT  
		Size: 136.8 MB (136835349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efa36fd8fe4fd568b93a41ba29dc466187c2ba3e30aac4cf1092351b01e5283c`  
		Last Modified: Thu, 16 Jul 2026 00:38:53 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cba190c6521da847653a8879de7ef1e782c95870360c6e8e3018452a93746732`  
		Last Modified: Thu, 16 Jul 2026 01:19:14 GMT  
		Size: 124.9 MB (124864076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:032c8e898432e45def3595b2f11c3b262fdcab16bc16cdf4957285998b580561`  
		Last Modified: Thu, 16 Jul 2026 01:19:10 GMT  
		Size: 373.2 KB (373217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b822d4cc2a52e077b5276f8ce026e84b6725442f68aa2dceeb20daa326a8d6b6`  
		Last Modified: Thu, 16 Jul 2026 01:19:10 GMT  
		Size: 130.8 KB (130804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b81d4a41a5d26b802dbd745837d8f2e0bec1a9c007ecbebe771d1924b90df366`  
		Last Modified: Thu, 16 Jul 2026 01:19:11 GMT  
		Size: 25.8 MB (25792662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29e43c211cfbc245a9bfe9782727910628335845f7580f1c220ac5c0aa099cca`  
		Last Modified: Thu, 16 Jul 2026 02:24:55 GMT  
		Size: 1.2 GB (1188495027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:3307ca9198a61504f8705215a52b64f64eb579e9488582e3a2aa9d2440d5034b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64346499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c348ffb492373b1cfbc0bc625e4224bcacf5c90a2dd549f14bd6778c1c76f76d`

```dockerfile
```

-	Layers:
	-	`sha256:afb53147cb1cef63b3697b3571bb993fbede43cb979f539304ec3452d1df0c9e`  
		Last Modified: Thu, 16 Jul 2026 02:24:34 GMT  
		Size: 64.3 MB (64336806 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:991e885f92898f8306b24b1854b7ad69a312141f5b0413674584130551d00cdc`  
		Last Modified: Thu, 16 Jul 2026 02:24:31 GMT  
		Size: 9.7 KB (9693 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-perception-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:3f2f1b3fc834e9afbf89549d9daf11d92035f66e17d6c14de33f4bd1282caf74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1471981620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83ccbb2632db6f1f8560066f2cc16b3c75cf0dda49318f30c8d015fa44a9c632`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Jun 2026 04:19:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.9127.tar --tag 26.04
# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-06-27T04:19:53.170736+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-06-27T04:19:53.170736+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.control_data.9127.tar
# Thu, 09 Jul 2026 18:31:17 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:31:31 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:31:36 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:32:27 GMT
ENV LANG=C.UTF-8
# Thu, 09 Jul 2026 18:32:27 GMT
ENV LC_ALL=C.UTF-8
# Thu, 09 Jul 2026 18:32:27 GMT
ENV ROS_DISTRO=rolling
# Thu, 09 Jul 2026 18:32:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:32:27 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 09 Jul 2026 18:32:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 09 Jul 2026 18:32:27 GMT
CMD ["bash"]
# Thu, 09 Jul 2026 18:37:26 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:37:29 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 09 Jul 2026 18:37:33 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 09 Jul 2026 18:37:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 19:14:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:b2b4144bf8691339f4f1011754b5ed314a4cb9c03e57af4c022301022f36b79a`  
		Last Modified: Sat, 27 Jun 2026 11:14:43 GMT  
		Size: 40.7 MB (40711760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade0b5cbf7f1ac2f5ced1ed952e889f07199006cfbb44f6e2c7b85df005259ca`  
		Last Modified: Sat, 27 Jun 2026 11:14:46 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b212f396a8d7403086bea7814b524a8a476d936ea87bd795407c72f29c93c06`  
		Last Modified: Thu, 09 Jul 2026 18:33:05 GMT  
		Size: 742.0 KB (742032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:384fc61248925600a0cd688c6766d5dc8e9be47385266c4b9e57fcda86d2ed1f`  
		Last Modified: Thu, 09 Jul 2026 18:33:06 GMT  
		Size: 9.6 MB (9607107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54d8fec7cbfae0c5b67babc22a87591ea889647c1cfa0271c4216e61c0b06b00`  
		Last Modified: Thu, 09 Jul 2026 18:33:05 GMT  
		Size: 91.1 KB (91098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a15cddbe9789e5807f02c1f44acc072e1cf22050e93b14b9a2d49e357e490629`  
		Last Modified: Thu, 09 Jul 2026 18:33:09 GMT  
		Size: 130.2 MB (130199952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4baef65b99574c57f36722163f7eac27b5eace626399f04ae7e68236c167f196`  
		Last Modified: Thu, 09 Jul 2026 18:33:07 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40f53707932ffe7d1fb0f581bebdb046f570db5e5a5fe05563b64483788ae81c`  
		Last Modified: Thu, 09 Jul 2026 18:38:48 GMT  
		Size: 118.3 MB (118276238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6b1067915e749fb82d1cf7fc0c33acee692788c9bdddccb700e6dd2839b0039`  
		Last Modified: Thu, 09 Jul 2026 18:38:45 GMT  
		Size: 372.6 KB (372574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a9e2e7a4414c19adaf6ae13b5efd963fa29cb15b0bd84f32f92230b9221aac`  
		Last Modified: Thu, 09 Jul 2026 18:38:45 GMT  
		Size: 130.9 KB (130865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dba84455dbba6cbdd79476f6e4fa70e16abf4d574f88ec6b7abd7d102558eab3`  
		Last Modified: Thu, 09 Jul 2026 18:38:46 GMT  
		Size: 24.7 MB (24738576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4be9b396657f44c2d43ae0fbf13b64036791df347a36d0f051c6ac61cd3e14b`  
		Last Modified: Thu, 09 Jul 2026 19:19:00 GMT  
		Size: 1.1 GB (1147110830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:ae83e711178e56dda03535532419d1ff32187c84833c702c4d413a501789a6bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64260731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c3775709595dfe3d13a7496499c61c5a50d35ec6290dd56079b913d1e214a0f`

```dockerfile
```

-	Layers:
	-	`sha256:3c75211a66cace79bbc434a5e60ea97596a6f5903d0515d83ae8b2b74643e08e`  
		Last Modified: Thu, 09 Jul 2026 19:18:41 GMT  
		Size: 64.3 MB (64250958 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c4efebf91b56b959f4912cf6714b41f71fa37366ab5dd43b8a3c72e3c42b9f5`  
		Last Modified: Thu, 09 Jul 2026 19:18:38 GMT  
		Size: 9.8 KB (9773 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-ros-base`

```console
$ docker pull ros@sha256:7fd952a7f1f87c990f7b55f1e9cdf4e267010e52efd990665a94f7e41c7ce561
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:19a2aec88315b852a4420cc52b4639bfaf0699848f157e1557baebef7d037e65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.5 MB (349527657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:257ec6b327b65586f1b808dc6d25279ee1d45683bd6eaf58fbfbba628d3b5b45`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 01 Sep 2026 20:36:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.9485.tar --tag 26.04
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-01T20:37:00.369571+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-01T20:37:00.369571+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.control_data.9485.tar
# Wed, 09 Sep 2026 02:39:24 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:39:38 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:39:44 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:40:37 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:40:37 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:40:37 GMT
ENV ROS_DISTRO=rolling
# Wed, 09 Sep 2026 02:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:40:37 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:40:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:40:37 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:30:54 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:30:56 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:30:58 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:31:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:08f5f5b2a2b0d2a960804adef3bd1783c5f2c20f42db5e290dc05d9529d11ae2`  
		Last Modified: Wed, 02 Sep 2026 10:46:03 GMT  
		Size: 41.6 MB (41602703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a7c4f6d8c3863707c14af40aad062db2bb477271491c7d3e99e03394dd261e3`  
		Last Modified: Wed, 02 Sep 2026 10:46:06 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:547e2a397c18788ad08b55531c2ff7390909206aea61dd305be97a7756bd0cc2`  
		Last Modified: Wed, 09 Sep 2026 02:41:16 GMT  
		Size: 741.5 KB (741504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0beddd533d07fa4f56373fe8fa4089cb62749befa1f485c9448178c5e417847`  
		Last Modified: Wed, 09 Sep 2026 02:41:17 GMT  
		Size: 9.8 MB (9783839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:758f4973a08e9574760c2b2dc07b9f252558e1a28525a578cc2750626d79fd7e`  
		Last Modified: Wed, 09 Sep 2026 02:41:16 GMT  
		Size: 91.7 KB (91727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bbdd120909528d121c59bcf6e34071315f369a9f28c05a574d99371506f86cd`  
		Last Modified: Wed, 09 Sep 2026 02:41:20 GMT  
		Size: 143.7 MB (143697563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e5c2c621fc5cf24589f14cb74f77a2349ecf1bc70319d5b1252fb02b36db5d8`  
		Last Modified: Wed, 09 Sep 2026 02:41:17 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28e1369e91e417f81997d88872e795e8cab32b57af7c7cd6eb333b5d15d2282f`  
		Last Modified: Wed, 09 Sep 2026 03:32:16 GMT  
		Size: 127.3 MB (127335764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecb045f01a5469c0819291274c8f01d121edcca3d1229688804d84a5111a94ac`  
		Last Modified: Wed, 09 Sep 2026 03:32:12 GMT  
		Size: 364.8 KB (364821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba88f06caf0c07499ec401e37e4ea91007b75a06dd9ec60959731fb0278b5901`  
		Last Modified: Wed, 09 Sep 2026 03:32:12 GMT  
		Size: 130.8 KB (130811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d015695855054c8969eaca79695c7a57ad6f03377f94a6b6dfd8b639d65e86b`  
		Last Modified: Wed, 09 Sep 2026 03:32:14 GMT  
		Size: 25.8 MB (25778336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:55d033a0d4aa8ad0c305a4307224d688fc40d4f4e6a4d2fef355d90295415793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29160954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c3e004d6599e83cf56c965f69664f4c9a97a36b410bcfbb74453485c3d2a8ad`

```dockerfile
```

-	Layers:
	-	`sha256:eaec155306e3e4a93c71b630137bb402165b616ee9306a2b4b68e1330ec6a923`  
		Last Modified: Wed, 09 Sep 2026 03:32:14 GMT  
		Size: 29.1 MB (29143796 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7babfe86633590eb350a0a8f93d0fe18443abe027b07addee88d719e65428907`  
		Last Modified: Wed, 09 Sep 2026 03:32:12 GMT  
		Size: 17.2 KB (17158 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:f7bfeca57f16f1938e081aaaca91101e45e8650bf337db4eaad755053d9121bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.0 MB (333977977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c52f194c00aa33a6207c7236397e05637816961ec1aaa93bdc9c08892b9a421`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.9504.tar --tag 26.04
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-01T20:40:13.648724+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-01T20:40:13.648724+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.control_data.9504.tar
# Wed, 09 Sep 2026 02:34:25 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:34:37 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:34:42 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:35:38 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:35:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:35:38 GMT
ENV ROS_DISTRO=rolling
# Wed, 09 Sep 2026 02:35:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:35:38 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:35:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:35:38 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:42:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:42:24 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:42:26 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:42:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:56f0dbdea7403d4e7167e2c10f4212e62e9887f6701e295380c2c043a7f360a4`  
		Last Modified: Wed, 02 Sep 2026 10:46:14 GMT  
		Size: 40.7 MB (40734829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7189ca5dbddf377ce4968cfdcd1b9dcb34cd8528a48f0a7925b6c0ae89cf7603`  
		Last Modified: Wed, 02 Sep 2026 10:46:17 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c438b3d945e112f84f0a4be0545840f6556984b01ea4da14ca9d66d30dc58b2`  
		Last Modified: Wed, 09 Sep 2026 02:36:16 GMT  
		Size: 741.7 KB (741674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26b1c934cfee68b88ca686e24a2ae95741e151f53c99a783f54daf5850aca1e6`  
		Last Modified: Wed, 09 Sep 2026 02:36:17 GMT  
		Size: 9.6 MB (9607070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bed05825d81155f4f636c53b39ae99b0e96b201201cce7e813da326fbc0051b`  
		Last Modified: Wed, 09 Sep 2026 02:36:17 GMT  
		Size: 92.0 KB (91958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:929c8a96a7cfcd63fe0647d99ec0fa85f4f2dd70454e77bbb43748fda5980a4d`  
		Last Modified: Wed, 09 Sep 2026 02:36:20 GMT  
		Size: 136.9 MB (136893601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bba95311feaf834f23b2c1f361216b73aa05849c5cf9eada3d8d53979ce1c82`  
		Last Modified: Wed, 09 Sep 2026 02:36:18 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e13d8860b25ee6c499ee7e307feb37b97a710109c952ca1c4bffd8804b1b16d`  
		Last Modified: Wed, 09 Sep 2026 03:43:37 GMT  
		Size: 120.7 MB (120688567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77f997806a3e0e9497e6c7ee7bc463ac87861154c9df5a552c483fcc63743666`  
		Last Modified: Wed, 09 Sep 2026 03:43:33 GMT  
		Size: 364.8 KB (364821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c09e7ce9db0fe70fa509bc664e07e55a67112f5a451db7a95ca82334a8d3cd08`  
		Last Modified: Wed, 09 Sep 2026 03:43:33 GMT  
		Size: 130.9 KB (130868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48598ef3207bf4f96e0608753727c54e028900456868f6f5fb199218c66ff367`  
		Last Modified: Wed, 09 Sep 2026 03:43:35 GMT  
		Size: 24.7 MB (24724001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:ac72ed46958bc8e674b9e130695a2a070174bfc957a1fefa84f4879439a8118c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29225711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cd6bd758ac09c0c6a4457534dc07b702c0c7063ef777e6e97c1f0e6b96627ed`

```dockerfile
```

-	Layers:
	-	`sha256:0079b12f9dd9cc409969990bf66fab9657b7dbe4b78ef9aa28de9b173f442dce`  
		Last Modified: Wed, 09 Sep 2026 03:43:35 GMT  
		Size: 29.2 MB (29208416 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9efaca3c7a99b19c046d49d9bc1303e2cdc47083a92458f92d71b77480f200be`  
		Last Modified: Wed, 09 Sep 2026 03:43:33 GMT  
		Size: 17.3 KB (17295 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-ros-base-resolute`

```console
$ docker pull ros@sha256:7fd952a7f1f87c990f7b55f1e9cdf4e267010e52efd990665a94f7e41c7ce561
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-base-resolute` - linux; amd64

```console
$ docker pull ros@sha256:19a2aec88315b852a4420cc52b4639bfaf0699848f157e1557baebef7d037e65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.5 MB (349527657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:257ec6b327b65586f1b808dc6d25279ee1d45683bd6eaf58fbfbba628d3b5b45`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 01 Sep 2026 20:36:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.9485.tar --tag 26.04
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-01T20:37:00.369571+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-01T20:37:00.369571+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.control_data.9485.tar
# Wed, 09 Sep 2026 02:39:24 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:39:38 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:39:44 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:40:37 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:40:37 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:40:37 GMT
ENV ROS_DISTRO=rolling
# Wed, 09 Sep 2026 02:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:40:37 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:40:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:40:37 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:30:54 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:30:56 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:30:58 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:31:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:08f5f5b2a2b0d2a960804adef3bd1783c5f2c20f42db5e290dc05d9529d11ae2`  
		Last Modified: Wed, 02 Sep 2026 10:46:03 GMT  
		Size: 41.6 MB (41602703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a7c4f6d8c3863707c14af40aad062db2bb477271491c7d3e99e03394dd261e3`  
		Last Modified: Wed, 02 Sep 2026 10:46:06 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:547e2a397c18788ad08b55531c2ff7390909206aea61dd305be97a7756bd0cc2`  
		Last Modified: Wed, 09 Sep 2026 02:41:16 GMT  
		Size: 741.5 KB (741504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0beddd533d07fa4f56373fe8fa4089cb62749befa1f485c9448178c5e417847`  
		Last Modified: Wed, 09 Sep 2026 02:41:17 GMT  
		Size: 9.8 MB (9783839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:758f4973a08e9574760c2b2dc07b9f252558e1a28525a578cc2750626d79fd7e`  
		Last Modified: Wed, 09 Sep 2026 02:41:16 GMT  
		Size: 91.7 KB (91727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bbdd120909528d121c59bcf6e34071315f369a9f28c05a574d99371506f86cd`  
		Last Modified: Wed, 09 Sep 2026 02:41:20 GMT  
		Size: 143.7 MB (143697563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e5c2c621fc5cf24589f14cb74f77a2349ecf1bc70319d5b1252fb02b36db5d8`  
		Last Modified: Wed, 09 Sep 2026 02:41:17 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28e1369e91e417f81997d88872e795e8cab32b57af7c7cd6eb333b5d15d2282f`  
		Last Modified: Wed, 09 Sep 2026 03:32:16 GMT  
		Size: 127.3 MB (127335764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecb045f01a5469c0819291274c8f01d121edcca3d1229688804d84a5111a94ac`  
		Last Modified: Wed, 09 Sep 2026 03:32:12 GMT  
		Size: 364.8 KB (364821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba88f06caf0c07499ec401e37e4ea91007b75a06dd9ec60959731fb0278b5901`  
		Last Modified: Wed, 09 Sep 2026 03:32:12 GMT  
		Size: 130.8 KB (130811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d015695855054c8969eaca79695c7a57ad6f03377f94a6b6dfd8b639d65e86b`  
		Last Modified: Wed, 09 Sep 2026 03:32:14 GMT  
		Size: 25.8 MB (25778336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:55d033a0d4aa8ad0c305a4307224d688fc40d4f4e6a4d2fef355d90295415793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29160954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c3e004d6599e83cf56c965f69664f4c9a97a36b410bcfbb74453485c3d2a8ad`

```dockerfile
```

-	Layers:
	-	`sha256:eaec155306e3e4a93c71b630137bb402165b616ee9306a2b4b68e1330ec6a923`  
		Last Modified: Wed, 09 Sep 2026 03:32:14 GMT  
		Size: 29.1 MB (29143796 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7babfe86633590eb350a0a8f93d0fe18443abe027b07addee88d719e65428907`  
		Last Modified: Wed, 09 Sep 2026 03:32:12 GMT  
		Size: 17.2 KB (17158 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-base-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:f7bfeca57f16f1938e081aaaca91101e45e8650bf337db4eaad755053d9121bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.0 MB (333977977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c52f194c00aa33a6207c7236397e05637816961ec1aaa93bdc9c08892b9a421`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.9504.tar --tag 26.04
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-01T20:40:13.648724+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-01T20:40:13.648724+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.control_data.9504.tar
# Wed, 09 Sep 2026 02:34:25 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:34:37 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:34:42 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:35:38 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:35:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:35:38 GMT
ENV ROS_DISTRO=rolling
# Wed, 09 Sep 2026 02:35:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:35:38 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:35:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:35:38 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:42:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:42:24 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:42:26 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:42:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:56f0dbdea7403d4e7167e2c10f4212e62e9887f6701e295380c2c043a7f360a4`  
		Last Modified: Wed, 02 Sep 2026 10:46:14 GMT  
		Size: 40.7 MB (40734829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7189ca5dbddf377ce4968cfdcd1b9dcb34cd8528a48f0a7925b6c0ae89cf7603`  
		Last Modified: Wed, 02 Sep 2026 10:46:17 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c438b3d945e112f84f0a4be0545840f6556984b01ea4da14ca9d66d30dc58b2`  
		Last Modified: Wed, 09 Sep 2026 02:36:16 GMT  
		Size: 741.7 KB (741674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26b1c934cfee68b88ca686e24a2ae95741e151f53c99a783f54daf5850aca1e6`  
		Last Modified: Wed, 09 Sep 2026 02:36:17 GMT  
		Size: 9.6 MB (9607070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bed05825d81155f4f636c53b39ae99b0e96b201201cce7e813da326fbc0051b`  
		Last Modified: Wed, 09 Sep 2026 02:36:17 GMT  
		Size: 92.0 KB (91958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:929c8a96a7cfcd63fe0647d99ec0fa85f4f2dd70454e77bbb43748fda5980a4d`  
		Last Modified: Wed, 09 Sep 2026 02:36:20 GMT  
		Size: 136.9 MB (136893601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bba95311feaf834f23b2c1f361216b73aa05849c5cf9eada3d8d53979ce1c82`  
		Last Modified: Wed, 09 Sep 2026 02:36:18 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e13d8860b25ee6c499ee7e307feb37b97a710109c952ca1c4bffd8804b1b16d`  
		Last Modified: Wed, 09 Sep 2026 03:43:37 GMT  
		Size: 120.7 MB (120688567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77f997806a3e0e9497e6c7ee7bc463ac87861154c9df5a552c483fcc63743666`  
		Last Modified: Wed, 09 Sep 2026 03:43:33 GMT  
		Size: 364.8 KB (364821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c09e7ce9db0fe70fa509bc664e07e55a67112f5a451db7a95ca82334a8d3cd08`  
		Last Modified: Wed, 09 Sep 2026 03:43:33 GMT  
		Size: 130.9 KB (130868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48598ef3207bf4f96e0608753727c54e028900456868f6f5fb199218c66ff367`  
		Last Modified: Wed, 09 Sep 2026 03:43:35 GMT  
		Size: 24.7 MB (24724001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:ac72ed46958bc8e674b9e130695a2a070174bfc957a1fefa84f4879439a8118c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29225711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cd6bd758ac09c0c6a4457534dc07b702c0c7063ef777e6e97c1f0e6b96627ed`

```dockerfile
```

-	Layers:
	-	`sha256:0079b12f9dd9cc409969990bf66fab9657b7dbe4b78ef9aa28de9b173f442dce`  
		Last Modified: Wed, 09 Sep 2026 03:43:35 GMT  
		Size: 29.2 MB (29208416 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9efaca3c7a99b19c046d49d9bc1303e2cdc47083a92458f92d71b77480f200be`  
		Last Modified: Wed, 09 Sep 2026 03:43:33 GMT  
		Size: 17.3 KB (17295 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-ros-core`

```console
$ docker pull ros@sha256:cec0b6f389644bdaae5ccb4fa2af62ac7ea1d27156df84142cd9fb2baf9c613d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:dcabe81267cd71388c96bf3f141d9f3cac6fae868fc65ef774ac2fb8daf79765
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.9 MB (195917925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5612f0bc0b0d15f30887f82652d270fd85d8373f381d02bbe14f587f147f717f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 01 Sep 2026 20:36:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.9485.tar --tag 26.04
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-01T20:37:00.369571+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-01T20:37:00.369571+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.control_data.9485.tar
# Wed, 09 Sep 2026 02:39:24 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:39:38 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:39:44 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:40:37 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:40:37 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:40:37 GMT
ENV ROS_DISTRO=rolling
# Wed, 09 Sep 2026 02:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:40:37 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:40:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:40:37 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:08f5f5b2a2b0d2a960804adef3bd1783c5f2c20f42db5e290dc05d9529d11ae2`  
		Last Modified: Wed, 02 Sep 2026 10:46:03 GMT  
		Size: 41.6 MB (41602703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a7c4f6d8c3863707c14af40aad062db2bb477271491c7d3e99e03394dd261e3`  
		Last Modified: Wed, 02 Sep 2026 10:46:06 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:547e2a397c18788ad08b55531c2ff7390909206aea61dd305be97a7756bd0cc2`  
		Last Modified: Wed, 09 Sep 2026 02:41:16 GMT  
		Size: 741.5 KB (741504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0beddd533d07fa4f56373fe8fa4089cb62749befa1f485c9448178c5e417847`  
		Last Modified: Wed, 09 Sep 2026 02:41:17 GMT  
		Size: 9.8 MB (9783839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:758f4973a08e9574760c2b2dc07b9f252558e1a28525a578cc2750626d79fd7e`  
		Last Modified: Wed, 09 Sep 2026 02:41:16 GMT  
		Size: 91.7 KB (91727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bbdd120909528d121c59bcf6e34071315f369a9f28c05a574d99371506f86cd`  
		Last Modified: Wed, 09 Sep 2026 02:41:20 GMT  
		Size: 143.7 MB (143697563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e5c2c621fc5cf24589f14cb74f77a2349ecf1bc70319d5b1252fb02b36db5d8`  
		Last Modified: Wed, 09 Sep 2026 02:41:17 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:4e62fa9b3d57489cf9a31283822343448e5eec257fd3ec86913129c5801e47f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22750720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd8a7a61ed98bb874ed70173f2696b0a30dfb5b14c83a5c89a5d68c0987960db`

```dockerfile
```

-	Layers:
	-	`sha256:4e06ab2c30c0031369f461d2e488308ac1c40c73e64498245b939e211509f5fa`  
		Last Modified: Wed, 09 Sep 2026 02:41:17 GMT  
		Size: 22.7 MB (22735042 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0163586df7ddfe512ce337107f153257b449efe877d5119164ea771628745ae1`  
		Last Modified: Wed, 09 Sep 2026 02:41:16 GMT  
		Size: 15.7 KB (15678 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:819ad862c23a2cf84ffd4bf98a56bab66143b61546c81cf9f06a66808e292690
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.1 MB (188069720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5da9a122dca334ea15fabb2270e667b21e7307a286d550a318c7fd9f682eded`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.9504.tar --tag 26.04
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-01T20:40:13.648724+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-01T20:40:13.648724+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.control_data.9504.tar
# Wed, 09 Sep 2026 02:34:25 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:34:37 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:34:42 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:35:38 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:35:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:35:38 GMT
ENV ROS_DISTRO=rolling
# Wed, 09 Sep 2026 02:35:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:35:38 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:35:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:35:38 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:56f0dbdea7403d4e7167e2c10f4212e62e9887f6701e295380c2c043a7f360a4`  
		Last Modified: Wed, 02 Sep 2026 10:46:14 GMT  
		Size: 40.7 MB (40734829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7189ca5dbddf377ce4968cfdcd1b9dcb34cd8528a48f0a7925b6c0ae89cf7603`  
		Last Modified: Wed, 02 Sep 2026 10:46:17 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c438b3d945e112f84f0a4be0545840f6556984b01ea4da14ca9d66d30dc58b2`  
		Last Modified: Wed, 09 Sep 2026 02:36:16 GMT  
		Size: 741.7 KB (741674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26b1c934cfee68b88ca686e24a2ae95741e151f53c99a783f54daf5850aca1e6`  
		Last Modified: Wed, 09 Sep 2026 02:36:17 GMT  
		Size: 9.6 MB (9607070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bed05825d81155f4f636c53b39ae99b0e96b201201cce7e813da326fbc0051b`  
		Last Modified: Wed, 09 Sep 2026 02:36:17 GMT  
		Size: 92.0 KB (91958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:929c8a96a7cfcd63fe0647d99ec0fa85f4f2dd70454e77bbb43748fda5980a4d`  
		Last Modified: Wed, 09 Sep 2026 02:36:20 GMT  
		Size: 136.9 MB (136893601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bba95311feaf834f23b2c1f361216b73aa05849c5cf9eada3d8d53979ce1c82`  
		Last Modified: Wed, 09 Sep 2026 02:36:18 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:d3adef51ae099aef9b1399c15dbae0edc1c7c09efbe0d4c4d9124e9dc27d9ffd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22723538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8640bfd5b2408be26d53a93b55b707b6ce710f20e896c5b5045fd7853d368db`

```dockerfile
```

-	Layers:
	-	`sha256:a5e026d6e11065331c2216839477d98bbb9e02e3a1df3f6cb1ffd3387832e525`  
		Last Modified: Wed, 09 Sep 2026 02:36:17 GMT  
		Size: 22.7 MB (22707734 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3bf7c527c7c7e4a6ed551a857f71154f337ec4528757f1407a194fa5b42e9539`  
		Last Modified: Wed, 09 Sep 2026 02:36:17 GMT  
		Size: 15.8 KB (15804 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-ros-core-resolute`

```console
$ docker pull ros@sha256:cec0b6f389644bdaae5ccb4fa2af62ac7ea1d27156df84142cd9fb2baf9c613d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-core-resolute` - linux; amd64

```console
$ docker pull ros@sha256:dcabe81267cd71388c96bf3f141d9f3cac6fae868fc65ef774ac2fb8daf79765
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.9 MB (195917925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5612f0bc0b0d15f30887f82652d270fd85d8373f381d02bbe14f587f147f717f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 01 Sep 2026 20:36:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.9485.tar --tag 26.04
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-01T20:37:00.369571+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-01T20:37:00.369571+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.control_data.9485.tar
# Wed, 09 Sep 2026 02:39:24 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:39:38 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:39:44 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:40:37 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:40:37 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:40:37 GMT
ENV ROS_DISTRO=rolling
# Wed, 09 Sep 2026 02:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:40:37 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:40:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:40:37 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:08f5f5b2a2b0d2a960804adef3bd1783c5f2c20f42db5e290dc05d9529d11ae2`  
		Last Modified: Wed, 02 Sep 2026 10:46:03 GMT  
		Size: 41.6 MB (41602703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a7c4f6d8c3863707c14af40aad062db2bb477271491c7d3e99e03394dd261e3`  
		Last Modified: Wed, 02 Sep 2026 10:46:06 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:547e2a397c18788ad08b55531c2ff7390909206aea61dd305be97a7756bd0cc2`  
		Last Modified: Wed, 09 Sep 2026 02:41:16 GMT  
		Size: 741.5 KB (741504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0beddd533d07fa4f56373fe8fa4089cb62749befa1f485c9448178c5e417847`  
		Last Modified: Wed, 09 Sep 2026 02:41:17 GMT  
		Size: 9.8 MB (9783839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:758f4973a08e9574760c2b2dc07b9f252558e1a28525a578cc2750626d79fd7e`  
		Last Modified: Wed, 09 Sep 2026 02:41:16 GMT  
		Size: 91.7 KB (91727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bbdd120909528d121c59bcf6e34071315f369a9f28c05a574d99371506f86cd`  
		Last Modified: Wed, 09 Sep 2026 02:41:20 GMT  
		Size: 143.7 MB (143697563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e5c2c621fc5cf24589f14cb74f77a2349ecf1bc70319d5b1252fb02b36db5d8`  
		Last Modified: Wed, 09 Sep 2026 02:41:17 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:4e62fa9b3d57489cf9a31283822343448e5eec257fd3ec86913129c5801e47f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22750720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd8a7a61ed98bb874ed70173f2696b0a30dfb5b14c83a5c89a5d68c0987960db`

```dockerfile
```

-	Layers:
	-	`sha256:4e06ab2c30c0031369f461d2e488308ac1c40c73e64498245b939e211509f5fa`  
		Last Modified: Wed, 09 Sep 2026 02:41:17 GMT  
		Size: 22.7 MB (22735042 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0163586df7ddfe512ce337107f153257b449efe877d5119164ea771628745ae1`  
		Last Modified: Wed, 09 Sep 2026 02:41:16 GMT  
		Size: 15.7 KB (15678 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-core-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:819ad862c23a2cf84ffd4bf98a56bab66143b61546c81cf9f06a66808e292690
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.1 MB (188069720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5da9a122dca334ea15fabb2270e667b21e7307a286d550a318c7fd9f682eded`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.9504.tar --tag 26.04
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-01T20:40:13.648724+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-01T20:40:13.648724+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.control_data.9504.tar
# Wed, 09 Sep 2026 02:34:25 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:34:37 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:34:42 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:35:38 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:35:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:35:38 GMT
ENV ROS_DISTRO=rolling
# Wed, 09 Sep 2026 02:35:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:35:38 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:35:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:35:38 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:56f0dbdea7403d4e7167e2c10f4212e62e9887f6701e295380c2c043a7f360a4`  
		Last Modified: Wed, 02 Sep 2026 10:46:14 GMT  
		Size: 40.7 MB (40734829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7189ca5dbddf377ce4968cfdcd1b9dcb34cd8528a48f0a7925b6c0ae89cf7603`  
		Last Modified: Wed, 02 Sep 2026 10:46:17 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c438b3d945e112f84f0a4be0545840f6556984b01ea4da14ca9d66d30dc58b2`  
		Last Modified: Wed, 09 Sep 2026 02:36:16 GMT  
		Size: 741.7 KB (741674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26b1c934cfee68b88ca686e24a2ae95741e151f53c99a783f54daf5850aca1e6`  
		Last Modified: Wed, 09 Sep 2026 02:36:17 GMT  
		Size: 9.6 MB (9607070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bed05825d81155f4f636c53b39ae99b0e96b201201cce7e813da326fbc0051b`  
		Last Modified: Wed, 09 Sep 2026 02:36:17 GMT  
		Size: 92.0 KB (91958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:929c8a96a7cfcd63fe0647d99ec0fa85f4f2dd70454e77bbb43748fda5980a4d`  
		Last Modified: Wed, 09 Sep 2026 02:36:20 GMT  
		Size: 136.9 MB (136893601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bba95311feaf834f23b2c1f361216b73aa05849c5cf9eada3d8d53979ce1c82`  
		Last Modified: Wed, 09 Sep 2026 02:36:18 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:d3adef51ae099aef9b1399c15dbae0edc1c7c09efbe0d4c4d9124e9dc27d9ffd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22723538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8640bfd5b2408be26d53a93b55b707b6ce710f20e896c5b5045fd7853d368db`

```dockerfile
```

-	Layers:
	-	`sha256:a5e026d6e11065331c2216839477d98bbb9e02e3a1df3f6cb1ffd3387832e525`  
		Last Modified: Wed, 09 Sep 2026 02:36:17 GMT  
		Size: 22.7 MB (22707734 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3bf7c527c7c7e4a6ed551a857f71154f337ec4528757f1407a194fa5b42e9539`  
		Last Modified: Wed, 09 Sep 2026 02:36:17 GMT  
		Size: 15.8 KB (15804 bytes)  
		MIME: application/vnd.in-toto+json
