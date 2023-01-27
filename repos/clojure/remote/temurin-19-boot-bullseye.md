## `clojure:temurin-19-boot-bullseye`

```console
$ docker pull clojure@sha256:0818aff8571e572535f71736cc0f524603b05d9676e9d807f8a2103eed717e7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `clojure:temurin-19-boot-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:c478068f348bdd16081e2a7ec1066f204fdb3947332030de2b2634787a5cce16
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.3 MB (317319814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45d288ea2afbdf016f4fbb50191c01ecf0f1fd511b0039330b1c41826d6167f5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:29 GMT
ADD file:917750a82b29f8f7f88a121017bd9dfeb0fbcc8f0697a009f08b6b58246eff4b in / 
# Wed, 11 Jan 2023 02:34:30 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:18:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 25 Jan 2023 19:55:41 GMT
COPY dir:94cb5af8175285c10c94286222d8a35302f3f8c290e00011a75c67156659d6ab in /opt/java/openjdk 
# Wed, 25 Jan 2023 19:55:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Jan 2023 19:55:43 GMT
ENV BOOT_VERSION=2.8.3
# Wed, 25 Jan 2023 19:55:43 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Wed, 25 Jan 2023 19:55:43 GMT
WORKDIR /tmp
# Wed, 25 Jan 2023 19:55:49 GMT
RUN apt-get update && apt-get install -y make wget && rm -rf /var/lib/apt/lists/* && mkdir -p $BOOT_INSTALL && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh && echo "Comparing installer checksum..." && sha256sum boot.sh && echo "0ccd697f2027e7e1cd3be3d62721057cbc841585740d0aaa9fbb485d7b1f17c3 *boot.sh" | sha256sum -c - && mv boot.sh $BOOT_INSTALL/boot && chmod 0755 $BOOT_INSTALL/boot && apt-get purge -y --auto-remove wget
# Wed, 25 Jan 2023 19:55:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 25 Jan 2023 19:55:49 GMT
ENV BOOT_AS_ROOT=yes
# Wed, 25 Jan 2023 19:56:07 GMT
RUN boot
# Wed, 25 Jan 2023 19:56:07 GMT
COPY file:0282db266eb050a3ad3609149efe2188243cb9f95c0b3e48a312ddef6c6bea02 in /usr/local/bin/entrypoint 
# Wed, 25 Jan 2023 19:56:07 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 25 Jan 2023 19:56:07 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:bbeef03cda1f5d6c9e20c310c1c91382a6b0a1a2501c3436b28152f13896f082`  
		Last Modified: Wed, 11 Jan 2023 02:38:42 GMT  
		Size: 55.0 MB (55025206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8df71d2e483aa9f63ec157a41369a0097485c5ce56db2505f5ed8f08acb36a3c`  
		Last Modified: Wed, 25 Jan 2023 20:08:10 GMT  
		Size: 201.1 MB (201112993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1907d9bf07e77c9814ce9426f6692f9d0cb37505194a3271c49b85948c0f7a68`  
		Last Modified: Wed, 25 Jan 2023 20:07:55 GMT  
		Size: 2.4 MB (2360764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00aa49eae4961f1c0487faa6227238917499845974ae6dae4988451219077fcf`  
		Last Modified: Wed, 25 Jan 2023 20:07:59 GMT  
		Size: 58.8 MB (58820449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc94f88e45a206acf5cceb95f3807abed6ade9d44569ae8ec842e8cdadaa722`  
		Last Modified: Wed, 25 Jan 2023 20:07:55 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:temurin-19-boot-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:59f366fee44e1ee1c632cc79b75747968bfb1f1002f6cd143e1792596abe46de
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.7 MB (314708568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87c1eb373ccf93b6a7a6d4d173e26e1de4a0ffd44a9d47c674baca1fadfcedc4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:24 GMT
ADD file:9e185c2d9ca8a231a39ee2b1761fcdff75065252d25a65a207acb7a319c1cf23 in / 
# Wed, 11 Jan 2023 02:57:25 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:38:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 25 Jan 2023 20:06:09 GMT
COPY dir:9a6a873ca11063f6f04e7f088397a1fce771e2b1aa8590b72eb07158cfac883f in /opt/java/openjdk 
# Wed, 25 Jan 2023 20:06:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Jan 2023 20:06:13 GMT
ENV BOOT_VERSION=2.8.3
# Wed, 25 Jan 2023 20:06:13 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Wed, 25 Jan 2023 20:06:13 GMT
WORKDIR /tmp
# Wed, 25 Jan 2023 20:06:18 GMT
RUN apt-get update && apt-get install -y make wget && rm -rf /var/lib/apt/lists/* && mkdir -p $BOOT_INSTALL && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh && echo "Comparing installer checksum..." && sha256sum boot.sh && echo "0ccd697f2027e7e1cd3be3d62721057cbc841585740d0aaa9fbb485d7b1f17c3 *boot.sh" | sha256sum -c - && mv boot.sh $BOOT_INSTALL/boot && chmod 0755 $BOOT_INSTALL/boot && apt-get purge -y --auto-remove wget
# Wed, 25 Jan 2023 20:06:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 25 Jan 2023 20:06:18 GMT
ENV BOOT_AS_ROOT=yes
# Wed, 25 Jan 2023 20:06:34 GMT
RUN boot
# Wed, 25 Jan 2023 20:06:35 GMT
COPY file:0282db266eb050a3ad3609149efe2188243cb9f95c0b3e48a312ddef6c6bea02 in /usr/local/bin/entrypoint 
# Wed, 25 Jan 2023 20:06:35 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 25 Jan 2023 20:06:35 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c345c9e441f5f49235768af74b8ab37743652d38958afaa000edd56d7b2f0540`  
		Last Modified: Wed, 11 Jan 2023 03:00:56 GMT  
		Size: 53.7 MB (53681859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb4495c3280f0c24cfdcbe41be056cc37ccfd0e65b21aa6f0680e4df849f415`  
		Last Modified: Wed, 25 Jan 2023 20:16:27 GMT  
		Size: 199.9 MB (199855198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297d4b64df5a288176cb42517dff4714a9201b296332ba7ca749c8bed403fac2`  
		Last Modified: Wed, 25 Jan 2023 20:16:15 GMT  
		Size: 2.4 MB (2350620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f84369c770580997200e87773aed0fbb0b73202ed1dfe5c91933abaafa6440e7`  
		Last Modified: Wed, 25 Jan 2023 20:16:17 GMT  
		Size: 58.8 MB (58820491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa387dac54f5568746f29c64ccaefdd213e20a9f4e98fa8563242fed6face73`  
		Last Modified: Wed, 25 Jan 2023 20:16:14 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
