## `clojure:temurin-21-tools-deps-1.12.5.1654-bullseye`

```console
$ docker pull clojure@sha256:a81a73285f5172aa2e5edf71369f0917feb12f3f0479e3f2159501b3c1359d2a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-1.12.5.1654-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:0223c52d19de5bdf746e40fa6c86d3f9dcb1799fcf1ca95f47f90445297084ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.5 MB (278457373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fc6a294288bec727d489c9c3041110b180f90989a0ef09a7bc926936c3ed1d2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:20:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:20:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:20:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:20:30 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:20:30 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:20:42 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:20:42 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:20:42 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:20:42 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:20:42 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa269559284465abe1f5cc6f4ffdd0d4ee2180256ba0ae534501b3b0c9fd4616`  
		Last Modified: Tue, 14 Jul 2026 02:21:05 GMT  
		Size: 158.2 MB (158166949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2c3ba0acb76b89320c529fc399b1f633d52923e57d4918422e722c1b7f7a3a2`  
		Last Modified: Tue, 14 Jul 2026 02:21:03 GMT  
		Size: 66.5 MB (66512808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50893e0edd6aa1c7bf2eb172edfc62a540302c140b59a838a8800e0568561fe2`  
		Last Modified: Tue, 14 Jul 2026 02:21:00 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfb731b28fc91094b55a429c68f6d87748b9758611efdeb68bbe6bc21302f590`  
		Last Modified: Tue, 14 Jul 2026 02:21:00 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1654-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:014389ab4e92a90a5a7d20163304640eb02bdf149e70244d02c7535487bb8f5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7423233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33f08c9aeec424fa3c0abcb2728068c524547249e36375352728e5a9398ffdc0`

```dockerfile
```

-	Layers:
	-	`sha256:fe5902325f1a953f1d8b86cdaaa7ac4cb5ac8c93c5a50188afac19147683fc4f`  
		Last Modified: Tue, 14 Jul 2026 02:21:01 GMT  
		Size: 7.4 MB (7407301 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9bce1d46b907b036c47c6fe1b6810e93dbbb1fb34e0fca876d958558ecade06e`  
		Last Modified: Tue, 14 Jul 2026 02:21:00 GMT  
		Size: 15.9 KB (15932 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1654-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:56fa8af37ea1b134ba00c16cbb3adce599d01256fc9e0d2705cb9558da6a006f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.4 MB (275401232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9d063bbfb50e4aaa49936341c514698b36542f3712691f199851070e5d8cc42`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:27:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:27:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:27:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:27:43 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:27:43 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:27:56 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:27:56 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:27:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:27:56 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:27:56 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9da8e3fe2d5f001533cb341e127c863b0d3005cf568fafa8c5d79f88872193e`  
		Last Modified: Tue, 14 Jul 2026 02:28:21 GMT  
		Size: 156.5 MB (156461236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dde02dc5e2e8b94b9430b41e759d9a17ecb0a96471b6c8dad576f8284d751b0f`  
		Last Modified: Tue, 14 Jul 2026 02:28:20 GMT  
		Size: 66.7 MB (66678066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:774bcf2d86a4412a9571a6749d2b9f9216bc1d9b49d876e6fda3efa287bde79c`  
		Last Modified: Tue, 14 Jul 2026 02:28:17 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7adb10929db178aff567e008c956abdc7e773450bfac5341772fea9d5c0ec7c`  
		Last Modified: Tue, 14 Jul 2026 02:28:17 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1654-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:d66f2be4cbac7d7d8f618f78c1ee61226a2ffb84a274f67068f04555bb638a01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7428448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99e7d22528e036e757a46ac46ad52c65b17bd07f7a52720f4c4a8734f27c4c00`

```dockerfile
```

-	Layers:
	-	`sha256:884cce1783be2b0513a8b474fa3b35dbd0c54a08410087ebbd5de64689ec140c`  
		Last Modified: Tue, 14 Jul 2026 02:28:17 GMT  
		Size: 7.4 MB (7412400 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2644552a29bca38982e6df0e84cba1c773f4842bfa0d414f42f1b4e172f00cc2`  
		Last Modified: Tue, 14 Jul 2026 02:28:17 GMT  
		Size: 16.0 KB (16048 bytes)  
		MIME: application/vnd.in-toto+json
