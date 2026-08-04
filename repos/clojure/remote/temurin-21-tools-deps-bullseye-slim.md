## `clojure:temurin-21-tools-deps-bullseye-slim`

```console
$ docker pull clojure@sha256:04e2ab2d4d2a9b094d5f1352b787bf348ae29cb56ac5de1a3b71ac9fe35150f0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:c4f83eeee5d456e70d8afd84baeccb751208a711565d8e8aa07fa799e984338b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.5 MB (244533745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70b80b44977c31a344c586f08c414edfa68154ef1c18eb43145a474fa2ef00c8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 04 Aug 2026 02:52:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:52:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:52:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:52:49 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:52:49 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:53:02 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:53:02 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:53:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:53:02 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:53:02 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ab6b8caf16d7f68b8a98637a233a98f662552e76d428a4510f2c6950bbe017f9`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 30.3 MB (30259754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05d48043e80456f7351b2e190ef8d35418459f9f97869259d8d8b02cd8c9138c`  
		Last Modified: Tue, 04 Aug 2026 02:53:24 GMT  
		Size: 158.2 MB (158167004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b5b4dc0d8603a76bfe877c01ae06d8917d03f42f38f68cfdd06c2359a69619c`  
		Last Modified: Tue, 04 Aug 2026 02:53:22 GMT  
		Size: 56.1 MB (56105949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78e55042b715c1b1e3642cdffeb1feb188f32036665bddeef16c370b91cb7575`  
		Last Modified: Tue, 04 Aug 2026 02:53:20 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7ae1175865112835143478b49be43d9358087e460061e3d63f3d8ce1bc306fe`  
		Last Modified: Tue, 04 Aug 2026 02:53:20 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:17c403c7d6773c28327baf905672fd01300bacaa3a8047d8487614172f6916d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5335691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49c1dcfbae198c27d10015ab794c81d17d660d0e92315f8040d4dd77180e44a6`

```dockerfile
```

-	Layers:
	-	`sha256:5e081adf1ed5c6b3e8992d2c2d8822e77d1eb6b95365df9728d0e0e7d24ff900`  
		Last Modified: Tue, 04 Aug 2026 02:53:20 GMT  
		Size: 5.3 MB (5319701 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3a21454549db29ef60780649e97ffc75c20bd0c2be641af822706c81b0bd060`  
		Last Modified: Tue, 04 Aug 2026 02:53:20 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:fc7fd0409905dfc30095e743cb3664ef050c515682167bc0ebb1df3e7d16b7fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.5 MB (241487249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8d3b4a6c020fe4ea7da043607f2bd164cd94aaf543cee92b8c138721886d78b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 04 Aug 2026 02:53:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:53:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:53:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:53:21 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:53:22 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:53:35 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:53:35 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:53:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:53:35 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:53:35 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:61f836bad84b9e0ba9e3fe1a558be02d0d6378b8ecb4f3c1ef8f656e9e30e1f5`  
		Last Modified: Tue, 14 Jul 2026 00:14:15 GMT  
		Size: 28.7 MB (28748984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:271319b18f5a06f966f2ebd13959ee5f5c4a75c8046085bfd441174e693da32d`  
		Last Modified: Tue, 04 Aug 2026 02:54:01 GMT  
		Size: 156.5 MB (156461269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95759ca2061f4f0267582b3f487efc19a01dffd8e47ef341a311bbf60a2b615a`  
		Last Modified: Tue, 04 Aug 2026 02:53:59 GMT  
		Size: 56.3 MB (56275957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84db6704a311cc5c138a4ac24cbc64d6086840ba4264b08e10eb5dc658558319`  
		Last Modified: Tue, 04 Aug 2026 02:53:57 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3d0402d4b7a49a7cf250716877c70d29ee7ee12e8d9a997b5c2c59cd2e29e20`  
		Last Modified: Tue, 04 Aug 2026 02:53:57 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:68b2d0a2643b22b840a5f93e041a1f2c7bbe7b4d5f8d9077d6734c8ba909150d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5341540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dfc5aa4dec3bbcb7b5695fb4a3e64b12cf9b343a852f32b2a414be28ff9f551`

```dockerfile
```

-	Layers:
	-	`sha256:657cf1db4a8f389504c9f970ec83e0c27be02e7183fd6c23e651ead0f5419bee`  
		Last Modified: Tue, 04 Aug 2026 02:53:57 GMT  
		Size: 5.3 MB (5325433 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:695a75657420c21c8df8409c076a2c101aac369b01f2638b21776e47290c92d7`  
		Last Modified: Tue, 04 Aug 2026 02:53:56 GMT  
		Size: 16.1 KB (16107 bytes)  
		MIME: application/vnd.in-toto+json
