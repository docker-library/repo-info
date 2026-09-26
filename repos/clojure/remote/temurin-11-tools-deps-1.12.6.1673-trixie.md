## `clojure:temurin-11-tools-deps-1.12.6.1673-trixie`

```console
$ docker pull clojure@sha256:5bc4db622845a4cdc162f975270f5308f3c95ca9a68e941879ee417b419c8b71
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:83c44ce830d668a3c344d491597dd193c281b90291a3703fdc1e8acf4ec6f76b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277811162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:721377b8c7793f6398d91d35c1722fdf21bb4b0f2f832c8360fb5d4305e2a8dd`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 23:20:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:20:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:20:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:20:44 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:20:44 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:21:02 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:21:03 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:21:03 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:209cc164853de884c23bc675fe7f8422ebb36029109d90d4c65090f54ea43f54`  
		Last Modified: Fri, 25 Sep 2026 23:21:27 GMT  
		Size: 145.9 MB (145864131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01d31a6f48ee3f978f50dd20548b7181aea6123f6a76d1f8b234ed2f0fad427e`  
		Last Modified: Fri, 25 Sep 2026 23:21:25 GMT  
		Size: 82.6 MB (82566685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86dd736cf0835050e59f717dcac833f62b1afa5e02ed37dc0d26819c77e3c9bd`  
		Last Modified: Fri, 25 Sep 2026 23:21:22 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:8e12efeb309ca7d7f464f25f9fb06e245db5dd8693dd4ad4d2c056feb42936d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7512674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a113dd8e35981ad3b72b45ba838a578e9f1e83302a81b31c01be1be47714971`

```dockerfile
```

-	Layers:
	-	`sha256:b2eb06c3343edfcd281743a48dd896a6b18461ef05a0f62012b0e4ce354e05da`  
		Last Modified: Fri, 25 Sep 2026 23:21:23 GMT  
		Size: 7.5 MB (7498336 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71c5109d603371633b4c6c89fe6913b1de7d591a11bf4840dd624b568d1692a7`  
		Last Modified: Fri, 25 Sep 2026 23:21:22 GMT  
		Size: 14.3 KB (14338 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1f135645373a343b15db92c04d4411a502959477eb05511da3ddc630f0972ea3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.7 MB (274715543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c2a31456265bd31015cc91e4fb8460f02529429e365c587c671d89b2a1df3fc`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 23:18:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:18:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:18:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:18:04 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:18:04 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:18:22 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:18:22 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:18:22 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16255cfe82caf13031880aa1a1142dff688fee5b58ed15ebaf3deccaefa90c21`  
		Last Modified: Fri, 25 Sep 2026 23:18:45 GMT  
		Size: 142.6 MB (142576499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af4e6145f81f47fb1b71bb3e4fe16af830a0ec801d4cb99413202c3170720ed3`  
		Last Modified: Fri, 25 Sep 2026 23:18:44 GMT  
		Size: 82.4 MB (82389562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:213d93d4622cdfd0101752b1030e6baa3f3143b5173b7ee5c60c305fc7671e20`  
		Last Modified: Fri, 25 Sep 2026 23:18:41 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:4d1ac530085cc4b172346fbba5cd25eeaf4e4858abb8a26bc2f333b50dbb5fad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7519803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44e7d74fe260bedbe371e4a068d6600cac1e960694aca3396aeb0b9a7f2f5790`

```dockerfile
```

-	Layers:
	-	`sha256:0c9a5f393146326fa45babcf621336a4b7efd04702caa7f579aa9b44fbfdf752`  
		Last Modified: Fri, 25 Sep 2026 23:18:41 GMT  
		Size: 7.5 MB (7505347 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55775d31f4de368a8cef2138af3a3d12d7f4121d53b0dd14e4b90ddec4bcf893`  
		Last Modified: Fri, 25 Sep 2026 23:18:40 GMT  
		Size: 14.5 KB (14456 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:516a9fda55606ce350efc9fefa2e41076675a3aff466de91fe51a9f063be20d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.3 MB (274276521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ca5d830b27d21242d49dbe66aaaeca615bb829970ca158a28f576e4ece67bfa`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 07:42:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 07:42:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 07:42:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 07:42:03 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 07:42:03 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 07:49:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 07:49:40 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 07:49:40 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:fe57b34d87b4c3538e7b00694a21e5bd450391029c5c22b4da16fbe872c78d51`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 53.2 MB (53195075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fe82795a346148567fa5ea4d5a82702752cd07a4d8f174243f4ec32186837bb`  
		Last Modified: Sat, 19 Sep 2026 07:46:25 GMT  
		Size: 133.1 MB (133090122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b4736b9b02d3d6ee3e55089fedfeda704fc08b75926f171007946f056a5c28e`  
		Last Modified: Sat, 19 Sep 2026 07:50:19 GMT  
		Size: 88.0 MB (87990679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b47e8dcf0bbdc7ddf6b28da291833ec6e69f3c18374bb2140e60100b2b81fca0`  
		Last Modified: Sat, 19 Sep 2026 07:50:16 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:aa116e27c5afddd9fb434892577d32ca058e8fcc6dd4d59afadad4dab24181ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7516519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e49711189447d620a354ac69d817115e7dbb491f69b704e9c710600713358fde`

```dockerfile
```

-	Layers:
	-	`sha256:eb03f76c9718d286a7e20ad7dca422ee28c009d0eef42e7e3fa000f6e9ce3e4d`  
		Last Modified: Sat, 19 Sep 2026 07:50:17 GMT  
		Size: 7.5 MB (7502132 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9fa6ce90b32e54863cb613f2735f0972178c9993efc8ee464de62ce6e50f7475`  
		Last Modified: Sat, 19 Sep 2026 07:50:16 GMT  
		Size: 14.4 KB (14387 bytes)  
		MIME: application/vnd.in-toto+json
