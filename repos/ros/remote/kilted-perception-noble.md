## `ros:kilted-perception-noble`

```console
$ docker pull ros@sha256:8d531b465f369dffec60b030cf779e0544487e4eec4e234bfdd899822a66198b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-perception-noble` - linux; amd64

```console
$ docker pull ros@sha256:ae31206f0bdc990b80ed93867db70f26c2bb02e8a06f36e02babea4d80b94efa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1084873012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e910195ff1a431e35dfca9a05a606831293185c680da24252db8f16b3301b97`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:36:45 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:50 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:54 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:36 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:38:36 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:38:36 GMT
ENV ROS_DISTRO=kilted
# Wed, 11 Nov 2026 23:38:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:36 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:38:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:38:36 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:30:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:30:36 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:30:38 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:31:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:19:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:585496a850accca1820ff7f8fcbd461f9b2925a8c10cda4bf7947c56fd3ecee6`  
		Last Modified: Wed, 11 Nov 2026 23:39:04 GMT  
		Size: 683.3 KB (683274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b856646b00dc4dd9e5633171264d15fbbbf4f3c0112ed91ed9b6421cbb868ba`  
		Last Modified: Wed, 11 Nov 2026 23:39:04 GMT  
		Size: 6.7 MB (6714004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c27031f5c86b8931e052c091cb8cd310e8e50d4608a98bc8def0b6f4ea053ef0`  
		Last Modified: Wed, 11 Nov 2026 23:39:04 GMT  
		Size: 94.7 KB (94701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:107bbec03baa5422c48738fb7dcc7fb8bb865a5f64fe48b5f84b8aebea112725`  
		Last Modified: Wed, 11 Nov 2026 23:39:07 GMT  
		Size: 121.4 MB (121384327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ffdee8c38e80a943a231f36bf4a27e6773c6daf55d9b76dc87e8618991e393f`  
		Last Modified: Wed, 11 Nov 2026 23:39:05 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2323a4e0b8bd87e771f0ceb241f28df481ffe7dbb45ccbfbc4b758d0db9a4ae`  
		Last Modified: Thu, 12 Nov 2026 00:32:22 GMT  
		Size: 112.6 MB (112648602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cd3839b964b3d049d5d47e6bb12907f4b961918d8088b9134180c98f9a5a8b1`  
		Last Modified: Thu, 12 Nov 2026 00:32:18 GMT  
		Size: 359.4 KB (359416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76af70f10fbdb0b2ea40023936885cdef171b68eb86f6865f39831bc0cecae59`  
		Last Modified: Thu, 12 Nov 2026 00:32:18 GMT  
		Size: 2.7 KB (2660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83eca38d03f17e6f749d8ac0fed86e342d39809b1e253986a9aac1306ceb2032`  
		Last Modified: Thu, 12 Nov 2026 00:32:20 GMT  
		Size: 27.9 MB (27919225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee5c7941daf0b3d285de90c26a1f05d0f60e0970ccb3878372c6c6584f109d20`  
		Last Modified: Thu, 12 Nov 2026 01:22:57 GMT  
		Size: 785.3 MB (785273384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:1788a9b2ebe9141bd4ab2541c078e6ef68310ff936e591fd567b2e5adc7a461c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61073456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3422440900aa7a85345b1d2ab94cb3f3385073994f15b823c98dd9a7fd54b70`

```dockerfile
```

-	Layers:
	-	`sha256:1becc1736936089f7d1a7d5a3b98a219619ee76b878b4b317138672eac2fea88`  
		Last Modified: Thu, 12 Nov 2026 01:22:44 GMT  
		Size: 61.1 MB (61064104 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:938f1a75043e0dd795eb8f3daeb883b2131e5f64c7f048fdee92838c9d64c09c`  
		Last Modified: Thu, 12 Nov 2026 01:22:41 GMT  
		Size: 9.4 KB (9352 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-perception-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:483fc6f2fa6e9354a944772522140f05bc2ca93ecbedbd9f8b4e1d9e73ed3112
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **985.2 MB (985172284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b543c086787aac86cad93e7c8c8f01cb6fbb4c835788ca63dfa6987884d1e99`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:40:24 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:31 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:36 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:41:17 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:41:17 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:41:17 GMT
ENV ROS_DISTRO=kilted
# Wed, 11 Nov 2026 23:41:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:41:17 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:41:17 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:41:17 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:45:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:45:53 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:45:54 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:46:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:20:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6efc703f67013b74ded7e7804aae8066fcdbcd741ba5fefee09132368bd85b48`  
		Last Modified: Wed, 11 Nov 2026 23:41:46 GMT  
		Size: 683.5 KB (683475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59aed8aed556862c85b7cfffca1df391c25f584d77de7b1d9a806abbad90abb9`  
		Last Modified: Wed, 11 Nov 2026 23:41:47 GMT  
		Size: 6.7 MB (6729403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3ab5f623510f1c64257461e9e5d7886af0f0fe1d6e379842e3e1e13bdeedeaf`  
		Last Modified: Wed, 11 Nov 2026 23:41:46 GMT  
		Size: 94.9 KB (94867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e0c28ce0906a77821bd88137a79325138c3c07aa717b80d89f11274bcba785`  
		Last Modified: Wed, 11 Nov 2026 23:41:50 GMT  
		Size: 116.2 MB (116190168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eac1f07ca58dda65e52edd83b0d2c82f0751a7006a24fdaabba087a588cf8912`  
		Last Modified: Wed, 11 Nov 2026 23:41:47 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edfd89345c28b97657f5a8d05d347d8d0eaac711c5b83ee7894f1d32fbb661b1`  
		Last Modified: Thu, 12 Nov 2026 00:47:35 GMT  
		Size: 105.7 MB (105663392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47aabeec6dd0f020f039a5da19fd8ef0e7e4fd487e7b52c3bd5e1f0e6b0c3e66`  
		Last Modified: Thu, 12 Nov 2026 00:47:30 GMT  
		Size: 359.4 KB (359414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1662c07b1d22be460488d07f2d67bfc433d4c752860c234da78d6c5408b4a621`  
		Last Modified: Thu, 12 Nov 2026 00:47:30 GMT  
		Size: 2.7 KB (2658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ca6a4eb677adddc890981a702724d366ea9f249e71823c8a0dcec5a2d7ca3fb`  
		Last Modified: Thu, 12 Nov 2026 00:47:32 GMT  
		Size: 27.0 MB (27030752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c8efc8defd83a0aad9bf02d2b70cf3018781ef70afd2ee3b4b7299c0ad640ad`  
		Last Modified: Thu, 12 Nov 2026 01:23:08 GMT  
		Size: 699.5 MB (699452700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:a425f2578d853a240b442ca8d1bdb4a6e620a7a77fd31b9dd690ca70509556f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61004060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7f3c92ab8a8fe08fae72895d548aaeae60c6fe4e72c084652856031c20c5037`

```dockerfile
```

-	Layers:
	-	`sha256:570114851f94675308ae8da5841378b5f7ca203748302e429aac736adc18170a`  
		Last Modified: Thu, 12 Nov 2026 01:22:55 GMT  
		Size: 61.0 MB (60994628 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1d3700b6fad62c769bdce524aa78a8a45ae289f4da26ceb419198a283d8db03`  
		Last Modified: Thu, 12 Nov 2026 01:22:53 GMT  
		Size: 9.4 KB (9432 bytes)  
		MIME: application/vnd.in-toto+json
