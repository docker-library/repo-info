## `clojure:temurin-25-bullseye`

```console
$ docker pull clojure@sha256:8aa6d9adc5b644d700e529dc6e1af1f9485e6f1ba724aeebe6e920f69c3780e3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-25-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:5ab98cb4eac1ad574a8bc6c3434c592827bdb723d7d0d8ae4f58e7e3cea6ac4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.9 MB (212919205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6a7404aa2540263c84b20661bea3548d5b92b7e9722fe4c20701cb224f0902e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 19:21:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:21:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:21:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:21:04 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:21:04 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:21:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:21:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:21:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:21:17 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:21:17 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:accfb92e6c6ad5d206b68e1bfd8a6c2af4ae82f9b6cc6eafe49675a0655e0742`  
		Last Modified: Tue, 04 Aug 2026 23:52:03 GMT  
		Size: 53.8 MB (53777019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fd765d478c593a99eed53e1c7785d3ceb45fda10f480f374aa3f522fae50afe`  
		Last Modified: Fri, 21 Aug 2026 19:21:39 GMT  
		Size: 92.6 MB (92615082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77d5e0a05f24d3b573bb5bf1b7a179da5a61454bb4f6a768b1efc46443febf23`  
		Last Modified: Fri, 21 Aug 2026 19:21:39 GMT  
		Size: 66.5 MB (66526062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3cb89146c4abfbc315478523116eb2e9f3e51e444678bf6d728640a59afc960`  
		Last Modified: Fri, 21 Aug 2026 19:21:36 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e0fc2f8bfa9e27a28ff69e8fd072bb37388f464df358a0a1a2477a05df93e1e`  
		Last Modified: Fri, 21 Aug 2026 19:21:36 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:c44aa165dde83cd7a15f21fe626ae5c72bc41b487fd60ae4b62e2808cb3116e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7395323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97a5d950142535228228cc0137dfb5e5ad22147494efedd389de1788c6b0151c`

```dockerfile
```

-	Layers:
	-	`sha256:82835cd093c416446deac29fcc57258e2a7e9921ab6c90df5ebba7a5cc434df0`  
		Last Modified: Fri, 21 Aug 2026 19:21:37 GMT  
		Size: 7.4 MB (7378722 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9334c787808a7dafa6eebefeb37e8f9ebc855b3c411ed69feb470626bb13f0c7`  
		Last Modified: Fri, 21 Aug 2026 19:21:36 GMT  
		Size: 16.6 KB (16601 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-bullseye` - linux; arm64 variant v8

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

### `clojure:temurin-25-bullseye` - unknown; unknown

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
