## `clojure:temurin-26-tools-deps-bullseye-slim`

```console
$ docker pull clojure@sha256:c5f5699e8c5235e7fe87579cf1878992be61c534361123e95c96d536deac0552
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-26-tools-deps-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:d33818700f9ef2c55f390b91239287d4a84de4d26ce81cbba69ead0c9467761f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.9 MB (180899652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c247fa69da8c3e50a1d9fe5e71c7b770dbf0e3c688ce0dca1ef839c1aa1bcf9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Tue, 18 Aug 2026 20:51:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:51:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:51:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:51:11 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:51:11 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:51:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:51:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:51:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:51:24 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:51:24 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ab75afe6a0f0027cc830f1ca4a2c484e7056871a1adf91bd3a0b73c6ffb517b1`  
		Last Modified: Tue, 04 Aug 2026 23:52:04 GMT  
		Size: 30.3 MB (30259620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55a978c9d4f8fea3f39a1dcd12e3ea343a428a12b319efb4cf91935698781575`  
		Last Modified: Tue, 18 Aug 2026 20:51:45 GMT  
		Size: 94.5 MB (94524339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43ae49af6018ba2d1fa00a1b471f3116bc4a3577f03a73db471e3a15eb920ab5`  
		Last Modified: Tue, 18 Aug 2026 20:51:44 GMT  
		Size: 56.1 MB (56114648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ce5bb0d38630006f89ebf2ea3f05016f57b6e3a0235dd4a56a2211c055386c5`  
		Last Modified: Tue, 18 Aug 2026 20:51:41 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02263ecac451cacf6244071d2455712385c0f404776f661e6eb7d9d28bf58324`  
		Last Modified: Tue, 18 Aug 2026 20:51:41 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:32d8d6f92fdea4171489b4bf694e1caa72759bdb25d21ffa9b5d8ecd50713922
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5303926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bc58cf8d150415ee2dec34e2fa028d551f5b9a3bd3bdbbdeb7e0076478ded25`

```dockerfile
```

-	Layers:
	-	`sha256:5345b3225cced7cf6af968306ea7ad5c2db0171dc9969eac1212fd956cfb245b`  
		Last Modified: Tue, 18 Aug 2026 20:51:42 GMT  
		Size: 5.3 MB (5287943 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f85fea2196b25b803919c24d376de7866c113e155fae3ff7b424739543f749e`  
		Last Modified: Tue, 18 Aug 2026 20:51:41 GMT  
		Size: 16.0 KB (15983 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:3b018364054a2866f74f575c4a3d5f9c8541ac513d93ee82cc84bcc8ffebbcaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.5 MB (178535494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e51803ffb2a665e4976c9f03ad7bd7ffd3f49e2cc647b2070766091f6d5c8e2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Tue, 18 Aug 2026 20:51:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:51:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:51:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:51:08 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:51:08 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:51:20 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:51:20 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:51:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:51:20 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:51:20 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:93e0ff6a69cbbe5e567bea0ae7560cdd816fd4205541e7cb6b0fd3998b169541`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 28.7 MB (28748907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58d41b409edf6de0ed3bf2dc284239fd4943cddc3856edfee9b022172cc747ff`  
		Last Modified: Tue, 18 Aug 2026 20:51:41 GMT  
		Size: 93.5 MB (93504353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1aecdea5c46ae63994ae19a806fd7644ec5d2fd572a9cb3aef310f8c038fb09`  
		Last Modified: Tue, 18 Aug 2026 20:51:41 GMT  
		Size: 56.3 MB (56281194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0036ff13599f6628804e37831cda4303b8d50d624401e2df9548cb514d20257`  
		Last Modified: Tue, 18 Aug 2026 20:51:38 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7969b04520ebfb3fef7000cd25bd94b3ef92be728000daf33047c852201b7e52`  
		Last Modified: Tue, 18 Aug 2026 20:51:38 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d1009759970b23543c9ca61199937bcf43d59d760494313e4004805082ba3c13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5309772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:330c453e854d32cb1e8c86ae0cc308d70faa246a19690c2c75606c31039d0c02`

```dockerfile
```

-	Layers:
	-	`sha256:bdc6086022f5edef4eedceadddf724a40c882e4937a13e644f14098eef385f47`  
		Last Modified: Tue, 18 Aug 2026 20:51:39 GMT  
		Size: 5.3 MB (5293672 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee58f4f0b472e16aa42d13101956f7850b1904bbc4248b698fffa7c90b61f2a0`  
		Last Modified: Tue, 18 Aug 2026 20:51:38 GMT  
		Size: 16.1 KB (16100 bytes)  
		MIME: application/vnd.in-toto+json
