## `clojure:tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:2fd6425c5b7c3810d4c1c0e7c7e3610c3e3f42d3a2f65b4ce25483d31fe46266
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:tools-deps-trixie-slim` - linux; amd64

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

### `clojure:tools-deps-trixie-slim` - unknown; unknown

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

### `clojure:tools-deps-trixie-slim` - linux; arm64 variant v8

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

### `clojure:tools-deps-trixie-slim` - unknown; unknown

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

### `clojure:tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:971111ccd55757f76481566bf1b1103dda9d0cb97b7db784503e743db8427adc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.3 MB (199327756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51823bcfa105578f9720726f8110cde15cdc39ad745caff27eb6622d1156e6a7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 10:53:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:53:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:53:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:53:49 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 10:53:50 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 11:02:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 11:02:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 11:02:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 11:02:26 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 11:02:26 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:227201171100893aa91b5dd1cbb0d3cf94c48afcf99440d8d203aeef039f89f8`  
		Last Modified: Wed, 21 Oct 2026 10:59:02 GMT  
		Size: 91.3 MB (91256254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e9b6a3e3afb5e1a59de436c5d5603afa9672f78cf906106841915fa077443a4`  
		Last Modified: Wed, 21 Oct 2026 11:03:08 GMT  
		Size: 74.4 MB (74418524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:215ded75e50266430cdba03f0b2472473f29f403e609debf4d0db345f96cea71`  
		Last Modified: Wed, 21 Oct 2026 11:03:06 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:841c08de89eff472a828d3b053ba5486b6b92c380707504a159a4f0c00232eda`  
		Last Modified: Wed, 21 Oct 2026 11:03:06 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c1aa92c3fcf532991891eb2110531a11450f10af19543e9918a845f135e77546
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5234523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15ef384de3d6c33de96b486c441371e7c7aec0079b569f09e2612a02ff7e63aa`

```dockerfile
```

-	Layers:
	-	`sha256:122c5f749ec86cd86145166fe31923ce10a036570b0205a346d5b2bb1acf8e14`  
		Last Modified: Wed, 21 Oct 2026 11:03:06 GMT  
		Size: 5.2 MB (5217816 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8671f6efa517f1d33eff260053d0993b27f4d11c3fb0a8a02dff83cf13b2f18a`  
		Last Modified: Wed, 21 Oct 2026 11:03:06 GMT  
		Size: 16.7 KB (16707 bytes)  
		MIME: application/vnd.in-toto+json
