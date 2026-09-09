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
