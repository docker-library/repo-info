## `ros:jazzy`

```console
$ docker pull ros@sha256:2589a8fba5257307857890173c069852c2abf913a0be7970f172478baecb09e4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy` - linux; amd64

```console
$ docker pull ros@sha256:bab7e640bf79cd84957e4e18fcba7d87efc3385b4e3f36a32eeca01638e43206
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.4 MB (296383369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3786be5ed1130691ee8813979e86da478531ff25e9e5bbdad85783a222716eba`
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
# Tue, 18 Aug 2026 20:23:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:23:41 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 20:23:59 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 20:24:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
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
	-	`sha256:aa61c3b78b8a527c2c014b1a761bb9782400da95745756d9e7adb8eea62183f3`  
		Last Modified: Tue, 18 Aug 2026 20:24:49 GMT  
		Size: 110.2 MB (110191895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfeaea64934d427fdbdd559a19bccced576cb4b8b74af403feee7d56ddd57bc3`  
		Last Modified: Tue, 18 Aug 2026 20:24:45 GMT  
		Size: 409.8 KB (409822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a0ac9fceaa8e1d3cff872e59ff443b85fa560d471ddd3175e31db2fad1066f9`  
		Last Modified: Tue, 18 Aug 2026 20:24:45 GMT  
		Size: 2.6 KB (2569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8411d72f4b8d1a32d36a409d255c8e7f71951e6eecb2cbb35b4d27a5ca35348`  
		Last Modified: Tue, 18 Aug 2026 20:24:47 GMT  
		Size: 28.1 MB (28079344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy` - unknown; unknown

```console
$ docker pull ros@sha256:3e65bd92046f826178e5ad2a616c73b00adfaece0dd1ea59fb748a47fd746178
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24943773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:986934eb4c3224cf57f388caaa501c30f1e9c233fda159a961240326f700638b`

```dockerfile
```

-	Layers:
	-	`sha256:cd04c864002291ee0f50a557eec29c82f672e0f3d6bcfa6fc3f797ad339b7db8`  
		Last Modified: Tue, 18 Aug 2026 20:24:47 GMT  
		Size: 24.9 MB (24927444 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af4d0a72b0c4c9577fca9d43f9080ebfe3268902941f3bc99f2ea86d4ca6fdd4`  
		Last Modified: Tue, 18 Aug 2026 20:24:45 GMT  
		Size: 16.3 KB (16329 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d849b6203853848bf20f5e5d6d77c1275bff1ff727d93ab055799cb33c2dac7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 MB (284839344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc9b02bb6caecebb32ca3c3cfce11d6a4b90b0bd7e904e168e9c23819a2cfffb`
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
# Tue, 18 Aug 2026 20:24:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:24:07 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 20:24:08 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 20:24:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
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
	-	`sha256:76d153a4b9db0cb118278fb00415bc859c03ffaad0f1ddd9f56a0238dfa63a23`  
		Last Modified: Tue, 18 Aug 2026 20:25:03 GMT  
		Size: 105.6 MB (105602820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fec7af2f0621ee36ad6707e5803931d8ef7e6e61453a09592341a33badeccb8`  
		Last Modified: Tue, 18 Aug 2026 20:24:59 GMT  
		Size: 409.8 KB (409828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1f35151bd6a352d9ffda9d1b17f657f750b21eb77f558d14171e63ade2926a4`  
		Last Modified: Tue, 18 Aug 2026 20:25:00 GMT  
		Size: 2.5 KB (2512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:600c7c7a1562f5b64f08bdb9440ac70fedde3dd1500777710db926aa67e26875`  
		Last Modified: Tue, 18 Aug 2026 20:25:01 GMT  
		Size: 27.2 MB (27193612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy` - unknown; unknown

```console
$ docker pull ros@sha256:068bb0b41125c4fbbc272386ed2e3efafecd9e4d4439f3703a1c42f1b61a54a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 MB (24966165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d566f504ed18db5e497db8d7dd86335c6ae4a30b2b422889e8a1344ff42c1dc`

```dockerfile
```

-	Layers:
	-	`sha256:8983dfc72b7255d8b799e9d3eed1f7efe92e0b2ed274e10192452fb22b04071a`  
		Last Modified: Tue, 18 Aug 2026 20:25:01 GMT  
		Size: 24.9 MB (24949699 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fefdf50ba24522a1238ea4690c1774ef03196c6455e36f2c6d4294a01e74993a`  
		Last Modified: Tue, 18 Aug 2026 20:24:59 GMT  
		Size: 16.5 KB (16466 bytes)  
		MIME: application/vnd.in-toto+json
