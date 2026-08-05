## `clojure:temurin-17-bookworm-slim`

```console
$ docker pull clojure@sha256:6c74af9afe2c0898e4048acdf18bcbb60365bfac225371cd5f452c4df6c04fb8
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

### `clojure:temurin-17-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:2cedfd6eb946f25c1da18f31cc3177c4359d2b03b238a041f961768e773feed0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240795783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:060dd1735fb797ed6fc4a73173e57058104a8ba72a4cf1f79631eb9cc815e248`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:21:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:21:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:21:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:21:09 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:21:09 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:21:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:21:21 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:21:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:21:21 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:21:21 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75727383ed4984b05ff0a5dd46967f3a8e7dc52c39966ef94e4b9e8a5d05c3a4`  
		Last Modified: Wed, 05 Aug 2026 01:21:41 GMT  
		Size: 145.9 MB (145905458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d572a7fcae8f922c96463ebb7b053f49b133a2430103e98979ac47e5fb44b25e`  
		Last Modified: Wed, 05 Aug 2026 01:21:40 GMT  
		Size: 66.7 MB (66656694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19227de85910c10363d2e6594049252395254226daf71c7d6be9c35ba95c8cd7`  
		Last Modified: Wed, 05 Aug 2026 01:21:38 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ab48a6880483400620a800e3e205645d6923daacb1b6d3ca88fcb97ef4d2f00`  
		Last Modified: Wed, 05 Aug 2026 01:21:38 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b002c95ed96a41227a4ca090de3e0755b9b74320d5585f57b1e27881a9b76283
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5130025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:323b257453c16ef6320016c4ae90579c26de45f4cd05c6938f255a325155a894`

```dockerfile
```

-	Layers:
	-	`sha256:a2666ab9d41e4db8ace8357dc9c71ec330ec9cab12ee37b923d744fd5aadf624`  
		Last Modified: Wed, 05 Aug 2026 01:21:38 GMT  
		Size: 5.1 MB (5114035 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f5c1390ba16288710890ed711605dc053379dfd9995be84d06501394a53f54fb`  
		Last Modified: Wed, 05 Aug 2026 01:21:37 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d995bd30fde6161e05708bdb4620154fcd008ae204369048dd36efaf4000d130
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.5 MB (239490888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7144d8604804b2e38aa8f011fb5ce672f2e18c7f7200865b835bb43bd667b509`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:27:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:27:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:27:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:27:04 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:27:04 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:27:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:27:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:27:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:27:18 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:27:18 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:382361f270eaa0f9f72efe252f53bc106f91e474093d13caf0f76010eedccc8f`  
		Last Modified: Wed, 05 Aug 2026 01:27:40 GMT  
		Size: 144.7 MB (144724292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:113dce7f5aa76fab7a8b0528093f3c0abd6b6201818b649a2d983b9e9b55ee12`  
		Last Modified: Wed, 05 Aug 2026 01:27:38 GMT  
		Size: 66.6 MB (66648353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55d541a31b49ae65f1f8d47b66882248e18ed2955d29d03773e79b2b39ccbd4a`  
		Last Modified: Wed, 05 Aug 2026 01:27:36 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df3a2fb9dfef2946ae7866e3af833c5ac0e3558d29a125438cdce41b28621f02`  
		Last Modified: Wed, 05 Aug 2026 01:27:36 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7d9048ff95068a2190ee0c17c51e02bdc68c30b452923952cdaff50bd4068732
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5135904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bd05964d59fdad9e8a5fdf738c7f19dc2189013b5847ccb2cd32b696eee71b7`

```dockerfile
```

-	Layers:
	-	`sha256:52ac487f019b3fd2fad62e5560e3802cdc1ee20ec6e0c27bfa0f27115b585b0e`  
		Last Modified: Wed, 05 Aug 2026 01:27:36 GMT  
		Size: 5.1 MB (5119796 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:421b4a57bf86cae6c815adbd39d5d3a6b57e0fe7bdd9dd1f0e34200a8f6942ec`  
		Last Modified: Wed, 05 Aug 2026 01:27:36 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:d5716a4f6508e5b6c78b805d3d78e51647cb92418391cd1bb3ba6a87c1482236
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.3 MB (250330479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45e42f29c87c3638fa87c169a4ef1c8bdaede22f488fba173faa853403d291f8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 03:29:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 03:29:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 03:29:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 03:29:59 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 03:29:59 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 03:34:14 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 03:34:14 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 03:34:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 03:34:14 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 03:34:14 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b6fe9465bb56c5ee0b339163090868949baf79f3712bdaf93416fb87b05b7d0a`  
		Last Modified: Tue, 04 Aug 2026 23:50:26 GMT  
		Size: 32.1 MB (32076323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bf9b001c3c03526ee978c85cbf44ef2b90b2685e4627dc3481258c9eb34d3c3`  
		Last Modified: Wed, 05 Aug 2026 03:33:16 GMT  
		Size: 145.8 MB (145766102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:380afa4773bace6274356edce709e39bfd7d97dfb15964be178bf68b276d4b98`  
		Last Modified: Wed, 05 Aug 2026 03:34:51 GMT  
		Size: 72.5 MB (72487015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e99f38d99a1306e5764a4eb3979bc7fbabb95d8ebc1bd55dba5a27aab974b3`  
		Last Modified: Wed, 05 Aug 2026 03:34:49 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b5d0066b895cd39c0c2902b0f930d4b4b05c6460c7fe906cccc6160f5e21a54`  
		Last Modified: Wed, 05 Aug 2026 03:34:49 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:08889547dc3115333aa11bc5055323127f95f63f7607d9d3896c7ecc97fad9dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5135231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:475aa96f365c536f0dcdf7dc119bc0b0e78797618953cf7331eafb11735decba`

```dockerfile
```

-	Layers:
	-	`sha256:36002f28caff948caf9b113a482fcc2355850feafc3850bd0e6a081a93163637`  
		Last Modified: Wed, 05 Aug 2026 03:34:49 GMT  
		Size: 5.1 MB (5119193 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be4a11cdd2112f0aed8953232fcad85625a4e8e9abee84f9efa70b430aa7c2be`  
		Last Modified: Wed, 05 Aug 2026 03:34:49 GMT  
		Size: 16.0 KB (16038 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:8471185a3fc28fa2831d970bb1d93f572517f1efc8a85f3a4dbc72cbb4e55fa3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.3 MB (228255947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce835c2cddcd78d6eb76596713f6d233b7727e617cb778b7aec284b3f1202490`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:55:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:55:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:55:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:55:23 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:55:23 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:55:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:55:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:55:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:55:37 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:55:37 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca8071e1acdced8b3153787621993485cd2b3d16f8b6c79cb352bea6ef616b94`  
		Last Modified: Tue, 04 Aug 2026 02:56:04 GMT  
		Size: 135.9 MB (135910417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1effa12a129fb011ba0acd9b7cd008de56ff4f2a548f4f5b79b97c21dcec6859`  
		Last Modified: Tue, 04 Aug 2026 02:56:03 GMT  
		Size: 65.5 MB (65456224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e6ed3c27665237fc69bd09a9d7ef4c91f9e347ef954d98a5bcd502232a5cdb5`  
		Last Modified: Tue, 04 Aug 2026 02:56:01 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64fdb1bad56b3078f91af8e94cd46b237810508a2f7d0efc91fddc9affac5788`  
		Last Modified: Tue, 04 Aug 2026 02:56:01 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8b7402fcc048ecc1b3332c973a3d7e5569abdc076a37732d647270b08befdbdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5121346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77b2e41a1801a1df391e2f44e5a30443d8a1b50d421cc731acdfdd4d65a50b32`

```dockerfile
```

-	Layers:
	-	`sha256:186c1252ae4b5efd29d3e2405c45ae5b7b16cfe53c7342c67331f10d33a8f95e`  
		Last Modified: Tue, 04 Aug 2026 02:56:01 GMT  
		Size: 5.1 MB (5105356 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:adef49ff14a5d54342e9a62357a8f88c2add76ecdc41bed65109f03387699c4d`  
		Last Modified: Tue, 04 Aug 2026 02:56:01 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json
