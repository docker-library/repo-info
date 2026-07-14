## `clojure:temurin-26-tools-deps-bookworm`

```console
$ docker pull clojure@sha256:a955e59b378e24f1b261bd09b9e7d8986136c819fabf4b1ca3bbabc473c2d3a3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-26-tools-deps-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:678aeca7d16b5963c2f484e635c682a12109249f350f3d307431bc65527d7785
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.2 MB (221152574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69e319a5af41d06c349d7df9a502c9779684b7dfbff598882883f913cf4db7d2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:23:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:23:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:23:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:23:23 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:23:23 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:23:36 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:23:36 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:23:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:23:36 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:23:36 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c63900108ad8444bc20b11a2ee611e8811e35702197f97174935e7284fc878c6`  
		Last Modified: Tue, 14 Jul 2026 02:23:59 GMT  
		Size: 94.5 MB (94524297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a76367f3685758ce60fc1f179dadf4253863ae5fdf0fbaa8ef615f8688abd27`  
		Last Modified: Tue, 14 Jul 2026 02:23:59 GMT  
		Size: 78.1 MB (78129836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a6ca762a7e2ab5fe776dd8dd16ccb1894deb08eafbdda32a3b31dfe32c4812b`  
		Last Modified: Tue, 14 Jul 2026 02:23:56 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:683d50b1287564031dd8713eafecb3eea9443e55173648629de7df0a08de4eba`  
		Last Modified: Tue, 14 Jul 2026 02:23:56 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:95b1a9a0d0b69e75fdb26e106e2815769616669eefef9cc31b2828c62ad2cbae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7358354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faa218f6b373804126bbb4e2e613cc7bd4d17325579cc7cadaafd352546fb749`

```dockerfile
```

-	Layers:
	-	`sha256:8529ab078843b7dcadfa7f8db90eaa92efa3353c43655e2bec04cfaf240aac8e`  
		Last Modified: Tue, 14 Jul 2026 02:23:56 GMT  
		Size: 7.3 MB (7341745 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f399bfc78cfb4d9a5132fe7df62ffe3d9b5d2b78ba62788852f85629a481af1`  
		Last Modified: Tue, 14 Jul 2026 02:23:55 GMT  
		Size: 16.6 KB (16609 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9a5d6aa64b93f51c737783ef4fe50ed1cccd9e597b4cd2ec0a330d5d0b9d021f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.0 MB (220010689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44f9875ab4a2caa84c65715302c6dbcffe53f7cd61650e313a68bb3e4f5bef5a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:30:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:30:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:30:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:30:53 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:30:53 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:31:07 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:31:07 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:31:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:31:07 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:31:07 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05819aa2ee839c7a1364d8469d8231afa093c52672f8098cadf54058a1651d0a`  
		Last Modified: Tue, 14 Jul 2026 02:31:31 GMT  
		Size: 93.5 MB (93504340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc7da66b0411c5beeb78e5f67bce51e5a146843fbf958fea21c4dce9560de147`  
		Last Modified: Tue, 14 Jul 2026 02:31:30 GMT  
		Size: 78.1 MB (78121621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f7c6d3fec54740125ab21a21bbc46ea0366c3d37e03d3fb0559552b6d3e101b`  
		Last Modified: Tue, 14 Jul 2026 02:31:27 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f36eec2a3198428af5e98ebb6042ea08a79f428fd3dce29b82b6409043caee8`  
		Last Modified: Tue, 14 Jul 2026 02:31:27 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:5b06889c824855ddbe87919d04203313e2a9352663b580d4e4348ee4a782aca7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7364280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d92a3fdc34fcb658e2fdc7c6b5337807c6f1870a71c46ae76122a4464a31fa6`

```dockerfile
```

-	Layers:
	-	`sha256:2d5b311b9783ebb8e8df77344f9a7c20d594bd7d5bb861409d63040ca1ee6e58`  
		Last Modified: Tue, 14 Jul 2026 02:31:27 GMT  
		Size: 7.3 MB (7347529 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c1b7d3cb8ea2154c7fb2eddd1662ae831f71aabba35f07466f81717d13df421`  
		Last Modified: Tue, 14 Jul 2026 02:31:27 GMT  
		Size: 16.8 KB (16751 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:baf079a7636ab32307a0e18cc825892d4fe04a07da4a6fa151e9626bc0639c41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.2 MB (230208747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbddbf4140f5bf011413fdffe229a8f0cda2a5e6542624886fe465a8c99ab0fe`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 07:45:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:45:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:45:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:45:01 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 07:45:02 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:55:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 07:55:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 07:55:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:55:17 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:55:17 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:55b0e891f4e8dc14bf4bc7e853254fcf1f3ba5a8e8e3c07c21e7dd5bd6d87882`  
		Last Modified: Wed, 24 Jun 2026 00:27:34 GMT  
		Size: 52.3 MB (52346847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fa6bed2d17156130589e4befa6c04383771757ae9b6d7ae9400259ff714b55d`  
		Last Modified: Thu, 02 Jul 2026 07:48:28 GMT  
		Size: 93.9 MB (93902030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c296d754500ea88e0710c8bd9d205cd8834f827ed7cc213d9f16b90ef53ab29`  
		Last Modified: Thu, 02 Jul 2026 07:55:56 GMT  
		Size: 84.0 MB (83958826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b187f56022d4ec2bd5b02d0d795e948e3541504c77df8265e883f2fccabe94e`  
		Last Modified: Thu, 02 Jul 2026 07:55:53 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54fe2a97312fc6751011ab2d12c2643e305636fadd8f50669aa9708a276a5bdb`  
		Last Modified: Thu, 02 Jul 2026 07:55:53 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:409301312be20843c00e9ad089532e2c0f25b5be07528a69e4f2bb1d282f5fff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7347542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7d40beaab665bc316ef8709787f8445334af719a7fb7dd8fdaa0b7d64bbfbe6`

```dockerfile
```

-	Layers:
	-	`sha256:095dc85581b627ddfeaf770ca1e5ca95a19047764a05651a03af4512a973c2b2`  
		Last Modified: Thu, 02 Jul 2026 07:55:54 GMT  
		Size: 7.3 MB (7330873 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:02e9d70735b1fc9a92e8151a5d2a29b590e9c71a850ecfa2664b7484d249a9e9`  
		Last Modified: Thu, 02 Jul 2026 07:55:53 GMT  
		Size: 16.7 KB (16669 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:89d79f3969a681ce662ecb81c278bea068fd9cd1e823de6af6ab4bb90bd4fb28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.6 MB (214633972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57107048a994529ef52eb0bf5f171685b7b9e0fbe0506c8ef76d0e93feb264f5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 04:36:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 04:36:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 04:36:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:36:16 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 04:36:16 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 04:38:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 04:38:15 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 04:38:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 04:38:15 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 04:38:15 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88301aa1ab36f34dac9e5b52781a0467a7fa38343a4df0f5174281048ba05ddb`  
		Last Modified: Tue, 14 Jul 2026 04:37:44 GMT  
		Size: 90.5 MB (90536950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94a5a3684b91f77f3b245d49c97c98856f822abd7200c685c0f80c2d11cf5460`  
		Last Modified: Tue, 14 Jul 2026 04:38:40 GMT  
		Size: 76.9 MB (76938701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57b9380bad72c61ac12b17921588d46dc8970f8bad23dd567b1f7d21cad7acd3`  
		Last Modified: Tue, 14 Jul 2026 04:38:38 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c82dc443fb71d305434eb871d66c5b10ec25d599e3761d26efe629711d373a88`  
		Last Modified: Tue, 14 Jul 2026 04:38:38 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:3078abb0522c26f1b15e393b3266fc3a063356186e8bf8bb067d0c98a3adacc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7334858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:789600247d7f1159b5806ff668e79548ec1f5ce738acc7c8f82841a0086c92f4`

```dockerfile
```

-	Layers:
	-	`sha256:03cee7591ef85badf1a13bf44f2fc4b03e345ee52d45f0539a6ce1da8d558a91`  
		Last Modified: Tue, 14 Jul 2026 04:38:39 GMT  
		Size: 7.3 MB (7318250 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cab7e867e64557ce3dde05a35788d5bc9c11d825af688fe10be248b34aac7f45`  
		Last Modified: Tue, 14 Jul 2026 04:38:38 GMT  
		Size: 16.6 KB (16608 bytes)  
		MIME: application/vnd.in-toto+json
