## `ros:kilted-ros-core`

```console
$ docker pull ros@sha256:ab5505f66c9deb24e97a1f43ee37dd91fd7d3546bdfa0e7b5b2e660eaa39f903
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:9ecbe38edd4e939037328c22586a54374aaff593f3f6bdd9a0d0b33dca1efea3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.5 MB (158541325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:425f84761ca350c09caa40973e7a1c3195e0bfbf54f968f92b0d7eca3f624be6`
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
# Mon, 26 Oct 2026 23:36:56 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:06 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:11 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:57 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:37:57 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:37:57 GMT
ENV ROS_DISTRO=kilted
# Mon, 26 Oct 2026 23:37:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:57 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:37:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:37:57 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6dc83cfb54c100abefe0c5789c9596dd735fb6060b478c3278783aeaf09f70`  
		Last Modified: Mon, 26 Oct 2026 23:38:24 GMT  
		Size: 683.3 KB (683286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:484f700f32ef995c460ab129f09891f4ddfb743874c91194da67f67b5fcf93b0`  
		Last Modified: Mon, 26 Oct 2026 23:38:24 GMT  
		Size: 6.7 MB (6713060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e061d3532c880b6e507c66169b2eec7e7ee08595efd66710447bb606a5fc8587`  
		Last Modified: Mon, 26 Oct 2026 23:38:24 GMT  
		Size: 94.8 KB (94779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f7ed945075418a4426d3520ac44b679147116e608399b6482235a742f223fbe`  
		Last Modified: Mon, 26 Oct 2026 23:38:27 GMT  
		Size: 121.3 MB (121282392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc2c98b6e4e76afde314b4a1bc4751e0a9d406e5caf149acdc0c835164c8107b`  
		Last Modified: Mon, 26 Oct 2026 23:38:25 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:b41833685e10ac4a9094bd829f31c73c28fa9b042b17103dccf5169645bc0c04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18630455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a95027f15340d406824f70e25e98733fe02a16698f075b4582fdd644630586f`

```dockerfile
```

-	Layers:
	-	`sha256:2ed4eaf5a8dde5a3c42e3f83b870ccc0267eb06eac20aa351cdc555f8dcee9ed`  
		Last Modified: Mon, 26 Oct 2026 23:38:25 GMT  
		Size: 18.6 MB (18615834 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4808fbc3d13f0b88b0b122f76dad851ab10d10c94e6ace4af783eaee69773c4f`  
		Last Modified: Mon, 26 Oct 2026 23:38:24 GMT  
		Size: 14.6 KB (14621 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:36a56ec4dab5faf68b673541a6f2626e11d9ddb150c41d6bb3727399aacf624b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.5 MB (152533427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea314365650321ac9b09dba6cc8c8085204e7591f203a10181ec51b11289aaf0`
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
# Mon, 26 Oct 2026 23:41:56 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:04 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:47 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:42:47 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:42:47 GMT
ENV ROS_DISTRO=kilted
# Mon, 26 Oct 2026 23:42:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:47 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:42:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:42:47 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7570ccd68d909595ef92f220097d912ad01d622534fd1553f91849e874b2d32`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 683.3 KB (683339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28c2268257e3a997d95076d921c2fd6e74693709412a133f1160c4192c09aa82`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 6.7 MB (6728544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80492cfaa373ae7f08e6653a0cd8d6b94437d5c5a166334e2b1809778e2d5f0e`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 94.8 KB (94791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aad910f55a0ac69c6d6b4818c1ffa257dc9b05971620fb7a642d1f8da572158c`  
		Last Modified: Mon, 26 Oct 2026 23:43:18 GMT  
		Size: 116.1 MB (116086429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2327ed85048e49e3eee3efa95d5fe25c8e2f1447d34de8d92a62fc70f0400f87`  
		Last Modified: Mon, 26 Oct 2026 23:43:16 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:8844b180b98fc2dd59b87cce25ec5adeea0903e3997c721f8ca0a5fbf6ce3ed2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18604591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7bf704bab19fb4b6c2d9b8fc72be1f7e871f40a50b70c41237ee27814b69a57`

```dockerfile
```

-	Layers:
	-	`sha256:5a3c46e0927f26996fea1c3e2ae3ada4d0a5bdac12e3ab3219e50d3e8befc4b3`  
		Last Modified: Mon, 26 Oct 2026 23:43:16 GMT  
		Size: 18.6 MB (18589845 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c7de174b8cf816ed3349d30ff18603595716d513d18f8a505470177a38ca959`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 14.7 KB (14746 bytes)  
		MIME: application/vnd.in-toto+json
