## `clojure:temurin-8-tools-deps-1.12.5.1654-bookworm`

```console
$ docker pull clojure@sha256:2fa1634a7de92aa9a45c98ac1aefff191a0f9ef979d8fd6020b74ecf07254735
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-1.12.5.1654-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:bc234107c93a02bfb69d1da85545fedd99951e105b6213dbbbea7c8dd087b542
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.8 MB (181826779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71f4d821d7e30de4b834b105b45df74afe749aef8926da6203b4a2ce84af84ca`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:15:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:15:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:15:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:15:01 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:15:01 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:15:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:15:15 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:15:15 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:117bde57dbd24c512dbdb6b78eb8f585b7105c20ae32a5a7826714d8e7681cbf`  
		Last Modified: Tue, 14 Jul 2026 02:15:33 GMT  
		Size: 55.2 MB (55198706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:274b4aa83ccd2a52afdb2d2f31f2766b171916e033a0479d4cb6289f5f32e04e`  
		Last Modified: Tue, 14 Jul 2026 02:15:33 GMT  
		Size: 78.1 MB (78130026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76241efd9d3603ba32e30e94750800246f8a7d0f07b0832a403b56f2c22957c9`  
		Last Modified: Tue, 14 Jul 2026 02:15:30 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.5.1654-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:690e2b765d0edac13bbf8bfc84af56186738a4c3346169bd6ac30824e56a5288
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7510878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0d96cb1335af2c997bd4a4db0b8bca3f9e0be78296c53aa2f738469b96120f8`

```dockerfile
```

-	Layers:
	-	`sha256:b8a0e8fef6d2b9eb3956f4f107e03f4f6df026875cd3f02b0b7c6b23486decf3`  
		Last Modified: Tue, 14 Jul 2026 02:15:31 GMT  
		Size: 7.5 MB (7496530 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d25816e2192eb0adde3e9a0a2095a2e563c113630635d518691b7d4c7b15e7c5`  
		Last Modified: Tue, 14 Jul 2026 02:15:30 GMT  
		Size: 14.3 KB (14348 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.5.1654-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:3eefbdf516ff773fff782f21b4b6262cebc988ac08161337b0affb73a835edf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.8 MB (180778979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a85bfe22e41ab696c8d429571a65ff31f3b405d55531bfabb9975e4083427d72`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:22:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:22:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:22:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:22:19 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:22:19 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:22:35 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:22:35 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:22:35 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee3655f81342e394b24bae64c76287b745d9ab7032f79f20f2ae51d9055e6d95`  
		Last Modified: Tue, 14 Jul 2026 02:22:55 GMT  
		Size: 54.3 MB (54272922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19f9d8c4a0d28a5bb5bf7bceab6bf9ca02be368ae775de7e503fafdcb3be39e1`  
		Last Modified: Tue, 14 Jul 2026 02:22:55 GMT  
		Size: 78.1 MB (78121723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d3dd8c066d95a43ff24b40cced3a6868bad6a297a48ba42b726bb07bca614d6`  
		Last Modified: Tue, 14 Jul 2026 02:22:52 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.5.1654-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:0754158ac4d96be102ea42627c291f7bac04dcb96486c90bd2a0acc1a36c0780
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7517459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76aa09084a9f61b6ccf497e9e64a6bc88778cb495e4f13f3d10f0765b5e47400`

```dockerfile
```

-	Layers:
	-	`sha256:605cfd418b07637308193938960106b5e46056e1dd7c39f726dbbffbd611dcb6`  
		Last Modified: Tue, 14 Jul 2026 02:22:53 GMT  
		Size: 7.5 MB (7502993 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec14a680c073b6a4302a3eb6d404f6663d4884aa526bbf6cdcc2767b2e4662a2`  
		Last Modified: Tue, 14 Jul 2026 02:22:52 GMT  
		Size: 14.5 KB (14466 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.5.1654-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:2894af7495a60ef62bccec3786068068baa90b9917e17aa6a1905024a4400edd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.0 MB (188971489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1a363bf9847f5a57ac2b97439030e90c703ea511aed54700e8402f0228e47c5`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 08:05:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 08:05:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 08:05:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 08:05:29 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 08:05:29 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 08:06:22 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 08:06:23 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 08:06:23 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:380d3eabd945505d4db48078d6d4aeda6a011b9da5c9767fd7ea92fdb78f37f3`  
		Last Modified: Tue, 14 Jul 2026 00:12:57 GMT  
		Size: 52.3 MB (52341834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8d6945ab965d6fc4c412669e160475b3a250f0b2eb2ab15b2e15f9aa0b8e5b7`  
		Last Modified: Tue, 14 Jul 2026 08:07:03 GMT  
		Size: 52.7 MB (52669123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1edef0fa8117974063bdfa9ef0ed9e85c51a0a2552456d735011610d797f1608`  
		Last Modified: Tue, 14 Jul 2026 08:07:03 GMT  
		Size: 84.0 MB (83959888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a26c0a5a6c44fca4f4baddfb3fb7c041641de00996d85da1ce8998e5675e4529`  
		Last Modified: Tue, 14 Jul 2026 08:07:00 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.5.1654-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:14137ec1b345507449a6cb9db91ab5c9b69bc8a24e593c762e92a299921d7efe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7516737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:099424f37ed4bd17141b6afcfc5dea038e96be5102452e4e699d23f60aa26fe9`

```dockerfile
```

-	Layers:
	-	`sha256:57e6291f4d040807c1ac32c0687c18e79d38dd4c9e22f8d0cc2c823936b10180`  
		Last Modified: Tue, 14 Jul 2026 08:07:01 GMT  
		Size: 7.5 MB (7502341 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7221463b7d451d0082848f584a01f3334b698e1321418489483086e4a18a64d8`  
		Last Modified: Tue, 14 Jul 2026 08:07:00 GMT  
		Size: 14.4 KB (14396 bytes)  
		MIME: application/vnd.in-toto+json
