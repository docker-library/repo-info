## `clojure:temurin-8-bookworm-slim`

```console
$ docker pull clojure@sha256:b0279f1137d9e1472f0cf9d4a8957302954ab535b471acedc60696e4a073495a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:47de6368f9cfed2b7b5288ae30013588401ff63dd23b8e9e5c9b1f1968e171fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150123267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee13e1668c5490c6bc311dd54f253020d007d4a5de9d29165633f03c98661bec`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:42:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:42:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:42:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:42:46 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:42:46 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:43:00 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:43:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:43:00 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe785fe2dc999478631a98a414065c30c24a9145e922c85a772eb6131ddf355e`  
		Last Modified: Fri, 02 Oct 2026 02:43:16 GMT  
		Size: 55.2 MB (55192277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecef74f926ca6d37865c084c7859c29ee3b1fdcde78b9d4736de49893d6c824a`  
		Last Modified: Fri, 02 Oct 2026 02:43:16 GMT  
		Size: 66.7 MB (66691903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:381d349b2bc3564f751733fc3b92ccbf3229da01dbc8fc8475d29e946135dc95`  
		Last Modified: Fri, 02 Oct 2026 02:43:13 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ee5e5b0c15d2638dd610a78313b081cd2919ebd528c55080c1840c6cbd56e3d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5254064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c528a6417f0ec33f4fb03f791d29127d1d70a1aaa50b78900b7c29678d1706e4`

```dockerfile
```

-	Layers:
	-	`sha256:ea14eba2776d324fb7d18b7cfccfd2c16338fb77733bfe236ed3f14368f1087b`  
		Last Modified: Fri, 02 Oct 2026 02:43:13 GMT  
		Size: 5.2 MB (5239662 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:893bf1d07cf6ffabca40c4cf1ec78a37bfb3176d65422f7b9444d52b1552ff29`  
		Last Modified: Fri, 02 Oct 2026 02:43:13 GMT  
		Size: 14.4 KB (14402 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7a409dccd6d8e2b00a13298ae9bc50bc2da7a3569cc1d24a9d2fcf934a77c496
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.1 MB (149057406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09d8ee03e17c02b5934a8cf26eb1fdbbd613d0e837cae1772400323c01afe8a9`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:42:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:42:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:42:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:42:45 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:42:45 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:43:00 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:43:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:43:00 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:659f2fd80579b1c2aca5292c3d14f2c3e2b78c51ad89079631bccbcac70f20c4`  
		Last Modified: Fri, 02 Oct 2026 02:43:18 GMT  
		Size: 54.3 MB (54254288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98218653379c1394be56617c632bc55c874ab50fed46fad455607ee6706c87bf`  
		Last Modified: Fri, 02 Oct 2026 02:43:18 GMT  
		Size: 66.7 MB (66678794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b62b7d21dfb42e02866825d2944dbca35b5b600d78833f443dc3fe153dbbd9fa`  
		Last Modified: Fri, 02 Oct 2026 02:43:16 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:9a88a76ecf07b165fd2101f3b27cb64760c1765d7e7c893e32a9ca8100a75c51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5260643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:701eeb6d317e3e4eccabced84275671d5913aabf4374eb6f733604874c7dcc77`

```dockerfile
```

-	Layers:
	-	`sha256:a737167e1e402d566a4f749b59501a18da173dbf840b0db9d1101e69e352e835`  
		Last Modified: Fri, 02 Oct 2026 02:43:16 GMT  
		Size: 5.2 MB (5246123 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c14ebf2c9a9e3e5e7c09845d127282cc7bcb0248d635505bd587eadd2ec255f`  
		Last Modified: Fri, 02 Oct 2026 02:43:16 GMT  
		Size: 14.5 KB (14520 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:068f6650c0ad3aa02f3e51ac7300194cda69d2ee302a9c178115767ef0c069a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.2 MB (157249015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9eda0ea37483bd54efacc0739143400b3e44365b75414c212dea79da4fd77e7e`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 26 Sep 2026 03:45:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 03:45:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 03:45:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 03:45:09 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 26 Sep 2026 03:45:13 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 03:45:52 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 26 Sep 2026 03:45:53 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 26 Sep 2026 03:45:53 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:b165d89f1b791c34b9c20f2a31fc4c5d2df2528fb278dbc56b0e78f166c6b6b4`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 32.1 MB (32083564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a3544a1e0072d979125e5380757992dab3698d90ad8ae871cca19747ae5dbe`  
		Last Modified: Sat, 26 Sep 2026 03:46:29 GMT  
		Size: 52.7 MB (52667114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54e75f1f790c0878bbc9ab51276730e5820a5fcaeb3be228490faec05e9e170a`  
		Last Modified: Sat, 26 Sep 2026 03:46:29 GMT  
		Size: 72.5 MB (72497690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bf9be1f21e35de89ea6e56fdefb21ed3e5905c5239448febdcf783836dba820`  
		Last Modified: Sat, 26 Sep 2026 03:46:26 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7a0cca3b6ced836d3e3fe27da6d6ae29cf92ed2c7bb4bc197e953d6b298f6d85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5259865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:786f60eafdb1b568a554324342adfe1d0a5c90001c82f91706fc1ab415c32c8b`

```dockerfile
```

-	Layers:
	-	`sha256:e3e43a03beda66e7cf277fad20be1682f7d3d827e5e998a6683bccadd8eae050`  
		Last Modified: Sat, 26 Sep 2026 03:46:27 GMT  
		Size: 5.2 MB (5245415 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e35100ebdf7c0cbc5a4a93494dab716293ee54113ac0567932ce54876efe4d09`  
		Last Modified: Sat, 26 Sep 2026 03:46:26 GMT  
		Size: 14.4 KB (14450 bytes)  
		MIME: application/vnd.in-toto+json
