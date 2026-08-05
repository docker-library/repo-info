## `clojure:temurin-17-tools-deps-1.12.5.1664-bullseye`

```console
$ docker pull clojure@sha256:c30febffd5366e98c7c194962dee712812d78641f57b9626e77543a01146d464
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.5.1664-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:62a04e7557b9767c7fdfb6d2bdb287688f2b43b69f4319a80f31880d6e9d0607
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.2 MB (266200636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e472ace71d687d0d474e7125da38e148f8c95bd610793198de48892a0224513a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:21:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:21:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:21:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:21:01 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:21:01 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:21:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:21:15 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:21:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:21:15 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:21:15 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:accfb92e6c6ad5d206b68e1bfd8a6c2af4ae82f9b6cc6eafe49675a0655e0742`  
		Last Modified: Tue, 04 Aug 2026 23:52:03 GMT  
		Size: 53.8 MB (53777019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:260333d5b7bf5ae3d21e6ed0e2e26a60cd7218f783466175021525cdc89dbcd6`  
		Last Modified: Wed, 05 Aug 2026 01:21:38 GMT  
		Size: 145.9 MB (145905441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da39fbf1b914a03adf9feeaea7d60bbfae53acc7d493bc54bafc2480034d0035`  
		Last Modified: Wed, 05 Aug 2026 01:21:37 GMT  
		Size: 66.5 MB (66517133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5496eef0f0b54b2b7b60e8e4375e7e2b385aedb5bd1f6bd8ad36e951b9a7bc1`  
		Last Modified: Wed, 05 Aug 2026 01:21:34 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4713a05d7b44e118d8212acc52345fcc92f3aeef938b206abee2e4760100ba63`  
		Last Modified: Wed, 05 Aug 2026 01:21:34 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1664-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:fd3d443d9f7c5d4d0b635c5b004f09cfe184e23a5c1e9d51d0de2166b669955d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7421381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cced634d3a6df1b8968b6806138c5779fb3020e099a8257bb7a1cc9d3d061475`

```dockerfile
```

-	Layers:
	-	`sha256:996ce5b8b0d69c08eb61e655978486eba8c2d1586953ac73426be5ff7877e3a1`  
		Last Modified: Wed, 05 Aug 2026 01:21:34 GMT  
		Size: 7.4 MB (7405449 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:76e0939f67f63877ac5217a347c2e952fc2578dd77c22e34f27851c7f36f10ef`  
		Last Modified: Wed, 05 Aug 2026 01:21:34 GMT  
		Size: 15.9 KB (15932 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.5.1664-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:bc75d33e6c8d06de63e5449acff02ce29400547e09b05502151a48ffeefbeaaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.7 MB (263671679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee5689039b421416d71b8e50c1f0f0ba7aa67e0466017bce4c818734add53dce`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:26:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:26:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:26:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:26:57 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:26:57 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:27:11 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:27:11 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:27:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:27:11 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:27:11 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3086cf1958fe5793d805c40e074e8662fbe7bb02df60f5a5dc95718602f4d4e0`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 52.3 MB (52260902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04657c81a89d6c75ce21994ab5be9743f1c48954511df53d07e4eb788b8b7c57`  
		Last Modified: Wed, 05 Aug 2026 01:27:34 GMT  
		Size: 144.7 MB (144724280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a865c5e27691f60028aeba689ef78fb3eb1dec5fa61327d7bb484b82832812a`  
		Last Modified: Wed, 05 Aug 2026 01:27:33 GMT  
		Size: 66.7 MB (66685457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12a8bbface10a4076ec5b5b0fefbd6f97ea06137819f00d7d77ccb3b20c02288`  
		Last Modified: Wed, 05 Aug 2026 01:27:30 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f79173b0894b3d3b6aa4d10e070feff97be53abca38f9577b6789e0476552fa`  
		Last Modified: Wed, 05 Aug 2026 01:27:30 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1664-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:93f53289ed15f285cd5c69890a1b36c59796a03f94f24d02e9bb25a3aa650f5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7426598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47d289c03594d881161ac5be2cc25cfdaba04cb81734171f8ceed667f31ac2f6`

```dockerfile
```

-	Layers:
	-	`sha256:29f719478517d22125db9637c31427bd9583242784de7b2ff40d3ca82d8665fb`  
		Last Modified: Wed, 05 Aug 2026 01:27:30 GMT  
		Size: 7.4 MB (7410548 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea1e74ca4ebf453aa65024b8b378c7cb215539267086c828d9e4353c4f2c6e57`  
		Last Modified: Wed, 05 Aug 2026 01:27:30 GMT  
		Size: 16.1 KB (16050 bytes)  
		MIME: application/vnd.in-toto+json
