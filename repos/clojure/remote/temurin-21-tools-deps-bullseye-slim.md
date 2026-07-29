## `clojure:temurin-21-tools-deps-bullseye-slim`

```console
$ docker pull clojure@sha256:f861c8d48858e06ba6aa99f16351aa85912ba1e661309de5f4cfd5dd88fd88dd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:24daf727cb55ffcea90b708ed2d1ccf39ab3022a0244d63eddcb7d5163ade793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.5 MB (244533758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2aec4545f5c574fb5943669fe5d062e282cd9d78e3e523a0a743e87b440e3f1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Wed, 29 Jul 2026 17:56:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 17:56:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 17:56:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:56:46 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:56:46 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:56:58 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 17:56:58 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 17:56:58 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 17:56:58 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 17:56:58 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ab6b8caf16d7f68b8a98637a233a98f662552e76d428a4510f2c6950bbe017f9`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 30.3 MB (30259754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ba4b520cd2e3290a10b68cfe6fd252f66ffc6aba261c66da87edfab7f88b028`  
		Last Modified: Wed, 29 Jul 2026 17:57:20 GMT  
		Size: 158.2 MB (158166939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40634daeed0037bb39c3bfa6fa56d996cc947a9512b9d90b62d5d9beb4b64b11`  
		Last Modified: Wed, 29 Jul 2026 17:57:18 GMT  
		Size: 56.1 MB (56106021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23ae72e974d3d173dc4e8eb14e01907292e3580b556c74de459da9e710524107`  
		Last Modified: Wed, 29 Jul 2026 17:57:16 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4c9201c7227e19388a86901887da7bbe4c25acf7ef6e8eb906f9a55f2aa4ad`  
		Last Modified: Wed, 29 Jul 2026 17:57:16 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ded7525a804e7f8e65e7c60ad2e0b32a1772ec7c97b78854eeef982a56b6b191
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5335691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6440280cd8c531071bfd9fe48b066e812c4c842432848aad0f76fabca44eba86`

```dockerfile
```

-	Layers:
	-	`sha256:69d8b4dfb29e148d74ee71afa483646fb93f4ff1501c4276601d944ac072ea3d`  
		Last Modified: Wed, 29 Jul 2026 17:57:16 GMT  
		Size: 5.3 MB (5319701 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f812ff9716564ec80657b1660c64dc4854b2f21649f168ecfbc75906655ed88`  
		Last Modified: Wed, 29 Jul 2026 17:57:16 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:75126121199cd9375a3a731827a3d59baa4bcf2bd539fa2600b6e73d51235b05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.5 MB (241487326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0fc20f2c166790a7e4d750e85ebdb8c66b1eebb6c1e8a3e566e99e05f781d43`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Wed, 29 Jul 2026 18:05:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:05:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:05:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:05:20 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:05:20 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:05:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:05:33 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:05:33 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:05:33 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:05:33 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:61f836bad84b9e0ba9e3fe1a558be02d0d6378b8ecb4f3c1ef8f656e9e30e1f5`  
		Last Modified: Tue, 14 Jul 2026 00:14:15 GMT  
		Size: 28.7 MB (28748984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48b1389ceab452fa58f4ebb886cf9bc50428c2780b7a20e0685dd2e650674329`  
		Last Modified: Wed, 29 Jul 2026 18:05:55 GMT  
		Size: 156.5 MB (156461262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:291b032c2745cce8722ddb3b22a433f1de0f25f2719d8ba1b99bf8eafe509c4b`  
		Last Modified: Wed, 29 Jul 2026 18:05:54 GMT  
		Size: 56.3 MB (56276040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18bd3d32862b5777c51c669119b66a49476cb4e6bcc2f584933f95a527638730`  
		Last Modified: Wed, 29 Jul 2026 18:05:51 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34d7246746af3814411d9941cf40b2b7220ce3af3ad040a98c1501ad4f663ef2`  
		Last Modified: Wed, 29 Jul 2026 18:05:51 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6c7fdd12bbbd46c81d1b39b5c17867bfda5f9c2325307e13be01e566d1ef6c6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5341541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf052d6634f0bcad5aca26c231b6dabe6a68ec4f7ab8c38a9a05aa24b283e4de`

```dockerfile
```

-	Layers:
	-	`sha256:e51fc9202dbc2708cb8eaf256e36c0483635e047e73d9863b8e37517cd227ca5`  
		Last Modified: Wed, 29 Jul 2026 18:05:52 GMT  
		Size: 5.3 MB (5325433 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b997167796813e23f909c2e7e5a740cfb08ba6919fd6c8bfe170d5b2be94e6e`  
		Last Modified: Wed, 29 Jul 2026 18:05:51 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json
