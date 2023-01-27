## `clojure:temurin-19-bullseye`

```console
$ docker pull clojure@sha256:22d67f846d6bcd82a19069a130926b72eb8fec38312326037a8093df7ac97fe6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `clojure:temurin-19-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:0a5605f354b8ab98c8cb2ea88ae2a4fdbe99f7e43f5627083bbce2b1a4466027
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.0 MB (327997426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5a11c634ff241a7cb18e047e4916ed135212b782b3a29530a8f7a73afa32a5a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

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
# Wed, 25 Jan 2023 19:59:35 GMT
ENV CLOJURE_VERSION=1.11.1.1208
# Wed, 25 Jan 2023 19:59:35 GMT
WORKDIR /tmp
# Wed, 25 Jan 2023 19:59:52 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap wget && rm -rf /var/lib/apt/lists/* && wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4a3b1200c4d633202648dc3db6ed0a1311e75cc4baeee8fce32208c1eaa07537 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl wget
# Wed, 25 Jan 2023 19:59:52 GMT
COPY file:b0aef3ea203de7b5c2ea645debf58c8231445a2e3070b72749b54614f4a89b82 in /usr/local/bin/rlwrap 
# Wed, 25 Jan 2023 19:59:52 GMT
COPY file:137b40904568e30898cd031ef34f77e7f132846ba4eec91d04ae4b93dddfbb8d in /usr/local/bin/entrypoint 
# Wed, 25 Jan 2023 19:59:52 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 25 Jan 2023 19:59:53 GMT
CMD ["-M" "--repl"]
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
	-	`sha256:7ccfc947e095b4fe67ac6dafb687a818de1dc858353b4f58b17816b2a4b141e8`  
		Last Modified: Wed, 25 Jan 2023 20:10:28 GMT  
		Size: 71.9 MB (71858207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed525aea6c36f3615a2b4dad6797527cdf7e0ec3eb6143a704ce5b1a7d70e805`  
		Last Modified: Wed, 25 Jan 2023 20:10:20 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a40ab99f96de6387007fd091129554c48459919aa44db8346777102fe83bdce4`  
		Last Modified: Wed, 25 Jan 2023 20:10:20 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:temurin-19-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:798a43d1d9a920a8f7518e4ee4f46f7e212c44360618d4b13df652af766e0b13
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.5 MB (325517119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9385dbf5bd2c1843b0c8a752e4619ab1816d5d842897a20515b8bc444c4702f8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

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
# Wed, 25 Jan 2023 20:09:17 GMT
ENV CLOJURE_VERSION=1.11.1.1208
# Wed, 25 Jan 2023 20:09:17 GMT
WORKDIR /tmp
# Wed, 25 Jan 2023 20:09:30 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap wget && rm -rf /var/lib/apt/lists/* && wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4a3b1200c4d633202648dc3db6ed0a1311e75cc4baeee8fce32208c1eaa07537 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl wget
# Wed, 25 Jan 2023 20:09:31 GMT
COPY file:b0aef3ea203de7b5c2ea645debf58c8231445a2e3070b72749b54614f4a89b82 in /usr/local/bin/rlwrap 
# Wed, 25 Jan 2023 20:09:31 GMT
COPY file:137b40904568e30898cd031ef34f77e7f132846ba4eec91d04ae4b93dddfbb8d in /usr/local/bin/entrypoint 
# Wed, 25 Jan 2023 20:09:31 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 25 Jan 2023 20:09:31 GMT
CMD ["-M" "--repl"]
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
	-	`sha256:ce5228990ea0ce96e02a4672d3bc6498a363bc507cfde88dcde2a584b238ab8b`  
		Last Modified: Wed, 25 Jan 2023 20:18:12 GMT  
		Size: 72.0 MB (71979047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52331155191b40aa586e49030f7a8ad3992ca685a9b1675f93f00b636999be8`  
		Last Modified: Wed, 25 Jan 2023 20:18:05 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c65a6e61b1adf7042e8977cbc39dac9a7d9eec5b8aea1998c1ffb3a0a1de3e`  
		Last Modified: Wed, 25 Jan 2023 20:18:05 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
