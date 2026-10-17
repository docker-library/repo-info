## `ros:kilted-ros-core`

```console
$ docker pull ros@sha256:c67fa3aa1b2c00cf6f878b723ea156462a6daaac14cd8eccd14521ae4f1dfa71
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:50d331d4fa03a9e4850a00592aace842e0691a5339ed8c2ac381ec50cf7cee5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.5 MB (158541266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e355b88c3828313b027d9687bcedf29ba36003c4c270658ebb1a5db6c2582cd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:35:36 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:49 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:54 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:37 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:36:37 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:36:37 GMT
ENV ROS_DISTRO=kilted
# Sat, 17 Oct 2026 00:36:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:37 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:36:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:36:37 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85a337d31c79741a4661670680a0b56a340802c38b18c77ec15cbb84c8594e35`  
		Last Modified: Sat, 17 Oct 2026 00:37:06 GMT  
		Size: 683.3 KB (683348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c96b6de7c46dc05b25dae282950258830073dc7f538ec5f03b1dfe250d3434d`  
		Last Modified: Sat, 17 Oct 2026 00:37:07 GMT  
		Size: 6.7 MB (6714649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28c4771d37ad474b48d49089c0b8604cee5c1b3965b9dccaca17734eb7f696d9`  
		Last Modified: Sat, 17 Oct 2026 00:37:06 GMT  
		Size: 94.8 KB (94840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c4549e3e21d70a39e6f28f29a155263b031358fa53b52b739fcd0b311f78636`  
		Last Modified: Sat, 17 Oct 2026 00:37:09 GMT  
		Size: 121.3 MB (121282474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03d8042b47d90dcfdfd644fdc464cae915c8392e57cfa1e767de8d3bf4ffb87a`  
		Last Modified: Sat, 17 Oct 2026 00:37:07 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:9d00b47403800dfe2341294853c9187ec1be84ff385ae87b61b94b0cc11b3501
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18631087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e70620a504b960aa19ef1e2e6f77e6f0a914e585cb415276808a708c41172bb`

```dockerfile
```

-	Layers:
	-	`sha256:48129b377629f0f051a1f8a0f0435315fa9c4cde2e049fd7476682d18cf6fada`  
		Last Modified: Sat, 17 Oct 2026 00:37:07 GMT  
		Size: 18.6 MB (18616466 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df3746cd420e76089b2f42bda302634b577736a627e7a74c9ba14665d05a80c4`  
		Last Modified: Sat, 17 Oct 2026 00:37:06 GMT  
		Size: 14.6 KB (14621 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d7bd674deb135d65e527ff59be4affcc2430d22432884a48ab6ff458cc1bc868
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.5 MB (152532694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0ed8b87fa14bde366834ab111adaa966a0122c3ea4a54b8714346040019b319`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:35:33 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:47 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:53 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:34 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:36:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:36:34 GMT
ENV ROS_DISTRO=kilted
# Sat, 17 Oct 2026 00:36:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:34 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:36:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:36:34 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6983dce44d120ca4754e630afd57ed67e897b660e6d7e1f5451ade3a48cc277d`  
		Last Modified: Sat, 17 Oct 2026 00:37:02 GMT  
		Size: 683.4 KB (683371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1d0ed6dafa169bfecd6daef25e560b6a20efae522bb1040013634825ec5d165`  
		Last Modified: Sat, 17 Oct 2026 00:37:03 GMT  
		Size: 6.7 MB (6727981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecb6154191c3cd235cf72bfe670dedfff7cc9bc0a77dc9faf7c46052f5741193`  
		Last Modified: Sat, 17 Oct 2026 00:37:02 GMT  
		Size: 94.8 KB (94821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d0a375abab3473c5b108989d23f88b7ac73a52ef8874ed1f6b7cdbbc45979cb`  
		Last Modified: Sat, 17 Oct 2026 00:37:05 GMT  
		Size: 116.1 MB (116086563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4149001be590298e2fecc783d3aaf115d80d9a7b91b581278b45dcea4c7b8b0a`  
		Last Modified: Sat, 17 Oct 2026 00:37:04 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:283d9ea6a331a5a1781145cda125c3dc739250725ebaeaf709790a301858aab5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18605222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ad4f9f6abab555546af72377098ad06e941330efafe2f6f2a0d3eb4c7d16348`

```dockerfile
```

-	Layers:
	-	`sha256:7c671bf691b3f65e361b9b178e2cc6cffb1749090c72ebae02b7beb16b34e562`  
		Last Modified: Sat, 17 Oct 2026 00:37:03 GMT  
		Size: 18.6 MB (18590477 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f2990a0817db351f2a1ab82d8614561335507c781c02578e4a2e972c344030e`  
		Last Modified: Sat, 17 Oct 2026 00:37:02 GMT  
		Size: 14.7 KB (14745 bytes)  
		MIME: application/vnd.in-toto+json
