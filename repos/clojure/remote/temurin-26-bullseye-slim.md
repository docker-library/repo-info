## `clojure:temurin-26-bullseye-slim`

```console
$ docker pull clojure@sha256:73cd3928f962b25f905ac3e3e47ed69d6c14f1b63477a3b982d0f43eb3da3cfd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-26-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:c19e4ef6227c7fc87663a8576333c480d4f6998627560a7fe305972628373165
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.9 MB (180885571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:875b183aca167432780c71adb8e3aa52d23a0e4f15a63f286b845934b5e97035`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Thu, 16 Jul 2026 01:36:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:36:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:36:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:36:43 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:36:43 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:36:56 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:36:56 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:36:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:36:56 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:36:56 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ab6b8caf16d7f68b8a98637a233a98f662552e76d428a4510f2c6950bbe017f9`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 30.3 MB (30259754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86780e71ca2e939b8769c96b035d2e95d07c81946596829d9780ad32f1651239`  
		Last Modified: Thu, 16 Jul 2026 01:37:17 GMT  
		Size: 94.5 MB (94524377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c4ae437934b2b8abe10f75ba92c12342672d3d63c2907e378cc536605ad2709`  
		Last Modified: Thu, 16 Jul 2026 01:37:16 GMT  
		Size: 56.1 MB (56100401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9503137a4de8ea9267d0d141142504c1ce2133512593adc2772831bcbb262529`  
		Last Modified: Thu, 16 Jul 2026 01:37:13 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7d3730594b70e25fcedba210acc901dcadb185a4f91e58b0b21b0d9dfa76f26`  
		Last Modified: Thu, 16 Jul 2026 01:37:13 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:fc90897092a951a831d062f791bdf07789d07ac0d49407e8b020e4d58e491915
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5298723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fd6821bd332731d3768fa79727e3594dc6e4d44fbcd3ab90d7148e8b1f47207`

```dockerfile
```

-	Layers:
	-	`sha256:c76d8bff5d2b49ef52a4a1f30f01fb3036e8173e0cb1cb2bcf41949dd0a3deaf`  
		Last Modified: Thu, 16 Jul 2026 01:37:14 GMT  
		Size: 5.3 MB (5282740 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5ee84776fd6f008491b4dbe06b59dbf07ddbd23467c1c94d79cedeb7282d96a7`  
		Last Modified: Thu, 16 Jul 2026 01:37:13 GMT  
		Size: 16.0 KB (15983 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:bcb50e9a55d29d594e1103d70c267d144e5af026dfa185e505ca77361a1e2733
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.5 MB (178521494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e848312dd9e9a1c7045824a6982162eff72cf8a50001aae1be5c653186037fe2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Thu, 16 Jul 2026 01:32:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:32:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:32:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:32:35 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:32:35 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:32:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:32:48 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:32:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:32:48 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:32:48 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:61f836bad84b9e0ba9e3fe1a558be02d0d6378b8ecb4f3c1ef8f656e9e30e1f5`  
		Last Modified: Tue, 14 Jul 2026 00:14:15 GMT  
		Size: 28.7 MB (28748984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6543edb8283354883ebcd9470b137647797b67a7d62ed4128095426679531ba6`  
		Last Modified: Thu, 16 Jul 2026 01:33:09 GMT  
		Size: 93.5 MB (93504375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72faa7d27b46a4bfdbf426be20e5ed66de528ccc7f8726c4b145af375bb309e1`  
		Last Modified: Thu, 16 Jul 2026 01:33:08 GMT  
		Size: 56.3 MB (56267096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6dadddce78433c1da1a2b1646f0f2c5c5a0c54eebab564c96889c474848db03`  
		Last Modified: Thu, 16 Jul 2026 01:33:05 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f9d00cf3c95146ae2b52956c054a8d404cdc5b785274430e12d59ed840353d5`  
		Last Modified: Thu, 16 Jul 2026 01:33:05 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6350384057037ba73a4c5c03182e736601576198fa9ddcb0da88c5564706f171
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5304570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fca56a3eddd7bbd89dcfb8561958cf81d0da6ae1d704114642b0ad6ef3c047ee`

```dockerfile
```

-	Layers:
	-	`sha256:b738dfc7460043f3227b5589cbb3047c8d4a2edfb02c250db908694011a7275b`  
		Last Modified: Thu, 16 Jul 2026 01:33:06 GMT  
		Size: 5.3 MB (5288469 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aecf4c35736617ae737fd4279c4aece246af4ca4054def0d7f18db3976f62fe0`  
		Last Modified: Thu, 16 Jul 2026 01:33:05 GMT  
		Size: 16.1 KB (16101 bytes)  
		MIME: application/vnd.in-toto+json
