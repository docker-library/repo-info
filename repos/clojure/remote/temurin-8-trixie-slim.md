## `clojure:temurin-8-trixie-slim`

```console
$ docker pull clojure@sha256:3b4d4afeb96e400a5eaa0ab3dc530a92367eb24b53a0d492c341babb5427b021
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:852d42a245a4827184a717bed246e7c0b58f8edc6b1cc9554e51918c2ae896d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.1 MB (154054133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:969e5893656e17f184192dacc252292d5532a081a7a48ca88133bd9a60968d25`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Mon, 16 Nov 2026 20:15:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 16 Nov 2026 20:15:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 16 Nov 2026 20:15:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 20:15:18 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Mon, 16 Nov 2026 20:15:18 GMT
WORKDIR /tmp
# Mon, 16 Nov 2026 20:15:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Mon, 16 Nov 2026 20:15:33 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Mon, 16 Nov 2026 20:15:33 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bba8b107b80a7fce85da1f6726d0122cf716ca800f7ad07d6b49ccb94ec7f22`  
		Last Modified: Mon, 16 Nov 2026 20:15:49 GMT  
		Size: 55.2 MB (55207904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66f138f1ea92631ed55bcdcf2fb2265acf063cb3c38856bef7f32970e3392c18`  
		Last Modified: Mon, 16 Nov 2026 20:15:49 GMT  
		Size: 69.0 MB (68989451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b88d14d9fd208430ef139883c0f8679267c92042c3e09a7554f87d2894ac040e`  
		Last Modified: Mon, 16 Nov 2026 20:15:47 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8b6a8690706780ca07afda969f4fb85c7000c1efb3b04eb3ff565f636b340a13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5396800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:877d44504aa5a301918af781520a36ba07279da978f3779fef74f081451f6c17`

```dockerfile
```

-	Layers:
	-	`sha256:63b4dc085aa0f1e14ba88530e81ee2ec3889b03202f8931493946ff3484834ec`  
		Last Modified: Mon, 16 Nov 2026 20:15:47 GMT  
		Size: 5.4 MB (5382419 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d7db5f6130d370910c5b88fecffe4f848aee16ef08d73315cd6becfb1752f9b`  
		Last Modified: Mon, 16 Nov 2026 20:15:46 GMT  
		Size: 14.4 KB (14381 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d739d2fd499f1746c69a18821652778551c7be268d3d3f998e78795d31493e3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.3 MB (153290016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d67f360a8ebc9a7608fba5b0139ec31feac56bf96979897e101c364f27e774f8`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Mon, 16 Nov 2026 19:58:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 16 Nov 2026 19:58:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 16 Nov 2026 19:58:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:58:52 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Mon, 16 Nov 2026 19:58:52 GMT
WORKDIR /tmp
# Mon, 16 Nov 2026 19:59:10 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Mon, 16 Nov 2026 19:59:10 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Mon, 16 Nov 2026 19:59:10 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f26757fedcb3561e1dad4cde8348e3bb7ff65b16d68a37e5113fec5de68d076f`  
		Last Modified: Mon, 16 Nov 2026 19:59:27 GMT  
		Size: 54.3 MB (54270344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b75ed9338ed55858af2232721beb938cbc2bdfa89ae76c4a8116f41262dc999`  
		Last Modified: Mon, 16 Nov 2026 19:59:27 GMT  
		Size: 68.8 MB (68804990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a805b4f6c1cea712fc08d847417a44a2702d1cf988641caf720659f4dbb13f0c`  
		Last Modified: Mon, 16 Nov 2026 19:59:25 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ff3f331d4ac9d25baeb0b368bbabf2e67c684e11b724908ce1e7187a356c2f05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5403380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bc82c1957000da65743f663d23c00e40c61d36bdc2b5156b5183a9998a2c6bc`

```dockerfile
```

-	Layers:
	-	`sha256:ea0b99567415b641fff7fdd2ca5eaf18e5410bc22f43651bd3b409c49767feca`  
		Last Modified: Mon, 16 Nov 2026 19:59:25 GMT  
		Size: 5.4 MB (5388880 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0cdb02f1dcaa2374bd81dc1da518ab85f92356cd7e279657ddf78ecbe4ff4ec1`  
		Last Modified: Mon, 16 Nov 2026 19:59:25 GMT  
		Size: 14.5 KB (14500 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:30dd212a13f7cb48ab00ab76912accc36dfb8f97edbe8670e65096695da9f9b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.8 MB (160776193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06721a67eeefc8066af239c92752f801558bd75010df597b3da1aae16e685894`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:14:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:14:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:14:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:14:37 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:14:37 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:15:36 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:15:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:15:37 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17a678a29c3391f1fe465bf4edbc3af04ab3026e2582e9c3650840c938aab8f6`  
		Last Modified: Tue, 10 Nov 2026 00:16:17 GMT  
		Size: 52.7 MB (52689141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76244afe1b5a9b43fbe0e82edf48e384c99e91bb2f21acd89099048cc6b7ff50`  
		Last Modified: Tue, 10 Nov 2026 00:16:18 GMT  
		Size: 74.4 MB (74418759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:007d25c090a2ecc6741026cac6d1ae66caf4500cd0bfb808e1d8d8f0305b70d9`  
		Last Modified: Tue, 10 Nov 2026 00:16:14 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8dc1c7bb4c6c5229ad644ab820800bea3123dc39cf4dc2bb545f420d54931ce0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5401815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36ed1a34c79df0c6afb0ece5f340ae0e42260afe2ced16be7e3648af2d7d2859`

```dockerfile
```

-	Layers:
	-	`sha256:d7447fe2f8d10b9d8777879626f871ad58ffbd8bf01901810c983fa7597f9af8`  
		Last Modified: Mon, 16 Nov 2026 20:57:25 GMT  
		Size: 5.4 MB (5387385 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e1302bb1c3a4998b974e37c7cad529b382287d392aab3108c963621a9bc2223`  
		Last Modified: Mon, 16 Nov 2026 20:57:24 GMT  
		Size: 14.4 KB (14430 bytes)  
		MIME: application/vnd.in-toto+json
