## `ros:kilted-ros-base`

```console
$ docker pull ros@sha256:0030f32dc8a71ef8401c89470db6003c779f036f532d40195790f58f0001902d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:363a5a4dece0332f4b5de681d70632181d5e5d4249ae14908e9c42a9346f5262
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.7 MB (296717890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aaa24ba253485f52178e82f3f4fc25c710a9c18d63ee9e682fc0f8c2a1d13e5`
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

### `ros:kilted-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:7f64d9458d834a8f13d30f03b973c7cef8f4cae3acf27781ab5b48dba33bf1b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24861384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ab37eb99b058673cbe6aa695b53a963bb1ed4580d41a0a855f81d4d9ad4a7cb`

```dockerfile
```

-	Layers:
	-	`sha256:a86dd66f46ffad293ae5362d4002f9955726eba2e3009e5a5367e18929003194`  
		Last Modified: Tue, 18 Aug 2026 20:24:46 GMT  
		Size: 24.8 MB (24845037 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:deea2d824daf09ef341e2f3fb4d4d7884fe4ca711e5013b69d4c3031be247ddf`  
		Last Modified: Tue, 18 Aug 2026 20:24:45 GMT  
		Size: 16.3 KB (16347 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:0f32cf9a6bb4d37d15f60c03f32dfb97797bed2e9797552cfa476e7670dc9a8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.1 MB (285130888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bd1c7f712471292d1b3a2c8d69271711ab389d5ba7db8d921d895558b8e9df9`
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

### `ros:kilted-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:1e3a00349b8b534ce54ddc7af7abd904bde7446815148c178362a1f0b570c9cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24883781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddab5f0574e7c99889a18788eebd7f22e9d92a4019e7ee05fd2bfbfc19c50412`

```dockerfile
```

-	Layers:
	-	`sha256:6fafcafd7fd9617e56a5552149c12e96441f0086644ef87b73de07f6347658a9`  
		Last Modified: Tue, 18 Aug 2026 20:25:12 GMT  
		Size: 24.9 MB (24867297 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8e63c8ae6eb357eb46ad449848903e82d2b5eb9eee575fdaa4b9704338219f4`  
		Last Modified: Tue, 18 Aug 2026 20:25:11 GMT  
		Size: 16.5 KB (16484 bytes)  
		MIME: application/vnd.in-toto+json
