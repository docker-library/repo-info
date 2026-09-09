## `ros:jazzy-ros-core`

```console
$ docker pull ros@sha256:0fca5eb8d5e2240dcf0c002065c3eb13efe126f4d9382503917ea7ffdce694bc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:a884e8d532e9ad0e467f28cad7db88d92b018b53c36b28cc7511de0abb6b26b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.7 MB (157748285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d04152728e1c913497c0e873dc681c0cd1a130c7f2fbe530e5ff66c61d6454b5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:36:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:35 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:42 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:37:23 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:37:23 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:37:23 GMT
ENV ROS_DISTRO=jazzy
# Wed, 09 Sep 2026 02:37:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:37:23 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:37:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:37:23 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96956bf73b034e26d662de73f9ebf723c63eec7dc414ac739c942dc73ae68f9a`  
		Last Modified: Wed, 09 Sep 2026 02:37:50 GMT  
		Size: 683.4 KB (683384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe29682277ae479e1f68cbed0bf002ee59f6c419ce5fa8c070b664e898e4f3c7`  
		Last Modified: Wed, 09 Sep 2026 02:37:51 GMT  
		Size: 6.7 MB (6710881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb005c64ea48e98ae88520fc24e2e1ca764d57ae81bbe8f50d97c6c7ae8721f3`  
		Last Modified: Wed, 09 Sep 2026 02:37:50 GMT  
		Size: 94.7 KB (94738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3092fae2595765336cb3858dd123e7caf1261ce9b765075f5a4d89fef9c3a919`  
		Last Modified: Wed, 09 Sep 2026 02:37:54 GMT  
		Size: 120.5 MB (120495834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a398f2aa538587dc2c40f50cff543fc80db9d575806d75d18a7362c287711e5`  
		Last Modified: Wed, 09 Sep 2026 02:37:52 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:fb4c94081609285fae81eb032c97d784f980b87f27410764b689fd7b4118ad0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18634452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:486d8d63bf11315aed2f07c40f98412b384181d0fc4cf6ee449a7f7954c55440`

```dockerfile
```

-	Layers:
	-	`sha256:bdd8d8d718204391c274be3e6b2777182bd5ab578735317ceb919d83af566f91`  
		Last Modified: Wed, 09 Sep 2026 02:37:51 GMT  
		Size: 18.6 MB (18619844 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cbd5007ea2785576b3a122ca58803615475efa63eb541f1be91c712c82ffe18c`  
		Last Modified: Wed, 09 Sep 2026 02:37:50 GMT  
		Size: 14.6 KB (14608 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:bbe1658e5d31653c3828eafc7e4ad759eab2cfce81244c1351f30c15103f87cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.8 MB (151765354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bba51d381ef16ec4d510c87a6c6c154409f9b1387c47c09e92ec7b4224867b89`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:32:42 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:32:55 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:00 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:42 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:33:42 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:33:42 GMT
ENV ROS_DISTRO=jazzy
# Wed, 09 Sep 2026 02:33:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:42 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:33:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:33:42 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69c8e128b04851215e1e4f2d7e3e409a09cbd108e00a7bc78c1a992a27f34015`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 683.5 KB (683487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:612dbb2dfffa006420029e8b61cbe69035d21c62b4f2f9dafc525632ce75b868`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 6.7 MB (6726402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:791b9e41800f69a2d648215c38b431b06f984b26514e98f56603fab4fc8f7102`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 94.8 KB (94795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75940d8b498b0f1e3e62ee49599619ee66ed0c9d9b4f9cd4af942fb3cd873adb`  
		Last Modified: Wed, 09 Sep 2026 02:34:13 GMT  
		Size: 115.3 MB (115320459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fb35690e9e72fcc85509bb28e9aae6ea055ae8eb4b675b119b495b414884e71`  
		Last Modified: Wed, 09 Sep 2026 02:34:11 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:37b2c4e9917a01a362cacac10a700a77b2efbafb928fc2cd64ed597533109146
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18608583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab9f3c61113d6a0a8c18a365f613119de883e1f4f627441b0610439ffc418301`

```dockerfile
```

-	Layers:
	-	`sha256:4c21304a1295db3e42b9c2b56bf7eefd949bd2b51b337129c4653eb9983fbc07`  
		Last Modified: Wed, 09 Sep 2026 02:34:11 GMT  
		Size: 18.6 MB (18593850 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a232c50debe6de2e9ae46b792e355415f4709162ccebb1713eca17feac026e5`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 14.7 KB (14733 bytes)  
		MIME: application/vnd.in-toto+json
