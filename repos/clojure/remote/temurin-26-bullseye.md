## `clojure:temurin-26-bullseye`

```console
$ docker pull clojure@sha256:bfa879c1e6c50407957b074c6b541dca8327d8ac6982b5f1e8018b3c6f3456f6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-26-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:0a327b96fb086dc9b966d4a9d1f31cff1cbded844e304006a22d796ded9c7a36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.8 MB (214829196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad29a9911edcc16d4de3bb989cd0991c79c2686ca0ce639b0e54f81880118527`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Tue, 18 Aug 2026 20:50:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:50:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:50:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:50:17 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:50:17 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:50:29 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:50:30 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:50:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:50:30 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:50:30 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:accfb92e6c6ad5d206b68e1bfd8a6c2af4ae82f9b6cc6eafe49675a0655e0742`  
		Last Modified: Tue, 04 Aug 2026 23:52:03 GMT  
		Size: 53.8 MB (53777019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baa24f867e8ccaa9ed3b39e9c9e6dc4fee30ca705da99b47ab42d3275a124290`  
		Last Modified: Tue, 18 Aug 2026 20:50:50 GMT  
		Size: 94.5 MB (94524364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fcea889532ed95902098c55cc5bb027a7eb2316e995f914832a3fe56bcd83ba`  
		Last Modified: Tue, 18 Aug 2026 20:50:50 GMT  
		Size: 66.5 MB (66526770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f15b41d8810df0b89c209e41e77766ebf9d8f38fc64a613c9b9a45f37620bda`  
		Last Modified: Tue, 18 Aug 2026 20:50:47 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f934a8f7c25c20bd1929ece2ea6eeb627d9a9d5d73b90bee82c1df1b6a34d0ee`  
		Last Modified: Tue, 18 Aug 2026 20:50:47 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:3214c4b048dd9966a26371eabd298eab397d3e0faddc1ae376e53c75b70c2b31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7391468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93147e4791df29616d358a40361789ae10d2d10db057f4a820083eb8aa9cb4c1`

```dockerfile
```

-	Layers:
	-	`sha256:976612aae62e9223876a7b1e2bef9577c5333b0ce5844d63b4c1122fb8221140`  
		Last Modified: Tue, 18 Aug 2026 20:50:47 GMT  
		Size: 7.4 MB (7375543 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf99c8bb8ce642232ad1b71cd5498814146252671eec9243ef6b6379f6f981c0`  
		Last Modified: Tue, 18 Aug 2026 20:50:47 GMT  
		Size: 15.9 KB (15925 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7a988907446cd34437325a3fdd73d28bb89ce1e8cb570e1dac84bc2b3e5cfad0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.5 MB (212456833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdc72e45fed9641f4f3f673656fe3929cec67356c8cfe6a1e319a837c7ca0db5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Tue, 18 Aug 2026 20:50:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:50:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:50:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:50:13 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:50:13 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:50:26 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:50:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:50:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:50:27 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:50:27 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3086cf1958fe5793d805c40e074e8662fbe7bb02df60f5a5dc95718602f4d4e0`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 52.3 MB (52260902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea863299da1cea81ccc7e40ff732c42155ac2e37c53be3a3822723257f7c560c`  
		Last Modified: Tue, 18 Aug 2026 20:50:49 GMT  
		Size: 93.5 MB (93504353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7d270a87a66ec31d2a10e790b40e1faf2cd98ff2e983ac445717c91705b4198`  
		Last Modified: Tue, 18 Aug 2026 20:50:49 GMT  
		Size: 66.7 MB (66690534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:531e6126c20b1fe5d818e99fab8defe5e86c1a7447fac042deb235eb6952114a`  
		Last Modified: Tue, 18 Aug 2026 20:50:46 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd2f8cd8385e72dd1e2396162e5cd953a45687c279d4b813ccf973082f2c8531`  
		Last Modified: Tue, 18 Aug 2026 20:50:46 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:3cfd5c88b7a2edd78467eec0160190182ff053223a6fbc9c822db13340ea995b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7396682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3df9cb48f8e420dacdec562e0f05cd2b67d219e814a605d5c4e6998264603429`

```dockerfile
```

-	Layers:
	-	`sha256:2eebf9f76ce7681f75222c388da282eba4ec80244a12b0d2f534e5c861565068`  
		Last Modified: Tue, 18 Aug 2026 20:50:46 GMT  
		Size: 7.4 MB (7380639 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97d4ce92c959eda9e2d00b4820fc7951ad71217caf3ac1de6278d0ab47de1d03`  
		Last Modified: Tue, 18 Aug 2026 20:50:46 GMT  
		Size: 16.0 KB (16043 bytes)  
		MIME: application/vnd.in-toto+json
