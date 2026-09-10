## `clojure:temurin-17-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:a23f45cd05e887e1eca613c5b3381ce59da783664506e71027a2831ca57c0d31
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:f63545b487f13e799a138069cc78d9cc2bf9101d7a8f1db80cb903a42d41d665
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.7 MB (240740798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66ed615be0df59cf0174cb29f8d777725938ffddd05742838e7afa8c018b39ac`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 03:47:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:47:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:47:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:47:07 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 03:47:07 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:47:22 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 03:47:22 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 03:47:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 03:47:22 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 03:47:22 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:941f5a713c8abf14d67f507e9dd32a299845601964e8a8b98b1c589a5a57a1a3`  
		Last Modified: Wed, 09 Sep 2026 03:47:45 GMT  
		Size: 145.8 MB (145822679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53cc45e448756e5e92f29d59bfd1f6e25be872d581fd110da2eea1f5ebd3109d`  
		Last Modified: Wed, 09 Sep 2026 03:47:43 GMT  
		Size: 66.7 MB (66684422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1405c44a020214dbc20af7009a60b88c2a619584598359d179f2cf0a6207f59b`  
		Last Modified: Wed, 09 Sep 2026 03:47:40 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:250c7c2299d89fdd1d7f3103cc61dc8c4856f14d059e901304b40d0324a02635`  
		Last Modified: Wed, 09 Sep 2026 03:47:40 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e11062c45163e1ba576ded39a75a7ebe8d1ae17145d8d6da25bbfda738e25a48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5135253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bc3d6e73d338b8a5cc092099cc8e62fdee2668d20aa7a1160b1e503e2ecbdc8`

```dockerfile
```

-	Layers:
	-	`sha256:ba43ba78c509c1b07a6ab58da0b480cfc1321fea73c7b1333a2352a253ebfe5a`  
		Last Modified: Wed, 09 Sep 2026 03:47:41 GMT  
		Size: 5.1 MB (5119264 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aaca54638c51a93540a5a6728f49893b235df9fad4479576f3d2bfc1ed074eab`  
		Last Modified: Wed, 09 Sep 2026 03:47:40 GMT  
		Size: 16.0 KB (15989 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:14288237470c7734292e3db006ad800ff176528954d311eabdb0c9d5f6e05577
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.4 MB (239449594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:010f6177de53ae892a043ef32fcc1f6ccb7eefc964d0e3bded0c2af9489293b4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 03:58:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:58:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:58:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:58:20 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 03:58:20 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:58:34 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 03:58:34 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 03:58:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 03:58:34 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 03:58:34 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00757a112a763e8f2977a9256aee63e9efae11dd9e3f1c5e365f06a74ed092de`  
		Last Modified: Wed, 09 Sep 2026 03:58:56 GMT  
		Size: 144.6 MB (144647516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d379cb84036baee99e4bf74daa4e5795d56d8f88f01fc7221372f265d20c37cf`  
		Last Modified: Wed, 09 Sep 2026 03:58:55 GMT  
		Size: 66.7 MB (66683748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e30f75147b514c098c41a4f790aa6f26e2d7cca774a5e34d062f7e3ae4069675`  
		Last Modified: Wed, 09 Sep 2026 03:58:52 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a336f16759143b5840d2bf56e9297e74dff397f2c3b6a21975c5e08dcaca6735`  
		Last Modified: Wed, 09 Sep 2026 03:58:52 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:08d980ec10f630a849149d90fc22c264278144f309d93f903b9d6737aaf51769
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5141133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08a5b950873cd37caddf616700e05da97e026caa84703996b241e72f69c7e170`

```dockerfile
```

-	Layers:
	-	`sha256:cfab5996bb529632e6bb502c4b00312ac7928dbfa83f2c80e44ff406ffdd4ba5`  
		Last Modified: Wed, 09 Sep 2026 03:58:52 GMT  
		Size: 5.1 MB (5125025 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef949fce3c9b016b1a25883de80fbaaed695f575ab5a0ca3938878cab2a71966`  
		Last Modified: Wed, 09 Sep 2026 03:58:52 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:6cdf114f7b81eeabd4947db47c3df734fab7d134230a566a224689cf6f33042e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.3 MB (250250993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b36aa2f60673fdb60bbf122969ef4dab8779be910d8ac24e4b05aa7d705583df`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 10:45:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 10:45:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 10:45:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 10:45:24 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 10:45:24 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 10:58:34 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 10:58:34 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 10:58:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 10:58:35 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 10:58:35 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf78cf34333f530f10dc0cd57af3e6a2c53bd0df1bf4ab1b35eb3e964d6d9d50`  
		Last Modified: Wed, 09 Sep 2026 10:51:11 GMT  
		Size: 145.7 MB (145674339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c294f0ddd7d5a400899560bcd541120727d65cebd877a75f853384744a94cc2`  
		Last Modified: Wed, 09 Sep 2026 10:59:10 GMT  
		Size: 72.5 MB (72499131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a314e59dcd45bdd9a4ddd2086605e771fdc4f900f2efb7bbb83854d670ab5674`  
		Last Modified: Wed, 09 Sep 2026 10:59:08 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faf560aa7f4a2bfba5dbe1eb0505e22b71cef8c6a3c25f259ce759e8b5d859bf`  
		Last Modified: Wed, 09 Sep 2026 10:59:08 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:388f8136645e49b8f15dc90f688c28ab514685f9b8aede4745009042a6267066
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5140458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:656c73804a985bfce9b685a974aef72b914aa8ee3b735540abd299eb0ae8be43`

```dockerfile
```

-	Layers:
	-	`sha256:a040c0bf8b771f3162fbb1320439097a4f779e0f66be73fb70e258999ad37ed4`  
		Last Modified: Wed, 09 Sep 2026 10:59:08 GMT  
		Size: 5.1 MB (5124422 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b1527e3b8548d0b62b56c436feaffbea98b52582e7a04e1299fac1a1daa478ee`  
		Last Modified: Wed, 09 Sep 2026 10:59:08 GMT  
		Size: 16.0 KB (16036 bytes)  
		MIME: application/vnd.in-toto+json
