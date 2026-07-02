## `ros:humble-ros-core`

```console
$ docker pull ros@sha256:840a87964af623287d208c58c07bbcbd74e6c20cb7ca7a2fa2c36f7890bcb7a8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:63931b304254fbc1e687275d2907fb09783c9229f97cac4ba84e5edae1702453
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.9 MB (141869441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd409b7bdf44e45695fcedb3ba23235c1c244b2bb20f4947aeac4fc19feae05e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:32:14 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:22 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:27 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:00 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:33:00 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:33:00 GMT
ENV ROS_DISTRO=humble
# Thu, 02 Jul 2026 02:33:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:01 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:33:01 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:33:01 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb3926550422394aa83c1b53c4be73afffcc0634e77ecc34803568f4bcfb1e49`  
		Last Modified: Thu, 02 Jul 2026 02:33:24 GMT  
		Size: 1.2 MB (1215842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e6e86c051c759741cbd80e7077c162999229780c2ae693a10ad1f8c326e6030`  
		Last Modified: Thu, 02 Jul 2026 02:33:24 GMT  
		Size: 5.9 MB (5949015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82bf407a2bc1d9446d2f6d8bf6e29a55b8f3e51499596bf7905019454c7559ac`  
		Last Modified: Thu, 02 Jul 2026 02:33:24 GMT  
		Size: 97.4 KB (97419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64c461099d7262bb399f4ac8ed23d2e95bd3c865b4b05e60663d699b7e704686`  
		Last Modified: Thu, 02 Jul 2026 02:33:27 GMT  
		Size: 104.9 MB (104868087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74b648fd5c44b4fa950ce7c35a3e1cfc7e250180224e3019b9696f6c3b8ed660`  
		Last Modified: Thu, 02 Jul 2026 02:33:25 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:e0ea4f4ff493222bd5a4ee9d03e8e62d04d9878fd5924758e060952a4c246958
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17801255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ce224ad2cecafb9a4245e97894fd2ba417f96113a865a7eeb82bf0c7a8c0bab`

```dockerfile
```

-	Layers:
	-	`sha256:1f865035cb49d695a35a916b135bb7d0111fbd94be36b3e2661881d92e23063f`  
		Last Modified: Thu, 02 Jul 2026 02:33:25 GMT  
		Size: 17.8 MB (17786629 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87c1a39b27a00b534e37157740220ce05dcd585e957d3535a10ebaa1b15aede8`  
		Last Modified: Thu, 02 Jul 2026 02:33:24 GMT  
		Size: 14.6 KB (14626 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:1c11d93caf16087531788db3129f4ee7bf81bc1af36732e6df11fb791cae3586
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.5 MB (137459951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:661095fd6be15243cc77566923700583aa3bf1b1b1601d951240842c8f9bc1d6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:31:25 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:33 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:38 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:13 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:32:13 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:32:13 GMT
ENV ROS_DISTRO=humble
# Thu, 02 Jul 2026 02:32:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:13 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:32:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:32:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dbd4e32690a0f59d8889f1fddd11622b11071a232e9b03a7a15afd1917ca8e3`  
		Last Modified: Thu, 02 Jul 2026 02:32:39 GMT  
		Size: 1.2 MB (1215970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:358e7462ed77dfd190eb3532383abf95b31c5c66482ca078a6045f739997b09b`  
		Last Modified: Thu, 02 Jul 2026 02:32:40 GMT  
		Size: 5.9 MB (5909161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a672981123fe10808f756daabf51bf56aeb3d7c7bb6ef7e4f11f91784debccf0`  
		Last Modified: Thu, 02 Jul 2026 02:32:39 GMT  
		Size: 97.5 KB (97540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a59875832cf1080665c36e7e978a45c6683e56731a48a87bd015964402c2298`  
		Last Modified: Thu, 02 Jul 2026 02:32:42 GMT  
		Size: 102.6 MB (102623899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b1130ded35d209574b639f4e86c54403bf9fba3f055ac4932a421caa1d416bf`  
		Last Modified: Thu, 02 Jul 2026 02:32:41 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:da2a066d637e56d39ae6fea9f2a871f66d225b5d88105bbe810601d8e7ee9c51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17787725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e82f23c9218079408eae9aa0923328f0adec570e8cc76d8b0f8d061ef67ae938`

```dockerfile
```

-	Layers:
	-	`sha256:f5ae7e49bc9bc8ff7cd958c782b719b9060857686537d24782fc76aa02e7e19a`  
		Last Modified: Thu, 02 Jul 2026 02:32:40 GMT  
		Size: 17.8 MB (17772974 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d718f75fe0402a4ffbcabfe921a82fe230e41c2efadae3e0efbd3c0397959143`  
		Last Modified: Thu, 02 Jul 2026 02:32:39 GMT  
		Size: 14.8 KB (14751 bytes)  
		MIME: application/vnd.in-toto+json
