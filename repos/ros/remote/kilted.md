## `ros:kilted`

```console
$ docker pull ros@sha256:2d99ad44fba30e74e43e8ec751c621c2b8c015deed04b9a1fc8434fbc4428cc1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted` - linux; amd64

```console
$ docker pull ros@sha256:e797233622ddb8771b9b17cb8182adb43c9a506a99fbea2c8ca4033077572fb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.4 MB (299429581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:562e9fa18338286b157490a6487a71bc148849978ad4612fdacfa9bed2f5e301`
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
# Fri, 02 Oct 2026 01:34:30 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:40 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:46 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:29 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:35:29 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:35:29 GMT
ENV ROS_DISTRO=kilted
# Fri, 02 Oct 2026 01:35:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:29 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:35:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:35:29 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:20 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:22 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:30:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5563c391db43fc82e6bdcc418d662e4eb482f5d89013455cc9356179f7a02bc9`  
		Last Modified: Fri, 02 Oct 2026 01:35:55 GMT  
		Size: 683.6 KB (683588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09e0fd67f56c9b8fb7ccc6f2796fe6e7e778283859c379288b7bb6214aa6ab7f`  
		Last Modified: Fri, 02 Oct 2026 01:35:56 GMT  
		Size: 9.1 MB (9119798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37029bc23993959b155a05655e0d4bed5f44b9cf776181979cb7a54c6acbc7e2`  
		Last Modified: Fri, 02 Oct 2026 01:35:55 GMT  
		Size: 95.0 KB (95030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbce3483b4099b03d1755400f57a426fa67c95c7a59882063de8ab3669ff8ea3`  
		Last Modified: Fri, 02 Oct 2026 01:35:59 GMT  
		Size: 121.2 MB (121225747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b116718cb37da315861de1825abf875402db573e504136294e6f9e8da413e1a`  
		Last Modified: Fri, 02 Oct 2026 01:35:57 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e21fe9979fdefc4c368c3042813e69ce3d6c3009eb9d75476ececfbd14800df9`  
		Last Modified: Fri, 02 Oct 2026 02:31:20 GMT  
		Size: 110.2 MB (110246264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9730f75c4e1ffae93d165f5348e9d1c924d54f1442802a8db411aa4eedf60e1f`  
		Last Modified: Fri, 02 Oct 2026 02:31:16 GMT  
		Size: 374.8 KB (374750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00b9036cff09e6df02fe5ae7a1be0c35dc19c8ca14f73a1021e6fbeddbb616d2`  
		Last Modified: Fri, 02 Oct 2026 02:31:16 GMT  
		Size: 2.6 KB (2650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b299fce2de255ea052298856f1670472fedb36b3250ce00c1a78abd61ec73ee7`  
		Last Modified: Fri, 02 Oct 2026 02:31:18 GMT  
		Size: 27.9 MB (27917136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted` - unknown; unknown

```console
$ docker pull ros@sha256:94f6c4bed3e686526585392ecb2d921b8d29edf62eb13aedd8285b7ddfb92964
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24892435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cf65527c32d9085b702d18dbcb96f4c53a831950434f9175a0d74776921a670`

```dockerfile
```

-	Layers:
	-	`sha256:f6fac9845334fb4b0074e1cd9684eaf525a9f0909c77e01d324a501146d8d6f3`  
		Last Modified: Fri, 02 Oct 2026 02:31:18 GMT  
		Size: 24.9 MB (24876088 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b404b4a5eb7676e8cb862b87226e1eac5153b50e6e2274292f0b9aaae5b6c152`  
		Last Modified: Fri, 02 Oct 2026 02:31:16 GMT  
		Size: 16.3 KB (16347 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:85f57b862db15b77059f12e338d900a59abad617d19a34ae728746c5c8c7d36d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.8 MB (287816376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd27d2dd297e0a3d0b95ea9e9cabd6bb110346108de70443e0334ebfe4a94fcd`
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
# Fri, 02 Oct 2026 01:34:32 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:42 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:50 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:35 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:35:35 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:35:35 GMT
ENV ROS_DISTRO=kilted
# Fri, 02 Oct 2026 01:35:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:35 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:35:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:35:35 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:39 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:41 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:31:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52609e10f692ce6db7dcbe41c6be60f774e7f51a8da7759a03a30511b1f14300`  
		Last Modified: Fri, 02 Oct 2026 01:36:04 GMT  
		Size: 683.5 KB (683513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af047e65c7a6775801a768388ac7588aca0cb7707f17935abb81a94d8e1b8e1c`  
		Last Modified: Fri, 02 Oct 2026 01:36:05 GMT  
		Size: 9.0 MB (8990749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97478c41b5170f50241a3dc7d19c818052a26bb12c458995d376adb3b81bf3aa`  
		Last Modified: Fri, 02 Oct 2026 01:36:04 GMT  
		Size: 94.9 KB (94930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29d0e10d2229a685140b12b1cb5bcb1d987196d75d24d861d242f0ad9a20459d`  
		Last Modified: Fri, 02 Oct 2026 01:36:07 GMT  
		Size: 116.0 MB (116020176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e925237a6de988f76007767335cda50adbf6230ef72e2001d08393dc9fc755f1`  
		Last Modified: Fri, 02 Oct 2026 01:36:05 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c3f8fb37ca38ff6ea21e120238afdd9b6933a01e6c4c562ee231a1b8fb2ddcc`  
		Last Modified: Fri, 02 Oct 2026 02:31:42 GMT  
		Size: 105.7 MB (105681048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:def8fe8730e81a63b5bfc284073d9a29e2091272fe4c09ecb492122c8db090e6`  
		Last Modified: Fri, 02 Oct 2026 02:31:37 GMT  
		Size: 374.8 KB (374755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0332d327a027c3e759491ef0d979bed4016fa4e8e86539c611bdc3eb1f89dc03`  
		Last Modified: Fri, 02 Oct 2026 02:31:38 GMT  
		Size: 2.7 KB (2658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea4f6b135e971315db07bf581ab35e36123cca2ec91fc65efd96964d81f88f29`  
		Last Modified: Fri, 02 Oct 2026 02:31:39 GMT  
		Size: 27.0 MB (27028264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted` - unknown; unknown

```console
$ docker pull ros@sha256:b560885b3756d96c046bc8d6718d7b02c9c03ce5d122e1222b3427fe148cc184
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24914832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88c38dff4a38662ac7c500bd2188658a9e0879feab4c0cb3cde08488448a34f0`

```dockerfile
```

-	Layers:
	-	`sha256:d29a8534aaea0ccdb1eb767595c8ba3d80696cda1055d6576d43a6468864857d`  
		Last Modified: Fri, 02 Oct 2026 02:31:39 GMT  
		Size: 24.9 MB (24898348 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b701a499a4ec2eda1e3d6c359db4779ba04b9f3dda267b9d0efab70389d8447`  
		Last Modified: Fri, 02 Oct 2026 02:31:37 GMT  
		Size: 16.5 KB (16484 bytes)  
		MIME: application/vnd.in-toto+json
