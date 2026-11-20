## `ros:humble-ros-core`

```console
$ docker pull ros@sha256:1f9ff77348bbd0a2c06c1ee222b71e2e6dbf54b73cff63387a7bd4467a23a354
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:2c97330437da2e891473c1035e82d3ff706c2d9771c375902cb913265113d2aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.6 MB (142595858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:397b1e507a26abf3de49461efa657ed5342c92bf9eea6a95f73c13539ec7fe15`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:29:41 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:29:48 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:29:52 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:27 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:30:27 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:30:27 GMT
ENV ROS_DISTRO=humble
# Fri, 20 Nov 2026 03:30:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:27 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:30:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:30:27 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd66fcdd35c1c0e7c55370dda64e2ce38a9dd0555069440c43e706fba574dabe`  
		Last Modified: Fri, 20 Nov 2026 03:30:51 GMT  
		Size: 1.2 MB (1214950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5509c707d84c2229a1d03ce0161c933e7337442c72533d24c3fcae135ad20197`  
		Last Modified: Fri, 20 Nov 2026 03:30:51 GMT  
		Size: 6.0 MB (5952919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ee1fac6c7b4715632f9d7feb6e2ec4efe428db8dcf84625883db08411ef65a`  
		Last Modified: Fri, 20 Nov 2026 03:30:51 GMT  
		Size: 98.0 KB (97953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:656e27b69d437c8ea329aa7e87afbe0586b5abe963f62dfb5d9016dbec2319d8`  
		Last Modified: Fri, 20 Nov 2026 03:30:54 GMT  
		Size: 105.3 MB (105260026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16776ebecf23414a919177c423aa3c12f2dc2a2b196bdb718d92894eac61e796`  
		Last Modified: Fri, 20 Nov 2026 03:30:52 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:49195f861e4dd17cebfd22e697d639c71809847c55537f6505dd2eb45714f37f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17931977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a9698b56307144e21390179cfcbfa4b2bb8612134d38f0a598519a2aaed5f3d`

```dockerfile
```

-	Layers:
	-	`sha256:af38c6aa78cf3d4d80076637d7a1c82fb590f08744b92f92b8b4ec0940adb518`  
		Last Modified: Fri, 20 Nov 2026 03:30:51 GMT  
		Size: 17.9 MB (17917351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f2c4af24e09176ad9c1d116f4cf85144d3251cbf9f71d4380992552d4b6a6a2`  
		Last Modified: Fri, 20 Nov 2026 03:30:51 GMT  
		Size: 14.6 KB (14626 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:073132917fed1c3fda298eb0fe2d2b6c4114a455884a01af623cabbd45ef4733
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.3 MB (138296302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1408a6e0dc050e9fbf4e298c915a7e0df40726db018005f9b36577466aaa7bc2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:30:15 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:23 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:29 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:00 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:32:00 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:32:00 GMT
ENV ROS_DISTRO=humble
# Fri, 20 Nov 2026 03:32:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:00 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:32:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:32:00 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e9ca9e95881a8cb28512ec3b2400b15f438f6b4c3ca3af9fd776941ed8eedfa`  
		Last Modified: Fri, 20 Nov 2026 03:32:26 GMT  
		Size: 1.2 MB (1215079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a8d0f616b49ac6f82978d7209b58950a45e03beb96cfbd0a448cc2976113e4c`  
		Last Modified: Fri, 20 Nov 2026 03:32:26 GMT  
		Size: 5.9 MB (5910769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd9a096eeef2a70209e51a15f84f3c5c20fdcc6e2fbe45780b785890d0702bf5`  
		Last Modified: Fri, 20 Nov 2026 03:32:26 GMT  
		Size: 98.1 KB (98075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8526d9ed09a9d90ff6777d272583eabb030092ea3e6e08f06b67705ced0032b7`  
		Last Modified: Fri, 20 Nov 2026 03:32:29 GMT  
		Size: 103.1 MB (103070782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a529bb895ff9f8fe1bc760e644fb3cc339e3aab7b8648b9f97f3af271aa057d8`  
		Last Modified: Fri, 20 Nov 2026 03:32:27 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:f3ca1a9723208c4881f6c313419a5c2addabedda09d667450005d2b5400aeec9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17918447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1febceeaf9628ab37ec1c0e446460812d64c4a2379ccb89a3bb47577b9bcb18`

```dockerfile
```

-	Layers:
	-	`sha256:1918ce35bf690fe94f07d4956ecd3f6f67f2fbfbf71dfe74c8fba944ef8b0d61`  
		Last Modified: Fri, 20 Nov 2026 03:32:27 GMT  
		Size: 17.9 MB (17903696 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4833499f26e40cf117a1bf7b40828a5a3ab68bdc58a964cf0222e78c775282f`  
		Last Modified: Fri, 20 Nov 2026 03:32:26 GMT  
		Size: 14.8 KB (14751 bytes)  
		MIME: application/vnd.in-toto+json
