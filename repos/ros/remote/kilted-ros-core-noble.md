## `ros:kilted-ros-core-noble`

```console
$ docker pull ros@sha256:f2684c9e383c5cebb950250227ec275fac2c353f45f7fc53b6ebfa5c49698f06
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-core-noble` - linux; amd64

```console
$ docker pull ros@sha256:5356c2a069bf4cbc23b1cb95314a9fa4b77699a38cbb52a5a11eebd9576957db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158210090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29b1c2b2d4ced58bef05e7b200cec1824f3f05ea715d75737007add5af39fce5`
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

### `ros:kilted-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:ca452bb4c3709d208acf653c93cecfe1df9f24f92801b874051c6bf1314ce42f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18607869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:045bfa1648689a61c4c31600ab7356e0b259caa56a3101a50cd26292bc227967`

```dockerfile
```

-	Layers:
	-	`sha256:7d928d0eca4f92e969cc305c50a53f62b9ebc884e8fcfa222f771f680d89686d`  
		Last Modified: Thu, 02 Jul 2026 02:34:51 GMT  
		Size: 18.6 MB (18593248 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:def5516d7621347766a45a14ed8f71bdd267976f6d4a891518b3de4fc7fb3a1b`  
		Last Modified: Thu, 02 Jul 2026 02:34:50 GMT  
		Size: 14.6 KB (14621 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-core-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:c4ad2926b850cc5f6b74967b153561ead272be6141e0eadee3b998118fcf9b8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.1 MB (152111203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:403af768c852df0c70835cf4b8361ab86a46a82e886c01e5116a36bdbab23abb`
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

### `ros:kilted-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:e010e23ef0df33115afa8e9d6ab85893a475daf79fabdd2a357cd49ce9a5c957
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18582004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e309ab4e00240aea4b5639a9475d129159d675985b01bd150ca2653c828293cd`

```dockerfile
```

-	Layers:
	-	`sha256:b28488cd738985a6bb468aa7d5bbc19c133511c6df94e1479f4afb128aecb8b7`  
		Last Modified: Thu, 02 Jul 2026 02:34:14 GMT  
		Size: 18.6 MB (18567259 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a3c1b9839596a105e69e6a64f33f2f429593ff4eccdd09bd131917e2447f94e`  
		Last Modified: Thu, 02 Jul 2026 02:34:13 GMT  
		Size: 14.7 KB (14745 bytes)  
		MIME: application/vnd.in-toto+json
