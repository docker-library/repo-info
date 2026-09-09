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
