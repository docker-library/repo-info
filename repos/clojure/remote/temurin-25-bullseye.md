## `clojure:temurin-25-bullseye`

```console
$ docker pull clojure@sha256:b1c1571d856b7a78c9263910ffd0ac7535acab8644d5d979dfb2568f60f700cb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-25-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:5be8f43376e0f8edfec7d3b2db31c9ed02914550301c2184fdd414eee2f845c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.9 MB (212865080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:989b9984b087d94b76072a04a5e96ec6eceb799e74a683e5ff12952decf81440`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Thu, 16 Jul 2026 01:35:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:35:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:35:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:35:11 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:35:11 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:35:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:35:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:35:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:35:24 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:35:24 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeb4a2760ee9f7531ef8fc344789fbcd1e92c68ce4452a00ed1c075fda2b10ea`  
		Last Modified: Thu, 16 Jul 2026 01:35:46 GMT  
		Size: 92.6 MB (92574571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeb74a9ddfbae5da86e0c2f4c3aa3015aa1d05dbaecffbc59d3725e938fdcb62`  
		Last Modified: Thu, 16 Jul 2026 01:35:46 GMT  
		Size: 66.5 MB (66512892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7b1d7b4c51a91148d807a6999610111408e6304ef07207d11db983a141a0aff`  
		Last Modified: Thu, 16 Jul 2026 01:35:43 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24b2300f5c236a2555c7a5cee83f1ac833432e1547c8c6a0672d21266d21db62`  
		Last Modified: Thu, 16 Jul 2026 01:35:42 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:127f2d7a6d01e0ce30f0d70a98b9b07033217595b567befbb72d564c11e47d23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7390120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfefa2d723e50c1980b3e443ec4fa829f6789f7d2d2f4ee45507b33b19c8ac85`

```dockerfile
```

-	Layers:
	-	`sha256:3936f29710063ae85059aa9c4316ebf86bf7b37e6e31d1e1da62019eabccc5b5`  
		Last Modified: Thu, 16 Jul 2026 01:35:43 GMT  
		Size: 7.4 MB (7373519 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e755ec688f99f037140083647c7b45c257c990d6ff34da1e02069ecf3ff9d1f1`  
		Last Modified: Thu, 16 Jul 2026 01:35:43 GMT  
		Size: 16.6 KB (16601 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a0b437cea108f469a98b1f8b74acc2d0fb5bdf16a7b63a858096b33405835bb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.5 MB (210482150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efd2c5dae55bbd6b048e96519b6814d10dd4892f12c13146e734149de805fc1b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Thu, 16 Jul 2026 01:31:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:31:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:31:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:31:06 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:31:06 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:31:19 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:31:19 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:31:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:31:19 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:31:19 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34ee505ed6ff89cd60184c444228d54a6e49a7ad92c1944a90d87fb7a3c2c54f`  
		Last Modified: Thu, 16 Jul 2026 01:31:41 GMT  
		Size: 91.5 MB (91542278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6a13e81eee2848fcbed3941cbe60863e9f619045415b8d6601fef9e1a48370a`  
		Last Modified: Thu, 16 Jul 2026 01:31:40 GMT  
		Size: 66.7 MB (66677939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ff24c876cc2205482914096cf6b668d03daea6aa2ac2146fd4463a1d5fff723`  
		Last Modified: Thu, 16 Jul 2026 01:31:38 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb8aa6175469fcc7c8fde1ea9a8f6dc46d8166a763653c5127ca1d731021aa6e`  
		Last Modified: Thu, 16 Jul 2026 01:31:38 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:733a52d53c4a6ea51f96ca2e5dbd8af5140a14895f02a2ec6233f6cd328b6903
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7395382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe18f92d0b21c75d4e25ab0a0c63caac2503924585035a91ba9151f1d09afe01`

```dockerfile
```

-	Layers:
	-	`sha256:fd8673e6f3c442fe6c4506305e0b743e08a38df3dce4d8870f085320b6ca0ca1`  
		Last Modified: Thu, 16 Jul 2026 01:31:38 GMT  
		Size: 7.4 MB (7378639 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d026771324fdb419d3a626456ca9c1fac44aff4540babfedfed2edea2d916789`  
		Last Modified: Thu, 16 Jul 2026 01:31:38 GMT  
		Size: 16.7 KB (16743 bytes)  
		MIME: application/vnd.in-toto+json
