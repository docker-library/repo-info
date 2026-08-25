## `clojure:temurin-25-tools-deps-bullseye`

```console
$ docker pull clojure@sha256:f6fc9df7b0efac6d025af8a417bf88feb830bb4b0bb0e39b65d9eb5ad01d0102
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:d3c2e713c078f64b1fc529742c115cdb66769731b299865f0fef3c6236645439
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.9 MB (212919601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:856cad85a081d68bd0fc8a54be651572c722d6e0909b4e7a6353403b7e3ad3aa`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:31:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:31:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:31:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:31:23 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:31:23 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:31:35 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:31:35 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:31:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:31:35 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:31:35 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:94b0efe6d4f788b1b894c04a6c6885d53a41bcd0b85757fffacd2bc4de142847`  
		Last Modified: Mon, 24 Aug 2026 23:20:41 GMT  
		Size: 53.8 MB (53777392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd3ffa14ae4d032bdc63e2e08609c6107fb2640b3ab1fa10b06b29d5a7192667`  
		Last Modified: Tue, 25 Aug 2026 01:31:56 GMT  
		Size: 92.6 MB (92615071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e10718671eaaa681b470a5754b8923145bd17b065c275f297816321b327cb5fb`  
		Last Modified: Tue, 25 Aug 2026 01:31:56 GMT  
		Size: 66.5 MB (66526097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca29ed27da981f8af8916c3ab0966d3f3b06153f2d97cb6ed45946239a50c4e6`  
		Last Modified: Tue, 25 Aug 2026 01:31:52 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1ac843b5355576dcb5212000c68d58f4e67eb24af7204c155d67df97d506cf1`  
		Last Modified: Tue, 25 Aug 2026 01:31:52 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:5b6a5de4f401c6aa047125e6a47f32110c7ba8d71ce3fd2c90b82d4180e07d05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7395323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a65fcfad100ded3c65225cb2f7116cd6013c3d854af53bef1581f94b2bb0e84`

```dockerfile
```

-	Layers:
	-	`sha256:3383fcdf55fefbb49af2dababe4a45ff720f5c9f95d4c18281a019a344d0788b`  
		Last Modified: Tue, 25 Aug 2026 01:31:53 GMT  
		Size: 7.4 MB (7378722 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a996477c96ad8df30c2363104c031d2cb8d630019abc13df96abe6375690f003`  
		Last Modified: Tue, 25 Aug 2026 01:31:52 GMT  
		Size: 16.6 KB (16601 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:28471ee37db3871538c4fc9eb73df4ce54077453eac01001ff44659f3ab0c799
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.5 MB (210485191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79ea7b392fbf28991258dd617b5e9e4b15730f7b350a9c3d54bfb860e36694b7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:35:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:35:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:35:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:35:43 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:35:43 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:35:56 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:35:56 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:35:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:35:56 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:35:56 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:efeeefc1421af2e3b9b27f2b236e6fca6b6df5f1f1d5919c2608f27cc4503c31`  
		Last Modified: Mon, 24 Aug 2026 23:20:19 GMT  
		Size: 52.3 MB (52261343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ee1f2ea9d92a39ebd4e9ddf252ea5d70885768cc674bd7fac479b5d7b063c89`  
		Last Modified: Tue, 25 Aug 2026 01:36:17 GMT  
		Size: 91.5 MB (91532213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20cfcb4e1ab82e2e59b891d2ad40595872d32dc655da866575b06526300def8b`  
		Last Modified: Tue, 25 Aug 2026 01:36:17 GMT  
		Size: 66.7 MB (66690596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beefd38b3b3550a2de4cce062897a7d6425608b290b3bffed99e8418403acdf0`  
		Last Modified: Tue, 25 Aug 2026 01:36:14 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e06deefb6eefc9717ad143e70eb1fcdc7dfe79d1b0cdc36a98c7f5f70ad3d24`  
		Last Modified: Tue, 25 Aug 2026 01:36:14 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:ebeea770e4f9a0c13a6d699c7280544af7233d8e566d99e3d0e826c8b94c9fb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7400584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fcd8fbc4603edea93b485e19d9efa04f8e887a5f603a7d78532e662c2986e08`

```dockerfile
```

-	Layers:
	-	`sha256:5073b42cbf206b93c6c6212fa406d8f8851d9e9fbb4e2f8a7347a9f008581c8d`  
		Last Modified: Tue, 25 Aug 2026 01:36:15 GMT  
		Size: 7.4 MB (7383842 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:066a830ac9a8aa3f730d4058e1ff9b223a13ab9204c306412b62d6ff1f20631d`  
		Last Modified: Tue, 25 Aug 2026 01:36:14 GMT  
		Size: 16.7 KB (16742 bytes)  
		MIME: application/vnd.in-toto+json
