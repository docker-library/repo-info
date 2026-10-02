## `ros:humble-ros-core-jammy`

```console
$ docker pull ros@sha256:6892c5a0fec6c3bddc4cea502c7623f88988d7b1442419a23c685757249c7437
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-core-jammy` - linux; amd64

```console
$ docker pull ros@sha256:a4ccdc6f1d361aedd41f0a91bd9af30979961dd448791015f11f0d8d1259fd09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.9 MB (144937335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96b036fe0ee3894727645d1cac5465ccae11db2ac5cc3b4e867009d1de1f3a2d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:07 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:12 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:51 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:33:51 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:33:51 GMT
ENV ROS_DISTRO=humble
# Fri, 02 Oct 2026 01:33:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:51 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:33:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:33:51 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a002b86229673ff1430fe07afe1839d097f0d8b713bad707b3e0d3064200ca8c`  
		Last Modified: Fri, 02 Oct 2026 01:34:16 GMT  
		Size: 1.2 MB (1212880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e804a0ad2a8bf7be6a3840017d207a853e13bb6c7bb8336d715ac85bd592082`  
		Last Modified: Fri, 02 Oct 2026 01:34:16 GMT  
		Size: 6.0 MB (5952340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8b0b6f752f7b983a42c4fc8bf72b268764ed14aed27bc428c8964abe13e1919`  
		Last Modified: Fri, 02 Oct 2026 01:34:16 GMT  
		Size: 98.0 KB (97958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b65fcd8f7286a56e6fecfcd7cd73119c8394b49c7adbfcf16e8c1bc569a0ddc`  
		Last Modified: Fri, 02 Oct 2026 01:34:19 GMT  
		Size: 107.9 MB (107922333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dcc0fc0e26ee91bc9e0f7a730d41bb6eb404aefed99de732d1f9ecff40b5a53`  
		Last Modified: Fri, 02 Oct 2026 01:34:17 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:d449e6ffd090a082886f1eb6e4a8a3a2177fd0f9bcf948a031811c7d84699b4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17931516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c2ad0c78f49487ee2bfb4726e7e8bf3c05a877e20da7c2bcb7eb57481d168b9`

```dockerfile
```

-	Layers:
	-	`sha256:6876d42b98c6cb6e72f873e5e45195ba2b49f3a0be39eeac60d39b91097cf1f3`  
		Last Modified: Fri, 02 Oct 2026 01:34:16 GMT  
		Size: 17.9 MB (17916890 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44da6ca3f7f78ff39c4252659f346f8b07de70cb684d1631c9be7b337b2d386e`  
		Last Modified: Fri, 02 Oct 2026 01:34:16 GMT  
		Size: 14.6 KB (14626 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-core-jammy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5d8bdefcfb553802cca2fff87233f0c0adfbbd50e87e7c64c9af9a098250e6b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.5 MB (140532607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4ac8ab1e22bb7a395ab40eba5221db4ced1c3e9e339b56fc01d20c210784cfc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:52 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:02 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:11 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:50 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:33:50 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:33:50 GMT
ENV ROS_DISTRO=humble
# Fri, 02 Oct 2026 01:33:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:50 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:33:50 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:33:50 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75b557813fcf11a25538d23fe1de0d1cf1fb9dc99d43a1c54ea228dca996cae7`  
		Last Modified: Fri, 02 Oct 2026 01:34:17 GMT  
		Size: 1.2 MB (1212867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfe48d969d878c110f3b21574ade580dfffee64713836a2b307826cb274e442b`  
		Last Modified: Fri, 02 Oct 2026 01:34:17 GMT  
		Size: 5.9 MB (5911995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50744702b8e53a0cafefc9b55960d72c5f0bae00626388f8f52c2784926e184e`  
		Last Modified: Fri, 02 Oct 2026 01:34:17 GMT  
		Size: 98.0 KB (97953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2be6951d519d8e68d6ae87632a4b65e3ecc55686c1c00fed925e6a4e097df99f`  
		Last Modified: Fri, 02 Oct 2026 01:34:19 GMT  
		Size: 105.6 MB (105625459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:022cc4907bf5a12b531765cb8979b1a775f568a5396ad80f8bd32af24bfe7ab7`  
		Last Modified: Fri, 02 Oct 2026 01:34:18 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:c0d562c394c569677aad2d80e8f677fef4936fe33777872be8f25b58094514e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17917986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe9f22d3bfc7ea77275d34c26b51babc85e8e3ec1e76c923c5b111d781469b4f`

```dockerfile
```

-	Layers:
	-	`sha256:08bf7d0eb582109a3557a27bda5707c2653ba7fc43fc7ac148fbaf5a53c0be49`  
		Last Modified: Fri, 02 Oct 2026 01:34:17 GMT  
		Size: 17.9 MB (17903235 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d526c78c9b0ab1a9c1ecbee7b925c4c1099aa06a6523948ea2bec250edf47160`  
		Last Modified: Fri, 02 Oct 2026 01:34:16 GMT  
		Size: 14.8 KB (14751 bytes)  
		MIME: application/vnd.in-toto+json
