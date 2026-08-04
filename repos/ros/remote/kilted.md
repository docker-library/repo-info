## `ros:kilted`

```console
$ docker pull ros@sha256:4ca53d5b084bdbe92a7a7d7186f56db6a716a6c7c33ad401ddb0ec82d6e9e479
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted` - linux; amd64

```console
$ docker pull ros@sha256:d28b9e57a40bebf51eb3e66ec851d560d5443b20bdc28c3821cd1b767039be4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.2 MB (299174714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b979aacd3933a3af0604dfcca5e438ce38d55a5e2c7266f3e5d373285e74f095`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:45:33 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:46 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:52 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:39 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:39 GMT
ENV ROS_DISTRO=kilted
# Tue, 04 Aug 2026 01:46:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:39 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:39 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:31:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:00 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:01 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0f918fa69ddc2ea84a0f22a7b870442eafb118825aaea91b62009e0a9dce319`  
		Last Modified: Tue, 04 Aug 2026 01:47:09 GMT  
		Size: 683.3 KB (683341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:243482ff6b8615d6f2763db1f8132b2e7c3cb927b995de8f5d83b9d334a0bef4`  
		Last Modified: Tue, 04 Aug 2026 01:47:09 GMT  
		Size: 9.1 MB (9114192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:994ae2393899f27129b58b7308b1523858eec6f1b53fecea83385154c451f307`  
		Last Modified: Tue, 04 Aug 2026 01:47:08 GMT  
		Size: 94.8 KB (94766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fec94c5ed3b68150f4b29c2cce23656c93fd9d54ff3bc6b440ab16e5b7e756d`  
		Last Modified: Tue, 04 Aug 2026 01:47:11 GMT  
		Size: 121.1 MB (121072272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538caae360a338033e229bbb6346e517a449aae2d1ee1d1833f52bfa2278af02`  
		Last Modified: Tue, 04 Aug 2026 01:47:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fca0915e159460a2a907b84c7193198452dc22ac9463de04333a5ab639a305e`  
		Last Modified: Tue, 04 Aug 2026 02:33:00 GMT  
		Size: 110.2 MB (110193617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c3c0e78f3f8638fd8fc6fd5af8cafafa74e72894297efe1ede0f95d1f0d3206`  
		Last Modified: Tue, 04 Aug 2026 02:32:57 GMT  
		Size: 370.3 KB (370330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad429a4a446b03fe9f5a266eb27f2e67f11c408754eea729866de21e271d64e0`  
		Last Modified: Tue, 04 Aug 2026 02:32:57 GMT  
		Size: 2.5 KB (2511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73a03c4d47d018a35e01137e7d72c574c7d51ac04eb1ebba69f8c5d514c3a828`  
		Last Modified: Tue, 04 Aug 2026 02:32:58 GMT  
		Size: 27.9 MB (27892380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted` - unknown; unknown

```console
$ docker pull ros@sha256:ee78c49ec55d8ce958fc38c327f082c4011bc492146d30583ed05d76cb2628da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24861383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4d41f0a5e31bafafddad596883294d3d313fb49aeb7010814271e916844cb4e`

```dockerfile
```

-	Layers:
	-	`sha256:4595f5965af96d3b54bc23a73821e479bd57b533016eb9b72168d6956fdfae67`  
		Last Modified: Tue, 04 Aug 2026 02:32:58 GMT  
		Size: 24.8 MB (24845037 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66758dc4434d43662aa925275d106700271b5da23f0e7020963956409b2f1dc0`  
		Last Modified: Tue, 04 Aug 2026 02:32:56 GMT  
		Size: 16.3 KB (16346 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7a30cb7b90c0e620d21989d71350b662f197db863e7283d77e703a4f3a453eb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.2 MB (285182082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f152010ee2bf2845248d031a31d787795c781153513d510f30eba983e6012530`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:45:29 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:40 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:48 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:32 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:32 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:32 GMT
ENV ROS_DISTRO=kilted
# Tue, 04 Aug 2026 01:46:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:32 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:32 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:42 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:43 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:33:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12ee272dddf1e441f86fdd6a93f32b92a0199d12acdc5f82fcf099c67b37eef8`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 683.5 KB (683452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f0f334f4bd9f18856754f81e056622532e2b2235750a03c7bad9b4257e517f3`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 6.7 MB (6723541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be168bea448afac505e08e3b2d3337c80aed439c96f27f3e89511642689f0f6`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 94.8 KB (94790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb1c1e484ffea0bc62a68074f8f939f7ab478fbb319b5d0965c9b205b234c56`  
		Last Modified: Tue, 04 Aug 2026 01:47:04 GMT  
		Size: 115.8 MB (115816490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1091f72d64ff31400bdd1a65c473bfc82f57a73a555f84780c83f788dc100b69`  
		Last Modified: Tue, 04 Aug 2026 01:47:02 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:554f0de4fcee98aca499332208ef6a2dfd499691cb47c5714242b09e704d6156`  
		Last Modified: Tue, 04 Aug 2026 02:33:42 GMT  
		Size: 105.6 MB (105605084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba97b0429669ee9d03522a9a07fa2928077a75957e99c24a16073e3aa1ce1b6`  
		Last Modified: Tue, 04 Aug 2026 02:33:39 GMT  
		Size: 370.3 KB (370330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3773278e4120e400a975e5ec7e15bc1c55a9243008043967358e624621e5b55e`  
		Last Modified: Tue, 04 Aug 2026 02:33:39 GMT  
		Size: 2.5 KB (2503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:449dc587d4c7087422c8e153be64dd08baef8ded859f9284844b190d4f14c367`  
		Last Modified: Tue, 04 Aug 2026 02:33:41 GMT  
		Size: 27.0 MB (26998878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted` - unknown; unknown

```console
$ docker pull ros@sha256:757f86b5129d40fb4ae2c032fdb91f5649bded0e323cb08a699c36449ad1f7e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24883781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec5eeb3d6b9d901d0b305d6ef5fe71ea55cda305a0c1a88cdcec7016d25fca4b`

```dockerfile
```

-	Layers:
	-	`sha256:64d32ad55f9c3ef0bf81f42346883f72453a51089d4e292a5bf1c7ea252af0fe`  
		Last Modified: Tue, 04 Aug 2026 02:33:41 GMT  
		Size: 24.9 MB (24867297 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12884212ef0447126641514b7de8c734cf20c7bdc0b802bdf402d382da30dd91`  
		Last Modified: Tue, 04 Aug 2026 02:33:39 GMT  
		Size: 16.5 KB (16484 bytes)  
		MIME: application/vnd.in-toto+json
