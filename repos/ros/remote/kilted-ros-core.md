## `ros:kilted-ros-core`

```console
$ docker pull ros@sha256:d67e97ffdcccf446f5e16f609f77e94ebe13ab723ee33376affbd9b54a5df776
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:0769e52bd1c90b97cfaa62b0f0a05a61eaf1c7ae5d252cd84a7871cd02c86eee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.4 MB (158432969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99378eb35579681c305cba3575b091d042cc891060d7a5e7924ba6bd2b64785d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:27:20 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:29 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:34 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:18 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:28:18 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:28:18 GMT
ENV ROS_DISTRO=kilted
# Wed, 16 Sep 2026 03:28:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:18 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:28:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:28:18 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1557bb60e7451b48abc3f20dadc74b3c175a9bd6144658f7b817942a2ceca07`  
		Last Modified: Wed, 16 Sep 2026 03:28:44 GMT  
		Size: 683.4 KB (683390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35603fe7d60ec83cb8a43974b6fa7fd4ed7ce5c18032b94cc59cc7bfadb2f09a`  
		Last Modified: Wed, 16 Sep 2026 03:28:44 GMT  
		Size: 6.7 MB (6711360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13ba1248908c659b35f33e69231cf1d9bd93c3505d899f2302146a11cb440504`  
		Last Modified: Wed, 16 Sep 2026 03:28:44 GMT  
		Size: 94.8 KB (94775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a3972d4f761bfef2810026cccd2ffb0bed6c2a41cea5ccd6de4149420c2bd06`  
		Last Modified: Wed, 16 Sep 2026 03:28:47 GMT  
		Size: 121.2 MB (121179131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:129220389dcb270b372e9adc1e2dd350a4f02ee97ed7e167d4b145ba28076052`  
		Last Modified: Wed, 16 Sep 2026 03:28:45 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:75aa117b470da0bdf2af63bc0dfc94a197558b6ef8718602fec13c2716483a00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18628898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:693aecf9be42bbd5d4d4761d9564bd77515afc2e8ad09682a0c6a0d46ff049c2`

```dockerfile
```

-	Layers:
	-	`sha256:74d19e2483c8f4a0a1893266f02d92edb777c8187eda44a35495ad21e3f5e0d9`  
		Last Modified: Wed, 16 Sep 2026 03:28:45 GMT  
		Size: 18.6 MB (18614277 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad7e88f2b8c8b2b8595104d2724080a17e1a968b1122b3e5dccff94b87c9a75f`  
		Last Modified: Wed, 16 Sep 2026 03:28:44 GMT  
		Size: 14.6 KB (14621 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:cd585924cf978bcb221a459731c17b0e87beb33483af34c45e4e89034f16c3f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.4 MB (152423877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5b46b0482d92002a972e697752454dff2095354f78e855c30be781f3133a7c0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:27:17 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:29 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:35 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:21 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:28:21 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:28:21 GMT
ENV ROS_DISTRO=kilted
# Wed, 16 Sep 2026 03:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:22 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:28:22 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:28:22 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abf10216e1dd5ba871e52105e48e78398f8cfe4d9ef03c4303f536dd28862f5f`  
		Last Modified: Wed, 16 Sep 2026 03:28:50 GMT  
		Size: 683.5 KB (683460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f39263a8db9e2ee558a8d66412a4f400ce9fb09d3eedf497559219c66e93c480`  
		Last Modified: Wed, 16 Sep 2026 03:28:50 GMT  
		Size: 6.7 MB (6726624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f3d7bc506a5fba9ce059ed283905da96d8c2e8e9d6945371625b7edc8e77120`  
		Last Modified: Wed, 16 Sep 2026 03:28:50 GMT  
		Size: 94.8 KB (94830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c766dd8b9feb00d14f838e3590607ea491532c88c894a68f2037dfe27605e60`  
		Last Modified: Wed, 16 Sep 2026 03:28:53 GMT  
		Size: 116.0 MB (115977186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cefe2207a4cb04e4dd6657af23f4ff844e2c1a5557c362a891d49a26c1cbe41`  
		Last Modified: Wed, 16 Sep 2026 03:28:51 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:196e07f700d43482fc9cd1b3bb04d3d2af998171fe5f71c0a3e7ad5e322efcd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18603034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0617d3b4354b2636f9c9959ab247aa183199014639932550a388c1c64826ba60`

```dockerfile
```

-	Layers:
	-	`sha256:cb8ba30f8f265b33d0858ef4c9cbe959e1045c07deb60a25771b734644e8ecd0`  
		Last Modified: Wed, 16 Sep 2026 03:28:51 GMT  
		Size: 18.6 MB (18588288 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:620f192d5f044899cb5da5b4b3f8c0b3a1baabe413929e1656647318307127af`  
		Last Modified: Wed, 16 Sep 2026 03:28:50 GMT  
		Size: 14.7 KB (14746 bytes)  
		MIME: application/vnd.in-toto+json
