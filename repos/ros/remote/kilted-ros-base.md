## `ros:kilted-ros-base`

```console
$ docker pull ros@sha256:5a91562b35fe8ce33082df7221ec564c0172ae9b242352a45562deb1ddbf2702
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:5a2393bf8fccb1b3621697f8741c1349bccdcb15e08ef6806c5e1259c1eb9a72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299081124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaeedfee045864351837da404e8e1be45318b8ed94666349b5fe0e74bbfb077d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:33:37 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:43 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:47 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:24 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:34:24 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:34:24 GMT
ENV ROS_DISTRO=kilted
# Thu, 02 Jul 2026 02:34:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:24 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:34:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:34:24 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:33:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:34:01 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:34:02 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:34:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55d19762b182a49ab0994b35d750697254a3b742ff8927291ac49b68edb9b5ac`  
		Last Modified: Thu, 02 Jul 2026 02:34:50 GMT  
		Size: 684.2 KB (684190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d40f630f7895264cadcef82226739a2dcc268702646bdbd37b5e8218b8a49333`  
		Last Modified: Thu, 02 Jul 2026 02:34:50 GMT  
		Size: 6.7 MB (6708430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc621ca26f7ca93b0e67ec42931619f6f4a840f02bec94059c6284748bcc05a1`  
		Last Modified: Thu, 02 Jul 2026 02:34:50 GMT  
		Size: 94.4 KB (94397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:362425c4502b31b871a17760dfa3c0522ab6ddda11fec1f17362fb5d3f0c7fa4`  
		Last Modified: Thu, 02 Jul 2026 02:34:53 GMT  
		Size: 121.0 MB (120987274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fdbc569c9ef1d656828a3f7861334e730d4d0a84c203ff82b8016aa8680e102`  
		Last Modified: Thu, 02 Jul 2026 02:34:51 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:062710a1d69617df74a1e4686d85b78c8a2a790e4ceb4a1aab67566efedeccff`  
		Last Modified: Thu, 02 Jul 2026 05:34:55 GMT  
		Size: 112.6 MB (112596657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6605c43fc23601f1c7601bc33bdc058c656d5686139bca17e39a96af5a6e984`  
		Last Modified: Thu, 02 Jul 2026 05:34:51 GMT  
		Size: 380.8 KB (380800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:097d4dbe984af77c9b21f47558efb2c9707d56b39543795af15094e22bb3bd6c`  
		Last Modified: Thu, 02 Jul 2026 05:34:51 GMT  
		Size: 2.5 KB (2492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20e73fd0223ea3083b9e9d6be3ce36976a3ca787a13700d263537179933c708e`  
		Last Modified: Thu, 02 Jul 2026 05:34:53 GMT  
		Size: 27.9 MB (27891085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:4fb06024f919998ce9ad01740ef43ecc3594f4b102f74a198c3c93f599415f76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24862758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e3167dd510b38475d922aa139c898a5684f050bdb7c77bc6941e960d1098f61`

```dockerfile
```

-	Layers:
	-	`sha256:9aa8a2f97b5656b5afaa4f11130eb434c6353c1329f326b9bdb22fe23df54c33`  
		Last Modified: Thu, 02 Jul 2026 05:34:53 GMT  
		Size: 24.8 MB (24846411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f6e0a3f4a8f3c7bdc363632e473eb4fb8b612c62509b149118b7475dce039f0`  
		Last Modified: Thu, 02 Jul 2026 05:34:51 GMT  
		Size: 16.3 KB (16347 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d09c4bcb497daddbf65893c8708565fa985f9bb321e90838231267e0e3a60f8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.5 MB (287485541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f478a40c360ded857c997c63d18b3ca8b2892a0e7109ea09b9792ca0b88fd0e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:32:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:02 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:06 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:45 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:33:45 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:33:45 GMT
ENV ROS_DISTRO=kilted
# Thu, 02 Jul 2026 02:33:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:45 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:33:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:33:45 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:35:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:35:25 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:35:26 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:35:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d85673ed3b6ede30853b78cf9b200a12ed710093528bc7ea97cc227d7968fdc`  
		Last Modified: Thu, 02 Jul 2026 02:34:13 GMT  
		Size: 684.3 KB (684305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7bc3cbee59d5058a41df39064360641f3a3895380215eb1e76cc181aa211071`  
		Last Modified: Thu, 02 Jul 2026 02:34:13 GMT  
		Size: 6.7 MB (6723379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:505279984ca7f23d65c578350e6e62883e47445ca63c893737b394d3c0e92997`  
		Last Modified: Thu, 02 Jul 2026 02:34:13 GMT  
		Size: 94.5 KB (94459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b74c9925d3c2a789e8f8fb895af2bdbeae4cb3f738c69e358f51c06affcc5935`  
		Last Modified: Thu, 02 Jul 2026 02:34:16 GMT  
		Size: 115.7 MB (115724685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cbd1673b464c80ff2a0b9b11c6693b405c75a35b5fd83a783241cb2a92ac7f5`  
		Last Modified: Thu, 02 Jul 2026 02:34:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7dc595c48d00c55a57d9cb0f8f63cdcb00f5d44aa236feff075bb97ba3e2bcc`  
		Last Modified: Thu, 02 Jul 2026 05:36:23 GMT  
		Size: 108.0 MB (107991838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81e7a54b2f77825ff3bebdcb4b0b68439dc057c020c48ee27ba47d128d146dce`  
		Last Modified: Thu, 02 Jul 2026 05:36:19 GMT  
		Size: 380.8 KB (380797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee37d58b5225cb3250e94f7286c1bc73e05361badccb5d8fb5726777f984efbc`  
		Last Modified: Thu, 02 Jul 2026 05:36:19 GMT  
		Size: 2.5 KB (2498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78b41f98af63370ec197291f16ec97f10104e6320e4ba7fae828e988b2dc7615`  
		Last Modified: Thu, 02 Jul 2026 05:36:21 GMT  
		Size: 27.0 MB (26999205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:ab16410d3c936f81df4b3bdd6efaefa6a17f61789c2af88be0506d5bcf99a1d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24885155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f036136e144e03c4b65189e1ac9d0cfd571d45a3735f7813b789468c50b368d2`

```dockerfile
```

-	Layers:
	-	`sha256:65cea4e5ab27eecebd2df8a4c37b9addc1f4ba6c847863b500ce99ae37401280`  
		Last Modified: Thu, 02 Jul 2026 05:36:20 GMT  
		Size: 24.9 MB (24868671 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4701413a437949dadda7fbce4f312c78e28da874db616e43d163f6ab3c309a2e`  
		Last Modified: Thu, 02 Jul 2026 05:36:19 GMT  
		Size: 16.5 KB (16484 bytes)  
		MIME: application/vnd.in-toto+json
