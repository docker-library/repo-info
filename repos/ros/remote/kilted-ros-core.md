## `ros:kilted-ros-core`

```console
$ docker pull ros@sha256:2b456d0e769af2c504ed95e5e8ed33020ecae99a08465886dc6d6547b1461e40
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:4e206912b852e5487c6588b7dbca9faf095cc8e7e909cd4e78c66d0bd6d60e1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165194513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c7cddc6c6f86bdef0c0a2216a96acf282c68e8b41db6eb31284654fca1dcd32`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:30:21 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:26 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:29 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:31:11 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:31:11 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:31:11 GMT
ENV ROS_DISTRO=kilted
# Fri, 20 Nov 2026 03:31:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:31:11 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:31:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:31:11 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d12bbf25817441f644a233e0589d9874205774ac0412d534fc770629617ec5d3`  
		Last Modified: Fri, 20 Nov 2026 03:31:38 GMT  
		Size: 683.2 KB (683238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04ec9b2b69276f83ac2861e7f5dd1e6f4eedf797f1b6024703a5b3c5c653ddf5`  
		Last Modified: Fri, 20 Nov 2026 03:31:39 GMT  
		Size: 6.7 MB (6713911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d17f804b7e56721839f38e9d1c5b3d425028ee5a0d1a5d1898250f9b9f0dc49`  
		Last Modified: Fri, 20 Nov 2026 03:31:38 GMT  
		Size: 94.6 KB (94618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff5f9a099dc3af878421950291c34ef7f7fc7397416cbc7048e4586242c12e0b`  
		Last Modified: Fri, 20 Nov 2026 03:31:41 GMT  
		Size: 127.9 MB (127909253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c01db4d157e9622902d234c659ed27ddfc99df4da8b69cfc81b5195081e673f4`  
		Last Modified: Fri, 20 Nov 2026 03:31:39 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:a00c198f454e2b4d56ee6992a9c665bc1aac577eaa98398301c1defed5b2fe4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18631510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee0d44b437667f0d893955f133eafcd4a05210601f7eaeff2ce5fba6c2ee0b8d`

```dockerfile
```

-	Layers:
	-	`sha256:174a08d1205d49cd2f783f23ada332cbe8434c648bcf8ead12e5ec4bea63577f`  
		Last Modified: Fri, 20 Nov 2026 03:31:39 GMT  
		Size: 18.6 MB (18616889 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6dd8d0625756a6859ec9bc01ebd2f98bf35f288fff057850f7b04b769e8111c9`  
		Last Modified: Fri, 20 Nov 2026 03:31:38 GMT  
		Size: 14.6 KB (14621 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d88827f91d975f8773ad5de6dd88716616b898942e5b6169b2ebfea6d3f59dc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.0 MB (158955869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ab198de230a16d86b3a887e976d38c674e98f937f53371ac659a891fc0af0c8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:31:05 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:31:11 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:31:15 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:17 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:32:17 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:32:17 GMT
ENV ROS_DISTRO=kilted
# Fri, 20 Nov 2026 03:32:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:17 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:32:17 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:32:17 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2104e12fde6b77996243b7246957bb13dfcb649787c5da5172a9c07371bc91d`  
		Last Modified: Fri, 20 Nov 2026 03:32:45 GMT  
		Size: 683.5 KB (683463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b190142aaf8330cba415694606f920c0e93c5e38d03397d276ca3a87c3b0bfc`  
		Last Modified: Fri, 20 Nov 2026 03:32:45 GMT  
		Size: 6.7 MB (6729397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e1fc233b6e229d15c168e43807776fb87cf090366303956bbf7f88bf907d8e7`  
		Last Modified: Fri, 20 Nov 2026 03:32:45 GMT  
		Size: 94.9 KB (94878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70085dcdb9504541011d2ef0c1f5b49ae7928366c50e725a638b631012731a6e`  
		Last Modified: Fri, 20 Nov 2026 03:32:48 GMT  
		Size: 122.5 MB (122482617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11c788e9b32d0a18c56b30bf97dbd7549bfbd5f213b18a3c8fa542b4f0d26151`  
		Last Modified: Fri, 20 Nov 2026 03:32:46 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:761fef82e6dd789e66418c0ffe024b63f7820b81c28250a9155302e1a20f3608
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18605646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f027b3842359d5a1b49c0dcde39f1791856fcb338152110d96c62ce8be75d30`

```dockerfile
```

-	Layers:
	-	`sha256:4c5142511fb73cc4fcd5fc6c2128574a93c5c20660d69f38c0c37769509ed9a0`  
		Last Modified: Fri, 20 Nov 2026 03:32:46 GMT  
		Size: 18.6 MB (18590900 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8a1abc07f34848c2a940c291e58e3905b70f91c0400a593daaba26f6d7e1e88`  
		Last Modified: Fri, 20 Nov 2026 03:32:45 GMT  
		Size: 14.7 KB (14746 bytes)  
		MIME: application/vnd.in-toto+json
