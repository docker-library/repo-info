## `ros:humble-perception-jammy`

```console
$ docker pull ros@sha256:de170d8905daf457ab2ab4f1806b8031412f16d7bef1db1cdea704e5d6626447
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-perception-jammy` - linux; amd64

```console
$ docker pull ros@sha256:9162948028dbc1a7c4028f05fa3e341aa5afa8b0e25e6078c64cf30eff4f62ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **959.1 MB (959059404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc5245126ba7e3c6a8c2129d438fed97c1e268ab47bd96bdb982da8174d7ebde`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:07 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:12 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:51 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:33:51 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:33:51 GMT
ENV ROS_DISTRO=humble
# Fri, 02 Oct 2026 01:33:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:51 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:33:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:33:51 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:09 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:12 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:16 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:30:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:19:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a002b86229673ff1430fe07afe1839d097f0d8b713bad707b3e0d3064200ca8c`  
		Last Modified: Fri, 02 Oct 2026 01:34:16 GMT  
		Size: 1.2 MB (1212880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e804a0ad2a8bf7be6a3840017d207a853e13bb6c7bb8336d715ac85bd592082`  
		Last Modified: Fri, 02 Oct 2026 01:34:16 GMT  
		Size: 6.0 MB (5952340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8b0b6f752f7b983a42c4fc8bf72b268764ed14aed27bc428c8964abe13e1919`  
		Last Modified: Fri, 02 Oct 2026 01:34:16 GMT  
		Size: 98.0 KB (97958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b65fcd8f7286a56e6fecfcd7cd73119c8394b49c7adbfcf16e8c1bc569a0ddc`  
		Last Modified: Fri, 02 Oct 2026 01:34:19 GMT  
		Size: 107.9 MB (107922333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dcc0fc0e26ee91bc9e0f7a730d41bb6eb404aefed99de732d1f9ecff40b5a53`  
		Last Modified: Fri, 02 Oct 2026 01:34:17 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96e46ed72a21c108fa6b40f45f0885ae9a8feff84bd032b3b1396cbdde9c5f76`  
		Last Modified: Fri, 02 Oct 2026 02:31:21 GMT  
		Size: 98.2 MB (98199982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76d93248370c0ee133c07283fd1145856e8a394fbda33495346025a475bbb750`  
		Last Modified: Fri, 02 Oct 2026 02:31:18 GMT  
		Size: 389.4 KB (389415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1247efdbbc2a789a3ddcdd2256b53e60c06f036c8fc06f694cb4757b1dd1954`  
		Last Modified: Fri, 02 Oct 2026 02:31:18 GMT  
		Size: 2.7 KB (2679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39059d943f4d2244529c8a555ed1b29e592ed0a4ab34cb689e429169d92bf2f3`  
		Last Modified: Fri, 02 Oct 2026 02:31:20 GMT  
		Size: 23.3 MB (23348095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e10a2496f2202e0a8d110dfae25959d8bd77704149f8b2963ddacd95da5cfb45`  
		Last Modified: Fri, 02 Oct 2026 03:21:47 GMT  
		Size: 692.2 MB (692181898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:f61beb67704002bb7fbef7d3dad88b4f77ac0d54ffb66e406b51f76676e6a19c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.1 MB (59072270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f26bf74c0de8e0be83d017a84c5e24fb52dcd46cf3c43a2cc42767ba6eeb3a98`

```dockerfile
```

-	Layers:
	-	`sha256:3e10b26003b6d73491f8e08dd2edfa7fd16d84c3f0415b56b24634d38aa86806`  
		Last Modified: Fri, 02 Oct 2026 03:21:36 GMT  
		Size: 59.1 MB (59062918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:828159dc828909f55c7bcd2d6280cc663ce752d3390ea08c9b9f6f512cf40fa6`  
		Last Modified: Fri, 02 Oct 2026 03:21:34 GMT  
		Size: 9.4 KB (9352 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-perception-jammy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:83bf5d919191b747a6d3bdb90f99bd240cc738b6292c69c584fcab9c5143bb09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **919.7 MB (919673775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08193b28e67a272b18235e7a3e2fff5482923c89023dcfdc6b77b6d2d5d376e7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:52 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:02 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:11 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:50 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:33:50 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:33:50 GMT
ENV ROS_DISTRO=humble
# Fri, 02 Oct 2026 01:33:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:50 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:33:50 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:33:50 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:41 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:42 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:30:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:18:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75b557813fcf11a25538d23fe1de0d1cf1fb9dc99d43a1c54ea228dca996cae7`  
		Last Modified: Fri, 02 Oct 2026 01:34:17 GMT  
		Size: 1.2 MB (1212867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfe48d969d878c110f3b21574ade580dfffee64713836a2b307826cb274e442b`  
		Last Modified: Fri, 02 Oct 2026 01:34:17 GMT  
		Size: 5.9 MB (5911995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50744702b8e53a0cafefc9b55960d72c5f0bae00626388f8f52c2784926e184e`  
		Last Modified: Fri, 02 Oct 2026 01:34:17 GMT  
		Size: 98.0 KB (97953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2be6951d519d8e68d6ae87632a4b65e3ecc55686c1c00fed925e6a4e097df99f`  
		Last Modified: Fri, 02 Oct 2026 01:34:19 GMT  
		Size: 105.6 MB (105625459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:022cc4907bf5a12b531765cb8979b1a775f568a5396ad80f8bd32af24bfe7ab7`  
		Last Modified: Fri, 02 Oct 2026 01:34:18 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07420bcece04798f21e90f98ee882ff1dce134f13d7019dbcaa1a0e7caa17028`  
		Last Modified: Fri, 02 Oct 2026 02:31:34 GMT  
		Size: 95.8 MB (95835960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6fb31659d74b1b03ec8ac51f49f3b0928863045a662462ac275103a496ee088`  
		Last Modified: Fri, 02 Oct 2026 02:31:31 GMT  
		Size: 389.4 KB (389416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b45d9d03c465d67366f306d2b1abf490fa999669af5f3e361c4dd35c7a06713c`  
		Last Modified: Fri, 02 Oct 2026 02:31:31 GMT  
		Size: 2.6 KB (2643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5bf412a31c6bc935b585c861cc8d6a54b7433b28a8b5ebd072076d90df7d42e`  
		Last Modified: Fri, 02 Oct 2026 02:31:32 GMT  
		Size: 22.8 MB (22751140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72dcb29e7daf270b7c9154333948e2e6022f13755075180c7460734f9ce1d455`  
		Last Modified: Fri, 02 Oct 2026 03:21:40 GMT  
		Size: 660.2 MB (660162009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:2635e8dca4abc9f696ccc88cfefa503290dc4936e18fea837005f8e8cf20f690
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.1 MB (59056674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d11d9160b510e64c95f75fab5ed9329eaf8305986e855bceced9537f58bb193`

```dockerfile
```

-	Layers:
	-	`sha256:8989d4bf7780096c73d208939a9f08b779767a20cf630451aed3cc78e300b7bc`  
		Last Modified: Fri, 02 Oct 2026 03:21:30 GMT  
		Size: 59.0 MB (59047243 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:effd8ec6acf52d8b4b6a37a2c4f8746dbf2a9e9f1e86052d425f38d7a827d4bb`  
		Last Modified: Fri, 02 Oct 2026 03:21:27 GMT  
		Size: 9.4 KB (9431 bytes)  
		MIME: application/vnd.in-toto+json
