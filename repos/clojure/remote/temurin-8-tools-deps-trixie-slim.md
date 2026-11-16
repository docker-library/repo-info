## `clojure:temurin-8-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:45803ff7f0537602ab1b67d7080a91ae13403816b2eae740ecf3d0a1342019b9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:812bd8007659c5626a7eafdaf55b498e54f728e0cd469a7707df9f2ea9f0d225
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.1 MB (154054159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:522d0c10e0b26c0bbcf6f34477ad48ac9cd76002e54ccc15ed1ab93a84c7b814`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 00:46:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:46:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:46:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:46:06 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 00:46:06 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 00:46:22 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 00:46:22 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 00:46:22 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e09609ffc4ada02e21d7614602d7385e8cefc814797c0546c0a19ffd604f3d3c`  
		Last Modified: Thu, 12 Nov 2026 00:46:40 GMT  
		Size: 55.2 MB (55207904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5afd7da4c893d06e608bdb97c98302756a3aecf027dcbff5b1b05ea63a6eddb4`  
		Last Modified: Thu, 12 Nov 2026 00:46:40 GMT  
		Size: 69.0 MB (68989476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1912e6bff2946ba055c6f679901bc65e4dbab0185623f87a2685aa17bc9cf005`  
		Last Modified: Thu, 12 Nov 2026 00:46:38 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0544f702cb6c53356df0ee14814dbbd62ceed9411c9b6c8b0e690b3c7e3fca08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5396801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2560ecd9d6f0c6344f3f11b0056faea2d1d55b8a27068747c844862266be234a`

```dockerfile
```

-	Layers:
	-	`sha256:d5e6e9a09b04217342a47335727022fb9db2a38e7eee23a4d5ee8aace6fe3275`  
		Last Modified: Thu, 12 Nov 2026 00:46:38 GMT  
		Size: 5.4 MB (5382419 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6e089f7b5d4d35c60893654ab01ca7352102cedbe1478c9da135907968086a7`  
		Last Modified: Thu, 12 Nov 2026 00:46:37 GMT  
		Size: 14.4 KB (14382 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-trixie-slim` - linux; arm64 variant v8

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

### `clojure:temurin-8-tools-deps-trixie-slim` - unknown; unknown

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

### `clojure:temurin-8-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:a6f6263c7c8ace08fb54d8650ed5a062bbb9148e6d10eb6b7623fa704e5d178f
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

### `clojure:temurin-8-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:785874c969a8b19a380e838a2e8eae11f1586572e9f12989a43ae19925f80fbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5401815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:288bbda6b027810b7288a8fd44b2299f455137d578cae6f68d2482b6fa387d0e`

```dockerfile
```

-	Layers:
	-	`sha256:d697aa8ff6790fb00ba1f31a42c4270b30d9805b74e9171734a3a7c789ac45ed`  
		Last Modified: Thu, 12 Nov 2026 07:39:40 GMT  
		Size: 5.4 MB (5387385 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d100332be42b2f29b7c607bc3d4f67d72346186bba8a29da7c352b22033cf40e`  
		Last Modified: Thu, 12 Nov 2026 07:39:40 GMT  
		Size: 14.4 KB (14430 bytes)  
		MIME: application/vnd.in-toto+json
