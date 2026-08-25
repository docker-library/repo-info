## `clojure:temurin-26-tools-deps-bullseye`

```console
$ docker pull clojure@sha256:4102a5442ed81d1177d4bb86704ad3e7e646927dccea48ad39fa338ec7bc5d87
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-26-tools-deps-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:318a9c7dc714858ac611381674d852b1db05b733721709d45bf38ec74bc0bb23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.9 MB (214867853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbd9e084a2a2abd15b1b352fec1b55245e86db76fd98ad19dbe5557f40dd32a2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:32:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:32:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:32:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:32:59 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:32:59 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:33:12 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:33:12 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:33:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:33:12 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:33:12 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:94b0efe6d4f788b1b894c04a6c6885d53a41bcd0b85757fffacd2bc4de142847`  
		Last Modified: Mon, 24 Aug 2026 23:20:41 GMT  
		Size: 53.8 MB (53777392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9c937a9b3b9f4db947d44f34f6136c6b9006593a374d69efcaa3ec87cc32f1c`  
		Last Modified: Tue, 25 Aug 2026 01:33:33 GMT  
		Size: 94.6 MB (94563744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26a8f5e864d6a2e695102f87489ec52f14c7ccee958024e0a463192dea8a7896`  
		Last Modified: Tue, 25 Aug 2026 01:33:33 GMT  
		Size: 66.5 MB (66525677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c23cf52c0106ec4933d6dbf6f94b617ed2d05a510eee86788a145a8aa0d87e3f`  
		Last Modified: Tue, 25 Aug 2026 01:33:30 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4de1b9b31868ab90a4e14e41d313b787595b464821a1b87a9ae2132d756a811a`  
		Last Modified: Tue, 25 Aug 2026 01:33:30 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:ea495e45618927cba0da49231a7f459fe42b0b05e9833813bab93a3701409a57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7391470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4da15917f3b8d0154c947523facc001ebf5df3b1371180282d70f5989d0761a`

```dockerfile
```

-	Layers:
	-	`sha256:30d8e578b5c6c0a6a5bcf2efd2b23bb764a13e201f2ee012698575c5784dc1b1`  
		Last Modified: Tue, 25 Aug 2026 01:33:30 GMT  
		Size: 7.4 MB (7375545 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e2f76987f2a4bc70ed34f083d02c7e17ab2a30635de8e390adf6209ed312a199`  
		Last Modified: Tue, 25 Aug 2026 01:33:30 GMT  
		Size: 15.9 KB (15925 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e345cf6a618719ea6bec14223d1e1f9d694563e0d2feb7286aff826b35fc4ba1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.5 MB (212494064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba555f6ce7c389dc450534ea8ed523a8ec11700f8fb16e25dfe4de435d55167c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 19:12:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:12:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:12:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:12:54 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:12:54 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:13:08 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:13:08 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:13:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:13:08 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:13:08 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3086cf1958fe5793d805c40e074e8662fbe7bb02df60f5a5dc95718602f4d4e0`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 52.3 MB (52260902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db1ab4d134c2127f01d4bf4c0ae4b1d1a97ee3d898c040db2f03aafe0317cd6c`  
		Last Modified: Fri, 21 Aug 2026 19:13:31 GMT  
		Size: 93.5 MB (93541550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dcba98d9b07a717e54c9c43b9665bbe7588165e835a8c74f5fafa69f83a74bb`  
		Last Modified: Fri, 21 Aug 2026 19:13:30 GMT  
		Size: 66.7 MB (66690569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a59ef24f37dc77ec02afaeeaf88f22668ccc683a5bc4cd9b8660f92fb3f949d`  
		Last Modified: Fri, 21 Aug 2026 19:13:28 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ab751f425faf2e58e4447bae3caca2b35a8104833fe2e9b6844a5968e1927fb`  
		Last Modified: Fri, 21 Aug 2026 19:13:28 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:9f461cff402ef3df0a8422f50c6115e2974b5d62afb4910e6ea1b58ac5cdf554
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7396684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb73705dbd764fbb6b4e7fee25f7850afaffb91f565c7ba573870702c4e882f4`

```dockerfile
```

-	Layers:
	-	`sha256:24bc99c3ca065f68b69a89f54582a4a0cc4d703b22f179fac43419aa917d96bc`  
		Last Modified: Fri, 21 Aug 2026 19:13:28 GMT  
		Size: 7.4 MB (7380641 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9438c6679154f6cbc1c22b9945fce54885f2ec48b3d522638a67674b752cdc96`  
		Last Modified: Fri, 21 Aug 2026 19:13:27 GMT  
		Size: 16.0 KB (16043 bytes)  
		MIME: application/vnd.in-toto+json
