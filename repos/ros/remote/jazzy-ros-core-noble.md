## `ros:jazzy-ros-core-noble`

```console
$ docker pull ros@sha256:fb9a5620bb92e133047c62555e307a2a481bde384c70595ceae464bc84e51df1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-core-noble` - linux; amd64

```console
$ docker pull ros@sha256:6366e3768c03855a860975133963df9429c24040a2e2b0ba82bd0a998ce59568
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.7 MB (157699739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3788c54499feb45504671a1cae7ab77ba6040ac5444bbedf625db3e2fb05800`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:16 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:24 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:28 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:09 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:09 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:09 GMT
ENV ROS_DISTRO=jazzy
# Tue, 18 Aug 2026 19:26:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:09 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:09 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fc144bf2fa9369c1b905a8f5325cb931caa17631addf664424280970d958860`  
		Last Modified: Tue, 18 Aug 2026 19:26:37 GMT  
		Size: 683.4 KB (683353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45fa819c5593caccc1cfc679df9cd10fefc0371ab95c20f0764ea534fcbb9c4c`  
		Last Modified: Tue, 18 Aug 2026 19:26:37 GMT  
		Size: 6.7 MB (6709417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b21474dcac3c48681623e4add31db5b211bb573d1869993e142d89c66d69934a`  
		Last Modified: Tue, 18 Aug 2026 19:26:37 GMT  
		Size: 94.7 KB (94727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54493cf121989fd5a5216b2e3868cf07c378d34d95f3c865571bf414633c408d`  
		Last Modified: Tue, 18 Aug 2026 19:26:40 GMT  
		Size: 120.5 MB (120459240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cda397495263e78306d155b13b5350b3678458ee610ac6a6bcce5b5b35617aea`  
		Last Modified: Tue, 18 Aug 2026 19:26:36 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:bcb1a2f8e3a58d28e2c964de9d5f13c0f4f6c329d6d09c6d0d93d19d3c739bdc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18633399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bd6f1e9b942ec8440b0170a99e73193eaf52b7bf05dbb7062abc2a5869af2a9`

```dockerfile
```

-	Layers:
	-	`sha256:69faffa4c82f4455b12d86f802d9b7c13f4e85b62e8454751a2e521dd73d9f4b`  
		Last Modified: Tue, 18 Aug 2026 19:26:38 GMT  
		Size: 18.6 MB (18618791 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a678dd97ecfa5fa7e2996dbc6a16cb63f793b775d5b7fc8d9c919e7693ac959`  
		Last Modified: Tue, 18 Aug 2026 19:26:37 GMT  
		Size: 14.6 KB (14608 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-core-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b86b5e1c635b3606a9c092c92ae1b3acc225d5fd0c89b2e2e5007acbb16979e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.6 MB (151630572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a6e7fc296288c6736ec3025ad21910d4bfb25c4216ea6f026e75d55bec70c77`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:17 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:25 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:29 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:06 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:06 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:06 GMT
ENV ROS_DISTRO=jazzy
# Tue, 18 Aug 2026 19:26:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:07 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:07 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02772dfc3a5fae7955e9e391724ecd55bbe318285e021b91a13dacf3088f95b9`  
		Last Modified: Tue, 18 Aug 2026 19:26:34 GMT  
		Size: 683.4 KB (683392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9b69bcc24d33923b499b032c6f025872b6ccd11ab8dd2ffd20d83f63a295900`  
		Last Modified: Tue, 18 Aug 2026 19:26:35 GMT  
		Size: 6.7 MB (6723998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c78357500e5fbbf1a3b0474900cc310f7bc92917b35e50486f705989e48b8d24`  
		Last Modified: Tue, 18 Aug 2026 19:26:34 GMT  
		Size: 94.7 KB (94719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76e1cab8e7767650bc30f450224a5381259325759eb754db90270a5856921096`  
		Last Modified: Tue, 18 Aug 2026 19:26:37 GMT  
		Size: 115.2 MB (115241033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cda397495263e78306d155b13b5350b3678458ee610ac6a6bcce5b5b35617aea`  
		Last Modified: Tue, 18 Aug 2026 19:26:36 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:1bfa2cf1a50d70783168ebbce5dc8a876a92ed091fb1638956cca9ee816e7789
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18607530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:551b77104a41b0f9fd95fdab572f094a97657d72947d680ea28c30d1be55fcd0`

```dockerfile
```

-	Layers:
	-	`sha256:9eac09792ec9583e13451adcd5dc5bc23408b2480b5cd1dccd4c02f9d4166889`  
		Last Modified: Tue, 18 Aug 2026 19:26:35 GMT  
		Size: 18.6 MB (18592797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb2899e8d1bfa7125767cca96840da3dcc343b4c3dde38e9fd3c1e4d92d0e800`  
		Last Modified: Tue, 18 Aug 2026 19:26:34 GMT  
		Size: 14.7 KB (14733 bytes)  
		MIME: application/vnd.in-toto+json
