## `clojure:temurin-21-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:dbb164a06fdb96792191511577830718ba9b3e1923c000e774e08647c891029a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:fc0616d6e88a5a42f91e691feb47024dc3a56d6f1d2fc7da005c90fcc3c8d94e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.9 MB (252860694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af11e9ccfb476d8a589138e5db76afe22c870e09594e9ad5664af723d64a5ca2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:19:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:19:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:19:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:19:03 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:19:03 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:19:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:19:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:19:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:19:18 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:19:18 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff13f7e802c4288cfc52a9a7e09958b200b8fc5ddde6f9ca28a10dd21abf4b7`  
		Last Modified: Wed, 21 Oct 2026 01:19:41 GMT  
		Size: 158.1 MB (158117470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f1efd7aafc1859af3eb20ad116cf177150891d042a2715b003b533ed2d915e3`  
		Last Modified: Wed, 21 Oct 2026 01:19:39 GMT  
		Size: 66.5 MB (66494248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5510fec12806b07702b9d4c3cc94a12a550eb208629e60649b6493a96a6a3fa`  
		Last Modified: Wed, 21 Oct 2026 01:19:36 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea97ab1d3043b38f7fd166dce053f8ec2a178970b352d8d8a7e53006ed251271`  
		Last Modified: Wed, 21 Oct 2026 01:19:36 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b851a6aa35f726361a23330af25d797c944a10b9f9bff7bbd08f60385f11ef52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5135854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f7250af998f1a54e3b864b54aed56ca83fdc35fd80b27254a99e1da240637df`

```dockerfile
```

-	Layers:
	-	`sha256:a752a49223515beeb95e2b6653952c946553b17a136bf819bb1d2ff4dd9392ad`  
		Last Modified: Wed, 21 Oct 2026 01:19:37 GMT  
		Size: 5.1 MB (5119865 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6488810beb1936012661557479dff6aeb2924a3ed4620acae7efc7d8ef8890cd`  
		Last Modified: Wed, 21 Oct 2026 01:19:36 GMT  
		Size: 16.0 KB (15989 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d6fe437e4a2b0b0f9d46c31b6ab89417e6b70ca1a242c9551c2b3368085b0b3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.0 MB (251034252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0f6b9c56e637ef11c138424e9b8a4b99ba2dcc770752ed928471ecbba0c7b69`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:25:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:25:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:25:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:25:09 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:25:09 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:25:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:25:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:25:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:25:24 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:25:24 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b4339675b7c51291eb2b9f249afd5d313ce6cda67049c7822c52e6bfb2743d4`  
		Last Modified: Wed, 21 Oct 2026 01:25:47 GMT  
		Size: 156.4 MB (156400674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa7373cfc449504a42c61fc567ba2c2fb4d1595526aeaf2cbba158f05b55b69`  
		Last Modified: Wed, 21 Oct 2026 01:25:46 GMT  
		Size: 66.5 MB (66494109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:279073d7ee33a4432161a4460a6634b3a7af61339b3e3791a64218d67aa78c97`  
		Last Modified: Wed, 21 Oct 2026 01:25:43 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91c18e1e40a3c06c5a18be19fda6f97ae4053faa6af25d8c06bfd794a1b516a4`  
		Last Modified: Wed, 21 Oct 2026 01:25:43 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3d419b47ccbf2a701c4731281045dfc9c3a1d1cfc2a478425249e9a99755c727
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5141734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:770f3340573956df8b00649b60ac2e2a49631db0944ad577fd62d480652f0b61`

```dockerfile
```

-	Layers:
	-	`sha256:d1347a074d553ab570a492ab78525319743acf22f29e5fdbafffeaf16e3eda2c`  
		Last Modified: Wed, 21 Oct 2026 01:25:43 GMT  
		Size: 5.1 MB (5125626 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:efebc752fa6277b1c81f97260750a04dc00a64d4d76ccac7738d40131383ba0c`  
		Last Modified: Wed, 21 Oct 2026 01:25:43 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:27b0dbe29fd0a6682261c2e638da8edaf386baf7ce3834a3a4f38785f301e72f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.2 MB (265162368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fed7a9628fcf4067ca81c50996a152bc9a237851142a430531856e4c3ec3fff6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 05:54:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 05:54:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 05:54:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 05:54:40 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 05:54:41 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 06:10:14 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 06:10:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 06:10:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 06:10:21 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 06:10:21 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7593202845ab98fc7d37dbc710b97478d09d50c58de70f5671c2d3613ba77de7`  
		Last Modified: Sat, 17 Oct 2026 05:58:43 GMT  
		Size: 158.3 MB (158282663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73d12dd8d961fafed908b7499da45fcc3c00f4781167f42d627ebf67abb4a54b`  
		Last Modified: Sat, 17 Oct 2026 06:11:18 GMT  
		Size: 74.8 MB (74786231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8431e50e57a6580192328ec782e38fc21c413be263428bd0b5995d93bf230157`  
		Last Modified: Sat, 17 Oct 2026 06:11:16 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0497075295c6b82c1a7daf66a7775ae1b52f568a8c7ac3e9d18c048734a86554`  
		Last Modified: Sat, 17 Oct 2026 06:11:16 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:62fe252e2f27455495cbdfb1bdd7c33481d26b7906d7e8c5b32727f529769148
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5142356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ba8dec073f50c67242f2858fe3681a1d02a2882ad209c1570ee21bebdb32131`

```dockerfile
```

-	Layers:
	-	`sha256:fda1b3265c15c4402a28538f1128eef2eea748dc9ef53160da2ae7b025a72a2f`  
		Last Modified: Sat, 17 Oct 2026 06:11:16 GMT  
		Size: 5.1 MB (5126318 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:417110162e2260e8ec327b0ad4e5de6f4526bfa10c75706e16a6489641d698f6`  
		Last Modified: Sat, 17 Oct 2026 06:11:16 GMT  
		Size: 16.0 KB (16038 bytes)  
		MIME: application/vnd.in-toto+json
