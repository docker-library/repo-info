## `ros:noetic-ros-core-buster`

```console
$ docker pull ros@sha256:ef9670b73adcd49aa2a0e443d0643c777a536be8b167e2f45358709bf6ba72a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:noetic-ros-core-buster` - linux; amd64

```console
$ docker pull ros@sha256:0627afffdd96ccd98e27b538a11d28be390a0d4d8f2eb6365fd7bd23c0cab9d1
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.6 MB (300599769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:391ea350e41a79a7b58f2a337e94f0841edfd97ffcc436accc4a1a383cc9e2c6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:54 GMT
ADD file:4bf66d4081da52e8b692fcff96aad84d3e68bda4f62e870e8f4803153c70e24c in / 
# Wed, 11 Jan 2023 02:34:55 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 17:21:38 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 17:21:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu buster main" > /etc/apt/sources.list.d/ros1-latest.list
# Wed, 11 Jan 2023 17:21:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Wed, 11 Jan 2023 17:21:40 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jan 2023 17:21:41 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Jan 2023 17:21:41 GMT
ENV ROS_DISTRO=noetic
# Wed, 11 Jan 2023 17:22:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-noetic-ros-core=1.5.0-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 17:22:58 GMT
COPY file:b48a3fff5008212a0bcdc238d0e8be930aa89d2336e357e1f628c98db523efeb in / 
# Wed, 11 Jan 2023 17:22:59 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Jan 2023 17:22:59 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ac7f2e1c758675427623d0da4faa88b336c62466c15a98af61efd3f015282f2f`  
		Last Modified: Wed, 11 Jan 2023 02:39:26 GMT  
		Size: 50.4 MB (50448910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ed05e22e781556eb3057b10b25e54b8161dad941a5286d7328b50bba2f679b`  
		Last Modified: Wed, 11 Jan 2023 17:29:02 GMT  
		Size: 10.9 MB (10897026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6546cbd4873db6f5862f15a5a02564919836e584e6d1ea33023aa1dd4cdf72f6`  
		Last Modified: Wed, 11 Jan 2023 17:29:00 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7289081c9d2531b3beccb982cbaefbe997da2cc44528869692cca6bf31ea17`  
		Last Modified: Wed, 11 Jan 2023 17:29:00 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03333b8952a2f078f37ed6511a22271194ed1d51350d49a57fea72622f4ebac9`  
		Last Modified: Wed, 11 Jan 2023 17:29:33 GMT  
		Size: 239.3 MB (239251419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6af920c4677ebb81ba3c51dfea10714e63a1b5819f57dc6c67908a8ad8eccfc`  
		Last Modified: Wed, 11 Jan 2023 17:29:00 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:noetic-ros-core-buster` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:e56bbe844db24cf408a7c6ee90571bc74584a7baa016bbc9ff6a2109d7cf730e
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.6 MB (244579296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8907588539207f0ceba27caae7e6008512e905da435233d779efb50f3e483ec5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:43 GMT
ADD file:6b2b58305052bb953886c976022efeb324ef33bc6e55f9e15915e98490bd8fcb in / 
# Wed, 11 Jan 2023 02:57:43 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 13:52:24 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 13:52:25 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu buster main" > /etc/apt/sources.list.d/ros1-latest.list
# Wed, 11 Jan 2023 13:52:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Wed, 11 Jan 2023 13:52:26 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jan 2023 13:52:26 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Jan 2023 13:52:26 GMT
ENV ROS_DISTRO=noetic
# Wed, 11 Jan 2023 13:53:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-noetic-ros-core=1.5.0-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 13:53:46 GMT
COPY file:b48a3fff5008212a0bcdc238d0e8be930aa89d2336e357e1f628c98db523efeb in / 
# Wed, 11 Jan 2023 13:53:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Jan 2023 13:53:46 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:15639959ffec1b29b8f88b1e1db3ca0574ca52ee28fd8f3ac6d2cbb1c85fb209`  
		Last Modified: Wed, 11 Jan 2023 03:01:37 GMT  
		Size: 49.2 MB (49233802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7426afb0be41a462ca64e39ae6a74ed19ce54db5cd4d8fc00b5094120e8fa8f2`  
		Last Modified: Wed, 11 Jan 2023 14:00:58 GMT  
		Size: 10.9 MB (10902625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71036bab13158db91bd98501b67328211754dad8cac28846bf4aa4ecbde4d658`  
		Last Modified: Wed, 11 Jan 2023 14:00:57 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e7410b12ea7be4c80024e40f3adcd15efb8dd2b0b24abe4227c4f21cfa894b`  
		Last Modified: Wed, 11 Jan 2023 14:00:57 GMT  
		Size: 2.0 KB (1990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f2c8b362ea16751add95c3717f39e7f30cf2649c3affcc6ae88a08aeab9a5b`  
		Last Modified: Wed, 11 Jan 2023 14:01:21 GMT  
		Size: 184.4 MB (184440458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f46ce4b267a4a43fa1378cdd5ec96948d2840335e4ca90ab3100c67516d4c6`  
		Last Modified: Wed, 11 Jan 2023 14:00:57 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
