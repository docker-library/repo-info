## `clojure:temurin-8-bullseye`

```console
$ docker pull clojure@sha256:eb514699782c55327262cfaea8237a5bee0830a9d988e1a09dc436e3ab7cdab7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-8-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:5dc4835e6ced67fe4d30a349ff157d9427f1c1b793e57674bcf8842848e373c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.5 MB (175488787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6803a6a4193ea8438b15b4224ab9fe3a6ec89a017d19cef8429053f2922262a`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Thu, 16 Jul 2026 01:26:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:26:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:26:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:26:25 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:26:25 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:26:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:26:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:26:39 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da6328c1d8f5de6bb99b809da3bf3732c159f80995113c3e41d26b83f4b014a9`  
		Last Modified: Thu, 16 Jul 2026 01:26:57 GMT  
		Size: 55.2 MB (55198725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec60b0766cc86c1401c17695fde67c949f837357296126665682a4544985e76c`  
		Last Modified: Thu, 16 Jul 2026 01:26:57 GMT  
		Size: 66.5 MB (66512841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14ac60c41f76212243026a04c6d0c634e1b26e8b162e02ef587470aba50ae6ce`  
		Last Modified: Thu, 16 Jul 2026 01:26:54 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:22181686ad0d4d9dcde70040400892eb5183ac23e507ba50de97f3cb6d60d692
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7540157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e09d9600fccbb07683cd6d47e0654304c1a9b760eb3b24656a13d9746d7eeafb`

```dockerfile
```

-	Layers:
	-	`sha256:5fa4acf70c544f813e073a6056f5583eaeeddad5e09e32630edfd45be4fe7b3e`  
		Last Modified: Thu, 16 Jul 2026 01:26:55 GMT  
		Size: 7.5 MB (7525809 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e10d9133f18ed13f58ed89332d23a685695ab8eb051444e17e19161337908978`  
		Last Modified: Thu, 16 Jul 2026 01:26:54 GMT  
		Size: 14.3 KB (14348 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:0c1b7dc1e362336894c4a1585860b6d9bfb0bf418f3861a8c803578c0eff00c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.2 MB (173212140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd3e58f786814bf363d23c12d490cca48ea81165195de1d00beb486436256184`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Thu, 16 Jul 2026 01:19:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:19:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:19:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:19:28 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:19:28 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:19:42 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:19:42 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:19:42 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:917b45f4ffd004b9865bad41a2ebeb9b3a84d3bc0f6b936151871de4a9e0ed70`  
		Last Modified: Thu, 16 Jul 2026 01:20:00 GMT  
		Size: 54.3 MB (54272926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4df0e72e049b991d1b24cb38de149d29b651fa76e3c58646200cc6c97312a749`  
		Last Modified: Thu, 16 Jul 2026 01:20:00 GMT  
		Size: 66.7 MB (66677678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1898cc7e17928e69b5b502cac19116aeb9bbb75ad167f350f305b4dae6f8f4d6`  
		Last Modified: Thu, 16 Jul 2026 01:19:58 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:f2d10d8cea1e7549a9053a621a9acd80d142f1123a403450145067a7646e3df7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7546074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0350a360fcbfda1ff00af38ab652c13aaf14c0f514c9112b3459d167522fd64c`

```dockerfile
```

-	Layers:
	-	`sha256:294a2e6ef025999e7217e123c4ea3cbe07469cfc853d263ddd33f1f053836d6b`  
		Last Modified: Thu, 16 Jul 2026 01:19:58 GMT  
		Size: 7.5 MB (7531608 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e70dc74d5828c76c9734e1fba7e9e57ab677749c1a2fad0c2fe8c5229cf2071`  
		Last Modified: Thu, 16 Jul 2026 01:19:58 GMT  
		Size: 14.5 KB (14466 bytes)  
		MIME: application/vnd.in-toto+json
