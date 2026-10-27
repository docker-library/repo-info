## `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm`

```console
$ docker pull clojure@sha256:7597cdcb8331b9df1f9aaea9b87ed973f93959668fcf34980a49717edd35c002
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:0b07925e145f628b12b15979106b62fc608566f9c31935b383f5b74660e22bff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.6 MB (284637435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dba994a59adb46f77f066817df177293cae60741fb02d8701e076bfb0d365e78`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Tue, 27 Oct 2026 00:50:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:50:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:50:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:50:08 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:50:08 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:50:23 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:50:23 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:50:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:50:23 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:50:23 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a32600959888c249211cc63af225ef0d81367f7f0168d7b3f62a81207d1e6d5e`  
		Last Modified: Tue, 27 Oct 2026 00:50:46 GMT  
		Size: 158.1 MB (158117507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fd4af733a574b79cb4c29b1bf26c20d39410f6054af1023f91c327c8138538e`  
		Last Modified: Tue, 27 Oct 2026 00:50:45 GMT  
		Size: 78.0 MB (77996800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:400a5a0c68c193b1b66faee16a46c660a3866803924cf92969972ec1ae500f0d`  
		Last Modified: Tue, 27 Oct 2026 00:50:41 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b85a6857d2decfe6731231a44a09b34dc717d2751eb0c7abe199196bea4497c`  
		Last Modified: Tue, 27 Oct 2026 00:50:41 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:56a720e180934b6c57eb7314374d8856130a925d0fa8f3c2511933eb967b00f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7397721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:769f4a789872e77f26c5962ddd90495f9b09e10ff284ab0280474c38d976815a`

```dockerfile
```

-	Layers:
	-	`sha256:b40d995847408ce5a3ff8d2d4e0950e99ed3999008dc8d7d74c380edda44d0ed`  
		Last Modified: Tue, 27 Oct 2026 00:50:42 GMT  
		Size: 7.4 MB (7381105 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75c26cf89c298e0f8934eff56f01b93c2b066847e1d6e0947fa654540c784316`  
		Last Modified: Tue, 27 Oct 2026 00:50:41 GMT  
		Size: 16.6 KB (16616 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5e1c69997f6643a08acaf0297946bccfdc66c5058eeb017a912977f3e9489c89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.8 MB (282797364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c799c495440e91d2390a5f554686450c39492d12ea2176dcd07fbfb181177e4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Tue, 27 Oct 2026 00:49:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:49:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:49:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:49:58 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:49:58 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:50:13 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:50:13 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:50:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:50:13 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:50:13 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a97cb698362f4b23d085b953f3106766a2137816fe5e17a99fdc3e48bd37e810`  
		Last Modified: Tue, 20 Oct 2026 23:29:54 GMT  
		Size: 48.4 MB (48403111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfa19587a6889ac1017f304ba9ee84deb4daf9e910af8916c3a48d4aae969696`  
		Last Modified: Tue, 27 Oct 2026 00:50:37 GMT  
		Size: 156.4 MB (156400736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e89db0f4349c0d787613a72dc76485a1035ccfaeaec43b889d783aad76591c08`  
		Last Modified: Tue, 27 Oct 2026 00:50:36 GMT  
		Size: 78.0 MB (77992472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03d79636da181537d64e48cffc34fffb9b356425e2a81ce294824726321be968`  
		Last Modified: Tue, 27 Oct 2026 00:50:33 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e79289cad5a22df895436ccab17f5bbb4f457ea6d48ed7214b27470271c3358a`  
		Last Modified: Tue, 27 Oct 2026 00:50:33 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:e18811cba75e1b3581aa65bdd7b5ce8158664cfae521a0c79a90595fe39fef4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7403650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2942039f89f07113f69afea841af41c37454ae7a531b30833e83459964cd5ca2`

```dockerfile
```

-	Layers:
	-	`sha256:193d4bf48b27b661bb818124f3ab4509f4b91994149dfd9bd1471b54f0b6ff3f`  
		Last Modified: Tue, 27 Oct 2026 00:50:33 GMT  
		Size: 7.4 MB (7386892 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:23e4faf2b2c6f848916a02ac00b4330cafcff5f7d7e72d3b09ed295e35a940d5`  
		Last Modified: Tue, 27 Oct 2026 00:50:33 GMT  
		Size: 16.8 KB (16758 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:2c7f1461a00f4429809a3d4ac07be404772ce376f28cf7546bb217c7d75ac1c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.5 MB (294485916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e3f77897ef6856f64fb6850b1dbe22e78e2421b57773d8f64a49c840b1800b6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 10:33:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:33:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:33:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:33:21 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 10:33:22 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:46:23 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 10:46:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 10:46:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 10:46:25 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 10:46:25 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:0d8f63583ffe9dea650eb3c2d930ac17764dc3edd73dcc6becb0a476d51e6619`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 52.4 MB (52364741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:916f56caeeabd6654227a0fe59d93f1d7414db3ffd6d7284aa029ff5ef282137`  
		Last Modified: Wed, 21 Oct 2026 10:38:58 GMT  
		Size: 158.3 MB (158282653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7675b7da5067325f47a5feb11bc6143edec79b9d681e957d6a821c89da8551f`  
		Last Modified: Wed, 21 Oct 2026 10:47:10 GMT  
		Size: 83.8 MB (83837475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7f1c9f971b3e1a3384a3713db44d3b44cf413c3d1d096035ea0a14cbca9471a`  
		Last Modified: Wed, 21 Oct 2026 10:47:07 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d70a4f45ec15df8dcb304cf005a4919a7f6cca1735a5d462b533c8a8dfafd63`  
		Last Modified: Wed, 21 Oct 2026 10:47:07 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:78af099058bc50145cc1e99678897f0796e6f071f2ee54eb4c6eefc9f08036a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7403782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c3b26baec0fe6c3ddbc3a9aff46106023bed7ef2153789cccee9d788991830a`

```dockerfile
```

-	Layers:
	-	`sha256:b0714a76402bcdd1696cf406cec3e1ae84baf3b5d261fd1454a527782b5601c2`  
		Last Modified: Wed, 21 Oct 2026 10:47:08 GMT  
		Size: 7.4 MB (7387107 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:202018c16e5c4432a88ffcacbc321ac5bc00326ab4e9b36d10f682c6402e1337`  
		Last Modified: Wed, 21 Oct 2026 10:47:07 GMT  
		Size: 16.7 KB (16675 bytes)  
		MIME: application/vnd.in-toto+json
