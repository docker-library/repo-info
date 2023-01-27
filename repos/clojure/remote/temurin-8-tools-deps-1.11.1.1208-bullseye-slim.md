## `clojure:temurin-8-tools-deps-1.11.1.1208-bullseye-slim`

```console
$ docker pull clojure@sha256:bd803d96bc2cb2db2ed06c2bfe74541932ca018ce423929eed260e20863b7ac3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `clojure:temurin-8-tools-deps-1.11.1.1208-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:afcc8c220db2776f67c1bb9742da69057a4c1ca792b936706b948bdf33143006
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.5 MB (147508224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05e577004e19251f5b8951ea75a182e07a95da3a82f269cdc89172f299833d12`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:44 GMT
ADD file:e2398d0bf516084b2b37ba1bb76b86d56e66999831df692461679fbd6a5d8eb6 in / 
# Wed, 11 Jan 2023 02:34:44 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:20:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 25 Jan 2023 19:48:59 GMT
COPY dir:bbb84183d7ea38d81d8401f01e29d08935ee4c8bf6f90c6527579a1554c3bde1 in /opt/java/openjdk 
# Wed, 25 Jan 2023 19:49:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Jan 2023 19:52:56 GMT
ENV CLOJURE_VERSION=1.11.1.1208
# Wed, 25 Jan 2023 19:52:56 GMT
WORKDIR /tmp
# Wed, 25 Jan 2023 19:53:14 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap wget && rm -rf /var/lib/apt/lists/* && wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4a3b1200c4d633202648dc3db6ed0a1311e75cc4baeee8fce32208c1eaa07537 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl wget
# Wed, 25 Jan 2023 19:53:14 GMT
COPY file:b0aef3ea203de7b5c2ea645debf58c8231445a2e3070b72749b54614f4a89b82 in /usr/local/bin/rlwrap 
# Wed, 25 Jan 2023 19:53:14 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:8740c948ffd4c816ea7ca963f99ca52f4788baa23f228da9581a9ea2edd3fcd7`  
		Last Modified: Wed, 11 Jan 2023 02:39:07 GMT  
		Size: 31.4 MB (31396972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fe23a8240df8d0be33f210436daef1ef2fffc40bdb4ceb3e88d4adafd92406f`  
		Last Modified: Wed, 25 Jan 2023 20:03:54 GMT  
		Size: 54.6 MB (54635552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16bcc55a8a1aa7eab1793162d29da217b092b1cd972634a53e7b17472d8e3ba2`  
		Last Modified: Wed, 25 Jan 2023 20:06:05 GMT  
		Size: 61.5 MB (61475083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77999e51daeeb79db64f534b0d80f7a51449571c16b46f11da32d1b2e13b5204`  
		Last Modified: Wed, 25 Jan 2023 20:05:57 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:temurin-8-tools-deps-1.11.1.1208-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:90a7024c693286ae5413e52633f557a8cccbb79883fb413325d6aaae5312a195
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.4 MB (145369722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2bbce7eb52aad55284d9f29580af36a9dcc79fff8169a8ba555fd9211c346b7`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:34 GMT
ADD file:92cf2c9ffaaea1a6bc1baa7b681303b1029dfd6ddbfef1792be8b21aaf09235c in / 
# Wed, 11 Jan 2023 02:57:35 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:38:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 25 Jan 2023 20:00:58 GMT
COPY dir:b6d7e5613532d986930216de9e0fece0632e82564ce7a6a98baf63b4115f840d in /opt/java/openjdk 
# Wed, 25 Jan 2023 20:01:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Jan 2023 20:04:06 GMT
ENV CLOJURE_VERSION=1.11.1.1208
# Wed, 25 Jan 2023 20:04:06 GMT
WORKDIR /tmp
# Wed, 25 Jan 2023 20:04:20 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap wget && rm -rf /var/lib/apt/lists/* && wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4a3b1200c4d633202648dc3db6ed0a1311e75cc4baeee8fce32208c1eaa07537 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl wget
# Wed, 25 Jan 2023 20:04:20 GMT
COPY file:b0aef3ea203de7b5c2ea645debf58c8231445a2e3070b72749b54614f4a89b82 in /usr/local/bin/rlwrap 
# Wed, 25 Jan 2023 20:04:21 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:934ce60d1040c5d4922bae5879321a398777457b7514de02ef69ece49e6aa907`  
		Last Modified: Wed, 11 Jan 2023 03:01:19 GMT  
		Size: 30.0 MB (30044814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:007684b573bff2526d1b392ce3c4076e52d5a400dc5f5c38e5a8aa784c21bb07`  
		Last Modified: Wed, 25 Jan 2023 20:13:02 GMT  
		Size: 53.7 MB (53727884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ede6990db815cfcde98e42c72668fc9b2f77484537ca314b4ba01193371a437`  
		Last Modified: Wed, 25 Jan 2023 20:14:41 GMT  
		Size: 61.6 MB (61596406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35151011f11a604e099590c662c5627bab5e73f5dc70b9ff4fa8d4540c8e37b8`  
		Last Modified: Wed, 25 Jan 2023 20:14:35 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
