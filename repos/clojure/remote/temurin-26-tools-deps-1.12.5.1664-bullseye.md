## `clojure:temurin-26-tools-deps-1.12.5.1664-bullseye`

```console
$ docker pull clojure@sha256:b82c7744364be878ec6fde9eb18c9ecd9e581f376acf0469126b44c76d6270cb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-26-tools-deps-1.12.5.1664-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:dff84242efdd1c388e805ba4473c2236c27b739a09abfb197b785fdf75e3e012
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.9 MB (214868221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29a4f92c2f9664e8cfaa20907237814bdea7dee9bd42f85b28babad71f00ffa5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 19:23:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:23:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:23:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:23:56 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:23:56 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:24:07 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:24:07 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:24:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:24:07 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:24:07 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:accfb92e6c6ad5d206b68e1bfd8a6c2af4ae82f9b6cc6eafe49675a0655e0742`  
		Last Modified: Tue, 04 Aug 2026 23:52:03 GMT  
		Size: 53.8 MB (53777019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd5c50a2bb25b141c0149307328c60e2855a808fe0581b9da4987e718be205bf`  
		Last Modified: Fri, 21 Aug 2026 19:24:30 GMT  
		Size: 94.6 MB (94563730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a2d02141a040b88b9d99ec5abaf85733590af3c9f96c714eea443329a7b48b5`  
		Last Modified: Fri, 21 Aug 2026 19:24:30 GMT  
		Size: 66.5 MB (66526430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e9393e76b6eaf584a974e36711b3bdf979c8aecca3d1ce96caf2fc4056e1dc5`  
		Last Modified: Fri, 21 Aug 2026 19:24:26 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b821f022da105964ac5a3f70efdf580d8abfc44943d3ac408dddbf9a91abc1a`  
		Last Modified: Fri, 21 Aug 2026 19:24:26 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1664-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:f6987b73a5e04e42259a3d9ce93251539d67fc2497b65640f80455357bfe8904
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7391469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03c2ef1529d944caad98e8512da2943c48dd2b9c930f53721ca227a719058f5f`

```dockerfile
```

-	Layers:
	-	`sha256:60438f5faecec842d5e5e265351a4bbc199e6da4336aa3013c72ccd507f9fa23`  
		Last Modified: Fri, 21 Aug 2026 19:24:27 GMT  
		Size: 7.4 MB (7375545 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa1307f4da3f08071b8fd6549aca36cfe224a4fcb4d9b3360734d8ab9dff9f66`  
		Last Modified: Fri, 21 Aug 2026 19:24:26 GMT  
		Size: 15.9 KB (15924 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1664-bullseye` - linux; arm64 variant v8

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

### `clojure:temurin-26-tools-deps-1.12.5.1664-bullseye` - unknown; unknown

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
