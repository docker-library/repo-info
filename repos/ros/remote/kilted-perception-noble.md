## `ros:kilted-perception-noble`

```console
$ docker pull ros@sha256:b1ecfa12393b00a68a6eb5e1cdf3081801797a9f0d61b2650b7158ef809c7232
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-perception-noble` - linux; amd64

```console
$ docker pull ros@sha256:54884b7c5feb4b80e1319de65efa366c3dc27674e47c6d4da6a3aaf2128a03d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1081650132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c19f195102b019c259845f84d103c2b97380833d2eb8a9710027b5649da44bb4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:20 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:28 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:32 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:13 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:13 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:13 GMT
ENV ROS_DISTRO=kilted
# Tue, 18 Aug 2026 19:26:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:13 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:13 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 20:23:45 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:23:47 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 20:23:59 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 20:24:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 21:16:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc368ccdb237e5e5949ec917ab2cc71099f16453e0cb3cc799d9c4e9b64bcf0`  
		Last Modified: Tue, 18 Aug 2026 19:26:41 GMT  
		Size: 683.4 KB (683360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1319a2fe04c5e4ec1e0747241a37b3a9ced0e8f49fd5bdec3eca858a0d887d7a`  
		Last Modified: Tue, 18 Aug 2026 19:26:41 GMT  
		Size: 6.7 MB (6709418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc11782c5c763b4e9963230966bc5f351666ca767d98eac7047b0cc4fd06bfb1`  
		Last Modified: Tue, 18 Aug 2026 19:26:41 GMT  
		Size: 94.7 KB (94725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59e81f31a1d22c80764ab7cb2ff808686ee74a8fc8abc7a682835e1f277db5c6`  
		Last Modified: Tue, 18 Aug 2026 19:26:44 GMT  
		Size: 121.0 MB (121017553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ba2c9f4522f012edd3b328bfea00e9bd748ecde27a2173c3a5b4846d95b7f0`  
		Last Modified: Tue, 18 Aug 2026 19:26:42 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8188f8598c93a80c384039fe6593864c50f71cd0a44f3035d5c88130d59bd660`  
		Last Modified: Tue, 18 Aug 2026 20:24:48 GMT  
		Size: 110.2 MB (110193099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de0353efa1a7284bea5a4b2f4b31df42a561f91203aec5bb4707ad01598dfc12`  
		Last Modified: Tue, 18 Aug 2026 20:24:45 GMT  
		Size: 372.0 KB (371983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:701c43b0aa70f6c72be0c69aa53ce6d547e0c35efad28edd13f4908620ce845c`  
		Last Modified: Tue, 18 Aug 2026 20:24:45 GMT  
		Size: 2.6 KB (2570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8cfba4ecf9d346715a1f356ba8a3d976d41bd0d30d8600aea54271ed53c64fc`  
		Last Modified: Tue, 18 Aug 2026 20:24:47 GMT  
		Size: 27.9 MB (27892179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:082bd2561e088b9eb1f56eaf53fa47985c66c1a105ca75754b1a3e3c1b2d2860`  
		Last Modified: Tue, 18 Aug 2026 21:19:50 GMT  
		Size: 784.9 MB (784932242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:44c9468744038852ae9c6cf11455ec03dbccb50bdc3483a4459d230353d23b59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61041536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67fb76164fc73a58dae2a94db69b23f6dc0bb68534b285f2b61080f69f901d9c`

```dockerfile
```

-	Layers:
	-	`sha256:3ec8ed65052ff12cae87bf3bec528a316cf4d5256ddcd6db825ddd3d40e25b8e`  
		Last Modified: Tue, 18 Aug 2026 21:19:38 GMT  
		Size: 61.0 MB (61032184 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f460519427c2926aa898fe7e9784a6f1c0c1b1d0b36ac48be56cc357469dfa3`  
		Last Modified: Tue, 18 Aug 2026 21:19:35 GMT  
		Size: 9.4 KB (9352 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-perception-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ed6ba18936367c9c102053bb49acb55e9308e2b947ef84bedc311ca78d2c45ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **984.2 MB (984212136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7593d5539dcbe3d524aba22bcfbe329471e58bc7781c714affe36cfb0f94e068`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:25 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:33 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:39 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:18 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:18 GMT
ENV ROS_DISTRO=kilted
# Tue, 18 Aug 2026 19:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:18 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:18 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 20:24:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:24:19 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 20:24:20 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 20:24:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 21:16:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2718e18a375eb7beddf484381e651f8c475cd957ebe1eae4114b272dab2047bf`  
		Last Modified: Tue, 18 Aug 2026 19:26:46 GMT  
		Size: 683.4 KB (683389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c84223502dc2ad3514642cf7d23b00020fc3e8200459710c170e0526a2de138`  
		Last Modified: Tue, 18 Aug 2026 19:26:46 GMT  
		Size: 6.7 MB (6723970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a68d5884d3a4996be848ce01f40a5ffcc31aa84068be2aed8cbf2706d1a139f6`  
		Last Modified: Tue, 18 Aug 2026 19:26:46 GMT  
		Size: 94.7 KB (94712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfcea6da50cf0d68002acc153a420854088979957a55a9982f977802a4eaca5b`  
		Last Modified: Tue, 18 Aug 2026 19:26:49 GMT  
		Size: 115.8 MB (115763178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b504e590d278de3ef278bf67cf9f9c3b5c261c20fbdada601afd990642c47dac`  
		Last Modified: Tue, 18 Aug 2026 19:26:47 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:341de8f281f7239153dddaab2d7d467dd5a50d45b1888a983e03ac20b30abdfa`  
		Last Modified: Tue, 18 Aug 2026 20:25:14 GMT  
		Size: 105.6 MB (105605123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66b45849b6b5793f0f0c8a0611d9401e94086bf1a26ffc1180a17b982194f764`  
		Last Modified: Tue, 18 Aug 2026 20:25:11 GMT  
		Size: 372.0 KB (371993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a9367fffe1dab878a5eec98e8cd4bbba6ee6c9d91c5f943480ab663153d8a2c`  
		Last Modified: Tue, 18 Aug 2026 20:25:11 GMT  
		Size: 2.5 KB (2500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feae052c00719884b14c60709e2ef033d7059763bfc478abf99bee3edfc4fc7d`  
		Last Modified: Tue, 18 Aug 2026 20:25:12 GMT  
		Size: 27.0 MB (26998592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdafe53cd922867f0e3bca03d0c241a50c8bb32bd0df177b21666ff5b027211d`  
		Last Modified: Tue, 18 Aug 2026 21:19:30 GMT  
		Size: 699.1 MB (699081248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:41d3a43535936d6555f970d2bbd57c027b61baa3c30081f01f3abe4a20be095d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (60972140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f183acf3dd86519c401c400d206c90103efc3744621345d4a2a610a0572a348a`

```dockerfile
```

-	Layers:
	-	`sha256:1b4abced1ede76f5258ec35ab188511999df72be2f1d4431baec803d8db82ef1`  
		Last Modified: Tue, 18 Aug 2026 21:19:17 GMT  
		Size: 61.0 MB (60962708 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3aa3fddddde71a8339fd325e14b7bf1cd7e065e148b412dc9d30cad071d21e0c`  
		Last Modified: Tue, 18 Aug 2026 21:19:14 GMT  
		Size: 9.4 KB (9432 bytes)  
		MIME: application/vnd.in-toto+json
