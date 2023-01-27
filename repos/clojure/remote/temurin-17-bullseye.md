## `clojure:temurin-17-bullseye`

```console
$ docker pull clojure@sha256:01d9845d5d56ace958e482a88c457ddf87e46dc3baf25b7163737def228a72b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `clojure:temurin-17-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:70b9213a4ae78fe4de17177b5fdf134fbf46782793336993a2166e628fc37730
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.3 MB (319322551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c89be606d42e511ff70ec89d7aa75ba0d16b93a46db3dd2203ac82b0a9d512f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:29 GMT
ADD file:917750a82b29f8f7f88a121017bd9dfeb0fbcc8f0697a009f08b6b58246eff4b in / 
# Wed, 11 Jan 2023 02:34:30 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:18:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 25 Jan 2023 00:45:22 GMT
COPY dir:bb223240e99e5b7e66eb621e33f54e49ced87035f56dd975e567c739be4bfe96 in /opt/java/openjdk 
# Wed, 25 Jan 2023 00:45:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Jan 2023 00:48:50 GMT
ENV CLOJURE_VERSION=1.11.1.1208
# Wed, 25 Jan 2023 00:48:51 GMT
WORKDIR /tmp
# Wed, 25 Jan 2023 00:49:08 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap wget && rm -rf /var/lib/apt/lists/* && wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4a3b1200c4d633202648dc3db6ed0a1311e75cc4baeee8fce32208c1eaa07537 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl wget
# Wed, 25 Jan 2023 00:49:08 GMT
COPY file:b0aef3ea203de7b5c2ea645debf58c8231445a2e3070b72749b54614f4a89b82 in /usr/local/bin/rlwrap 
# Wed, 25 Jan 2023 00:49:08 GMT
COPY file:137b40904568e30898cd031ef34f77e7f132846ba4eec91d04ae4b93dddfbb8d in /usr/local/bin/entrypoint 
# Wed, 25 Jan 2023 00:49:08 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 25 Jan 2023 00:49:08 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:bbeef03cda1f5d6c9e20c310c1c91382a6b0a1a2501c3436b28152f13896f082`  
		Last Modified: Wed, 11 Jan 2023 02:38:42 GMT  
		Size: 55.0 MB (55025206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147288dc8989fb24ee233733fb7ef84c2cf5d7be2f0863fe9ea1e153e52a350f`  
		Last Modified: Wed, 25 Jan 2023 00:57:58 GMT  
		Size: 192.4 MB (192438164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea27bab58af737d7f15321e929da41aa312ebf5960d8d7e89cd08b7fa67f753`  
		Last Modified: Wed, 25 Jan 2023 01:00:43 GMT  
		Size: 71.9 MB (71858164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ec119728120183842cfe525503969ffdc11b6723e15b2ab92ae1382872f498`  
		Last Modified: Wed, 25 Jan 2023 01:00:34 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:506923c3df97f5d178cf9f5b6f8ef7cfac10698d44697682bbe7f200e4124c9a`  
		Last Modified: Wed, 25 Jan 2023 01:00:34 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:temurin-17-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:da1a3ee26763c7daae5d426ade93208adfd9e9f99bdebd6afe2f732ea7904496
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.9 MB (316922634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:163019c07b69037c360b704d5f1cd78ed357c7b98286c850027f282411a6a94d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:24 GMT
ADD file:9e185c2d9ca8a231a39ee2b1761fcdff75065252d25a65a207acb7a319c1cf23 in / 
# Wed, 11 Jan 2023 02:57:25 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:38:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Jan 2023 21:03:31 GMT
COPY dir:6138ae24df63cd8b909473221414960a006ae73d2e2f1e88f48051984c7a0e00 in /opt/java/openjdk 
# Tue, 24 Jan 2023 21:03:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2023 21:06:18 GMT
ENV CLOJURE_VERSION=1.11.1.1208
# Tue, 24 Jan 2023 21:06:18 GMT
WORKDIR /tmp
# Tue, 24 Jan 2023 21:06:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap wget && rm -rf /var/lib/apt/lists/* && wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4a3b1200c4d633202648dc3db6ed0a1311e75cc4baeee8fce32208c1eaa07537 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl wget
# Tue, 24 Jan 2023 21:06:32 GMT
COPY file:b0aef3ea203de7b5c2ea645debf58c8231445a2e3070b72749b54614f4a89b82 in /usr/local/bin/rlwrap 
# Tue, 24 Jan 2023 21:06:32 GMT
COPY file:137b40904568e30898cd031ef34f77e7f132846ba4eec91d04ae4b93dddfbb8d in /usr/local/bin/entrypoint 
# Tue, 24 Jan 2023 21:06:32 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Jan 2023 21:06:32 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c345c9e441f5f49235768af74b8ab37743652d38958afaa000edd56d7b2f0540`  
		Last Modified: Wed, 11 Jan 2023 03:00:56 GMT  
		Size: 53.7 MB (53681859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09dcb437b869e84fa1314bf4f1e61a77274341567bbec0caf4e4ea2237b3e69`  
		Last Modified: Tue, 24 Jan 2023 21:13:41 GMT  
		Size: 191.3 MB (191260425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b54d81f526a3e67cb9afb1452b916cd023f9648cee52d566d14efdb1a948bd`  
		Last Modified: Tue, 24 Jan 2023 21:15:48 GMT  
		Size: 72.0 MB (71979335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647d6b73c919703fc4b3f9beb19aae616b1efc6bb6a02c244ed10dd51d96197a`  
		Last Modified: Tue, 24 Jan 2023 21:15:41 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0307f217aa90e6f1d2e922431696260f93ca792217b4364723d03716d034794a`  
		Last Modified: Tue, 24 Jan 2023 21:15:41 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
