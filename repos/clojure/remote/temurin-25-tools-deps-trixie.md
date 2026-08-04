## `clojure:temurin-25-tools-deps-trixie`

```console
$ docker pull clojure@sha256:52b61b7b13227b6a82dd9eec7c238f51a1aea905039fe71021d0c0e368fff75a
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

### `clojure:temurin-25-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:da884a1b86869d725d6f3d9e402c44b5c36c2070dad9405ab3abc397c97ee013
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.4 MB (224425893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab7f2b6c2cbb9ea0256788cd681f8ee55d081d56122004fa33ab6e3dd987e00`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:55:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:55:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:55:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:55:05 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:55:05 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:55:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:55:21 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:55:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:55:21 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:55:21 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfb2eb751ddf1f674212f866e9cb18482d8f991c449cf6abf78ee56d62276a8d`  
		Last Modified: Tue, 04 Aug 2026 02:55:43 GMT  
		Size: 92.6 MB (92574564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e5e49f311254d5f65e91ad015a7826ee8effad655847f060ef2543c8419f900`  
		Last Modified: Tue, 04 Aug 2026 02:55:43 GMT  
		Size: 82.5 MB (82537712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5a65d57e2c9afa8208cb29f8044f656ed698d6598b43051689dc58400f3ad17`  
		Last Modified: Tue, 04 Aug 2026 02:55:39 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51b2561af34828830fcafe1510885e836252de4889abe60fbb8a47157db0086d`  
		Last Modified: Tue, 04 Aug 2026 02:55:39 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:dac8eabeb4dfb645c50da70f8ae9b9467a8f788f0e764eba10176685e99a05b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7453524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e0c34edc07df10fae5f60ab117960fceb351b63e3701d43efb18e26e6e8e587`

```dockerfile
```

-	Layers:
	-	`sha256:588b5e512fdf49aad822a19e29730acc4272dc64ed8317fc108c6c6e23c4be73`  
		Last Modified: Tue, 04 Aug 2026 02:55:40 GMT  
		Size: 7.4 MB (7436955 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f816bf616aa617dc0e15169ba91e768073b4c4589eb644513ed0e5a32219e53`  
		Last Modified: Tue, 04 Aug 2026 02:55:39 GMT  
		Size: 16.6 KB (16569 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:091d9527fb64cb00bd70079a7b60e644711e68333e8458398babc2bc985e8dfe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.6 MB (223576207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b98ac96b603971e7813ba6243d39b41625e6cf64c5aeb9788a68f5c42d907ff4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:55:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:55:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:55:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:55:30 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:55:30 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:55:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:55:48 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:55:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:55:48 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:55:48 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24737d0eb0da382259466e95d8d5854b737de8ccee29c82f37c86c42e3bf3df3`  
		Last Modified: Tue, 04 Aug 2026 02:56:11 GMT  
		Size: 91.5 MB (91542253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53ec7d80421913d99f8097ec35dcad84e20e85a5e16043eb54e6eaab2b296563`  
		Last Modified: Tue, 04 Aug 2026 02:56:11 GMT  
		Size: 82.4 MB (82358728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e4b2429305d291e990263a4f80c6a863f962c6635cf6709e8a2c6622c4452f0`  
		Last Modified: Tue, 04 Aug 2026 02:56:07 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3359e3d127d7c5aa3d03ca6c1013004b13e6c389b170ee90e5b4902b13824201`  
		Last Modified: Tue, 04 Aug 2026 02:56:08 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:62d622124cf582b3f120f24b4cb0701a78c7c904f3c8e1a73bac06c73b94608f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7460080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d4cbc4288772fcffe42d993e5cf2a07e5d65a26805a6179d402f81c77073cf1`

```dockerfile
```

-	Layers:
	-	`sha256:d4c41da9a9b563c24e5ef690417c3f5dc36776fbc60bb75a552a8dd2b6118658`  
		Last Modified: Tue, 04 Aug 2026 02:56:08 GMT  
		Size: 7.4 MB (7443369 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44b74bfbafdf726e63deb93edea527e858820fad2f89773c397ab3fd01740744`  
		Last Modified: Tue, 04 Aug 2026 02:56:07 GMT  
		Size: 16.7 KB (16711 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-trixie` - linux; ppc64le

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

### `clojure:temurin-25-tools-deps-trixie` - unknown; unknown

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

### `clojure:temurin-25-tools-deps-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:7a8cec39351de77e280776da4c6e1b076dbd6cc238d237473470bd0849f30378
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.3 MB (221321761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c282e407bfce2b9a11762adfbcb7b3d2d3573e40f24cf4ef3c35709387356b6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 03:04:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 03:04:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 03:04:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 03:04:35 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 03:04:35 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 03:04:52 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 03:04:52 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 03:04:52 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 03:04:52 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 03:04:52 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3b67c0872a1a1dce2849ed0a6773531451a02c1a681d58d89f062b6003c72e9c`  
		Last Modified: Tue, 14 Jul 2026 00:17:47 GMT  
		Size: 49.4 MB (49381708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:013f94fa5909285f7a8f0a157a7bc02800e13c4272923015ac37c73386b29669`  
		Last Modified: Tue, 04 Aug 2026 03:05:21 GMT  
		Size: 88.4 MB (88420342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24caf8d4fb6e3ad85997d29a91358bd9d2ae27ca38879d58ef6b69118224b195`  
		Last Modified: Tue, 04 Aug 2026 03:05:23 GMT  
		Size: 83.5 MB (83518666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5386dd2b179b2f23d6ef756f9cdc5469a669fd028be298277c563e2211af9fe9`  
		Last Modified: Tue, 04 Aug 2026 03:05:21 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aee2885b13f3596d61ad89eedd254e0025b35267b0d6262839f6797ca21a3413`  
		Last Modified: Tue, 04 Aug 2026 03:05:21 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:16e3aa70b9f8d19f046cf389f10b4596cc0e583843d28a08bfad5785a9251b9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7434008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e6081384b9a1a61b62232cdb305cd932090ca3713993e0fd80af188bc5f7ef5`

```dockerfile
```

-	Layers:
	-	`sha256:e341c1ceba44d5cfb8b824eafdfe2ea24f5c695607dfae77a52ca8001d75fcc2`  
		Last Modified: Tue, 04 Aug 2026 03:05:21 GMT  
		Size: 7.4 MB (7417439 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:932e492050f4ee8f612e81b1f4a94e3b484fda1b3c65e1e9e2fc10bd3c771486`  
		Last Modified: Tue, 04 Aug 2026 03:05:20 GMT  
		Size: 16.6 KB (16569 bytes)  
		MIME: application/vnd.in-toto+json
