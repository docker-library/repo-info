## `ros:kilted-ros-core-noble`

```console
$ docker pull ros@sha256:c0161a007ec1c893744878bd0bd87cc28867b5b80638630781bb3e16d0dae29b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-core-noble` - linux; amd64

```console
$ docker pull ros@sha256:04dfead2ad9a7bbdf04f3dbabe7d7ed09797ab1be4229279bf84c17d271a8811
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.3 MB (158258059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b9c1bdf77b6da43a018e580e43d1b10e33d1c0549d2d07529a8739f159448a7`
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
# Tue, 18 Aug 2026 19:25:20 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:28 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:32 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:13 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:13 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:13 GMT
ENV ROS_DISTRO=kilted
# Tue, 18 Aug 2026 19:26:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:13 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc368ccdb237e5e5949ec917ab2cc71099f16453e0cb3cc799d9c4e9b64bcf0`  
		Last Modified: Tue, 18 Aug 2026 19:26:41 GMT  
		Size: 683.4 KB (683360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1319a2fe04c5e4ec1e0747241a37b3a9ced0e8f49fd5bdec3eca858a0d887d7a`  
		Last Modified: Tue, 18 Aug 2026 19:26:41 GMT  
		Size: 6.7 MB (6709418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc11782c5c763b4e9963230966bc5f351666ca767d98eac7047b0cc4fd06bfb1`  
		Last Modified: Tue, 18 Aug 2026 19:26:41 GMT  
		Size: 94.7 KB (94725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59e81f31a1d22c80764ab7cb2ff808686ee74a8fc8abc7a682835e1f277db5c6`  
		Last Modified: Tue, 18 Aug 2026 19:26:44 GMT  
		Size: 121.0 MB (121017553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ba2c9f4522f012edd3b328bfea00e9bd748ecde27a2173c3a5b4846d95b7f0`  
		Last Modified: Tue, 18 Aug 2026 19:26:42 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:9c29c5ec710caf4c8689a8171a4c4df3edf4a4a5ee3b134e86550a6103011f40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18606459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24db823dc44e45d037d535666d51d2ce25c0789018c89b58a345a1a5dd0dd51d`

```dockerfile
```

-	Layers:
	-	`sha256:133425a51daa4ccc879d33cada40be1ead0b33072e6b78266db9bc20c3670746`  
		Last Modified: Tue, 18 Aug 2026 19:26:41 GMT  
		Size: 18.6 MB (18591838 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27df2f987f3fcd00cee9df614a0977f2ed1d56d11bc089e5a58ba31c5a489937`  
		Last Modified: Tue, 18 Aug 2026 19:26:41 GMT  
		Size: 14.6 KB (14621 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-core-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ef923ba7459d7775da28a591c3a44597c7fa4377554ba14163e405a809e96c58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.2 MB (152152680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d89f81f21ce19ee4a6ad4ffff5ccdf9c9a11b5d1fb393c3fe4ca910fba4b08e`
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
# Tue, 18 Aug 2026 19:25:25 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:33 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:39 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:18 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:18 GMT
ENV ROS_DISTRO=kilted
# Tue, 18 Aug 2026 19:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:18 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:18 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2718e18a375eb7beddf484381e651f8c475cd957ebe1eae4114b272dab2047bf`  
		Last Modified: Tue, 18 Aug 2026 19:26:46 GMT  
		Size: 683.4 KB (683389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c84223502dc2ad3514642cf7d23b00020fc3e8200459710c170e0526a2de138`  
		Last Modified: Tue, 18 Aug 2026 19:26:46 GMT  
		Size: 6.7 MB (6723970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a68d5884d3a4996be848ce01f40a5ffcc31aa84068be2aed8cbf2706d1a139f6`  
		Last Modified: Tue, 18 Aug 2026 19:26:46 GMT  
		Size: 94.7 KB (94712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfcea6da50cf0d68002acc153a420854088979957a55a9982f977802a4eaca5b`  
		Last Modified: Tue, 18 Aug 2026 19:26:49 GMT  
		Size: 115.8 MB (115763178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b504e590d278de3ef278bf67cf9f9c3b5c261c20fbdada601afd990642c47dac`  
		Last Modified: Tue, 18 Aug 2026 19:26:47 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:12f51cd4f088eb6c02f1b8f4e4ce0721418586a8a4b181268fc9cca40ed197a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18580595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01e07891cf9c850e0d9e61c8067e03508303d8e2257ab760faaa8a7335b9e634`

```dockerfile
```

-	Layers:
	-	`sha256:ab38ffd5abec04d7f0aef3002fe4652dbccdb52965e2ce4795b91a78c1b532e1`  
		Last Modified: Tue, 18 Aug 2026 19:26:47 GMT  
		Size: 18.6 MB (18565849 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7bf2177ca79404df7d1acc39d90c26f8cdc1271fd33f6c1604f5511e3a77dbe5`  
		Last Modified: Tue, 18 Aug 2026 19:26:46 GMT  
		Size: 14.7 KB (14746 bytes)  
		MIME: application/vnd.in-toto+json
