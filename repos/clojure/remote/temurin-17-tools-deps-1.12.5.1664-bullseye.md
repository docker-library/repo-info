## `clojure:temurin-17-tools-deps-1.12.5.1664-bullseye`

```console
$ docker pull clojure@sha256:533e275dbb98868cea16d906021010b3033fd9d9f3df4207116219328edcbb6a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.5.1664-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:220c2c46ddf2157e7bebe8dcae983aa2894f1232600dc764fa997a7dd6372054
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.1 MB (266127123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f569d3a11baaafffd75ee47644f842209bb3f803d8cac0de627a92804fb564f7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 19:15:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:15:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:15:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:15:14 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:15:14 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:15:28 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:15:28 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:15:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:15:28 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:15:28 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:accfb92e6c6ad5d206b68e1bfd8a6c2af4ae82f9b6cc6eafe49675a0655e0742`  
		Last Modified: Tue, 04 Aug 2026 23:52:03 GMT  
		Size: 53.8 MB (53777019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eac2ba2af256f08bc6bc5a6029e4f619119f8d628b15d0797e1ded703686bd90`  
		Last Modified: Fri, 21 Aug 2026 19:15:52 GMT  
		Size: 145.8 MB (145822643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:241706a0f52a35e5a82aee7af53958ee0296b4ac6a5bd742669678b281c7d3ba`  
		Last Modified: Fri, 21 Aug 2026 19:15:50 GMT  
		Size: 66.5 MB (66526418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4089f86a476bedda09998a3078226700bbdf2091ee14068d9fba59528888f55`  
		Last Modified: Fri, 21 Aug 2026 19:15:47 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b15ea993701aaaafc133a9464a5f71c7a1f138e9275a996a75ca961ba73afe82`  
		Last Modified: Fri, 21 Aug 2026 19:15:47 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1664-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:de0db3fc17f8c97a6e72e2f7124956ee5582b262cb173ef6550084b8351428e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7426582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec56e5608657ab561762026ac2e86a6f4b08e5bf298f04b0be9aab7e3fa2a952`

```dockerfile
```

-	Layers:
	-	`sha256:bea017c49b2180674ca877e517978ad627bd755303608aa049d18e2c7379e8bd`  
		Last Modified: Fri, 21 Aug 2026 19:15:47 GMT  
		Size: 7.4 MB (7410650 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:02a3717249334356c2966eab273b90efcc120b1e124cee25f2f33d87432ef05a`  
		Last Modified: Fri, 21 Aug 2026 19:15:47 GMT  
		Size: 15.9 KB (15932 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.5.1664-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:87c3b0cea59109a695035be4b691dac7e5dc2c092350ce273a832d35eae03588
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.6 MB (263599985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fab087a6ad942663745d0220f7e731f905831deed6f314b61f221dd0091440b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 19:04:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:04:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:04:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:04:58 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:04:58 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:05:13 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:05:13 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:05:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:05:13 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:05:13 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3086cf1958fe5793d805c40e074e8662fbe7bb02df60f5a5dc95718602f4d4e0`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 52.3 MB (52260902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9618518ab023c195351908bca0bd9d3551078fc70a6cabe9633017485caf4a22`  
		Last Modified: Fri, 21 Aug 2026 19:05:41 GMT  
		Size: 144.6 MB (144647513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eaba6fdce654244f90bc028eda68eb2e3e4a6edcd8037513d4381caefa76216`  
		Last Modified: Fri, 21 Aug 2026 19:05:39 GMT  
		Size: 66.7 MB (66690531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc76e77596e675d8459588b6e9a644d3e0716d31900ad3266b5f9f3917e0ea25`  
		Last Modified: Fri, 21 Aug 2026 19:05:37 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8011e66aeb352d0345f7b2c28453ae55949449730355f3e7df59290c6389f3de`  
		Last Modified: Fri, 21 Aug 2026 19:05:37 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1664-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:f27942b26e9adea7d379ca6c6e820d4ebcf1f0f49ba506cc4c2125b12e73bf39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7431799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bfbdaa8d76b4015ea8f9bf2f871dd7ab9109096c603a2695950c423e23b1a5f`

```dockerfile
```

-	Layers:
	-	`sha256:6ab90d205ce46f18bfd462d64e3c92a04d6cb5ae765c0663d43090ba3e63e5d8`  
		Last Modified: Fri, 21 Aug 2026 19:05:37 GMT  
		Size: 7.4 MB (7415749 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b255c3106b2cb0d187727cd2ada41105ae116d860a112b50740c83750e4c2683`  
		Last Modified: Fri, 21 Aug 2026 19:05:37 GMT  
		Size: 16.1 KB (16050 bytes)  
		MIME: application/vnd.in-toto+json
