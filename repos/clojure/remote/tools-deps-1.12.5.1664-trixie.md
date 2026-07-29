## `clojure:tools-deps-1.12.5.1664-trixie`

```console
$ docker pull clojure@sha256:5c4e680557a9a69694d3c6bb9dbefdc10531ec36461af476fa6e5ab509aa2783
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

### `clojure:tools-deps-1.12.5.1664-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:1411c97d9137c4788fc5ad1330e6a40106c2f6f41f36cf2002838d27ceb66fe3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.4 MB (224414647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0863f7e7a29b3bf8c7eba58b62fa8700379857888a9c1e769d99d36f21f33194`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 17:57:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 17:57:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 17:57:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:57:32 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:57:32 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:57:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 17:57:48 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 17:57:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 17:57:48 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 17:57:48 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bae0b3f5b7de67725c7fd4f6fe52468b90bbdc473ab87d10953f6ce3bcdd42d`  
		Last Modified: Wed, 29 Jul 2026 17:58:07 GMT  
		Size: 92.6 MB (92574597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d37a0a74b740b74ae42d37193ccdb971b8f47b4b95d554e75638d72ce45e7377`  
		Last Modified: Wed, 29 Jul 2026 17:58:10 GMT  
		Size: 82.5 MB (82526435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1904c1c5540e2a9717e286e590f8905f5e5cfd0c83e525aa041fc22eb7fccdd3`  
		Last Modified: Wed, 29 Jul 2026 17:58:06 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29c051d17b6add8c8bdf02b5b936f1f7bd32331d2855457001674385669c4d0e`  
		Last Modified: Wed, 29 Jul 2026 17:58:06 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:26cfc798bb9ccb5b159342e4927074dd2363c2e5c85dfcd9c783f763e730738d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7453491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff4fc999d0558e12cf7faabc120aaeeb8f50ac04bd7aaa95f02193f80341d984`

```dockerfile
```

-	Layers:
	-	`sha256:f26e4cb96dbbf36002d7d04162e1c8a3d9d07d11e44cc8bda7cd09a24b7e3bac`  
		Last Modified: Wed, 29 Jul 2026 17:58:07 GMT  
		Size: 7.4 MB (7436923 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4000cbd46725fa0ad39ece006f321e7ccd4c83c9d51287806e7024277c0a29ea`  
		Last Modified: Wed, 29 Jul 2026 17:58:06 GMT  
		Size: 16.6 KB (16568 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.5.1664-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:10376154c2d4780506d9b46efb1d5964d6651fbe2d2a370bf4e2bba4d6292518
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.6 MB (223566221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2ab4dae352f751c9af3712ad9fcb341eb579fedf41f7b25de6d579099e79222`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:06:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:06:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:06:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:06:09 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:06:09 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:06:27 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:06:27 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:06:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:06:27 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:06:27 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f40b2e41911425236d5a32c3234237c74e2dff2fb34a7ccae6fbc1a988e895c8`  
		Last Modified: Wed, 29 Jul 2026 18:06:50 GMT  
		Size: 91.5 MB (91542220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27c30ac33ab8e1fc163889c1e1428694e701dbcb065bd8dc2c240546b2106786`  
		Last Modified: Wed, 29 Jul 2026 18:06:49 GMT  
		Size: 82.3 MB (82348776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd499a675c0f7ec88b047e0a9b4267d0c69f2d1c5574f560e417f082423e7b3b`  
		Last Modified: Wed, 29 Jul 2026 18:06:46 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1f2c6ee2b91a3a2bf3634264a522dbd847b2cc9c89e5ceb134db239cbc7e73b`  
		Last Modified: Wed, 29 Jul 2026 18:06:47 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:8836e2f0be843a5b512abcd2b844e3bfab67d9be6a63766b17e2a5bee74ddde8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7460048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c88de9c69665c875f8dcba048881d6be054399a86913a2d69cc93e9456b0777`

```dockerfile
```

-	Layers:
	-	`sha256:21d66c4a484833f52ced0950d6dfa0fbed230a3e74a9d8dc252a70f2c33cc5aa`  
		Last Modified: Wed, 29 Jul 2026 18:06:47 GMT  
		Size: 7.4 MB (7443337 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c0b715b5a38e8a4c125437ed98cefdd43155e54871263c320515c807c9591f1`  
		Last Modified: Wed, 29 Jul 2026 18:06:46 GMT  
		Size: 16.7 KB (16711 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.5.1664-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:3c53e0738e9e030a93fc9369c64b6e1e917a90b09930371d67c9cf041c4371b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (232995123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a9d02137fa20c8d93a8eaa183a0ec419e95f4e347488c5a653a78ea9324ed38`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:14:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:14:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:14:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:14:20 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:14:20 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:15:09 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:15:09 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:15:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:15:09 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:15:09 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:745b2c9d3139d6aed0b2af22d15f023d127776cd4cd5c9d5188be038d8d70a3e`  
		Last Modified: Tue, 14 Jul 2026 00:15:39 GMT  
		Size: 53.1 MB (53134011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f66fbe28931b559444efc920bec8aa7a8b1095167fc017ac6d1c1b7a205e9f5`  
		Last Modified: Wed, 29 Jul 2026 18:15:57 GMT  
		Size: 91.9 MB (91914000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17d4a9f4ce917052024cb474a3c98f2faf1bad75e1acc2da5d616e51ac56bde`  
		Last Modified: Wed, 29 Jul 2026 18:15:57 GMT  
		Size: 87.9 MB (87946070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38d0115eaa08d5f3de07709a470b41a6553a606497b9974c05224c7d6bb4af1e`  
		Last Modified: Wed, 29 Jul 2026 18:15:53 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d5bb9bab41dd67b853241bea7e84095f220fffbb8f6149f6148b221d2bef977`  
		Last Modified: Wed, 29 Jul 2026 18:15:54 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:61e52d9a385f8e725ba3ce2d8c9179065cdd1a1e0b07c14f12fe6005e36a48bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7441297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f62a397f9b32af09eab2c08eebfda5161089ba0586dbe2665b934cc881a3590`

```dockerfile
```

-	Layers:
	-	`sha256:a94e83478cc1518a0dfe47a0df1bdfd19969c9e533cd1b635ce1989916c0012c`  
		Last Modified: Wed, 29 Jul 2026 18:15:53 GMT  
		Size: 7.4 MB (7424668 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e378527ba15d3b7bf8e85c91213847365699391141292244007d51b188dc9640`  
		Last Modified: Wed, 29 Jul 2026 18:15:53 GMT  
		Size: 16.6 KB (16629 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.5.1664-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:40e8937523dae04a8bb339f4220b6d97e281ce2bddaa6a3db4c2824b2142c02d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.3 MB (221315610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82d665ced1b2fb201e118bdaaaa17cb613644f83525447ad57f17a9c306cd187`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:23:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:23:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:23:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:23:41 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:23:41 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:24:01 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:24:01 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:24:01 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:24:01 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:24:01 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3b67c0872a1a1dce2849ed0a6773531451a02c1a681d58d89f062b6003c72e9c`  
		Last Modified: Tue, 14 Jul 2026 00:17:47 GMT  
		Size: 49.4 MB (49381708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90fab4cc3644152114febb2365a89865a42cb76d2a098c0e7a6e36e9da0194b1`  
		Last Modified: Wed, 29 Jul 2026 18:24:34 GMT  
		Size: 88.4 MB (88420359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7a302237a24f59f5f3f9a4511ad59f2bb2bf740a47d2ca75806eebeb570b907`  
		Last Modified: Wed, 29 Jul 2026 18:24:34 GMT  
		Size: 83.5 MB (83512500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dcb909671d3f309a384cc0339f0a13fa8c49f4d484911caa7af28dbf7a066c1`  
		Last Modified: Wed, 29 Jul 2026 18:24:31 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9026653caf3d6cdc731c18c85b4ad44f38efdff4945c5d5b89a98b9da7ceada1`  
		Last Modified: Wed, 29 Jul 2026 18:24:31 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:5ae61fa54fc8f8c41a41657b2dd3e2096205e9d7cb27b570e42780ab0133d582
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7433976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:230270493e8ed87648b6e65ffa9b0073fa77a908a0fcaf0639a510cf4a259412`

```dockerfile
```

-	Layers:
	-	`sha256:a963f07cb0a5723927283545373a610a1a0b237fc6289444012e60f1baed32de`  
		Last Modified: Wed, 29 Jul 2026 18:24:32 GMT  
		Size: 7.4 MB (7417407 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6736bef1de4187355abad66cba037963996c6ad301766ea9fc2cea729888ee19`  
		Last Modified: Wed, 29 Jul 2026 18:24:32 GMT  
		Size: 16.6 KB (16569 bytes)  
		MIME: application/vnd.in-toto+json
