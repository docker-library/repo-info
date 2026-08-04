## `ros:jazzy-ros-core`

```console
$ docker pull ros@sha256:334c935e2695c40d80264d3ec17c1b1ce0b8699cd92f381ed2117c5a742bf118
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:2ab27f7d9ecb370a9045001314d35a0cab2fb855c61436d40dcfcca59ac2052a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.2 MB (160152872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d471358d62970dada89aef9de3f860e493061a6e8da569afc3caaea164cabdb`
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
# Tue, 04 Aug 2026 01:43:48 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:57 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:03 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:43 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:44:43 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:44:43 GMT
ENV ROS_DISTRO=jazzy
# Tue, 04 Aug 2026 01:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:44 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:44:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:44:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f25b50636e83b2a8bc5bd12220bd8ba469c6888bb70ee5346f91e0a1d8e96290`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 683.3 KB (683332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d60ac9847b683b465f0c04902d33e021550a4060761f60c78b94e7f53eca8558`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 9.1 MB (9114097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d431e34622e4d3f05156edf2323b9865d28b4fbb07d230e6f90d2669a38be9a3`  
		Last Modified: Tue, 04 Aug 2026 01:45:09 GMT  
		Size: 94.8 KB (94767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d2e745cf512c62a1c15c2181f23cb0e0541442e77da298087037220c07a1247`  
		Last Modified: Tue, 04 Aug 2026 01:45:13 GMT  
		Size: 120.5 MB (120509370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a8056250502e5ecacc2034cc633e586c1eb412fe890941ac4eed2845dd56ac9`  
		Last Modified: Tue, 04 Aug 2026 01:45:11 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:6610f8b7665e4884ecf72634f173d692883eed51dc2883ca42c3775519e016c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18633399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d113365886cb5dc333e5762debccc6e6e1a19585dd97d4694e85519d3c22a622`

```dockerfile
```

-	Layers:
	-	`sha256:c09c8354bd02980e5352da36bd1d84031118208b127e8d1b4268361f14443031`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 18.6 MB (18618791 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1de3fa9b7c211b2824a1cc28de62d5c3b753543e0341ac1b6072e7a401aa494c`  
		Last Modified: Tue, 04 Aug 2026 01:45:09 GMT  
		Size: 14.6 KB (14608 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:032a0ff00860e1c9d2e717b7070d643594f1bbb04a9e036608232b0806a72666
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.7 MB (151688799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b45297b7f21f156936e5d80b2385bd6f76993a76066224901e09f97017ac9159`
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
# Tue, 04 Aug 2026 01:43:43 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:52 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:00 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:45 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:44:45 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:44:45 GMT
ENV ROS_DISTRO=jazzy
# Tue, 04 Aug 2026 01:44:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:45 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:44:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:44:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a11bd56d80a6967ddb49605103b484041943d77696e6187ac9abe2e5d7dab8b5`  
		Last Modified: Tue, 04 Aug 2026 01:45:14 GMT  
		Size: 683.5 KB (683467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e113fb8eb71513d204c2fe40a808cc23e259cb200f76b1f34768a0736d8ecc2f`  
		Last Modified: Tue, 04 Aug 2026 01:45:15 GMT  
		Size: 6.7 MB (6723586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd7b8878e14ceb872f67e16f2ad925332466b2b2a2215b77ac8d066d5038b5e7`  
		Last Modified: Tue, 04 Aug 2026 01:45:14 GMT  
		Size: 94.8 KB (94788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86928acf88c03c6b6b3182ad08d5a5b847583a7f4d8d985e776b7230c9e35383`  
		Last Modified: Tue, 04 Aug 2026 01:45:18 GMT  
		Size: 115.3 MB (115299944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e5aa386d262f44285a92aa39f100f7f5642d3ea67bc8097ec5a5a6d7c194336`  
		Last Modified: Tue, 04 Aug 2026 01:45:16 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:335a1dc6d3b1e5f783839e93678dc0103324e4d73aceccf4bc660c256a1b8720
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18607530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15e4f4e14546f5e07506cc869edfb3c754324fc1b107eb517123c85d4c8f4c5e`

```dockerfile
```

-	Layers:
	-	`sha256:096eeb402ad5480e94d3e8093e190c8e31a7467028c77958b2d4466c97a8e342`  
		Last Modified: Tue, 04 Aug 2026 01:45:16 GMT  
		Size: 18.6 MB (18592797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:275ed23297647b8e7d69420907552c523dcd8250cbc4d64868794d856245ef97`  
		Last Modified: Tue, 04 Aug 2026 01:45:14 GMT  
		Size: 14.7 KB (14733 bytes)  
		MIME: application/vnd.in-toto+json
