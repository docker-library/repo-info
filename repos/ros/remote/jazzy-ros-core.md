## `ros:jazzy-ros-core`

```console
$ docker pull ros@sha256:917946da96cc72b2611134a6597f7c61bda5b5da69b150a4696cf8c195a779f4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:ee3c8f56b50cdfadbb420e0bfce1334a438d9cabfceb4e9c12d211e2cd4669ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.0 MB (157998048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47b9e642336c0dfc497cf6661516e89110710cc873ac96edcefdf77509173d1a`
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
# Wed, 11 Nov 2026 23:36:28 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:42 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:45 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:34 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:38:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:38:34 GMT
ENV ROS_DISTRO=jazzy
# Wed, 11 Nov 2026 23:38:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:35 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:38:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:38:35 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b106302b0914b5f0dade7804e43027831bbe7fa5bede2ac692540a8bf3be0e54`  
		Last Modified: Wed, 11 Nov 2026 23:39:01 GMT  
		Size: 683.3 KB (683270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e88ba20c0189527460f2759f66ba014bc1f4527831b5879713d2832157be558f`  
		Last Modified: Wed, 11 Nov 2026 23:39:02 GMT  
		Size: 6.7 MB (6714034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b18eec4897f4974fccc03873313fc5f7ef833e95341f2c349df0556f6439dffc`  
		Last Modified: Wed, 11 Nov 2026 23:39:01 GMT  
		Size: 94.7 KB (94703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8131fdf7a318e7055cc478d5e5ca93c4b7e065f1e8351abde9f2caef99ac9b5`  
		Last Modified: Wed, 11 Nov 2026 23:39:05 GMT  
		Size: 120.7 MB (120712622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb2cb7fbb49263d88e3806c1ea64ff9fc57f51a07164578b99a07dc650042f85`  
		Last Modified: Wed, 11 Nov 2026 23:39:03 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:bd0699fc7778e268056235eff05d60e3ac8f27ff37f8f9a143fe1a57a10a8f07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18622753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:831b5e5a8176801abd6c11578e1862fb57398ce2359b5dd8a5f4c75e08b1545e`

```dockerfile
```

-	Layers:
	-	`sha256:123f7ba12d40cc0ac856acc1ea21c0fe6806409c45b8be410cacf40705778076`  
		Last Modified: Wed, 11 Nov 2026 23:39:02 GMT  
		Size: 18.6 MB (18608145 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ddea9f93444f47df5eb3ddf88574f273da07e38999a260cd5e711f674e0dd773`  
		Last Modified: Wed, 11 Nov 2026 23:39:01 GMT  
		Size: 14.6 KB (14608 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:db85ef7a252f62ac5ee810dc8ee41b356e2278ce4c8a1163ec0cc2aee0eb02f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.0 MB (152034310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e35ff833fd7fd65be032eda49c461a6954aa5da821cdd23c0456e4f5cc89732`
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
# Wed, 11 Nov 2026 23:38:30 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:38 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:43 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:12 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:40:12 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:40:12 GMT
ENV ROS_DISTRO=jazzy
# Wed, 11 Nov 2026 23:40:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:12 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:40:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:40:12 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef74a57db6e8842695b7ef637b1a626cc0ae9fc66d07071e987a6ba9b3ffe510`  
		Last Modified: Wed, 11 Nov 2026 23:40:41 GMT  
		Size: 683.5 KB (683464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:851a328cb0bcee269bf7bebc4669fa81f3106a278b98c8db89ff3be33346abbb`  
		Last Modified: Wed, 11 Nov 2026 23:40:42 GMT  
		Size: 6.7 MB (6729429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b073a3602413fe343a331a4717a723897fdfdab985a5005fbe3089e06b7b93e4`  
		Last Modified: Wed, 11 Nov 2026 23:40:41 GMT  
		Size: 94.9 KB (94871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5befa02251315900577feaf81ce6bf60092080dd8b473c3d6cf05d4274d2fa68`  
		Last Modified: Wed, 11 Nov 2026 23:40:44 GMT  
		Size: 115.6 MB (115561093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:321093a525f0bd40c1fb91f7443d65da6faa52b44cfd9024bde77fb1203aae4d`  
		Last Modified: Wed, 11 Nov 2026 23:40:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:aca3c379aa0873c29edc076dd4e816f50d253eafcf92912a3170de44c9acc5dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18596884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea72209cc2eb9ee1b8f82e68475fdeb8e639c7d4ab48a492ab0532f921276214`

```dockerfile
```

-	Layers:
	-	`sha256:ec7d33a56cf5dcbdb1ac64b53c5e82ebaa7245c4e1239309e9792ccd5fb5fe2f`  
		Last Modified: Wed, 11 Nov 2026 23:40:42 GMT  
		Size: 18.6 MB (18582151 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa2f69e454b2dc4a7e0e18e4d4eda26a16ac5157e8169ad6d251aa0da149040c`  
		Last Modified: Wed, 11 Nov 2026 23:40:41 GMT  
		Size: 14.7 KB (14733 bytes)  
		MIME: application/vnd.in-toto+json
