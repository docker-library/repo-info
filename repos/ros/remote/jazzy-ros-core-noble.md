## `ros:jazzy-ros-core-noble`

```console
$ docker pull ros@sha256:e4b2124bfa4d2021d50f094391d369349189bf090e25d904ff013ec5093ac565
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-core-noble` - linux; amd64

```console
$ docker pull ros@sha256:16199f356ab7dbde1e06d9898e4f07bfed7e01294284d1dea7c878c1e5d40eb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.9 MB (157869003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6ef28d8193c4912c413ebacd946819db27a77114140915e860bb8e06ec6d19a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:36:39 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:36:48 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:36:53 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:36 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:37:36 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:37:36 GMT
ENV ROS_DISTRO=jazzy
# Mon, 26 Oct 2026 23:37:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:37 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:37:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:37:37 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a563a553564b1510eb1da413f4d5e92e5888c6a87f822ebbe809730cfb5104b6`  
		Last Modified: Mon, 26 Oct 2026 23:38:03 GMT  
		Size: 683.3 KB (683291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41da08f865bd6994f53683fec73c2f83622ae930868f433b48c23595ac48435e`  
		Last Modified: Mon, 26 Oct 2026 23:38:03 GMT  
		Size: 6.7 MB (6713059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3904cb8c14be5b5faaa29157fb51f8eab2fcbbac541b44f7f9f19b3ae78dd59b`  
		Last Modified: Mon, 26 Oct 2026 23:38:03 GMT  
		Size: 94.8 KB (94781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5f32aba4b6ff83fae2cd6006208b1a6d6d426a934bb0a14e107399934595e2c`  
		Last Modified: Mon, 26 Oct 2026 23:38:07 GMT  
		Size: 120.6 MB (120610063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cd06318cfa34d4e91cbbae490b31fb7b9517721281080dfd543af1ef53d32b2`  
		Last Modified: Mon, 26 Oct 2026 23:38:00 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:423af58ea76571c50333d2973748b0c01ac50e7529493cce9a1c97380f288734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18622149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6a78837b82a41947dde55c8684c89cbe5de1816f852ed70a20b9cd359dddaea`

```dockerfile
```

-	Layers:
	-	`sha256:7db99588a597f1ce7aedef22d093969b0cae453da46fc907cf33ad6af86a1488`  
		Last Modified: Mon, 26 Oct 2026 23:38:04 GMT  
		Size: 18.6 MB (18607541 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f11e896bae501f91d561a7460bdab54f3c2456199893e1d4a6fed5dfe7c4480d`  
		Last Modified: Mon, 26 Oct 2026 23:38:03 GMT  
		Size: 14.6 KB (14608 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-core-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:8bd60d9590fc2f17281b9f8812cd9a6f54b8f82e3d19fb91469e1e9239d77dd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.9 MB (151909479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6e85b79834c6d87951a4583dd9507d01f71dc78c51f4674b2ae0eeb366024e7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:41:44 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:41:55 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:01 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:46 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:42:46 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:42:46 GMT
ENV ROS_DISTRO=jazzy
# Mon, 26 Oct 2026 23:42:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:46 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:42:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:42:46 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77d5f74d0cbeb989159f47acf2e766f1417c3368fa9989500ffaacfafe3bff09`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 683.3 KB (683336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecf67b2933754455c165f3915aac25fb347452d7361e06b8f6981553076e666d`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 6.7 MB (6728488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:888ae0bb56aefa2ab99b414eefd44a035a3b216a159919afedfb0e588021ae29`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 94.8 KB (94791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cb4b969290c0571655510011fdc8193cebbd7bce0114c307a1489d31d5d5fe6`  
		Last Modified: Mon, 26 Oct 2026 23:43:18 GMT  
		Size: 115.5 MB (115462541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c19fc8240be993507be49739ed40621dfd4f89f4033dd6ca966babaea7ee37ca`  
		Last Modified: Mon, 26 Oct 2026 23:43:16 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:5abb31d31094a540c4e9cc6c017708f42ebf1be287cb75b3c2754c8ff0ecb89e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18596280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e9ca137c15241033604a1e28bd5eee7ec7089e384f5033a1b69b89b22b6b452`

```dockerfile
```

-	Layers:
	-	`sha256:e47419f3cf7015ee1f3706fc85b554be2fc110fcfe3a3f5b9858fa93a2c1e21c`  
		Last Modified: Mon, 26 Oct 2026 23:43:16 GMT  
		Size: 18.6 MB (18581547 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f8ca88467052d4c4abb2d793fdb82d8407ed9e2c1cc68225cdf7174b28b38d6`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 14.7 KB (14733 bytes)  
		MIME: application/vnd.in-toto+json
