## `clojure:temurin-8-tools-deps-1.12.6.1673-trixie-slim`

```console
$ docker pull clojure@sha256:a37e9e30ce4f4d71ee77295d91cc3b8874e24901a3f5cc3407f961ad1b01b5a6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:ed26fe334487cecd0bd5966eab00ca2b76e94d21125b20c8822baa5aebb51246
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.9 MB (156885493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c225a543bb0febfa5286b0e8308ade4e13c1dfedc85e0f850dc555cad8f7961c`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:00:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:00:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:00:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:00:59 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:00:59 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:01:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:01:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:01:18 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2652f6a1a44c3afc001c3913969ca643bb9a630d158cad89accd7ba308fe076`  
		Last Modified: Fri, 04 Sep 2026 00:01:36 GMT  
		Size: 55.2 MB (55164381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0600bee1bf2b4c6b94379284c170feb07eb2a8efe8eac59f4d24b8a33e76978f`  
		Last Modified: Fri, 04 Sep 2026 00:01:36 GMT  
		Size: 71.9 MB (71927809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8337b82e826bfaf3c1f75917553cbf7c565d9cb896de8455efa49cefed16d581`  
		Last Modified: Fri, 04 Sep 2026 00:01:33 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4f2c7a3ba9484784620829dc0ee02fcc8e9807b35a471ca7e1c274c84ccf6333
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5392304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01c8ccb34b267a83cda47e6fffd9b3f4aeabbeaed5e2ae854a860dcde6dafa2c`

```dockerfile
```

-	Layers:
	-	`sha256:bebed0ee4278763a5090db074adaffe2dc61c13770f67f786f7ee4147a567680`  
		Last Modified: Fri, 04 Sep 2026 00:01:33 GMT  
		Size: 5.4 MB (5377922 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f4f4a3d83e693ec5bbd7c93b5395eee99c3b647078b5bd3e531b3d7209615c8`  
		Last Modified: Fri, 04 Sep 2026 00:01:33 GMT  
		Size: 14.4 KB (14382 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:11f912ad34556ca5c9ef3328066fddaf393daa08f607d20500e005680ba6b2c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.6 MB (156552869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b4b77f1b01da2e2954e04bddc120f8e248929ab7d614a5b37eeadcba1ae6f89`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:05:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:05:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:05:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:05:24 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:05:24 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:05:41 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:05:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:05:41 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbff479b967ca4c120ba5e0c0b5eed69270f02c68c62432ba341e74108df2a70`  
		Last Modified: Fri, 04 Sep 2026 00:05:59 GMT  
		Size: 54.3 MB (54262763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5a1793f2d8e28ef2cbe348b220573cdfac0e55bb0fc4d25c3c764b50822e026`  
		Last Modified: Fri, 04 Sep 2026 00:05:59 GMT  
		Size: 72.1 MB (72129880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27577ee7a56543410ab28722d6f4097fbeb72bcb6adb803992c79438420a44a9`  
		Last Modified: Fri, 04 Sep 2026 00:05:56 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:34b71d169d6d44937117cd3d64c4f6e5d9f783da62774a007717810efe7c77f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5398883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84842fb86074b5f1a5eb5326941303a7069d787c5966f68e09ea039a964e3da2`

```dockerfile
```

-	Layers:
	-	`sha256:583bbe6a48db8759c6c80cea4dde67f4cb12ebe6b123caf520a0af6efb5a4d7f`  
		Last Modified: Fri, 04 Sep 2026 00:05:57 GMT  
		Size: 5.4 MB (5384383 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:572c80b2b60670c1fe2d024f80a81e8f31cc95bbd9381639219333ea878e096a`  
		Last Modified: Fri, 04 Sep 2026 00:05:56 GMT  
		Size: 14.5 KB (14500 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:88a0cc3a73037f76dd43d9ce7848af0e47dd4d3dcc5721ded27ad762b2034ca2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.9 MB (163862526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40d1db86d292a65cdd67228f2c27fec3e2e81a43be5de7fba1b659cc00f5c51c`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:07:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:07:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:07:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:07:13 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:07:13 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:08:35 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:08:35 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:08:35 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0453cc3a6b1885278dd1f96ec6fc66af9ff6c8d65f1586e3e0176be25e4fe71d`  
		Last Modified: Fri, 04 Sep 2026 00:09:25 GMT  
		Size: 52.7 MB (52670663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de67950a8ab369017a9fff02f71a75294d7da5bf7f4fb5509ea5905a58de17ff`  
		Last Modified: Fri, 04 Sep 2026 00:09:26 GMT  
		Size: 77.6 MB (77575755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18073a4ca93bc70d0c92c1030b126d02330d36acc8888d3ebb95022de420ad28`  
		Last Modified: Fri, 04 Sep 2026 00:09:22 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ceccb1c3bc07b72a9c67f637ffc886b74dea171a686f3a1c2abb1c1bf171dbb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5397317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a576ecd7162004a3a104819bc4431d578612b3c1246464ef4641dfa0a15f0089`

```dockerfile
```

-	Layers:
	-	`sha256:8fd56c3198e610466e025d123a565cbdcbc4a21594961d57a858ba41fb2a420c`  
		Last Modified: Fri, 04 Sep 2026 00:09:23 GMT  
		Size: 5.4 MB (5382888 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12de06b9cbecd3877f3bc8a80a9154a3132c37a49f37774178406b4e19d0a64f`  
		Last Modified: Fri, 04 Sep 2026 00:09:22 GMT  
		Size: 14.4 KB (14429 bytes)  
		MIME: application/vnd.in-toto+json
