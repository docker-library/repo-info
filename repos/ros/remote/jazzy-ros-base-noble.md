## `ros:jazzy-ros-base-noble`

```console
$ docker pull ros@sha256:da725acf8b0f9f30c683e33ffbdcd6482d077af96d6fdc7688c5f4f280b7d923
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-base-noble` - linux; amd64

```console
$ docker pull ros@sha256:1dfbed5c7ae2dcbe90f8689476adaac21c8da866738f44dec45c01669d91c40b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.8 MB (298834127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59739126c6f16414f833acf9304b72be523501c4781c407f3a2168669284e961`
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
# Tue, 04 Aug 2026 01:43:48 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:57 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:03 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:43 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:44:43 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:44:43 GMT
ENV ROS_DISTRO=jazzy
# Tue, 04 Aug 2026 01:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:44 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:44:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:44:44 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:31:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:31:52 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:31:54 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f25b50636e83b2a8bc5bd12220bd8ba469c6888bb70ee5346f91e0a1d8e96290`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 683.3 KB (683332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d60ac9847b683b465f0c04902d33e021550a4060761f60c78b94e7f53eca8558`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 9.1 MB (9114097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d431e34622e4d3f05156edf2323b9865d28b4fbb07d230e6f90d2669a38be9a3`  
		Last Modified: Tue, 04 Aug 2026 01:45:09 GMT  
		Size: 94.8 KB (94767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d2e745cf512c62a1c15c2181f23cb0e0541442e77da298087037220c07a1247`  
		Last Modified: Tue, 04 Aug 2026 01:45:13 GMT  
		Size: 120.5 MB (120509370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a8056250502e5ecacc2034cc633e586c1eb412fe890941ac4eed2845dd56ac9`  
		Last Modified: Tue, 04 Aug 2026 01:45:11 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18fbc8e8c3f1ea36c56d716ab6638ff468d4e822952575b9dcf81189200c0942`  
		Last Modified: Tue, 04 Aug 2026 02:32:52 GMT  
		Size: 110.2 MB (110191731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9496ec98d73478e8f49aaa2633f20d33028d7db9accebbb4ed5d58918c84e73`  
		Last Modified: Tue, 04 Aug 2026 02:32:48 GMT  
		Size: 407.6 KB (407605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff3b17e591b6859589c31c2c0113b4c8d8e5b1dd50ca0d29dcb57c022311932f`  
		Last Modified: Tue, 04 Aug 2026 02:32:49 GMT  
		Size: 2.5 KB (2505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62e3ff0d8e98c6027547cb2f682de5f486c4f507c67b59ca3e3ba870909a143c`  
		Last Modified: Tue, 04 Aug 2026 02:32:50 GMT  
		Size: 28.1 MB (28079414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:bbee34fbdf16c1f4298198e54d70bcc2e1a2853f8caeeaa4c8420305b03081f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24943773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bc4879c068f1d27d36a85f729df51c69e2ac27c4226792a8820f0781238fc01`

```dockerfile
```

-	Layers:
	-	`sha256:85b010a08c72968afdf2a96f95b266fb63fd1b420ea6e1967d6475597f63f98b`  
		Last Modified: Tue, 04 Aug 2026 02:32:50 GMT  
		Size: 24.9 MB (24927444 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:475f081ab4b995f2772c912c8c3ee6b9301a714baed87cf5e63cd1ab0b255bd7`  
		Last Modified: Tue, 04 Aug 2026 02:32:48 GMT  
		Size: 16.3 KB (16329 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-base-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:0935360d3ba92dcda402975d978af7e7d7a27a9ed7c8824143a6ee6f55267223
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.9 MB (284895543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eff485ca69353a882e0454845db3422e80d6bc3259249801d67d356a2ffa1d83`
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
# Tue, 04 Aug 2026 01:43:43 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:52 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:00 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:45 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:44:45 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:44:45 GMT
ENV ROS_DISTRO=jazzy
# Tue, 04 Aug 2026 01:44:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:45 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:44:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:44:45 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:37 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:39 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a11bd56d80a6967ddb49605103b484041943d77696e6187ac9abe2e5d7dab8b5`  
		Last Modified: Tue, 04 Aug 2026 01:45:14 GMT  
		Size: 683.5 KB (683467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e113fb8eb71513d204c2fe40a808cc23e259cb200f76b1f34768a0736d8ecc2f`  
		Last Modified: Tue, 04 Aug 2026 01:45:15 GMT  
		Size: 6.7 MB (6723586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd7b8878e14ceb872f67e16f2ad925332466b2b2a2215b77ac8d066d5038b5e7`  
		Last Modified: Tue, 04 Aug 2026 01:45:14 GMT  
		Size: 94.8 KB (94788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86928acf88c03c6b6b3182ad08d5a5b847583a7f4d8d985e776b7230c9e35383`  
		Last Modified: Tue, 04 Aug 2026 01:45:18 GMT  
		Size: 115.3 MB (115299944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e5aa386d262f44285a92aa39f100f7f5642d3ea67bc8097ec5a5a6d7c194336`  
		Last Modified: Tue, 04 Aug 2026 01:45:16 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17a19acc0471e90ee92438ed555b9eb1561d396bc542850b540494ec555963e1`  
		Last Modified: Tue, 04 Aug 2026 02:33:35 GMT  
		Size: 105.6 MB (105602925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77e8ea043ab3bc3a6918cad73006f37c91bbb0ad76563d12227adb5c783d9215`  
		Last Modified: Tue, 04 Aug 2026 02:33:32 GMT  
		Size: 407.6 KB (407605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d310caa5fa3165e426720670f3f317138b2b22b723d2ab243d668ead07fdeee9`  
		Last Modified: Tue, 04 Aug 2026 02:33:32 GMT  
		Size: 2.5 KB (2516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e7ed782335c81a3b269879a3a160394a569641af3277a4b98041c5527696658`  
		Last Modified: Tue, 04 Aug 2026 02:33:33 GMT  
		Size: 27.2 MB (27193698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:a7dd3c58c81e2c9e507a8cae5aa2ee5367a88187ac0744839eaabe5a003aa1cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 MB (24966165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:105ec8e6714691b470101e96dcc1a7c24e3c41b0f3e48b5e206b27599d1d650f`

```dockerfile
```

-	Layers:
	-	`sha256:2d53d974771768cbe5734089b5f62491d6fb38cafdffd6db31d58ef6c896ecc9`  
		Last Modified: Tue, 04 Aug 2026 02:33:33 GMT  
		Size: 24.9 MB (24949699 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c1266325e151b30ee4232c407d4b5246468bea2881702d0cc31a46cfcfc7454`  
		Last Modified: Tue, 04 Aug 2026 02:33:31 GMT  
		Size: 16.5 KB (16466 bytes)  
		MIME: application/vnd.in-toto+json
