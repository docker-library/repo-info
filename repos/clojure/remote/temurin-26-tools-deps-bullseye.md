## `clojure:temurin-26-tools-deps-bullseye`

```console
$ docker pull clojure@sha256:cff1c1587e735f07a7ad3649771766914ec4024d96482a148d7297beb468c17c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-26-tools-deps-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:c008f0406e44b9c764e4d3198933abb48ef71722a1f0e5f12f4b5a44f7280876
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.8 MB (214814593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08d928500ceec0112a1815b85bdec85c2f3d0262a9e0f56eb43c2124f188ea88`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Thu, 16 Jul 2026 01:36:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:36:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:36:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:36:44 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:36:44 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:36:56 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:36:56 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:36:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:36:56 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:36:56 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:831476d4e156562504dde5e52f8a2e9932a2ddf01b4ac4c4e207c12607e7d7ce`  
		Last Modified: Thu, 16 Jul 2026 01:37:17 GMT  
		Size: 94.5 MB (94524351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66b75f19e64563eb1ce1890974a963c220634999c6143afcf42aade00c2e1e24`  
		Last Modified: Thu, 16 Jul 2026 01:37:17 GMT  
		Size: 66.5 MB (66512626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42380dbe306c823567efe7cd51f103e308195016880bd26f4c292e1df80faf79`  
		Last Modified: Thu, 16 Jul 2026 01:37:14 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f73b3a5364883812198e72e84c0df131218ecf2695c174d486b6c49d3b08c1a1`  
		Last Modified: Thu, 16 Jul 2026 01:37:14 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:a6d0557c88ef78040a6cff4ed3ff0db0eb7da85a842f701938230a47a6f6d868
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7386264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cfbb9e527d39929cdbe7e390b067fee1d7e4ed5e8bde4fb0b3bff7b7b13be69`

```dockerfile
```

-	Layers:
	-	`sha256:515b15c104d3c8b8bd604825905cb61d8eedfc8ce22ace31056d5928a195d225`  
		Last Modified: Thu, 16 Jul 2026 01:37:14 GMT  
		Size: 7.4 MB (7370340 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:657818aa4c6b9a96d693a56931f9e6ef0155772320696165efb7d03c191ff2c9`  
		Last Modified: Thu, 16 Jul 2026 01:37:14 GMT  
		Size: 15.9 KB (15924 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:843dcf6c13beeba26471fab5c8c9d7f56f6cdd6a30da6297f8b34674fddc8b2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.4 MB (212444158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b4d9c75215a19c482693513d1033c286e4bd53a128c9a82174eea8aabc9c880`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Thu, 16 Jul 2026 01:32:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:32:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:32:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:32:37 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:32:37 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:32:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:32:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:32:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:32:50 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:32:50 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:981f9674fb54c8d5e6085a24ed160fee9d044a467395ad709f397a1a71e1b271`  
		Last Modified: Thu, 16 Jul 2026 01:33:13 GMT  
		Size: 93.5 MB (93504346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9763727d001173734d62bb2aef295b02fad727db66a566116d5d92843fffddaa`  
		Last Modified: Thu, 16 Jul 2026 01:33:12 GMT  
		Size: 66.7 MB (66677879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22df4f9266d85f2abf004cc5cde76414c75659189e2effaba3fc90caa75bde5e`  
		Last Modified: Thu, 16 Jul 2026 01:33:09 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6f15929c019f2211b792bd76b0e925d693b1af2e19433c645d31185a8edff55`  
		Last Modified: Thu, 16 Jul 2026 01:33:09 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:e9bdc44d92bae62c73e85efec4868e0949f57355c1a4ecf26d8f5e8e334437b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7391479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf3867da483be0469114e081f369f3477f678b74d0b37b9dbaadf9a6db623a24`

```dockerfile
```

-	Layers:
	-	`sha256:d63c329a386ac6675c989272bb82a96f541d100cbbca3fe002b29f1deb2ad478`  
		Last Modified: Thu, 16 Jul 2026 01:33:10 GMT  
		Size: 7.4 MB (7375436 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80b9a7272509c0e3acdd163c37a0ea80e424d180aaca33378f1d45b820493d66`  
		Last Modified: Thu, 16 Jul 2026 01:33:09 GMT  
		Size: 16.0 KB (16043 bytes)  
		MIME: application/vnd.in-toto+json
