## `clojure:temurin-8-boot-2.8.3-bullseye`

```console
$ docker pull clojure@sha256:de7a4f99fc505ace0857abd3ef55f526c7b16f40e677db5817bc25bdab9e3837
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `clojure:temurin-8-boot-2.8.3-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:2462681b6880e41fa9ac350ff15b64ac1a216c627e5db8ac7a5b39f8f552960e
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.8 MB (170841879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1afec6b49451bfa16262f884a3fab6100bfd4021125e5301370e7b0f695bbda`
-	Default Command: `["boot","repl"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:29 GMT
ADD file:917750a82b29f8f7f88a121017bd9dfeb0fbcc8f0697a009f08b6b58246eff4b in / 
# Wed, 11 Jan 2023 02:34:30 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:18:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 25 Jan 2023 19:48:25 GMT
COPY dir:bbb84183d7ea38d81d8401f01e29d08935ee4c8bf6f90c6527579a1554c3bde1 in /opt/java/openjdk 
# Wed, 25 Jan 2023 19:48:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Jan 2023 19:48:26 GMT
ENV BOOT_VERSION=2.8.3
# Wed, 25 Jan 2023 19:48:26 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Wed, 25 Jan 2023 19:48:26 GMT
WORKDIR /tmp
# Wed, 25 Jan 2023 19:48:32 GMT
RUN apt-get update && apt-get install -y make wget && rm -rf /var/lib/apt/lists/* && mkdir -p $BOOT_INSTALL && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh && echo "Comparing installer checksum..." && sha256sum boot.sh && echo "0ccd697f2027e7e1cd3be3d62721057cbc841585740d0aaa9fbb485d7b1f17c3 *boot.sh" | sha256sum -c - && mv boot.sh $BOOT_INSTALL/boot && chmod 0755 $BOOT_INSTALL/boot && apt-get purge -y --auto-remove wget
# Wed, 25 Jan 2023 19:48:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 25 Jan 2023 19:48:33 GMT
ENV BOOT_AS_ROOT=yes
# Wed, 25 Jan 2023 19:48:53 GMT
RUN boot
# Wed, 25 Jan 2023 19:48:53 GMT
CMD ["boot" "repl"]
```

-	Layers:
	-	`sha256:bbeef03cda1f5d6c9e20c310c1c91382a6b0a1a2501c3436b28152f13896f082`  
		Last Modified: Wed, 11 Jan 2023 02:38:42 GMT  
		Size: 55.0 MB (55025206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:553c76cda67d282b9227421635f7f6a58a07921275ad8e8b41a467c4f4d23d86`  
		Last Modified: Wed, 25 Jan 2023 20:03:39 GMT  
		Size: 54.6 MB (54635551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:250d1899bd656049ea57636a1b728ac7f00c192496b6f1f6167b425cf1e85cb6`  
		Last Modified: Wed, 25 Jan 2023 20:03:32 GMT  
		Size: 2.4 MB (2360701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad7da1f326bac98222435eeeed37c5cd55feb62c55f69ffa3e30b5185d3cd65c`  
		Last Modified: Wed, 25 Jan 2023 20:03:35 GMT  
		Size: 58.8 MB (58820421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:temurin-8-boot-2.8.3-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:48c4580bf9f8c0f5444c5cf6f4e7417d6d061e215feb28bd41a592c4c6f2f0d9
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.6 MB (168580680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f02e148190be48258a1feb1e37cc1fa6c416a8ea902f02f036b6d815705e7f4`
-	Default Command: `["boot","repl"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:24 GMT
ADD file:9e185c2d9ca8a231a39ee2b1761fcdff75065252d25a65a207acb7a319c1cf23 in / 
# Wed, 11 Jan 2023 02:57:25 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:38:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 25 Jan 2023 20:00:30 GMT
COPY dir:b6d7e5613532d986930216de9e0fece0632e82564ce7a6a98baf63b4115f840d in /opt/java/openjdk 
# Wed, 25 Jan 2023 20:00:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Jan 2023 20:00:32 GMT
ENV BOOT_VERSION=2.8.3
# Wed, 25 Jan 2023 20:00:32 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Wed, 25 Jan 2023 20:00:32 GMT
WORKDIR /tmp
# Wed, 25 Jan 2023 20:00:37 GMT
RUN apt-get update && apt-get install -y make wget && rm -rf /var/lib/apt/lists/* && mkdir -p $BOOT_INSTALL && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh && echo "Comparing installer checksum..." && sha256sum boot.sh && echo "0ccd697f2027e7e1cd3be3d62721057cbc841585740d0aaa9fbb485d7b1f17c3 *boot.sh" | sha256sum -c - && mv boot.sh $BOOT_INSTALL/boot && chmod 0755 $BOOT_INSTALL/boot && apt-get purge -y --auto-remove wget
# Wed, 25 Jan 2023 20:00:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 25 Jan 2023 20:00:37 GMT
ENV BOOT_AS_ROOT=yes
# Wed, 25 Jan 2023 20:00:53 GMT
RUN boot
# Wed, 25 Jan 2023 20:00:53 GMT
CMD ["boot" "repl"]
```

-	Layers:
	-	`sha256:c345c9e441f5f49235768af74b8ab37743652d38958afaa000edd56d7b2f0540`  
		Last Modified: Wed, 11 Jan 2023 03:00:56 GMT  
		Size: 53.7 MB (53681859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e357c132a845a5b6431eb56a9c21fe41d8d90eb03c92e2ff21aed32387f927e2`  
		Last Modified: Wed, 25 Jan 2023 20:12:49 GMT  
		Size: 53.7 MB (53727905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fbbccbb5e10f8d0d5ea64a387eb18e0b185a1656f210e32f8882506ffbe6549`  
		Last Modified: Wed, 25 Jan 2023 20:12:44 GMT  
		Size: 2.4 MB (2350654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368299cde10e90f0245f3b4261f368ad7be19271021bbbbb07ff50835cbef057`  
		Last Modified: Wed, 25 Jan 2023 20:12:47 GMT  
		Size: 58.8 MB (58820262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
