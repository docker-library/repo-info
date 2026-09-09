## `ros:humble-ros-core-jammy`

```console
$ docker pull ros@sha256:d2bbb43b75b4b73b0552fcedf0aa195d8e9bdd21fe50c02e5c0a791951a55f8e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-core-jammy` - linux; amd64

```console
$ docker pull ros@sha256:00e8ee27be2e594747b6ba8c2791a2724e3a38a7fe66366bbd05e4e7da7ce55d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.8 MB (147778999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c4bb0917c301abad49df5bf1973932e79cbae730e593d630d94faced39cf4b1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:35:43 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:35:55 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:00 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:38 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:36:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:36:38 GMT
ENV ROS_DISTRO=humble
# Wed, 09 Sep 2026 02:36:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:38 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:36:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:36:38 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ab7a43d012fe74edb3e506d4f7559e3de034e350953f18f35561ee666dfa934`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 1.2 MB (1212718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:424ca8e32ad63fc1a991f3f728865951a15772959c85bdd0385ab2aaa6ed0851`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 6.0 MB (5951842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68d747d6bc0c88b68985074a914f0e62c428dfc66120b02a31bedf3d96452f6a`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 97.9 KB (97903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e2bcc6e0d7c56988ba91775ffaef3927992fb9526089a2146403a698634ee3d`  
		Last Modified: Wed, 09 Sep 2026 02:37:05 GMT  
		Size: 110.8 MB (110766089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dba3fcfdb7627f6fe1e51129ee4ef5ad692a2947ff8e9eb3516bf0299a7211c`  
		Last Modified: Wed, 09 Sep 2026 02:37:03 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:b62401e85ea3eac33f1696d7b4e7c70c26bb167aaa43e61921e9f5596ea705d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17943628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fde5fd4f4989d3ce519244d802f0b842491b4b1f4f3cbdb98910c31716c3d4d6`

```dockerfile
```

-	Layers:
	-	`sha256:386b2204438e0e6bdbdbe648d366559c5b25d1e360f58bdf0429bca35957589b`  
		Last Modified: Wed, 09 Sep 2026 02:37:03 GMT  
		Size: 17.9 MB (17929002 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b4c951534735bfda98da263c11edf212931c878ca692a450a342aa0189232d3`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 14.6 KB (14626 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-core-jammy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:2817b1c693fa4cd4d4422c2df755e328c2f1630e99bd5414d411d71a58f93b35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.4 MB (142414012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6259339ddd8b7f854258d4e1fb37c4989d6f25a14f2d6b9223acd1998d385435`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:39:55 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:07 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:13 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:55 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 01:40:55 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 01:40:55 GMT
ENV ROS_DISTRO=humble
# Wed, 09 Sep 2026 01:40:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:55 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 01:40:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 01:40:55 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bddee01edb498613b105a34c4130f2da848572201e36cf5fb3300423adff03a`  
		Last Modified: Wed, 09 Sep 2026 01:41:21 GMT  
		Size: 1.2 MB (1212881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2689441d1be6d178401a5d18063478b90856de2f73d36c5d2ed6ec7939b024de`  
		Last Modified: Wed, 09 Sep 2026 01:41:21 GMT  
		Size: 5.9 MB (5911693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d117015c18640441b139baf153187d59a51b4081523dcde75fca284ece0af69c`  
		Last Modified: Wed, 09 Sep 2026 01:41:20 GMT  
		Size: 97.9 KB (97943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70c2fb207aceae4e92786b3b43645c1ecc27d57d83766730a27cb97958067c12`  
		Last Modified: Wed, 09 Sep 2026 01:41:24 GMT  
		Size: 107.5 MB (107508551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e29307c8452e8a0b956f4ebb158707234771e9c96b70069b8f01930456a9850d`  
		Last Modified: Wed, 09 Sep 2026 01:41:22 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:4f9da9e88e54fc52b8c0f8dc1e3f8fa3ae8cf5c453cd0e169e11246509945685
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17930098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7115df052db516440560d702f4cc517b4d2a493273a9d6c6f0ac93c13a00775`

```dockerfile
```

-	Layers:
	-	`sha256:0e440a9db67d7ea1dbe9ee864072c4ee2f4cc0307bdeaa1dfd5ed35bf830669b`  
		Last Modified: Wed, 09 Sep 2026 01:41:21 GMT  
		Size: 17.9 MB (17915347 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:688ad5a529c3d8c9ed7b76aae1956e85c22df92b5f725acffc95052ba1d0ed2a`  
		Last Modified: Wed, 09 Sep 2026 01:41:20 GMT  
		Size: 14.8 KB (14751 bytes)  
		MIME: application/vnd.in-toto+json
