## `clojure:temurin-11-bookworm-slim`

```console
$ docker pull clojure@sha256:48abc02685469caf792642e0df5bfac13182d9995b0912cd6a003d81229606f0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-11-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:b5a4cefbd9b584aa94b24563f5d182163d3a29c6a47554e7d467c82225fc746a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240767407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb0e7974f566286ce5db4c2446a2df9c625ef0309953b920f606fd867fcf161e`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:31:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:31:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:31:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:31:08 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:31:08 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:31:22 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:31:22 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:31:22 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92087abb788ce068d3216e877cb8820704957a183e36949ee1446909cfb5703c`  
		Last Modified: Thu, 16 Jul 2026 01:31:43 GMT  
		Size: 145.9 MB (145886191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22e1cc5f9a8f274036b903643b8bcb608d1eb72a1a0711bcf0791ab0d7f13c63`  
		Last Modified: Thu, 16 Jul 2026 01:31:42 GMT  
		Size: 66.6 MB (66647928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ef04c471020fa944ea73fefe5379225310afcc5f87770637faf54c6f2c2daf7`  
		Last Modified: Thu, 16 Jul 2026 01:31:39 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c657bf26e47146c5113eb3632661e1a176d7718bae1e80cb53ac5839e013a0c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5147972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd8f7143af43042a747d501944c9985a57ac3c6c0ad36521e50c249a12ed5cb7`

```dockerfile
```

-	Layers:
	-	`sha256:e315a6180c38d94ec6e9e46ceffdd86004ce6ee5eef67e7f68145bd2970ea47f`  
		Last Modified: Thu, 16 Jul 2026 01:31:39 GMT  
		Size: 5.1 MB (5133551 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:60d79a4c0a0c0b94c31837c59f4185ab850354b78dcfc800bde101a1b25181ae`  
		Last Modified: Thu, 16 Jul 2026 01:31:39 GMT  
		Size: 14.4 KB (14421 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:8c4b8f64a238759792d3dae8140cd710fcd6beda7559a276bafe8f0b45a5be86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.3 MB (237338549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fa3ea7d95f2cf05935e33a45b22cb996d5bb084515a0af21f844f31aeedf229`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:22:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:22:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:22:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:22:34 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:22:34 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:22:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:22:48 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:22:48 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2de3e72983442997db4fbdc006585f6f4d8dc333242c248c464317cc01e7644`  
		Last Modified: Thu, 16 Jul 2026 01:23:09 GMT  
		Size: 142.6 MB (142582160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9815dde3c74da3a95bd1cbc730c5afaf53572fc655dfba32a0ee02c1e659c346`  
		Last Modified: Thu, 16 Jul 2026 01:23:08 GMT  
		Size: 66.6 MB (66638492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59e709121c463439ff1955b094f75ea8d446c5e67317f9f661690b2771ed8c8a`  
		Last Modified: Thu, 16 Jul 2026 01:23:05 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d37343b90eca02031c9af6e4474e4e2cc540970bb257fa23a8e80ae3b3ceb7d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5154469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a93ff43b61610cff3c303e882f3a63fa0d2c63c3c0589d496104ba482172d807`

```dockerfile
```

-	Layers:
	-	`sha256:2ae3218e6c486fdea368e1c4897b98902c291c36623ea7c4dd307b038f2a766f`  
		Last Modified: Thu, 16 Jul 2026 01:23:05 GMT  
		Size: 5.1 MB (5139930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ccbec805067b6a93a548ac1cef950251ff8e298b9ebe5c02baa56685cce7f483`  
		Last Modified: Thu, 16 Jul 2026 01:23:05 GMT  
		Size: 14.5 KB (14539 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:f2289f2085b0bc4b7da21a570b624adf8740561429080c8e57d688353d3065d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.7 MB (237664957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc9b826f65872209c9284d026713812e068521bb1d3403610d5660e2427badf8`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 08:12:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 08:12:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 08:12:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 08:12:04 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 08:12:05 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 08:19:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 08:19:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 08:19:43 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba944fac20ef8449ec303e3e748ff729291783978d409a4b83616a2f578f2fa1`  
		Last Modified: Tue, 14 Jul 2026 08:15:13 GMT  
		Size: 133.1 MB (133110218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1518d793ef9786e295efd878f7c9584802d3dbd21907b1b177b71712524216a6`  
		Last Modified: Tue, 14 Jul 2026 08:20:17 GMT  
		Size: 72.5 MB (72477681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a388f5c240c60d2d57a07cd41ac212b7481472d9307aa338d70ed4be3dbdad5`  
		Last Modified: Tue, 14 Jul 2026 08:20:15 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3944e800348ebfd1bf5bee6c64fd8bea8a3ec44560b873cd7e230885291cf991
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5152562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0022c67295af8711c86d6fe44d8c718c724fc207e500a98a1c2c0a0d758878a`

```dockerfile
```

-	Layers:
	-	`sha256:3cf149ada57cb830b119fd91b60c3693d934cc3cc00dc1ebc31ee779975b4bdb`  
		Last Modified: Tue, 14 Jul 2026 08:20:15 GMT  
		Size: 5.1 MB (5138094 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b43cb1245d984645708802939e11ee45c5a9787bab4e68b68cd9dcbbf33ef94a`  
		Last Modified: Tue, 14 Jul 2026 08:20:15 GMT  
		Size: 14.5 KB (14468 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:05872bb095568e827fe4654ca7eac901582162319e86b9f8162763676ddc5c63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (218989429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:111f0df28c10a62d3c18d9babd6b94272dbc7a08d9f9d930485d0dac7e96efc8`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:41:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:41:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:41:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:41:46 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:41:46 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:44:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:44:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:44:50 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21cf88382cc3b09d2b3c026be7265ab08e44143176bd159a5118f6f3e74eed2c`  
		Last Modified: Thu, 16 Jul 2026 01:43:18 GMT  
		Size: 126.7 MB (126651663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26d3b877b3a901ad774e67f7775ea683315111ba9cc772ab78d215632f871bfa`  
		Last Modified: Thu, 16 Jul 2026 01:45:12 GMT  
		Size: 65.4 MB (65448855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab06d7e0971ec73645eb40c61d8551750d2a8dd1a9f926a041c41b5d3f33e9cf`  
		Last Modified: Thu, 16 Jul 2026 01:45:11 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1a60fa6ec268094e5a84689b4b25a18f13719d95dd8a280a5e4ee50c3c890b50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5139297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f702d959f518bc2474ade4a26f4622fef75cc51d82a6d0284944a922de1c68c7`

```dockerfile
```

-	Layers:
	-	`sha256:755382b06c5401678863f8adb502ef1b778ef5b04caedb9cd523b243695c1072`  
		Last Modified: Thu, 16 Jul 2026 01:45:11 GMT  
		Size: 5.1 MB (5124876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a3cf618f57a60f0af4e9f5d19258f30d9df823bbe9a725dc936df6a65950ce6`  
		Last Modified: Thu, 16 Jul 2026 01:45:11 GMT  
		Size: 14.4 KB (14421 bytes)  
		MIME: application/vnd.in-toto+json
