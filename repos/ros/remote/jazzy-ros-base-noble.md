## `ros:jazzy-ros-base-noble`

```console
$ docker pull ros@sha256:103b6c417973394659af6804d4917cd489b91e5ed22eb7bef263025a3bed2410
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-base-noble` - linux; amd64

```console
$ docker pull ros@sha256:5d90c49a855d75d2a5de6b8836ca49ac2248746b0748d66da79dcaf006225d63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.6 MB (296635433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e1b6c0171a4d26fdedcb8bbe930e5e68b355e0a101d0b23391bb3fcb2d58e7a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:34:10 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:21 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:28 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:11 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:35:11 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:35:11 GMT
ENV ROS_DISTRO=jazzy
# Sat, 17 Oct 2026 00:35:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:11 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:35:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:35:11 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:32:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:32:09 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:32:10 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:32:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fe3d0ea28d12cca4d8ddbcb7e545cf13835d777347524ad7ec323d0ead33aa5`  
		Last Modified: Sat, 17 Oct 2026 00:35:39 GMT  
		Size: 683.4 KB (683350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a1810ec4780c877c0022a38ae1ac696e6b030ad4d7c1211185b3873b25817a9`  
		Last Modified: Sat, 17 Oct 2026 00:35:40 GMT  
		Size: 6.7 MB (6714668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd8cd2eed5870dedf232a97c423a8633fcb288c6c8d21a7369b566ab88820ece`  
		Last Modified: Sat, 17 Oct 2026 00:35:39 GMT  
		Size: 94.8 KB (94842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b143ee18098ca15a9e619921336601b05fafd8f5ab49648d401e935b9486325f`  
		Last Modified: Sat, 17 Oct 2026 00:35:43 GMT  
		Size: 120.6 MB (120609860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61a53dd41c64c7be3ac4b97d131346ff1ab0066a5e3bdc07854e2b2fce57cce3`  
		Last Modified: Sat, 17 Oct 2026 00:35:41 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9afc0ff0362d5e3e751425fdf9c603cacb57d994c66582cf0aa72a475910f2c7`  
		Last Modified: Sat, 17 Oct 2026 01:33:04 GMT  
		Size: 110.2 MB (110242546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56672d6b3ac7eae2f3c3f02aca74b1b956b27a2b2a047ec4d24b82ae5deafe36`  
		Last Modified: Sat, 17 Oct 2026 01:33:01 GMT  
		Size: 427.8 KB (427784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7a3377a7dea55876e7ce549b192b1923e331b99cc101c2623f12acfe44874c1`  
		Last Modified: Sat, 17 Oct 2026 01:33:00 GMT  
		Size: 2.6 KB (2649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:587715b38052330e5cc804641d0e3007c93f431eabc30ea39d9f3446a4b7e886`  
		Last Modified: Sat, 17 Oct 2026 01:33:02 GMT  
		Size: 28.1 MB (28093779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:d1594358d98d6e2d18991a3f666080782dcc96e453aa4c8066723ae803033061
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24938273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d8bf9e7b6bcf369ccdfb4296b1cae2d042893a2e915349371ec918109a0f8e5`

```dockerfile
```

-	Layers:
	-	`sha256:bc35af461a5ba433deedd03802fa79f4f061d430febfd0c005f78f585959925d`  
		Last Modified: Sat, 17 Oct 2026 01:33:01 GMT  
		Size: 24.9 MB (24921944 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:692eef8860a0930cb8817439f1460cc5e9eea0ccd13d1da52eae9c15cace275f`  
		Last Modified: Sat, 17 Oct 2026 01:33:00 GMT  
		Size: 16.3 KB (16329 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-base-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d02ae40522e8eb671547efef8ab97c326a62c9efd3a25e48ff3cbe506972edd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.2 MB (285216897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89669eb1e1e01d02dc25c3d66b8a2bce06dddbd5e887301d38f75c50f31b9a54`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:33:51 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:04 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:09 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:53 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:34:53 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:34:53 GMT
ENV ROS_DISTRO=jazzy
# Sat, 17 Oct 2026 00:34:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:53 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:34:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:34:53 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:33:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:33:05 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:33:06 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:33:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12153b342ceead746bbe50685ff004c9ec3b6b20c9135205ad4f9c0e19e93365`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 683.4 KB (683375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3b6f8ad81ef0422e7a885e9a52b57c46e0382e99fb30d22f94b2e808ac2ed1`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 6.7 MB (6728019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e1ea12dff15230242b2514499e71c0a60e79871606efba0741d0361647a484`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 94.8 KB (94826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e8428ffcd1fbb2c2e7f9104a098102f63e5207f0bd231fc830de99ad54fa90c`  
		Last Modified: Sat, 17 Oct 2026 00:35:24 GMT  
		Size: 115.5 MB (115462339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ed18ba17b7f68f77a7ddadd18550416defa11dbe8591248a4cc5d1bf0f77f7b`  
		Last Modified: Sat, 17 Oct 2026 00:35:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeedd8a53fd711e3c611f5643728dca8bed17b9a1ba4ac7dcf9f438c445ff0d8`  
		Last Modified: Sat, 17 Oct 2026 01:34:03 GMT  
		Size: 105.7 MB (105680504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91ec4760a20f5d69e5b13a8458f3d0322de7a7a07ce46633f027a87250c1d599`  
		Last Modified: Sat, 17 Oct 2026 01:33:58 GMT  
		Size: 427.8 KB (427795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:725daec52231c59cb146ab29b525f0673712adb4b48a12f06cb2d70d051333f9`  
		Last Modified: Sat, 17 Oct 2026 01:33:58 GMT  
		Size: 2.6 KB (2648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc808237653c26e5f065c2638c62cc96918047d5285f94dd3809ddfcf416a46d`  
		Last Modified: Sat, 17 Oct 2026 01:34:00 GMT  
		Size: 27.2 MB (27197435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:619ce06659661ba7f892c76d689a1bc7790a6bc342fd5b2bf6c07890d0ff58db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 MB (24960665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:069a9a39deab3cb0b27dfff86f6d30f3a6412729ab6e72140234fa7d703745ed`

```dockerfile
```

-	Layers:
	-	`sha256:c1230b31b6932030c98d28ba994861b078c4d57c38ca97d4c5154fd368d327ab`  
		Last Modified: Sat, 17 Oct 2026 01:34:00 GMT  
		Size: 24.9 MB (24944199 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e271ef9e7db8df2585db606c2bd81fb7eadf01134151bc9b90ace84a1e45b6df`  
		Last Modified: Sat, 17 Oct 2026 01:33:58 GMT  
		Size: 16.5 KB (16466 bytes)  
		MIME: application/vnd.in-toto+json
