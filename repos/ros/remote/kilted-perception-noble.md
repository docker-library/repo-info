## `ros:kilted-perception-noble`

```console
$ docker pull ros@sha256:9bde58ca8863f5ea57375f7bb9ae4e07a6b7b26d4b90d457b42f744ae581f098
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-perception-noble` - linux; amd64

```console
$ docker pull ros@sha256:f7fca6bf658e0470982c24c8d7e6c18c9a5de338b5ac199cfdde9bdf673df997
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1081892880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81f0782036228dac6ce6c86d5ebccf8c81c4683412cedb49126baf11ffd44f61`
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
# Wed, 09 Sep 2026 04:21:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
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
	-	`sha256:addfd4926bb2b9e2b76583eb6b8cdf535280cde4f2f21fc5e8374ffc0ccf4958`  
		Last Modified: Wed, 09 Sep 2026 04:24:31 GMT  
		Size: 785.0 MB (784978980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:db431b7ad247452462c6ba8a9e0f8b857a7f705b22e82149158fcfe4eb7253d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61069584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b62424e5fc3f826e7aebe5d431fdb10e3c1833c18e286b1abcf384e2be34dde1`

```dockerfile
```

-	Layers:
	-	`sha256:81eb8dc222fbff1c2803abbdb51d7f915d2c26cb6877c5c5bf94638a8f6d7a07`  
		Last Modified: Wed, 09 Sep 2026 04:24:18 GMT  
		Size: 61.1 MB (61060232 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3cffb769b1894a388c6368c10f4bba4d3fe26731abdda760a23dab4492b264a`  
		Last Modified: Wed, 09 Sep 2026 04:24:15 GMT  
		Size: 9.4 KB (9352 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-perception-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:4413c7ce4711316a159857d10adcac61b725567d62558993a4bf9d034328be58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **984.6 MB (984593071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f727e180ceff7e677bc7cef3651a3d6ad6c58feb6af7e1cd4d1fe5f44f85cf1`
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
# Wed, 09 Sep 2026 04:18:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
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
	-	`sha256:9aaba6c6265b8953e0ef7fd7ba4348dbb4595664d5922d2e2d2fdf73a020cbaa`  
		Last Modified: Wed, 09 Sep 2026 04:21:49 GMT  
		Size: 699.1 MB (699137475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:b3ffc63292f797323cc96022572ecf1be03cab962abe837ce2484ba07bf77509
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61000188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffc34bcfc9cef5b49f0a5d174b798be9ed3181973bebeef6214d5473806b5a28`

```dockerfile
```

-	Layers:
	-	`sha256:6536bdf3a5a2cacb88e8757eeb59dc7457735aef55dc5e7e8a9591a8f2b3ffa9`  
		Last Modified: Wed, 09 Sep 2026 04:21:37 GMT  
		Size: 61.0 MB (60990756 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff2974ba60a134d582932f4b5fd48a5a7acfa0bab653a858694d93b185911ee3`  
		Last Modified: Wed, 09 Sep 2026 04:21:34 GMT  
		Size: 9.4 KB (9432 bytes)  
		MIME: application/vnd.in-toto+json
