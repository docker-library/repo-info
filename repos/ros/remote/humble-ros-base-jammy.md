## `ros:humble-ros-base-jammy`

```console
$ docker pull ros@sha256:860e53793ccf575e5369b5e9a19939de2bfcfb46a299954d06f54f2af54fed19
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-base-jammy` - linux; amd64

```console
$ docker pull ros@sha256:6b4abb5340e430c632bcf4710fb34996df4f80e502993e5755f8fc59a39c7b2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266877506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63b6841678ad1277ea7bb2a65942cad7999da6acd29587a8da210ed5b0928d0a`
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

### `ros:humble-ros-base-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:849d5b1347fb6bb504a39b9640202cdd9c79fd691c82787d8c5679e7becd4938
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23974415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:439c88d6a0978da67d300364fee0fef53308fe10318ac76dbba729ffd1ab92be`

```dockerfile
```

-	Layers:
	-	`sha256:db81dd8b0c392743da0ecc1e3945dca56e4bc90f05b30f89bbdf46fd98f07161`  
		Last Modified: Fri, 02 Oct 2026 02:31:20 GMT  
		Size: 24.0 MB (23958067 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b1c052815323d1d302cba9d71080d598ee9a27c97c6a95a8f6a1f84b7e2a657`  
		Last Modified: Fri, 02 Oct 2026 02:31:18 GMT  
		Size: 16.3 KB (16348 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-base-jammy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:bbf36a9a05f3df5670a2b98db218e70a1320a956c79f1e0f0a333920049aa605
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.5 MB (259511766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a526e88ae55b5089962d6817f3d372767babd8e7154c841dc13646f2b88eb5c`
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

### `ros:humble-ros-base-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:64d8d47c73a77fb49e7a783839c7ddd0e260c6f3f244e1c855923913c6e784f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23987569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9061779cb9f3a3fd3fdd7d7d6c5a9b66ddb1e50fca1e922f4d2fbed64de61738`

```dockerfile
```

-	Layers:
	-	`sha256:0dfcd23fe6644ea529b08c09d631b853d018d90f9d6c1ea933de179753454202`  
		Last Modified: Fri, 02 Oct 2026 02:31:32 GMT  
		Size: 24.0 MB (23971084 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0c50d4bf4e7166f0ba2b588007a7a0d7e3f799a0c382031b2e5a200cc5298fe`  
		Last Modified: Fri, 02 Oct 2026 02:31:31 GMT  
		Size: 16.5 KB (16485 bytes)  
		MIME: application/vnd.in-toto+json
