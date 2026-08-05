## `clojure:temurin-21-tools-deps-bullseye-slim`

```console
$ docker pull clojure@sha256:382ff16eea18b84d390a37264dea50dbb0ba44c29d30e0e008f7e1a3616341fa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:612336f10821d060ca32341e3d95173e06ef201fcb127f6bf4a5fb5d662eba90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.5 MB (244533754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:772088768ddbb529e8cdcdba95ea6a9cb83914b6210602aa85fede73f1bb869c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:23:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:23:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:23:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:23:06 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:23:06 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:23:20 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:23:20 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:23:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:23:20 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:23:20 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ab75afe6a0f0027cc830f1ca4a2c484e7056871a1adf91bd3a0b73c6ffb517b1`  
		Last Modified: Tue, 04 Aug 2026 23:52:04 GMT  
		Size: 30.3 MB (30259620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34f9cd73c40707f6e7a9b2283a2f7455f92611047c1536fe0b3f5fdc7db6c41c`  
		Last Modified: Wed, 05 Aug 2026 01:23:44 GMT  
		Size: 158.2 MB (158166944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c50962fa27f041cb80382c4a7034383eac22f94bfc0fccc0d827516435b16c9`  
		Last Modified: Wed, 05 Aug 2026 01:23:42 GMT  
		Size: 56.1 MB (56106151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd56515576a42e52c28c3b864670b04fab9a5803b891b12898a662df88593b7b`  
		Last Modified: Wed, 05 Aug 2026 01:23:39 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2acd20c1ffe2d31c4908477a2b746040a531f59dab0c441fcbb184ecbd5487de`  
		Last Modified: Wed, 05 Aug 2026 01:23:39 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:566349573c297a36dd470256b144133f4899d70e1453c1d09b406523f04d6487
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5335691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5103e5e7f452affb91bcfa100e52a3c339ece1b59e146ad5e13630c5a1fc466f`

```dockerfile
```

-	Layers:
	-	`sha256:d5b58905ccdbb99a0e27c487c3b4ab825302f448da20d1fe3d529dcac98845fa`  
		Last Modified: Wed, 05 Aug 2026 01:23:40 GMT  
		Size: 5.3 MB (5319701 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b03d05dfa6947a1c1f1ddd9928cd9af6c429d3a48fd14a21127d40d7085b0bbc`  
		Last Modified: Wed, 05 Aug 2026 01:23:40 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:18f224f1c333be1d76e9984eceeb11e74fd3485a71def25e883cb085d76d8cd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.5 MB (241487294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be094bb1cd000516b45a6622f099fc2bc7cf39d6ddb30fca272dd336d2d52d55`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:28:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:28:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:28:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:28:55 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:28:55 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:29:09 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:29:09 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:29:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:29:09 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:29:09 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:93e0ff6a69cbbe5e567bea0ae7560cdd816fd4205541e7cb6b0fd3998b169541`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 28.7 MB (28748907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e608ab16158373a95f27d12ac819d53dbbc5862c62d5c9c6f6de49ae9a4ca2b3`  
		Last Modified: Wed, 05 Aug 2026 01:29:31 GMT  
		Size: 156.5 MB (156461250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a164a216c042eb263983b106f198822da33526311149a776c933cb70e3039c76`  
		Last Modified: Wed, 05 Aug 2026 01:29:29 GMT  
		Size: 56.3 MB (56276100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6b8dc46c69a8109d04b3d169e0a6741008cbd3db442c2f8a6b9ab2e54152eb0`  
		Last Modified: Wed, 05 Aug 2026 01:29:27 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bb1ccfa601096f605c75591f9a7803238e0e7ecbcdb6f31baf0e05d14d9a49d`  
		Last Modified: Wed, 05 Aug 2026 01:29:27 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7ca0a21dea1592424f3bf3cf8f9455182c010aca93cd3717ad1bc6dec530d437
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5341541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2320171940072d225b1206d379db53d3a454f07e5aaf53d7034b00dac889eaa9`

```dockerfile
```

-	Layers:
	-	`sha256:5f48537afca4ecbb84bbaa2a48ddd39a1f05b60c7e980b16d49cf20c6e857816`  
		Last Modified: Wed, 05 Aug 2026 01:29:27 GMT  
		Size: 5.3 MB (5325433 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2de9b833020303854b1344e57eb5c3ddca9f576eafd95c8667bef43c99539cb0`  
		Last Modified: Wed, 05 Aug 2026 01:29:27 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json
