## `clojure:temurin-25-bookworm`

```console
$ docker pull clojure@sha256:b45bd082b99bdea5c0c7f949e64ae80e994befee9fd352a36c3c4b845d5ffab4
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

### `clojure:temurin-25-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:51e55cfaaa52cb79bb3ffc322a10d2ca9771bdad33487c58db10e7a0277fd834
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.2 MB (219217927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94e0f6fc698811101db07dc8e6389b1ad714bef5007a30c42a5c40abf5353d4a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:53:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:53:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:53:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:53:45 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:53:45 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:54:00 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:54:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:54:00 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:54:00 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:54:00 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6d590759168af4276259a78a4cd55dc0c8e0be392f77514a063874c55487595`  
		Last Modified: Tue, 04 Aug 2026 02:54:23 GMT  
		Size: 92.6 MB (92574587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c8d56f0ab89bf4598daeb07ec753a93a139031d5ed8b420fc74d97acf5e3d53`  
		Last Modified: Tue, 04 Aug 2026 02:54:23 GMT  
		Size: 78.1 MB (78144896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbaedf83534c24e7457b009a873ec78a2f1261dab8fa25f543264adee4da39ea`  
		Last Modified: Tue, 04 Aug 2026 02:54:20 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23c9b30bf00b88cab60ff5cdaa4cd8d3d71fe95a0d859ff76980dad47cb54373`  
		Last Modified: Tue, 04 Aug 2026 02:54:20 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:1d94faf1de66e429005a8180ee7d1dd23b8f648c80eb68e16f034c03be4e7a34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7363489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6faaf2ddfa0096d7f62f6cc44ecb7ac00eb1031daeab9763f9d028be3d2f75e0`

```dockerfile
```

-	Layers:
	-	`sha256:0ffaccfdeff85dcb3594691533e02e903292b432a88a4ba1cf800e2a4da76856`  
		Last Modified: Tue, 04 Aug 2026 02:54:20 GMT  
		Size: 7.3 MB (7345564 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c335e7e85a7095f6cd01234b8f42836abfbf1dd7301d76d6cb5889d95e44320`  
		Last Modified: Tue, 04 Aug 2026 02:54:20 GMT  
		Size: 17.9 KB (17925 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f8f4638d102ca4c5ecef3ef9be76dcc0272de9c9fddae2ca680bc58d8b530f76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.1 MB (218056100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7bb9a7638416fda98fe9a655ae8ebab7a288ff80f0df9d4518fc1868deebcb2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:35 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:46:35 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:54:23 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:54:23 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:54:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:54:23 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:54:23 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7099e73fb7072f59ca038517ea02f3fb1502239f21e541585cc05ec44867756b`  
		Last Modified: Tue, 04 Aug 2026 02:48:21 GMT  
		Size: 91.5 MB (91542246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e4f4423e67785a0607afd4cd7d38ac56f7902b742fee6c69105a25cb47e444b`  
		Last Modified: Tue, 04 Aug 2026 02:54:42 GMT  
		Size: 78.1 MB (78129124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29f77c3b58e297cd088894545f1c268aaf23ffb2ac34722afaecc01b0af20433`  
		Last Modified: Tue, 04 Aug 2026 02:54:39 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55e00061d46915c3f5029af64a5a006a95e013137cc710dd85c9bc742a1f5025`  
		Last Modified: Tue, 04 Aug 2026 02:54:40 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:1b2bd3edc6df727265f1ef6cc26d6b0d0fe89b367e039e678b71cd70e7ac52db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7369511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:944932b227b3f41b691ae557e36369e1802c2af78de3f2bbea658e5e801fd401`

```dockerfile
```

-	Layers:
	-	`sha256:4ea2d69fe5dfa53ce3550521adb47280ee7a198c7ee28ed6b1620b8b1e401e2b`  
		Last Modified: Tue, 04 Aug 2026 02:54:40 GMT  
		Size: 7.4 MB (7351396 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6c6dc51ee48342c9d40f77c430e13882124d6e4883b50f66f05fe17ec16d648`  
		Last Modified: Tue, 04 Aug 2026 02:54:39 GMT  
		Size: 18.1 KB (18115 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:71091a0621846f9fdc41b1153f1a93fd85c75241093811ce8412ea871db7a606
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.2 MB (228230791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26c1aa67b00e0104c48bbbc8413e0d005eb9c64fd9d80d87e685760d96db473c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 04:43:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 04:43:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 04:43:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:43:03 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 04:43:03 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 05:46:27 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 05:46:27 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 05:46:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 05:46:28 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 05:46:28 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:380d3eabd945505d4db48078d6d4aeda6a011b9da5c9767fd7ea92fdb78f37f3`  
		Last Modified: Tue, 14 Jul 2026 00:12:57 GMT  
		Size: 52.3 MB (52341834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c2b7a5ae2783074d802366093047d5a166bf3592a36ad11dcdc86d5868d7e0a`  
		Last Modified: Tue, 04 Aug 2026 04:47:50 GMT  
		Size: 91.9 MB (91914020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f71a753986dd67f59aef22ee9b5593a694cd0cdc58495544711603a4559373c`  
		Last Modified: Tue, 04 Aug 2026 05:47:04 GMT  
		Size: 84.0 MB (83973893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cfa9bfc5f51b00222d5f28d2e7d3e4bfc38760d6ad1f154bba7c13ffd1a7d7f`  
		Last Modified: Tue, 04 Aug 2026 05:47:02 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f4ab7262784ee80ef0d7053d9deb23da6c85a8338f53c580c923bd8211455cc`  
		Last Modified: Tue, 04 Aug 2026 05:47:02 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:542d990bce8a736025e4558594ebbb8478170e05ce4270dd8cbcc001c648265c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7352137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b74db4ffb163d55a52365cccbbcd1db7f83dce2863680a9f090bd8626842d14f`

```dockerfile
```

-	Layers:
	-	`sha256:e9740e1f2cfb83b3594a598dec36bf8ef9dad78bb628c0362d6cbfbfc082e8ec`  
		Last Modified: Tue, 04 Aug 2026 05:47:02 GMT  
		Size: 7.3 MB (7334128 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a10eb27d6677aa6f250b1a5dc9b6c3ad5df9185b88db5be53fe3c66f3761e17`  
		Last Modified: Tue, 04 Aug 2026 05:47:02 GMT  
		Size: 18.0 KB (18009 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:f9d3b535243d0ee16847031847c19e4899582e4c3c6e711b0ac878bd36592051
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.5 MB (212514659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aa7e792368441da2e8d542e2bc6d53aa0cfc3e7cfb6ec47bef2921f6fc0ca2c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 03:01:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 03:01:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 03:01:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 03:01:28 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 03:01:28 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 03:03:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 03:03:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 03:03:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 03:03:45 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 03:03:45 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e56f29808cdae0b0ae79a057631e06d5ee2175c9d7e6333974220725c749743`  
		Last Modified: Tue, 04 Aug 2026 03:03:10 GMT  
		Size: 88.4 MB (88420384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b25c221f4c7edbb89e565552871fb14ab7a518d9c601424eecd608881860a286`  
		Last Modified: Tue, 04 Aug 2026 03:04:12 GMT  
		Size: 76.9 MB (76935952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c46b0c2a2840370faf5461d2d14f1fddc703ebda85f0ce2f5d8c1abef8162824`  
		Last Modified: Tue, 04 Aug 2026 03:04:08 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43ddc039332eb4fec26467a37ca7fe0761a8a5e049a6d94787a9c29b4c8a7504`  
		Last Modified: Tue, 04 Aug 2026 03:04:08 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:fb84fc442117f78175d6ad3c1329ba42df5b93d0c990cdc4c56cf9310471af77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7338417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:181381876d20d723d44d1433eaa2e4012173d78b27da7c951e0fb3c1fcd2dd62`

```dockerfile
```

-	Layers:
	-	`sha256:91122bd04fed31a28dccbe6ac1d4689279205ad41b50864298fac5701878d151`  
		Last Modified: Tue, 04 Aug 2026 03:04:11 GMT  
		Size: 7.3 MB (7321445 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ce8f334aac2e6eb3c2f35c9606bd554112380c92122972229c20ac34fa4344f`  
		Last Modified: Tue, 04 Aug 2026 03:04:10 GMT  
		Size: 17.0 KB (16972 bytes)  
		MIME: application/vnd.in-toto+json
