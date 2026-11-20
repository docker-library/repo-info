## `ros:kilted-perception-noble`

```console
$ docker pull ros@sha256:aab4d8f4ed2db547197659d4b0130058fe198e8484e4afa64083ec037d51e1cf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-perception-noble` - linux; amd64

```console
$ docker pull ros@sha256:f3b86b74d54b4dabff2019f77d6506f70d908e37d6a189ad7063049000c522f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1089740618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d488cae533161c370d04b60517dcae18ffc93b7e09482f13368ff5db856e1ca`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:30:21 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:26 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:29 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:31:11 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:31:11 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:31:11 GMT
ENV ROS_DISTRO=kilted
# Fri, 20 Nov 2026 03:31:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:31:11 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:31:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:31:11 GMT
CMD ["bash"]
# Fri, 20 Nov 2026 04:26:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:26:10 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 20 Nov 2026 04:26:12 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 20 Nov 2026 04:26:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 05:16:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d12bbf25817441f644a233e0589d9874205774ac0412d534fc770629617ec5d3`  
		Last Modified: Fri, 20 Nov 2026 03:31:38 GMT  
		Size: 683.2 KB (683238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04ec9b2b69276f83ac2861e7f5dd1e6f4eedf797f1b6024703a5b3c5c653ddf5`  
		Last Modified: Fri, 20 Nov 2026 03:31:39 GMT  
		Size: 6.7 MB (6713911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d17f804b7e56721839f38e9d1c5b3d425028ee5a0d1a5d1898250f9b9f0dc49`  
		Last Modified: Fri, 20 Nov 2026 03:31:38 GMT  
		Size: 94.6 KB (94618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff5f9a099dc3af878421950291c34ef7f7fc7397416cbc7048e4586242c12e0b`  
		Last Modified: Fri, 20 Nov 2026 03:31:41 GMT  
		Size: 127.9 MB (127909253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c01db4d157e9622902d234c659ed27ddfc99df4da8b69cfc81b5195081e673f4`  
		Last Modified: Fri, 20 Nov 2026 03:31:39 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c96e1ede5830897866941806aa2e75fb359e31909ee75d39938544b533c0d446`  
		Last Modified: Fri, 20 Nov 2026 04:27:03 GMT  
		Size: 110.2 MB (110247869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be70194203a84a2375b4c7197dc0f67b9842b1290031f9f9c164587a69a84467`  
		Last Modified: Fri, 20 Nov 2026 04:27:00 GMT  
		Size: 360.8 KB (360776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4f2bddf11ca3c0b9f53c37b18d1317f8a7790ab6dd46195e4c14ae0ec106744`  
		Last Modified: Fri, 20 Nov 2026 04:27:00 GMT  
		Size: 2.7 KB (2679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c7a02e3faa6140ae10feedc6d97df912228e424a363b2f713b39ec542a23c39`  
		Last Modified: Fri, 20 Nov 2026 04:27:01 GMT  
		Size: 27.9 MB (27928939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42072f3a1bd30db211199d6cb5b7575c18c07c6b22333a22c7680f8adff1fdd6`  
		Last Modified: Fri, 20 Nov 2026 05:19:09 GMT  
		Size: 786.0 MB (786005842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:7033bd60ae6bb6363c935959aa9139d93c326946ed756cb31fb1cf603be7ab27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61073954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d40050ec80fb964b62e9dc9c62292c6d66608c6f4987f78162d129ed08ff927`

```dockerfile
```

-	Layers:
	-	`sha256:6f522dc00a1d65bf985f95c6cb4020115c51fa8b6c0aa174b3e502ad336a67c3`  
		Last Modified: Fri, 20 Nov 2026 05:18:56 GMT  
		Size: 61.1 MB (61064602 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db08debff85034ed599f5756bb2e2a39bcb4aa5c71394d039dfb7fffa58ec156`  
		Last Modified: Fri, 20 Nov 2026 05:18:53 GMT  
		Size: 9.4 KB (9352 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-perception-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:c201199b2b098e2ccac5bf755e9ba13ca3a61e8157dead68e539b420861757a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **992.2 MB (992216958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:356bcf81c43207f9e6f13d8f5690479c0b6831704bb34d852cad57bda3806bf0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:31:05 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:31:11 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:31:15 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:17 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:32:17 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:32:17 GMT
ENV ROS_DISTRO=kilted
# Fri, 20 Nov 2026 03:32:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:17 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:32:17 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:32:17 GMT
CMD ["bash"]
# Fri, 20 Nov 2026 04:27:24 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:27:27 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 20 Nov 2026 04:27:29 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 20 Nov 2026 04:28:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 05:22:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2104e12fde6b77996243b7246957bb13dfcb649787c5da5172a9c07371bc91d`  
		Last Modified: Fri, 20 Nov 2026 03:32:45 GMT  
		Size: 683.5 KB (683463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b190142aaf8330cba415694606f920c0e93c5e38d03397d276ca3a87c3b0bfc`  
		Last Modified: Fri, 20 Nov 2026 03:32:45 GMT  
		Size: 6.7 MB (6729397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e1fc233b6e229d15c168e43807776fb87cf090366303956bbf7f88bf907d8e7`  
		Last Modified: Fri, 20 Nov 2026 03:32:45 GMT  
		Size: 94.9 KB (94878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70085dcdb9504541011d2ef0c1f5b49ae7928366c50e725a638b631012731a6e`  
		Last Modified: Fri, 20 Nov 2026 03:32:48 GMT  
		Size: 122.5 MB (122482617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11c788e9b32d0a18c56b30bf97dbd7549bfbd5f213b18a3c8fa542b4f0d26151`  
		Last Modified: Fri, 20 Nov 2026 03:32:46 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10d196c0ec6928589c5a05e2a159a9aa6341ecee960d3422130f6d85011ed9bb`  
		Last Modified: Fri, 20 Nov 2026 04:29:01 GMT  
		Size: 105.7 MB (105664113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d96ee1785adb8a36aac3477e9347a6dfb518c949e1aa40ab2fc46fcef3c842e`  
		Last Modified: Fri, 20 Nov 2026 04:28:58 GMT  
		Size: 360.8 KB (360776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:892020b2ec462cfae6e954db082542dccdd3fb408aae0ec9345274a78eaf04ab`  
		Last Modified: Fri, 20 Nov 2026 04:28:58 GMT  
		Size: 2.6 KB (2645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2289e0667068c25ed420963b12b42d968b3bb3e739acccc1692049f6a22ccfde`  
		Last Modified: Fri, 20 Nov 2026 04:28:59 GMT  
		Size: 27.0 MB (27038175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44a6f94a07aa7d63f7a020e986f1cc149a243d7c2b11812b4a9e657221f52890`  
		Last Modified: Fri, 20 Nov 2026 05:25:40 GMT  
		Size: 700.2 MB (700195380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:85d0a230a2a3198b041c17fcce6d21ae2f88c1b49c887d95b016afda2501d4a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61004558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb6b1922e1385a3761f18dc4d4a156bb6df7ade58e5dbc5118843611ddfd8b14`

```dockerfile
```

-	Layers:
	-	`sha256:5c1ed5b6b325956b43bd20b526dafccb316571c725944fb087e05999bee29886`  
		Last Modified: Fri, 20 Nov 2026 05:25:30 GMT  
		Size: 61.0 MB (60995126 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:104303a021ca9a97aeb49a616fc385ed476357f0aba9c8c971199f8792a11a93`  
		Last Modified: Fri, 20 Nov 2026 05:25:27 GMT  
		Size: 9.4 KB (9432 bytes)  
		MIME: application/vnd.in-toto+json
