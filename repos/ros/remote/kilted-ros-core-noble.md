## `ros:kilted-ros-core-noble`

```console
$ docker pull ros@sha256:ed54754979027da3fea800d83bae73d7aba4ba89896df02b06805fe513c73d07
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-core-noble` - linux; amd64

```console
$ docker pull ros@sha256:167ece4f2b83cde15eb66c2ae9681f6ff6f92c12a88beeb161d62f918d4f3bbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.7 MB (158669725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4192885efeaeb61d0042128b23f1971389e1717da4b908896ec9431009ecf106`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:36:45 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:50 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:54 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:36 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:38:36 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:38:36 GMT
ENV ROS_DISTRO=kilted
# Wed, 11 Nov 2026 23:38:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:36 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:38:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:38:36 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:585496a850accca1820ff7f8fcbd461f9b2925a8c10cda4bf7947c56fd3ecee6`  
		Last Modified: Wed, 11 Nov 2026 23:39:04 GMT  
		Size: 683.3 KB (683274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b856646b00dc4dd9e5633171264d15fbbbf4f3c0112ed91ed9b6421cbb868ba`  
		Last Modified: Wed, 11 Nov 2026 23:39:04 GMT  
		Size: 6.7 MB (6714004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c27031f5c86b8931e052c091cb8cd310e8e50d4608a98bc8def0b6f4ea053ef0`  
		Last Modified: Wed, 11 Nov 2026 23:39:04 GMT  
		Size: 94.7 KB (94701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:107bbec03baa5422c48738fb7dcc7fb8bb865a5f64fe48b5f84b8aebea112725`  
		Last Modified: Wed, 11 Nov 2026 23:39:07 GMT  
		Size: 121.4 MB (121384327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ffdee8c38e80a943a231f36bf4a27e6773c6daf55d9b76dc87e8618991e393f`  
		Last Modified: Wed, 11 Nov 2026 23:39:05 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:4eb516ed35d7fef28154f740f198332a1dbe3e267c7529825bf3bfde86413db2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18631059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e2d45c06acbca233558eb972954de0eead74755d43a7b2d5229f15358abf4a6`

```dockerfile
```

-	Layers:
	-	`sha256:7a135662694164d752c75b101d7ee3a36b55ce9a2d0ec1c4f4b0f6ff8f0100f6`  
		Last Modified: Wed, 11 Nov 2026 23:39:05 GMT  
		Size: 18.6 MB (18616438 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5fcb908b9ffe51bd4bcfd6c73bb01d89cebba29d193944e11aadad0a79c4873`  
		Last Modified: Wed, 11 Nov 2026 23:39:04 GMT  
		Size: 14.6 KB (14621 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-core-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:f0786a17f1d90def0001e65807ac74c19bc3cb533ef640fb7db81d4e93fa44f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.7 MB (152663368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47abf9c7a553b82190e9e16295c494465156b1e2eed45cb7f13759d52ee3a13f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:40:24 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:31 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:36 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:41:17 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:41:17 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:41:17 GMT
ENV ROS_DISTRO=kilted
# Wed, 11 Nov 2026 23:41:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:41:17 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:41:17 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:41:17 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6efc703f67013b74ded7e7804aae8066fcdbcd741ba5fefee09132368bd85b48`  
		Last Modified: Wed, 11 Nov 2026 23:41:46 GMT  
		Size: 683.5 KB (683475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59aed8aed556862c85b7cfffca1df391c25f584d77de7b1d9a806abbad90abb9`  
		Last Modified: Wed, 11 Nov 2026 23:41:47 GMT  
		Size: 6.7 MB (6729403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3ab5f623510f1c64257461e9e5d7886af0f0fe1d6e379842e3e1e13bdeedeaf`  
		Last Modified: Wed, 11 Nov 2026 23:41:46 GMT  
		Size: 94.9 KB (94867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e0c28ce0906a77821bd88137a79325138c3c07aa717b80d89f11274bcba785`  
		Last Modified: Wed, 11 Nov 2026 23:41:50 GMT  
		Size: 116.2 MB (116190168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eac1f07ca58dda65e52edd83b0d2c82f0751a7006a24fdaabba087a588cf8912`  
		Last Modified: Wed, 11 Nov 2026 23:41:47 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:c262d66d57b08511a241a31b999bf1da4492ef2c7a0364862a129e20dffb9099
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18605195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14c369f8852de8a9dd1505c18278d2f7125f3f48b554bf4462bd9c111e66f02a`

```dockerfile
```

-	Layers:
	-	`sha256:251de17fadc76d8065ebbd89e5f34c24762b1233f6c6574c172c5a586dfdd47f`  
		Last Modified: Wed, 11 Nov 2026 23:41:47 GMT  
		Size: 18.6 MB (18590449 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d4c0382bb97d671d7fdb213dcd328b5a1cb3f8aea87e3b3c23645ecf5daf953`  
		Last Modified: Wed, 11 Nov 2026 23:41:46 GMT  
		Size: 14.7 KB (14746 bytes)  
		MIME: application/vnd.in-toto+json
