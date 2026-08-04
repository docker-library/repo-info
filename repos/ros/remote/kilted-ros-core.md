## `ros:kilted-ros-core`

```console
$ docker pull ros@sha256:d221529175dc6df23d773d42cfe25f2df450f1b5efe1a2a658fc7310e222fc53
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:eb64976416efa44792d314d7ba11bc63f1a0c1d37fd3124d8dfacf5b5f8578e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.7 MB (160715876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c8db1d5446de68c84467667f9e70d6b445d29d6857ea8e06219f079321d880b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:45:33 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:46 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:52 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:39 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:39 GMT
ENV ROS_DISTRO=kilted
# Tue, 04 Aug 2026 01:46:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:39 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:39 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0f918fa69ddc2ea84a0f22a7b870442eafb118825aaea91b62009e0a9dce319`  
		Last Modified: Tue, 04 Aug 2026 01:47:09 GMT  
		Size: 683.3 KB (683341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:243482ff6b8615d6f2763db1f8132b2e7c3cb927b995de8f5d83b9d334a0bef4`  
		Last Modified: Tue, 04 Aug 2026 01:47:09 GMT  
		Size: 9.1 MB (9114192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:994ae2393899f27129b58b7308b1523858eec6f1b53fecea83385154c451f307`  
		Last Modified: Tue, 04 Aug 2026 01:47:08 GMT  
		Size: 94.8 KB (94766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fec94c5ed3b68150f4b29c2cce23656c93fd9d54ff3bc6b440ab16e5b7e756d`  
		Last Modified: Tue, 04 Aug 2026 01:47:11 GMT  
		Size: 121.1 MB (121072272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538caae360a338033e229bbb6346e517a449aae2d1ee1d1833f52bfa2278af02`  
		Last Modified: Tue, 04 Aug 2026 01:47:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:077789b8a35373530180a41cfd310a20e41874341fd00d0d6e5cad85a2c810ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18606459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d7410f9a124bd10fe1332279f287f3ff72a07ba53ecc8bd326ba916dcacb367`

```dockerfile
```

-	Layers:
	-	`sha256:86f9692e7da515246c4363cb54b0de3803a830928917fc83180ba2ba64d14a3c`  
		Last Modified: Tue, 04 Aug 2026 01:47:09 GMT  
		Size: 18.6 MB (18591838 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:926d9d911909518b71e1b49e3e10adc9cd589e8386dfc3133fee06642843ab28`  
		Last Modified: Tue, 04 Aug 2026 01:47:08 GMT  
		Size: 14.6 KB (14621 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b9a57351394208e54b108ced51cb02267625191f26cb7106908f2fae3e5552da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.2 MB (152205287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80ec2aa286447c479cb68a5497ba0aab68c12ea612d7b73ecb5c1adc6d54ab35`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:45:29 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:40 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:48 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:32 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:32 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:32 GMT
ENV ROS_DISTRO=kilted
# Tue, 04 Aug 2026 01:46:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:32 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:32 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12ee272dddf1e441f86fdd6a93f32b92a0199d12acdc5f82fcf099c67b37eef8`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 683.5 KB (683452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f0f334f4bd9f18856754f81e056622532e2b2235750a03c7bad9b4257e517f3`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 6.7 MB (6723541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be168bea448afac505e08e3b2d3337c80aed439c96f27f3e89511642689f0f6`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 94.8 KB (94790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb1c1e484ffea0bc62a68074f8f939f7ab478fbb319b5d0965c9b205b234c56`  
		Last Modified: Tue, 04 Aug 2026 01:47:04 GMT  
		Size: 115.8 MB (115816490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1091f72d64ff31400bdd1a65c473bfc82f57a73a555f84780c83f788dc100b69`  
		Last Modified: Tue, 04 Aug 2026 01:47:02 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:5ef7e128e796b368fa38c5dd8ceabd7a296d1c1a03e8ee8ad9a538aaee6bc555
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18580595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5a090abf65292d81bfdd5899399328887daab0bee0cac11e134aec4f915e3ab`

```dockerfile
```

-	Layers:
	-	`sha256:afa2ebf74590a17b292759c3bbda4b5f6cc320127338a5d593b392860bb2a7f2`  
		Last Modified: Tue, 04 Aug 2026 01:47:02 GMT  
		Size: 18.6 MB (18565849 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:218d10983dfe3e4ae62648b506c3ef6cf068d702c2f383ff4e5d10c413ace44d`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 14.7 KB (14746 bytes)  
		MIME: application/vnd.in-toto+json
