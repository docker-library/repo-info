## `ros:jazzy-ros-core-noble`

```console
$ docker pull ros@sha256:422ce4f534bfe208b5b008c0d02b58012a92adaa31eafa81a767c26e488ba667
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-core-noble` - linux; amd64

```console
$ docker pull ros@sha256:edf1e8faadbcceb6473eb45a9b7765443f9bb13de2af1847ffcc9d4b1868c372
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.9 MB (157868675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2ef8f466d9b3e272daef57cade67445f064e5b8be6731f9d5ca889b5b13ba55`
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

### `ros:jazzy-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:d90f40b117800dd84e1653af5620443f0b788a6694eed5a33936cefea2f8f1cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18622780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60fb8d236f2225bb7481fd507387430c28154a0b341cbd0cd976da42cf5aa8d8`

```dockerfile
```

-	Layers:
	-	`sha256:734cd8e6ac431b63e9e75ff50626bfd13ae72163bdf559cd8eeb8ecbb2e155f4`  
		Last Modified: Sat, 17 Oct 2026 00:35:40 GMT  
		Size: 18.6 MB (18608173 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88524993aa32ced569b77a1f0402bc741b6b8f81866a9b2b0aea453be6ed4cec`  
		Last Modified: Sat, 17 Oct 2026 00:35:39 GMT  
		Size: 14.6 KB (14607 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-core-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7ebff333371416040751b15978a89f7d4348090c88f6f798feecf961567e2210
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.9 MB (151908515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e71d47ffab5fafd7efe8f53aca4da0a619a205b4fd2716cb1290bb4b920ece5`
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

### `ros:jazzy-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:c92d5c8f0e21aa881a1fe6b81405cd93d4591d8b4661cda41a6d57630f547dd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18596912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9113a91c892911cb76745f92e3d926de0ffe7237f4a0f3b115072df2260ef704`

```dockerfile
```

-	Layers:
	-	`sha256:3a01171328c7c23bb3e33d13fd05029775f425c668462518289d05dd1041af4e`  
		Last Modified: Sat, 17 Oct 2026 00:35:22 GMT  
		Size: 18.6 MB (18582179 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f88385211eb313642e23858769f3e4f566768c622fde7431a611976e6d76a20`  
		Last Modified: Sat, 17 Oct 2026 00:35:21 GMT  
		Size: 14.7 KB (14733 bytes)  
		MIME: application/vnd.in-toto+json
