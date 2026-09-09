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
