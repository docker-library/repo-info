## `clojure:temurin-26-tools-deps-1.12.5.1654-bullseye`

```console
$ docker pull clojure@sha256:405310550faf279775854448f9359304924ab8addbab73482487117b8cf915a4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-26-tools-deps-1.12.5.1654-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:2b7f1674716f94c141658b861c79fff3b1a7ae3939a6ca18f25f8ce926efd093
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.8 MB (214814615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:523a327bfb2550c1cd13ea521f3cc54ffe97a868dde98385da80587c5c83cac7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:24:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:24:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:24:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:24:04 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:24:04 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:24:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:24:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:24:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:24:17 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:24:17 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d61e23885980d63473dc649abde0d89b2869b343af59e7d37c8efd47948629d`  
		Last Modified: Tue, 14 Jul 2026 02:24:39 GMT  
		Size: 94.5 MB (94524314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55193f50fba5b990ef3792b4351546bd1c3b9f6f9c86e0d6995ccbcaaed61284`  
		Last Modified: Tue, 14 Jul 2026 02:24:38 GMT  
		Size: 66.5 MB (66512683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0981ab4fb5b6bee8c51cf2a82982304056f83a8f4864d994d83ce3e2c064df98`  
		Last Modified: Tue, 14 Jul 2026 02:24:35 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfedbad4677fe6aacb55f3318b165e285c94fdf0c2fa07e59735b45c39f4fad5`  
		Last Modified: Tue, 14 Jul 2026 02:24:35 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1654-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:9d8b9a0de77db60b3295a07504f5af4a0da62a81eae11d07ee4534056605055a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7386265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:126714dafdef62948cf6e42d5f4b0d76896bef02bd9a1b06af3dee8c5bac0c0d`

```dockerfile
```

-	Layers:
	-	`sha256:fe419665716d439050ec8fed9e2cec5155ae7d447f16f5b0fcbec44d3ee0429b`  
		Last Modified: Tue, 14 Jul 2026 02:24:36 GMT  
		Size: 7.4 MB (7370340 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f8de0a225b7ea59ba8acf3c74b197565d5ec9f0c4f8ca328fbde81988933804e`  
		Last Modified: Tue, 14 Jul 2026 02:24:35 GMT  
		Size: 15.9 KB (15925 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1654-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5cc278e70803ac76861e1e8a30fc576e4f64a5639ec573d3f76fb59e6bfb44bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.4 MB (212444213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3057f1966453e2abeea9072fc5f503831e6d14adaed1d08f98c6ce83fb35028`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:30:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:30:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:30:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:30:57 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:30:58 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:31:11 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:31:11 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:31:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:31:11 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:31:11 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e5ddf4f4c1211779085ecc978d63e2185abe4e2f34b83d21b5d8c6960f72eaf`  
		Last Modified: Tue, 14 Jul 2026 02:31:33 GMT  
		Size: 93.5 MB (93504340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2256b3269546a4271383931b049c28e5c5aa0392940cdef70d742217706ce51f`  
		Last Modified: Tue, 14 Jul 2026 02:31:32 GMT  
		Size: 66.7 MB (66677941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc1d9fd22b31a727a3c1072831b47c3b9a4f3533086ced760ac70a4c07271f71`  
		Last Modified: Tue, 14 Jul 2026 02:31:31 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07b087e83f5de8889d6cca862da05885a1d650b0d52da75c98c5dc341db4bea0`  
		Last Modified: Tue, 14 Jul 2026 02:31:30 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1654-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:35d8b7e2861177fba1b409223439213c65472149e3315f2afa8caded5705e598
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7391479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0191b769329580e4b1e3158afc293356deb973b70ee4de4789c28807884bfea`

```dockerfile
```

-	Layers:
	-	`sha256:2962d6f9653a724d61e2e928bd91f7e564e27703ff62da778f25bbbd529cc807`  
		Last Modified: Tue, 14 Jul 2026 02:31:30 GMT  
		Size: 7.4 MB (7375436 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a053c343ca2025925ca432b5a0b392924a62b9eb5d2cffaa2a95be0f75315f67`  
		Last Modified: Tue, 14 Jul 2026 02:31:30 GMT  
		Size: 16.0 KB (16043 bytes)  
		MIME: application/vnd.in-toto+json
