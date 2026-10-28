## `clojure:temurin-25-trixie-slim`

```console
$ docker pull clojure@sha256:3ef1443a779fce1c6fce31d50c1842d7d45527ebee2f13b3ac48570fb9fef376
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:e3934baa9f2a01a761a82a82f0fb71d5532559d7bcf971f5aceb25ecc429f415
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.5 MB (191463707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04b1fa7e504c2beba56ca8ab679deddb4b2591946b820d5b911eb5878a4892e4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:41:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 01:41:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 01:41:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:41:16 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:14:32 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:14:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:14:48 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:14:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:14:48 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:14:48 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fb97f6bc8a1c8b4847493ed6142433b4e89837a99a8038ec02e069ec736e6e8`  
		Last Modified: Wed, 28 Oct 2026 01:42:27 GMT  
		Size: 92.6 MB (92618052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1a1cf88d770745f7ed76427c95b83117ad5ea74ca6108ef7328eaf3c45a32aa`  
		Last Modified: Wed, 28 Oct 2026 02:15:06 GMT  
		Size: 69.0 MB (68989376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3991129effa100c65a9d1e0c686885e491aec58573a5e94298ee22c22ae78b76`  
		Last Modified: Wed, 28 Oct 2026 02:15:04 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d5674e9108468007c536b34b71e3a89cd6f6b8673b1d41fb28788ee590442d8`  
		Last Modified: Wed, 28 Oct 2026 02:15:04 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2d2e12c7a0dae0f07d9bf4d850462e980cee738300df9d3050aeab8b48c3ced8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5245842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff6591378601f24fc6bc6e12667e65793b59e9937ee429a14916a96218ad3b53`

```dockerfile
```

-	Layers:
	-	`sha256:6a712063a1467b03ba858b2bb946277d622c9dc09e3d1d09fb8c5606b5407098`  
		Last Modified: Wed, 28 Oct 2026 02:15:04 GMT  
		Size: 5.2 MB (5230149 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2244512a5bd99945fa14daa4289cad1c505edb44647361e879a128795e634450`  
		Last Modified: Wed, 28 Oct 2026 02:15:04 GMT  
		Size: 15.7 KB (15693 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7ba057834da1ab234fdb2b8a0c1d64ece1c8968547fa882d6511146d6bba95d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.5 MB (190548526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5e4b56d1730f9af7257f0473cac44828afa007deae0b7885c88e443361414c6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:21:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:21:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:21:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:21:59 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:21:59 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:22:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:22:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:22:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:22:17 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:22:17 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d80e29a1ee66a1136f76c60b9c5e460954556e1d4c2e4dc2410e5930031266ed`  
		Last Modified: Wed, 28 Oct 2026 02:22:39 GMT  
		Size: 91.5 MB (91528876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc86a0b056da5905de2cbf805482f44e30750b76682ea5bea87735ddca23a95e`  
		Last Modified: Wed, 28 Oct 2026 02:22:38 GMT  
		Size: 68.8 MB (68805112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ba59cbcb65996f2864109703fe8fa4c03e6e33e1a72d5a52649d3c690f84454`  
		Last Modified: Wed, 28 Oct 2026 02:22:35 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5b22803a557dced73488ff6b7bd0a9567f67ff20201a66cdb60186aa3e089a9`  
		Last Modified: Wed, 28 Oct 2026 02:22:35 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:99b681351e12f80198709830f0aef35db8b607bee6ad5228383d1bfbc91be70f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5252718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12496f4c26dcf5ac52065fa5980e66081aad5fc4958ade0dfde78d5b76147686`

```dockerfile
```

-	Layers:
	-	`sha256:9aac834a0713db9ba763ade6b37988ebd2f9be5fe92cb93dca3410dd6d977fa7`  
		Last Modified: Wed, 28 Oct 2026 02:22:36 GMT  
		Size: 5.2 MB (5235931 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b90b6b0ff8d959791be38a943538a9cc08cb86ce7a126718d4c329e8f4030a66`  
		Last Modified: Wed, 28 Oct 2026 02:22:35 GMT  
		Size: 16.8 KB (16787 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:966c35c1993a62b45d71e4471302ab2022e465593fd3064da7049bdb2ae40f4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.3 MB (199342067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37116259fdd1607dc1bdea8b363ca3907467e114cfb0d0981471764d3f9cbc69`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 10:19:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 10:19:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 10:19:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 10:19:31 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 10:19:33 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 10:24:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 10:24:22 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 10:24:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 10:24:22 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 10:24:22 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d134d12b60e8d34a1cab55adb4c25f1ae5704f9692a8b0ec954748208821ef3e`  
		Last Modified: Wed, 28 Oct 2026 10:23:16 GMT  
		Size: 91.3 MB (91256255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:593eaf70b338ef1931e5209c6eb154e94a82f10784b7ad16a29fb58086ec5ac2`  
		Last Modified: Wed, 28 Oct 2026 10:25:01 GMT  
		Size: 74.4 MB (74418504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86215db367a12774d98369313f4356d47c83f28cc804c1e35f291cd8dbe3feb8`  
		Last Modified: Wed, 28 Oct 2026 10:24:58 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b81eee6f4f159baad3c5b42449a4d53e77d455b19d61344869fa2dd7a637adb7`  
		Last Modified: Wed, 28 Oct 2026 10:24:58 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1b34773287a87ac197426734e7737854e1bef43b2bccd6ab366026e0d9909135
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5234550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc0560cff5a66d41c165396d4fa50717e5f6a38be499bb9b6c3f00185687c514`

```dockerfile
```

-	Layers:
	-	`sha256:09ecca7e959484ccb42c4a8d8ef3e6f6db3bc21e4c5a74942004615f80021008`  
		Last Modified: Wed, 28 Oct 2026 10:24:59 GMT  
		Size: 5.2 MB (5217844 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6337df3c93dd36e43e801a58fd58a115385b7b0890bc62a75f1b12a9f7c4837`  
		Last Modified: Wed, 28 Oct 2026 10:24:58 GMT  
		Size: 16.7 KB (16706 bytes)  
		MIME: application/vnd.in-toto+json
