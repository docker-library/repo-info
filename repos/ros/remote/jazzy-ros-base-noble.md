## `ros:jazzy-ros-base-noble`

```console
$ docker pull ros@sha256:066420e07f60aa18262f2479981def87ebcfcec42eefb0c0c57c4a46098348ca
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-base-noble` - linux; amd64

```console
$ docker pull ros@sha256:a5426de405f6f0a82b0f3def3bbd3bce2a71a91421fe980c17613b4e51ef38d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (298960233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04b9d24bad695363d48418c1109d23e9738774b88a2017ec6d01ff9df4c3072c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:33:05 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:18 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:23 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:09 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:34:09 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:34:09 GMT
ENV ROS_DISTRO=jazzy
# Fri, 02 Oct 2026 01:34:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:09 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:34:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:34:09 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:26 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:28 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:30 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:30:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36511fcaae4567766304af008756aa35d7783372c97a4986814397dd21925a7f`  
		Last Modified: Fri, 02 Oct 2026 01:34:37 GMT  
		Size: 683.6 KB (683588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8570520b7f3a785cf844c7aed36ed0f7b225433f9c859f0675a9e927b6ba0832`  
		Last Modified: Fri, 02 Oct 2026 01:34:37 GMT  
		Size: 9.1 MB (9119867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a737a9006d9c2b045837305c33443ea754a175b0e6124bce3e8ab8055b62c0`  
		Last Modified: Fri, 02 Oct 2026 01:34:37 GMT  
		Size: 95.0 KB (95041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7b07210c227e201d0d344b12f5bbb2bb7023b02554bbe612f67ed736f1e0130`  
		Last Modified: Fri, 02 Oct 2026 01:34:40 GMT  
		Size: 120.5 MB (120534508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:991d52dbe0d5266f18937c1e0d15154dcc13fdb800bbc742b621f109a0d25b28`  
		Last Modified: Fri, 02 Oct 2026 01:34:38 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b02610e3730d4b174ff31669e18767af30a38bb8d46de8971037b7201a31496`  
		Last Modified: Fri, 02 Oct 2026 02:31:29 GMT  
		Size: 110.2 MB (110244081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56c3c7b0669cf139d4466385352966568f18b93f9622d5df0560f1a8fc534e8c`  
		Last Modified: Fri, 02 Oct 2026 02:31:25 GMT  
		Size: 425.5 KB (425548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02bdbd59ab2b0ff75b7c76c65a2294d7bca49c1fe60c3e7313694d6fdf17ad7c`  
		Last Modified: Fri, 02 Oct 2026 02:31:25 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d85cb46e7f9e1987dbff0953b61e3d207e5dc4a4c09d33fe70377aa111a7b47b`  
		Last Modified: Fri, 02 Oct 2026 02:31:26 GMT  
		Size: 28.1 MB (28090293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:f14c7040f232da10af5bee6cf98c4ce65a59bb7b56ddee278f262bff7d35db00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24938001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe7d955c39469677cff8536dc1bfa0f7b08372d3af19630c4d09861a597d64c9`

```dockerfile
```

-	Layers:
	-	`sha256:9aafc6469861e47cc313868dda55e3a650895c855b7072bf84a5c508fd69c020`  
		Last Modified: Fri, 02 Oct 2026 02:31:26 GMT  
		Size: 24.9 MB (24921672 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7958f9db6c2fe5cb5f37c0d3385b2b0e948b525a5e2aad4e14adc66b2e68cd41`  
		Last Modified: Fri, 02 Oct 2026 02:31:25 GMT  
		Size: 16.3 KB (16329 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-base-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ec00a06df4f573a86e4336c4585940f7f614646ef22675ace1b3e14ee0a82cb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.4 MB (287390179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3c5545ce25528f70a63f266924b40c80e95bf8e27c233f4108f4d5fda5c0eb4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:55 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:08 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:13 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:58 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:33:58 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:33:58 GMT
ENV ROS_DISTRO=jazzy
# Fri, 02 Oct 2026 01:33:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:58 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:33:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:33:58 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:40 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:42 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:31:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67678ff0249d2d6f797f1e59d0f94f273e3a087280667f828ab393d60f9c8bb7`  
		Last Modified: Fri, 02 Oct 2026 01:34:26 GMT  
		Size: 683.5 KB (683516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfd9c25488505afd3615c12ca0586cc6b2711036abeffbbba50fc0e876adb3ce`  
		Last Modified: Fri, 02 Oct 2026 01:34:27 GMT  
		Size: 9.0 MB (8990784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47eab992b03775030af3f4a2c503e795df95cd8cf0396e42661c47d2a71e0eef`  
		Last Modified: Fri, 02 Oct 2026 01:34:26 GMT  
		Size: 95.0 KB (94951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5682617504ebb80773d2faf85a796d24b412518cb98adf6d3c5758052dd114f`  
		Last Modified: Fri, 02 Oct 2026 01:34:30 GMT  
		Size: 115.4 MB (115378667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea7a1574b6b3a62efd1d75d62c70003738971f623f93b34f0eebcfaba401b13`  
		Last Modified: Fri, 02 Oct 2026 01:34:28 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1464792e2dcc03bfcc4a380f2db85d23190b68d3f2d80095dbdcc86f468cd9a`  
		Last Modified: Fri, 02 Oct 2026 02:31:40 GMT  
		Size: 105.7 MB (105678958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4b84fc58bc29d30ded586d328dcac888b1f355f7ee068dd61a3501e21c5ee18`  
		Last Modified: Fri, 02 Oct 2026 02:31:37 GMT  
		Size: 425.6 KB (425551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e4fe4a81959604b7aaa16fad152b936d65b546181d567296beebb24b37fe277`  
		Last Modified: Fri, 02 Oct 2026 02:31:37 GMT  
		Size: 2.7 KB (2671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4acb301d1f70c1439fe8ce12b4d688a40872e15ba3c5b2325b832afc6cc90a06`  
		Last Modified: Fri, 02 Oct 2026 02:31:39 GMT  
		Size: 27.2 MB (27194796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:81883285d1df2f8922901d1617af7296ebe1606e30fb370928da7c5d167866b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 MB (24960393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ff93186a2d8e99a9d1aa295015b2286e714702d402e1af8dab851076c82b765`

```dockerfile
```

-	Layers:
	-	`sha256:a974b5a448087369113838f3cbde6e23d895829d37f16e57906b0cc098fa6596`  
		Last Modified: Fri, 02 Oct 2026 02:31:38 GMT  
		Size: 24.9 MB (24943927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5631331ee34c711cea7fdb1a3f8c0833f8fdb7b2bcc81a1cd8e8bd6fed1729d4`  
		Last Modified: Fri, 02 Oct 2026 02:31:37 GMT  
		Size: 16.5 KB (16466 bytes)  
		MIME: application/vnd.in-toto+json
