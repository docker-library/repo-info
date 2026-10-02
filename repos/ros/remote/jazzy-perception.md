## `ros:jazzy-perception`

```console
$ docker pull ros@sha256:8135425379a118d936377a0c0c51c2fd33d0c8f1cca8bfd4b88c626a5d8f806e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-perception` - linux; amd64

```console
$ docker pull ros@sha256:e33bfb524d656a129657e9ea99d82d7c4e74abf56111d2e20bb29612a30af67d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1083975911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4d8ece9b1946a01c7379836d8cb06ef5282efe9f9735113c5b8db683066a83d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:33:05 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:18 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:23 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:09 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:34:09 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:34:09 GMT
ENV ROS_DISTRO=jazzy
# Fri, 02 Oct 2026 01:34:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:09 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:34:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:34:09 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:26 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:28 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:30 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:30:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:19:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36511fcaae4567766304af008756aa35d7783372c97a4986814397dd21925a7f`  
		Last Modified: Fri, 02 Oct 2026 01:34:37 GMT  
		Size: 683.6 KB (683588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8570520b7f3a785cf844c7aed36ed0f7b225433f9c859f0675a9e927b6ba0832`  
		Last Modified: Fri, 02 Oct 2026 01:34:37 GMT  
		Size: 9.1 MB (9119867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a737a9006d9c2b045837305c33443ea754a175b0e6124bce3e8ab8055b62c0`  
		Last Modified: Fri, 02 Oct 2026 01:34:37 GMT  
		Size: 95.0 KB (95041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7b07210c227e201d0d344b12f5bbb2bb7023b02554bbe612f67ed736f1e0130`  
		Last Modified: Fri, 02 Oct 2026 01:34:40 GMT  
		Size: 120.5 MB (120534508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:991d52dbe0d5266f18937c1e0d15154dcc13fdb800bbc742b621f109a0d25b28`  
		Last Modified: Fri, 02 Oct 2026 01:34:38 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b02610e3730d4b174ff31669e18767af30a38bb8d46de8971037b7201a31496`  
		Last Modified: Fri, 02 Oct 2026 02:31:29 GMT  
		Size: 110.2 MB (110244081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56c3c7b0669cf139d4466385352966568f18b93f9622d5df0560f1a8fc534e8c`  
		Last Modified: Fri, 02 Oct 2026 02:31:25 GMT  
		Size: 425.5 KB (425548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02bdbd59ab2b0ff75b7c76c65a2294d7bca49c1fe60c3e7313694d6fdf17ad7c`  
		Last Modified: Fri, 02 Oct 2026 02:31:25 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d85cb46e7f9e1987dbff0953b61e3d207e5dc4a4c09d33fe70377aa111a7b47b`  
		Last Modified: Fri, 02 Oct 2026 02:31:26 GMT  
		Size: 28.1 MB (28090293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19d4d25d9f87f348fee3af60c9ce7716be0f0100e42b908ba7959917bffd6936`  
		Last Modified: Fri, 02 Oct 2026 03:22:50 GMT  
		Size: 785.0 MB (785015678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception` - unknown; unknown

```console
$ docker pull ros@sha256:74ce26e4e73ff35a26010f3baefd5a993fdf2c1f2d16a52d94c4908fd0523834
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61119990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f35c76f29a56aeea3827e24c1097c0dd108f74775eac74b3a216ab9e522a2040`

```dockerfile
```

-	Layers:
	-	`sha256:ade56666efd5440d8f41f53a24789680b6b856bee8f329e11456e463eab191e5`  
		Last Modified: Fri, 02 Oct 2026 03:22:37 GMT  
		Size: 61.1 MB (61110651 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:48231cd7f2e6783dcbeb916c22d04139670a7078d336e92a3926560b29e2f585`  
		Last Modified: Fri, 02 Oct 2026 03:22:34 GMT  
		Size: 9.3 KB (9339 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7101cde85253ee44375f6cf26b197f84982149da9b174864eb99582e0b15f62a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **986.5 MB (986517932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de69d08514c646c2ed2faea445fe9f36aac949446fdc4c5702a04ec11acd9672`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:55 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:08 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:13 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:58 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:33:58 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:33:58 GMT
ENV ROS_DISTRO=jazzy
# Fri, 02 Oct 2026 01:33:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:58 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:33:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:33:58 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:40 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:42 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:31:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:18:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67678ff0249d2d6f797f1e59d0f94f273e3a087280667f828ab393d60f9c8bb7`  
		Last Modified: Fri, 02 Oct 2026 01:34:26 GMT  
		Size: 683.5 KB (683516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfd9c25488505afd3615c12ca0586cc6b2711036abeffbbba50fc0e876adb3ce`  
		Last Modified: Fri, 02 Oct 2026 01:34:27 GMT  
		Size: 9.0 MB (8990784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47eab992b03775030af3f4a2c503e795df95cd8cf0396e42661c47d2a71e0eef`  
		Last Modified: Fri, 02 Oct 2026 01:34:26 GMT  
		Size: 95.0 KB (94951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5682617504ebb80773d2faf85a796d24b412518cb98adf6d3c5758052dd114f`  
		Last Modified: Fri, 02 Oct 2026 01:34:30 GMT  
		Size: 115.4 MB (115378667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea7a1574b6b3a62efd1d75d62c70003738971f623f93b34f0eebcfaba401b13`  
		Last Modified: Fri, 02 Oct 2026 01:34:28 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1464792e2dcc03bfcc4a380f2db85d23190b68d3f2d80095dbdcc86f468cd9a`  
		Last Modified: Fri, 02 Oct 2026 02:31:40 GMT  
		Size: 105.7 MB (105678958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4b84fc58bc29d30ded586d328dcac888b1f355f7ee068dd61a3501e21c5ee18`  
		Last Modified: Fri, 02 Oct 2026 02:31:37 GMT  
		Size: 425.6 KB (425551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e4fe4a81959604b7aaa16fad152b936d65b546181d567296beebb24b37fe277`  
		Last Modified: Fri, 02 Oct 2026 02:31:37 GMT  
		Size: 2.7 KB (2671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4acb301d1f70c1439fe8ce12b4d688a40872e15ba3c5b2325b832afc6cc90a06`  
		Last Modified: Fri, 02 Oct 2026 02:31:39 GMT  
		Size: 27.2 MB (27194796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c24d94ab33f4423e35ed823683b7065cbf79643526a911e9b5be8ddb51c30e9`  
		Last Modified: Fri, 02 Oct 2026 03:22:06 GMT  
		Size: 699.1 MB (699127753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception` - unknown; unknown

```console
$ docker pull ros@sha256:fcda863f1e5acfedaadccf4d4138e21a67aa1d21c455ba07e65793bfb74af133
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61050590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5e6dc25106b2aff015003700b03899d509473af6c2c969b4910d2ea644e838e`

```dockerfile
```

-	Layers:
	-	`sha256:d8ea3c2d9031fd9d5f278e2101fc8f36ef03473eb8cf50a89bc6fe9943b6068f`  
		Last Modified: Fri, 02 Oct 2026 03:21:56 GMT  
		Size: 61.0 MB (61041171 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54a56f974102a6dbd4ea90819c15b6f074ee2eb1a8b9109b61205e2d871efc73`  
		Last Modified: Fri, 02 Oct 2026 03:21:53 GMT  
		Size: 9.4 KB (9419 bytes)  
		MIME: application/vnd.in-toto+json
