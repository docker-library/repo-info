## `clojure:temurin-21-tools-deps-trixie`

```console
$ docker pull clojure@sha256:1053bb10761782bda98299cff0a5e0361790fb086d1586899d736a699b495e02
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

### `clojure:temurin-21-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:149ee6dc6cd09c95c3be46c80b53f92df206b85f41821ee85d29e4ef723bdc68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.0 MB (290014324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86d0f9ef1d6f97c9be6f5c546cce9ad3d1f8aced71cd5f51f43ed54a829e3e68`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:34:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:34:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:34:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:34:15 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:34:15 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:34:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:34:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:34:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:34:31 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:34:31 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fb3f170c7025d58f2897acff660c8d8571c7a5de781307d76bab80a5f362f38`  
		Last Modified: Thu, 16 Jul 2026 01:34:55 GMT  
		Size: 158.2 MB (158166935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53f2563ba25a9d64889c35838bd1282e3b4329b2e9511b766cddc28ca6be7ccf`  
		Last Modified: Thu, 16 Jul 2026 01:34:54 GMT  
		Size: 82.5 MB (82533776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f8d1d17509e36b5316dfc2f6de3e0bb6895b11c15cf5c99f683a60567d9fef7`  
		Last Modified: Thu, 16 Jul 2026 01:34:50 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86b5026ac5ec333787cd28639691a53f86cda98bf5604707fd0b784979596fbf`  
		Last Modified: Thu, 16 Jul 2026 01:34:50 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:cbeb585d78d37d6343dc4bd20d0602f473b2e1e848464eefa2de3ed53c3d000c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7486621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84f2b623a4780c6fe70a1f398262dbdd9d42e951db9dd453a0ebe50784d5dec4`

```dockerfile
```

-	Layers:
	-	`sha256:9777ba72d403985c7757eab431486e4f1195d64ce416e5eecd9d6cc446f1a9f0`  
		Last Modified: Thu, 16 Jul 2026 01:34:51 GMT  
		Size: 7.5 MB (7470713 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b38441e9f529532cc5ae18b7aa34cb5ed56e2f980f2fc2a18b3a8c34fb52f8f7`  
		Last Modified: Thu, 16 Jul 2026 01:34:50 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4537cbf8100b9f802a337b5b0e9e4b3278475de9d5ff2989b8084c0d691ad95d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.5 MB (288480256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ee2ffbb71387025e30d3214fbcfbb1030d594ee5d2213b77241ad3d05f7745f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:30:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:30:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:30:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:30:03 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:30:03 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:30:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:30:21 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:30:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:30:21 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:30:21 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13ab83c96b8c2a04989784059ab1faa7e42fddd5432b3e3315a91c728b045bbb`  
		Last Modified: Thu, 16 Jul 2026 01:30:46 GMT  
		Size: 156.5 MB (156461260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:555659cd2fc2744eb62374bd748cd6152e16dec1c5d87ca44c21a683154d4009`  
		Last Modified: Thu, 16 Jul 2026 01:30:44 GMT  
		Size: 82.3 MB (82343772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33011ed369c94fe78810448df39cc17c3a096093c4aea9f2c877d0558301012f`  
		Last Modified: Thu, 16 Jul 2026 01:30:41 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57be7ca1d329ac87a05018a1ac8a3ecc5b47e9c911a23302ad96706be6bc173e`  
		Last Modified: Thu, 16 Jul 2026 01:30:41 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:c2092a473f06fbf0f9dea76d70b11f70df26a061d1e063853b39114aa17c8948
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7493132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4550d6deb154fb64dc4e1a639d48113e4e9dab3fd43fbe5c56f4c048569f236e`

```dockerfile
```

-	Layers:
	-	`sha256:ef6292dfe520d0468f7c710b86c74d87caaf04fb8f42726a6ecd74446969ab37`  
		Last Modified: Thu, 16 Jul 2026 01:30:42 GMT  
		Size: 7.5 MB (7477106 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6bb1931153b63abe99b75c47932a00c5d2c53a188b86a2636a4ca842a84cb14`  
		Last Modified: Thu, 16 Jul 2026 01:30:41 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:ca6f4b3ab4fa4362a0d161d900d331ff2404d5e595773fd753046fc5c012d463
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.4 MB (299417215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4356fdc9e09f439a26c33e648002ef6d504f2ebf263205cf8b5815ea28306a8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 02:52:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 02:52:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 02:52:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:52:06 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 02:52:06 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 02:58:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 02:58:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 02:58:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 02:58:24 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 02:58:24 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:745b2c9d3139d6aed0b2af22d15f023d127776cd4cd5c9d5188be038d8d70a3e`  
		Last Modified: Tue, 14 Jul 2026 00:15:39 GMT  
		Size: 53.1 MB (53134011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9bde8679fb1e7aa32fbf77a5eb9478dc2a87a552d24aaa3b4df306d7bb38a6c`  
		Last Modified: Thu, 16 Jul 2026 02:55:53 GMT  
		Size: 158.3 MB (158343200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:526675390d8c9a636f03224ded0bac580227aa262586fe68c0b4819bd4fbf93c`  
		Last Modified: Thu, 16 Jul 2026 02:59:02 GMT  
		Size: 87.9 MB (87938963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f24450456e8091a039f2d3054a5a51bdd260aa48d7751e78c74240576fb60bec`  
		Last Modified: Thu, 16 Jul 2026 02:59:00 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5afb06eeb17b8f0d55d129e65fd702672e8e30acf3db93b67b20f63692e6ef71`  
		Last Modified: Thu, 16 Jul 2026 02:59:00 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:9fc2cb55caed52303b30ca4d081954ddbf7cbc0f5ab6dc6719b67fa69f27161c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7491089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdd61da0a048edcff87eb5791aa4487c6aee9d0a98c80b03f622c575aca9b029`

```dockerfile
```

-	Layers:
	-	`sha256:2a8f812fd3530d324b87f5a6d91496f96aef293e287b2aa4ef05621a4f9a9146`  
		Last Modified: Thu, 16 Jul 2026 02:59:00 GMT  
		Size: 7.5 MB (7475134 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:972c662a6da48e61253c5ccdbd8f2bf64ea992fff84d06754d281ce61d3dc247`  
		Last Modified: Thu, 16 Jul 2026 02:58:59 GMT  
		Size: 16.0 KB (15955 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:59d696f88f24bacc067b40b71f6f6c98af9152927a3945d7989345844a73d159
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.3 MB (280273254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bd94c549847565b8eededcbf69f7792c1757359a155e19e4068d0e999fd8fa7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:50:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:50:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:50:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:50:09 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:50:09 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:52:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:52:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:52:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:52:43 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:52:43 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3b67c0872a1a1dce2849ed0a6773531451a02c1a681d58d89f062b6003c72e9c`  
		Last Modified: Tue, 14 Jul 2026 00:17:47 GMT  
		Size: 49.4 MB (49381708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17404adaa369100121b2ac5d5a85114c20ec7cbf4e19ffabd016f17bc55451dc`  
		Last Modified: Thu, 16 Jul 2026 01:52:01 GMT  
		Size: 147.4 MB (147388326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db854fa525a7513021d49606cdaf97854ed6bdcf130ef84d426832aad56d9e32`  
		Last Modified: Thu, 16 Jul 2026 01:53:12 GMT  
		Size: 83.5 MB (83502179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:988fe0a80836371913d4d9de4e9725a4522991a48659b88d41326b3031a9f316`  
		Last Modified: Thu, 16 Jul 2026 01:53:11 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb519ffbb8d51f14815e01a4dae6d6a101d63c227865e516f39836c22822134a`  
		Last Modified: Thu, 16 Jul 2026 01:53:10 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:fef4e3395cf670e4ffbf104c90f441c93b9c7b15ad8b2b2e86b8103400a593bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7482543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c788950ac793cbabf9617b624c5088e03a00b7585524b98ff3d93164d035aaf3`

```dockerfile
```

-	Layers:
	-	`sha256:ebc1d41325764bd744a5cb02cfbf18b43576b175c82ed13e253bf5243eb9e3e5`  
		Last Modified: Thu, 16 Jul 2026 01:53:11 GMT  
		Size: 7.5 MB (7466635 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b493620e537b8a1ec3c4d4a26eaf09969ad2695c06c8c3060929d319afeabfeb`  
		Last Modified: Thu, 16 Jul 2026 01:53:11 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json
