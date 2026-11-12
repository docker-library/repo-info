## `ros:humble`

```console
$ docker pull ros@sha256:d9f14e84747bea639a65e00cf871d2c68ae55385d2acf6239614de0cadb41dcc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble` - linux; amd64

```console
$ docker pull ros@sha256:4dd8083b7009624fd5e4b3c163f280bc42d29250b9d60e3126b49ce345d948c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.5 MB (264510557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4086a5abfb55058660921298053046d6579687bc3cad158df0a3e0eaa3c0b9a3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:34:41 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:34:49 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:34:54 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:42 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:36:42 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:36:42 GMT
ENV ROS_DISTRO=humble
# Wed, 11 Nov 2026 23:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:42 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:36:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:36:42 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:30:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:30:34 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:30:38 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:31:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:074560c8655e85fabe0716fa1b96ad8da5d4d8034fc8c77581421da8b3c63b8b`  
		Last Modified: Wed, 11 Nov 2026 23:37:08 GMT  
		Size: 1.2 MB (1214774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a76521ffea3356ff95836ef5face012f818645dd2fe237624f45e71417043189`  
		Last Modified: Wed, 11 Nov 2026 23:37:08 GMT  
		Size: 6.0 MB (5952707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:033bac91ac17db5de1454fb077af999632c418c76b48cfe9f185e5115bf1dff6`  
		Last Modified: Wed, 11 Nov 2026 23:37:08 GMT  
		Size: 97.8 KB (97825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b653117d02b27e594796039a2f6f21841801463df80936d0908d1c5379bf81fe`  
		Last Modified: Wed, 11 Nov 2026 23:37:11 GMT  
		Size: 105.2 MB (105243399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514a35502a219f811c9b4483a10b26fa3cdd7bfba870f06f96c5cd47f239f108`  
		Last Modified: Wed, 11 Nov 2026 23:37:09 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9694d7c0397148e5e05c8249af7a7a7d061f2d173ce2245f5ae094f50828b645`  
		Last Modified: Thu, 12 Nov 2026 00:32:13 GMT  
		Size: 98.2 MB (98203736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14863129d5ffa2c84a8312924ec454e3976ac13916bc2c32082fe4105b8d9ef7`  
		Last Modified: Thu, 12 Nov 2026 00:32:09 GMT  
		Size: 375.8 KB (375750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb32d6be65386dd2b98409e3441b9311029aa5a5ea261433b886d6af4baef421`  
		Last Modified: Thu, 12 Nov 2026 00:32:09 GMT  
		Size: 2.7 KB (2682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e506290ceefe4014398b596d1e389da52e87b7245d881fe7a817a7ec751eb1d9`  
		Last Modified: Thu, 12 Nov 2026 00:32:11 GMT  
		Size: 23.3 MB (23349955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble` - unknown; unknown

```console
$ docker pull ros@sha256:911bba7b5d5fe25b313c5f65e3ebd48a6f221214b302a498c70672eaf45572d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23974419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf7442c11b7089b3dd349bd8227059b9a7d3466af1d749196fbdd19cdb9e68f3`

```dockerfile
```

-	Layers:
	-	`sha256:05745b3273dc15cceb7d9ffb97b9697a68c8f064bd1581a2ef7264b897fe0124`  
		Last Modified: Thu, 12 Nov 2026 00:32:11 GMT  
		Size: 24.0 MB (23958071 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9df1731362d730c5b297ac3179cee9ecf962d8a6636fa0d68ba3c1e714f4a86d`  
		Last Modified: Thu, 12 Nov 2026 00:32:09 GMT  
		Size: 16.3 KB (16348 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:49b0b1254088467c293596e4d885aeb3737f5296143ef5cc1a59fa4aca9a1c44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.2 MB (257248291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:962eb74c14373a8a7971bb234d377e3ce797b8910c203a15f86f295b8c6fa3c2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:36:00 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:09 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:14 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:48 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:37:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:37:48 GMT
ENV ROS_DISTRO=humble
# Wed, 11 Nov 2026 23:37:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:49 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:37:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:37:49 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:45:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:45:47 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:45:51 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:46:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03ce1848bc4a89509d0fd0dd7038c5702a6d898a83f7103d02e6dde37f437fac`  
		Last Modified: Wed, 11 Nov 2026 23:38:14 GMT  
		Size: 1.2 MB (1215118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8e7840aaf5d1699f5cfd1e3c1d48c2d88dcf26c14cf136ff6de1f857c803e52`  
		Last Modified: Wed, 11 Nov 2026 23:38:15 GMT  
		Size: 5.9 MB (5910832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f664db0f15de3e12a91a9c32062505f9670db533fc7b4de999551d9894714983`  
		Last Modified: Wed, 11 Nov 2026 23:38:14 GMT  
		Size: 98.1 KB (98108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57c5d5bfd93d2acc16836dfaee7b00fc6b823482d3859a1796178f2e44c5a088`  
		Last Modified: Wed, 11 Nov 2026 23:38:17 GMT  
		Size: 103.1 MB (103053304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c007703271a609370140030fbd05a7c39f1f4bc09795c089771cb85ce4a50e64`  
		Last Modified: Wed, 11 Nov 2026 23:38:16 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dd3ee194d20566a24ffd1b470d04fb16787960390cd41c0a09cadfaa23804eb`  
		Last Modified: Thu, 12 Nov 2026 00:47:22 GMT  
		Size: 95.8 MB (95835971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d955d34dcd80c48a5d03c4e5c46179de74aab0ff1f4f6ccc1a5c85d53c1d579f`  
		Last Modified: Thu, 12 Nov 2026 00:47:19 GMT  
		Size: 375.8 KB (375755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d696da2f89d1cd2b714feb872b28ced58e3e005d879ffdc7c097e79aa76ffef2`  
		Last Modified: Thu, 12 Nov 2026 00:47:19 GMT  
		Size: 2.7 KB (2685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47983836f043c9624170e0421e85700ad695a00bd7f91fe2cfb89c99da95818d`  
		Last Modified: Thu, 12 Nov 2026 00:47:21 GMT  
		Size: 22.8 MB (22754910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble` - unknown; unknown

```console
$ docker pull ros@sha256:f11fef8ffdec4fd9b2ab42c78e6f3a82c86349208ac148c9c931adac767b12c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23987573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16a3dac792270c6cf35d9c0f587b080377e57fdeacfdbf5c7f743ebde5dc5db9`

```dockerfile
```

-	Layers:
	-	`sha256:c6b9d56933c03126577c544fe1de5be47020f9880ed9db8ea680b8b63f89512e`  
		Last Modified: Thu, 12 Nov 2026 00:47:21 GMT  
		Size: 24.0 MB (23971088 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:18563fece5fea0cdedbe4724341614c1921bd1520ec953cdb417af5f137c9b5f`  
		Last Modified: Thu, 12 Nov 2026 00:47:19 GMT  
		Size: 16.5 KB (16485 bytes)  
		MIME: application/vnd.in-toto+json
