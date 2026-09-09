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
