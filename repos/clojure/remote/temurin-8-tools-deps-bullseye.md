## `clojure:temurin-8-tools-deps-bullseye`

```console
$ docker pull clojure@sha256:20674eb7c346865543cc382a81f7e0cab4fd1fc139ba823f36ad1880e6287be8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `clojure:temurin-8-tools-deps-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:2bd7d4ff60dd9c859f43acf022b4b7b1a2f4c360900fa0259cc96dc128eb223e
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.5 MB (181519420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f6a64a7a057ba5df3275c236b979c3c55594470d6542d5db7c8e86538e9ef74`
-	Default Command: `["clj"]`

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
# Wed, 25 Jan 2023 19:52:28 GMT
ENV CLOJURE_VERSION=1.11.1.1208
# Wed, 25 Jan 2023 19:52:28 GMT
WORKDIR /tmp
# Wed, 25 Jan 2023 19:52:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap wget && rm -rf /var/lib/apt/lists/* && wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4a3b1200c4d633202648dc3db6ed0a1311e75cc4baeee8fce32208c1eaa07537 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl wget
# Wed, 25 Jan 2023 19:52:49 GMT
COPY file:b0aef3ea203de7b5c2ea645debf58c8231445a2e3070b72749b54614f4a89b82 in /usr/local/bin/rlwrap 
# Wed, 25 Jan 2023 19:52:50 GMT
CMD ["clj"]
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
	-	`sha256:980debd0840c86fadaa8b684fa89e21454e8d8d453cdf3523b6fcf852a60b5e3`  
		Last Modified: Wed, 25 Jan 2023 20:05:46 GMT  
		Size: 71.9 MB (71858044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6914296d070258d234031de592ea668ea89e242715df5893f656aff1fb9fa408`  
		Last Modified: Wed, 25 Jan 2023 20:05:38 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:temurin-8-tools-deps-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:fafce66a7c184affb379ef7957663c08be67209878bf5755321be46ae72aacd8
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.4 MB (179389528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bb98d254eee0ff2fdb8bd338cf1d57896770518b08d45b08dfe5ce3e5f791d2`
-	Default Command: `["clj"]`

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
# Wed, 25 Jan 2023 20:03:46 GMT
ENV CLOJURE_VERSION=1.11.1.1208
# Wed, 25 Jan 2023 20:03:46 GMT
WORKDIR /tmp
# Wed, 25 Jan 2023 20:04:02 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap wget && rm -rf /var/lib/apt/lists/* && wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4a3b1200c4d633202648dc3db6ed0a1311e75cc4baeee8fce32208c1eaa07537 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl wget
# Wed, 25 Jan 2023 20:04:02 GMT
COPY file:b0aef3ea203de7b5c2ea645debf58c8231445a2e3070b72749b54614f4a89b82 in /usr/local/bin/rlwrap 
# Wed, 25 Jan 2023 20:04:03 GMT
CMD ["clj"]
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
	-	`sha256:208bff16cbba6b38dfaa603d5b8585797ee16d4bfc669ba59715ee63e908da98`  
		Last Modified: Wed, 25 Jan 2023 20:14:24 GMT  
		Size: 72.0 MB (71979148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:956764061ff7009beffbdf2db3f0ea705654f98d1b32cf747bc38426d174a418`  
		Last Modified: Wed, 25 Jan 2023 20:14:18 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
