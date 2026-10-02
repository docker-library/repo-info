## `ros:jazzy-ros-core-noble`

```console
$ docker pull ros@sha256:8bbec5839a5258d43c8ff8d44c79c87a5c5a929ad419b22d0fa6cd5f196c7818
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-core-noble` - linux; amd64

```console
$ docker pull ros@sha256:439734de612622a4328f4eea94a727d2da8d15c9b8028143d09607f986f97183
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.2 MB (160197622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f1b8b1ae7d6fb91a40fbccad62a5f7fb6608cdf23147a4d396d4713028e1442`
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

### `ros:jazzy-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:b447f5b82881c53f08d393ee2f0f949703a17a32ba8216bd5d59e653206a7179
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18622526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88f13c91e77262139db838805e70c09009c7bfa441d964c79a9cb306fa45eb8c`

```dockerfile
```

-	Layers:
	-	`sha256:d932d039dd8b84d96e6897abc0e79bd8b09d80f5715633e3dd9c38cfe9fc3bf9`  
		Last Modified: Fri, 02 Oct 2026 01:34:38 GMT  
		Size: 18.6 MB (18607919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7d5bcc243a351ba012465504ea2c7ae43506be8716de8e74d8d8d3646f757d5`  
		Last Modified: Fri, 02 Oct 2026 01:34:37 GMT  
		Size: 14.6 KB (14607 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-core-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:8f687fdf084482819aa7dab48c3887331edd0d3687b219951fdb66c418316ab1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.1 MB (154088203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dd477870b3ed477f96b62949711d3ef5fe53cec9cfa5a52be16d7827384e201`
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

### `ros:jazzy-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:6b22a5b84ba108df2dcfecabb9c00dd3f045c045e710f37cd2a4d1fd53598971
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18596658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42c526461601a0ee663bc6547184be5c2248910cf48199270db3f761819aad36`

```dockerfile
```

-	Layers:
	-	`sha256:2ce46351123c8771627d5d5ad939b03d3860a483e9093dd141038a0cb856f6bc`  
		Last Modified: Fri, 02 Oct 2026 01:34:27 GMT  
		Size: 18.6 MB (18581925 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be30b8e204a623dbca500b98205291432817a44c320a58a8d8dcf66e9fc3145b`  
		Last Modified: Fri, 02 Oct 2026 01:34:26 GMT  
		Size: 14.7 KB (14733 bytes)  
		MIME: application/vnd.in-toto+json
