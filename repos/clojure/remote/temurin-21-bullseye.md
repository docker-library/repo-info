## `clojure:temurin-21-bullseye`

```console
$ docker pull clojure@sha256:ccc8a03df5a3361ecf299dfc02092f2f77a0f67f9933cf0d16677c3b1643f462
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:a6f78086b26e557ec28d1a23cf355e9aeccf2fa0dcdf69bc4427bc91db773fe3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.5 MB (278463333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15a8f71a3a93c63252ffede96a2e5c52a47f21cc0699b7a98d36844174cc4229`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:22:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:22:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:22:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:22:37 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:22:37 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:22:52 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:22:52 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:22:52 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:22:52 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:22:52 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:accfb92e6c6ad5d206b68e1bfd8a6c2af4ae82f9b6cc6eafe49675a0655e0742`  
		Last Modified: Tue, 04 Aug 2026 23:52:03 GMT  
		Size: 53.8 MB (53777019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84f88d69fc6bc46a1c65ddd0a8b13dfb6e6dad357bd810163e4706d53e5d9f3d`  
		Last Modified: Wed, 05 Aug 2026 01:23:17 GMT  
		Size: 158.2 MB (158166944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eee52bcf50cb06b770b2771fc3bef6b29a8e113616ce88dc7386ed9f877e399`  
		Last Modified: Wed, 05 Aug 2026 01:23:16 GMT  
		Size: 66.5 MB (66518334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65131786c57d067cabb784aece834962097f3c4e01d4e909d09b989468c5ea03`  
		Last Modified: Wed, 05 Aug 2026 01:23:13 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43ba12c282cb15945e60b4651458e227b04b37e643677354646e5f5da464e120`  
		Last Modified: Wed, 05 Aug 2026 01:23:13 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:e78e2c4bca7e63b956bab0cd5288bf47ba08751965871ae1dab63e8934402233
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7423233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fea5ae4ef02d51c41c9a717122de0faf00e785f0ab45fb920443a4f7dfa2c6dd`

```dockerfile
```

-	Layers:
	-	`sha256:e658adccee6ddbf1ec5d2c5de84be05a4fd9240c5e1bfc1389e2030f58c6f002`  
		Last Modified: Wed, 05 Aug 2026 01:23:14 GMT  
		Size: 7.4 MB (7407301 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64491447f6e2c8cfca47e55b2a7d68364efe36c86f3aaa021d85dcb1360ab50d`  
		Last Modified: Wed, 05 Aug 2026 01:23:13 GMT  
		Size: 15.9 KB (15932 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a100d5efe8256c2a6d136dee5c28c3ec05e38c6cbdbb1c508b9ff66c63af9f46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.4 MB (275408808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:348a1e9f580a7ebc69e08473150183cbd75001c32e563eec9161c3c435bb0bee`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:28:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:28:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:28:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:28:41 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:28:41 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:28:55 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:28:55 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:28:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:28:55 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:28:55 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3086cf1958fe5793d805c40e074e8662fbe7bb02df60f5a5dc95718602f4d4e0`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 52.3 MB (52260902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c208b1cce63a5280affd0881c3e9f5f8b8e9bb1f1f9d351c35e949684d1b2da`  
		Last Modified: Wed, 05 Aug 2026 01:29:19 GMT  
		Size: 156.5 MB (156461250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cc793674ffa6d920aa05ce8198d9e5bd4b9a4a3dfb702ca617eeb013b937e40`  
		Last Modified: Wed, 05 Aug 2026 01:29:17 GMT  
		Size: 66.7 MB (66685616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c588b42cfc52865a96aec294f58f0c50afc87eae571979a77c43671732255482`  
		Last Modified: Wed, 05 Aug 2026 01:29:15 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fffdb23f42133639dc48c512df488faa81e2169f48f1e5d8298e46a2102f2e8c`  
		Last Modified: Wed, 05 Aug 2026 01:29:15 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:7b675e02989b678fecea46f93b4d08df6446013abc1be2c4129035070f3b8b90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7428450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72bc159b9012ccca13626ff5a5cc8b8c103036f8c5d7550dfeefc2c7fe9a6ee8`

```dockerfile
```

-	Layers:
	-	`sha256:cbd0529552859324fc72c06b67e958f1118f6ee2207a9b10c24fcb3a65125966`  
		Last Modified: Wed, 05 Aug 2026 01:29:15 GMT  
		Size: 7.4 MB (7412400 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3322af8a4d9ec0e227a4096d0660d3b7ea3a2e862e7bd7bc47ae7e900e8abafc`  
		Last Modified: Wed, 05 Aug 2026 01:29:14 GMT  
		Size: 16.1 KB (16050 bytes)  
		MIME: application/vnd.in-toto+json
