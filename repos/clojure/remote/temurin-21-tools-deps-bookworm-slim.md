## `clojure:temurin-21-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:a84f36632b6acd1ff8c127ecaf13745aeaed10a5f444425b57c3de733c3d3640
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
$ docker pull clojure@sha256:574fd64ec1a228f7537666e23311e77d883b7b47dbf9ea0f6e1da4c407205911
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.7 MB (262709798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a539cd26aeebb4be91f1259cf62faf1cd93c91eed4dbcf940f7d7ea12263ec7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 10:33:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:33:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:33:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:33:21 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 10:33:22 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:46:23 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 10:46:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 10:46:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 10:46:25 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 10:46:25 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:dbe4b1ae261d30189a9f71db084062762a30a0c977f281a1fb8f9b8506a24e42`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 32.1 MB (32093209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:916f56caeeabd6654227a0fe59d93f1d7414db3ffd6d7284aa029ff5ef282137`  
		Last Modified: Wed, 21 Oct 2026 10:38:58 GMT  
		Size: 158.3 MB (158282653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b91aed6cef4eebc95339065473aefdcbcdb5cef532003ecb766e501514a8aa4`  
		Last Modified: Wed, 21 Oct 2026 10:47:06 GMT  
		Size: 72.3 MB (72332890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36ac3bace6b5b62ec3ab9741f5436e2575ff541621a00f2f8f9978918f6f93a4`  
		Last Modified: Wed, 21 Oct 2026 10:47:04 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d0b1e34faf0864e65f50cc19a9997eff94d95166ba995fe225d7a5f44bf73da`  
		Last Modified: Wed, 21 Oct 2026 10:47:04 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:99a3b6abe1be10986e73ca03029fe27a1516e9cd79dfb3b156170ae532f80f81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5141061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52e5959fcffd47414560b2bd3fc8066f40709f38cbc43ce2ff8c5f386217a569`

```dockerfile
```

-	Layers:
	-	`sha256:931648ebe6314a5df53ff202088acb9b17b15962ac4decc8c9d82d6676a49723`  
		Last Modified: Wed, 21 Oct 2026 10:47:04 GMT  
		Size: 5.1 MB (5125023 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1ff9493b3ab43431530fa2a3bedfec5f19697f6e7cbb4de696affbe9dd081e6`  
		Last Modified: Wed, 21 Oct 2026 10:47:04 GMT  
		Size: 16.0 KB (16038 bytes)  
		MIME: application/vnd.in-toto+json
