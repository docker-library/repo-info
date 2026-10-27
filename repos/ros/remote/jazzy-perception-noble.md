## `ros:jazzy-perception-noble`

```console
$ docker pull ros@sha256:7760ad68d95624ac082ad0ec75c6163059286bb016ff64ea18555f1880b4d08b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-perception-noble` - linux; amd64

```console
$ docker pull ros@sha256:a1a441c35495bc71d8850df188308b17d4e7b5463886f0466e2619c1ff87c033
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1081588484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:980ad3bcebf08d2302bf518f135844c7288169d77fe0fe9a91dc5feddd46c217`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:36:39 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:36:48 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:36:53 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:36 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:37:36 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:37:36 GMT
ENV ROS_DISTRO=jazzy
# Mon, 26 Oct 2026 23:37:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:37 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:37:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:37:37 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:12 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:13 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 01:21:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a563a553564b1510eb1da413f4d5e92e5888c6a87f822ebbe809730cfb5104b6`  
		Last Modified: Mon, 26 Oct 2026 23:38:03 GMT  
		Size: 683.3 KB (683291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41da08f865bd6994f53683fec73c2f83622ae930868f433b48c23595ac48435e`  
		Last Modified: Mon, 26 Oct 2026 23:38:03 GMT  
		Size: 6.7 MB (6713059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3904cb8c14be5b5faaa29157fb51f8eab2fcbbac541b44f7f9f19b3ae78dd59b`  
		Last Modified: Mon, 26 Oct 2026 23:38:03 GMT  
		Size: 94.8 KB (94781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5f32aba4b6ff83fae2cd6006208b1a6d6d426a934bb0a14e107399934595e2c`  
		Last Modified: Mon, 26 Oct 2026 23:38:07 GMT  
		Size: 120.6 MB (120610063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cd06318cfa34d4e91cbbae490b31fb7b9517721281080dfd543af1ef53d32b2`  
		Last Modified: Mon, 26 Oct 2026 23:38:00 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dddf0f1685e37b326205d18350d31a1dbcf826e76ac450b0dc1828df685e597`  
		Last Modified: Tue, 27 Oct 2026 00:33:12 GMT  
		Size: 110.2 MB (110241195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe5ade736b6af1d1d760385e99491e533fae908de1059c7d86a952a665d2a9de`  
		Last Modified: Tue, 27 Oct 2026 00:33:08 GMT  
		Size: 408.5 KB (408548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2714f8b0c76eb24ade83cbc3e262948f211ed31c17d7a92419caaed2ba0a9926`  
		Last Modified: Tue, 27 Oct 2026 00:33:08 GMT  
		Size: 2.7 KB (2656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07b45dc2ee4fbd007fbef4cc8d5ffa2e1bbf411e13c1734616729811d8b4ea36`  
		Last Modified: Tue, 27 Oct 2026 00:33:10 GMT  
		Size: 28.1 MB (28093859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c68b00d52c35d7052ef32a20952ec1b79c5f4d44dfb3f39e137508383ce86b54`  
		Last Modified: Tue, 27 Oct 2026 01:24:01 GMT  
		Size: 785.0 MB (784973223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:1a2551307a0caf6eff3cff6acfed7ae6ad17ec23d70800998d4f5f3b8cf0ef7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61113933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4c67a5392911dd9ef92036e4c67dba347fffc24aa7ca3f0ba38f896e0207f89`

```dockerfile
```

-	Layers:
	-	`sha256:621c34aa8684c0333560b3d005dc4392b0576e93ce078e9a2b4be72739b90b10`  
		Last Modified: Tue, 27 Oct 2026 01:23:48 GMT  
		Size: 61.1 MB (61104594 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a16863f22663b301cf2c1e24e1cedf0aa2c77152275d5e1fcf4de2b16e5b83f5`  
		Last Modified: Tue, 27 Oct 2026 01:23:45 GMT  
		Size: 9.3 KB (9339 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-perception-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:cd85b73703e5a303c76bd544d5350b58fe8cdaee6ce768024757370a6675ce95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **984.3 MB (984304151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e8af2c60e31f718a94d02de23991be80988b6bd0516bee5ac940439ce6c35e2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:41:44 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:41:55 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:01 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:46 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:42:46 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:42:46 GMT
ENV ROS_DISTRO=jazzy
# Mon, 26 Oct 2026 23:42:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:46 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:42:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:42:46 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:04 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:06 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 01:19:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77d5f74d0cbeb989159f47acf2e766f1417c3368fa9989500ffaacfafe3bff09`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 683.3 KB (683336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecf67b2933754455c165f3915aac25fb347452d7361e06b8f6981553076e666d`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 6.7 MB (6728488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:888ae0bb56aefa2ab99b414eefd44a035a3b216a159919afedfb0e588021ae29`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 94.8 KB (94791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cb4b969290c0571655510011fdc8193cebbd7bce0114c307a1489d31d5d5fe6`  
		Last Modified: Mon, 26 Oct 2026 23:43:18 GMT  
		Size: 115.5 MB (115462541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c19fc8240be993507be49739ed40621dfd4f89f4033dd6ca966babaea7ee37ca`  
		Last Modified: Mon, 26 Oct 2026 23:43:16 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80059d0c09ca36b7d774f9f3b2677a83174724206fe195952baca5ac13d9c8e8`  
		Last Modified: Tue, 27 Oct 2026 00:33:04 GMT  
		Size: 105.7 MB (105681338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f01a354372edeabd4605bb5b1cccbc55a840ad82732376c7200c173f8ded73c5`  
		Last Modified: Tue, 27 Oct 2026 00:33:00 GMT  
		Size: 408.6 KB (408558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41bc679c55c30c4a73c8276d552b96b460d3cc0c969267434cdb1ac42be48aac`  
		Last Modified: Tue, 27 Oct 2026 00:33:00 GMT  
		Size: 2.6 KB (2645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:533e19775e447b82811ad8f793d88f2f427d3de2ca806780ea83fc0246214c61`  
		Last Modified: Tue, 27 Oct 2026 00:33:02 GMT  
		Size: 27.2 MB (27197451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8ddb1d1b8bafb216cd3d8bfe52ae2af2b67e0d5db0192aa02f0d5e71ce74e2b`  
		Last Modified: Tue, 27 Oct 2026 01:22:21 GMT  
		Size: 699.1 MB (699104680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:63ee075c7a430369b8876da4c5b9789e009154b9fc0579dec957ddfad9c2cef4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61044532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d091d0e09609f53e46c33c5df6dd0fed66c225000a247547e78e9c3262d09aca`

```dockerfile
```

-	Layers:
	-	`sha256:58392efefb939e30a46541c510772752b5eb345e71675de969ad16bf6ff60a3c`  
		Last Modified: Tue, 27 Oct 2026 01:22:09 GMT  
		Size: 61.0 MB (61035113 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d089dc5f7f97634edc64e74e9bc574bcab6538cb2a90914a118fa00dc6a9d367`  
		Last Modified: Tue, 27 Oct 2026 01:22:07 GMT  
		Size: 9.4 KB (9419 bytes)  
		MIME: application/vnd.in-toto+json
