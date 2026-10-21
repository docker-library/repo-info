## `clojure:temurin-8-bookworm`

```console
$ docker pull clojure@sha256:fd843a4ca6ce266ca802f0afc1fafa6fee35f5ae7b2765452aba021be6815c26
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:3fe79831a71a703d70c8119bb138c89190a22c1f9b07ac36dad514b329450fb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.7 MB (181715467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07e7522678e7d9395ce9cd46af5b62304e0155fe0dacb5e02183aece7e0ecc9d`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:14:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:14:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:14:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:14:56 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:14:56 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:15:12 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:15:12 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:15:12 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e12f593da154fa1e66da1f268b7a2dd598821692a7c5290ca05ffe098cbdfb97`  
		Last Modified: Wed, 21 Oct 2026 01:15:37 GMT  
		Size: 55.2 MB (55192247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52130f3ac23c377ffcc880bae343d5b9e8d75e81acc380efab0b0792429fe156`  
		Last Modified: Wed, 21 Oct 2026 01:15:37 GMT  
		Size: 78.0 MB (78000489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd751256b5151751870f6b27686e152d4faa16c6e5314d6e8c740ad0d1802380`  
		Last Modified: Wed, 21 Oct 2026 01:15:34 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:bc615bcd51fc5875ba9e3eae81339557fa1bd60230844b4eda7af8edf0c2481c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7514047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa17cf9d949ca1149a4f4e027f3eb3ed7b4d057c50091b6929f2eccb379ffe6c`

```dockerfile
```

-	Layers:
	-	`sha256:38b2a8c78b7f9bdd56860f4d0059e44de78f6056843a3e09dfafa37c79418616`  
		Last Modified: Wed, 21 Oct 2026 01:15:35 GMT  
		Size: 7.5 MB (7499699 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:77970e1e96a665e7bcefa104c240a0e54b7be7f78f8892db536a4880b9dbdbb5`  
		Last Modified: Wed, 21 Oct 2026 01:15:34 GMT  
		Size: 14.3 KB (14348 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5d3efeb3ae9e074183d8969c8b1ddeadb6f8eef074c84031b1ff7d09a3c33a8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.6 MB (180642235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28bc648a01ef2ee2ffb5961fe2f7b3f80db1b6b7f1df6afdd06dd0536c4f0386`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:21:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:21:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:21:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:21:32 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:21:33 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:21:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:21:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:21:47 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:a97cb698362f4b23d085b953f3106766a2137816fe5e17a99fdc3e48bd37e810`  
		Last Modified: Tue, 20 Oct 2026 23:29:54 GMT  
		Size: 48.4 MB (48403111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c94d695dcce24c9b51fd4185c77445a840c25a8fd9eab55772b99cd51739c2e3`  
		Last Modified: Wed, 21 Oct 2026 01:22:07 GMT  
		Size: 54.3 MB (54254267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d89ee5a8e6fd4ff8352804ea39641271ecfc99b34d6aacfa6ee39fc575f782b`  
		Last Modified: Wed, 21 Oct 2026 01:22:08 GMT  
		Size: 78.0 MB (77984212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dc9430db68e58398b5c07bfe6ab4d33e7658ee147fc15ddd168d9725e5aed97`  
		Last Modified: Wed, 21 Oct 2026 01:22:04 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:349ea1686e6c08176376b0a4b916241bfc97cbd5cad291b2bb8fa3e97c5836c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7520628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b27428471661b09a106f3eb296cbf0a0f3d78d3d1ef73a9e91ffbce7ef5ea837`

```dockerfile
```

-	Layers:
	-	`sha256:a0b03b9a6b3530730975aeaa67fbcde4fb30de5b3faec795a1950318a26da8be`  
		Last Modified: Wed, 21 Oct 2026 01:22:05 GMT  
		Size: 7.5 MB (7506162 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a52b7ad9a562c3cafafefba00b5bd7712ae2dba0453e0822c8b5a9ff35e41428`  
		Last Modified: Wed, 21 Oct 2026 01:22:04 GMT  
		Size: 14.5 KB (14466 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:6fe22793513a54d6fafe72f8a80e570d18f4e1ed2cd96ae3365f56d605f7a583
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.9 MB (188869200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89088ce7ff2a4d48002b1c7476b9fa264bc6c0307ec3449da9cce099a583d53c`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 09:51:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 09:51:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 09:51:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 09:51:00 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 09:51:01 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 09:52:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 09:52:16 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 09:52:16 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:0d8f63583ffe9dea650eb3c2d930ac17764dc3edd73dcc6becb0a476d51e6619`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 52.4 MB (52364741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7577bfc29b635c74d0e90ce0ec2b384fe977eac21b6f5c88056667db606cbe1`  
		Last Modified: Wed, 21 Oct 2026 09:53:32 GMT  
		Size: 52.7 MB (52667155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2de3f4c850d7ceeae3d27abf89ef7b780cf8a0eb087fa53b3102ece7959ea76a`  
		Last Modified: Wed, 21 Oct 2026 09:53:33 GMT  
		Size: 83.8 MB (83836656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa4ecedc147083197dc9dba2a7408d8080ec4ed04ec361cd8173eb8fbb71b805`  
		Last Modified: Wed, 21 Oct 2026 09:53:29 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:aefbc5c18644c269c2ca93585d8f4a1644ea62e371ec855501d8adff7fdea906
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7519904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:456a7a53bff9e6d80c60114aa131244a6a86100c6ae0077daa43897d0f0cedbd`

```dockerfile
```

-	Layers:
	-	`sha256:cb14a98b7f6aec15f69b09c1874621ef16330f03e69f08d047b093c988124866`  
		Last Modified: Wed, 21 Oct 2026 09:53:30 GMT  
		Size: 7.5 MB (7505508 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c252158af6586a16b59103cc83dc36e85f5aefbbcdafe9b5149cc72c3bd558b3`  
		Last Modified: Wed, 21 Oct 2026 09:53:29 GMT  
		Size: 14.4 KB (14396 bytes)  
		MIME: application/vnd.in-toto+json
