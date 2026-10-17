## `clojure:temurin-27-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:6401ff96bb10c9d9071caf8c920b48fa78b3f476f73cc9f02a0585acb633ed40
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-tools-deps-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:f0f49c3a0205d492b1315e23f9045d00063e91de933967d1e0f71b620de43a42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.7 MB (190658276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:379d4f0dfef4e03bddb078d76892f61fe474d0afe770de18886c16987659a078`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:55:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:55:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:55:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:55:26 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:55:26 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:55:42 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:55:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:55:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:55:43 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:55:43 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7070666786540a7ff1f5194ec07909a0aa1c6d4b68f48e81c9c9831d4b4f54e`  
		Last Modified: Sat, 17 Oct 2026 01:56:03 GMT  
		Size: 93.6 MB (93622485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b901ec786c18ffb15f5d42f8def081d9b93bbbabb90363861c412ec644bcfef7`  
		Last Modified: Sat, 17 Oct 2026 01:56:03 GMT  
		Size: 68.8 MB (68785427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e6f68cd56ac80681c03a1f3edf873c6290e9f4b0155f49709b343113b9ddee5`  
		Last Modified: Sat, 17 Oct 2026 01:56:00 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0d1afad03f9329f7ad7b16aec9618bf89af72fdb94622070be62dc7a676b3b4`  
		Last Modified: Sat, 17 Oct 2026 01:56:00 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6e6f1873b74385c0b7d49ccc1c45609569c0c4931ddd5341059aa833f0d4245d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5098915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f24f41f91ac7219e1ce67f41bab8d46c7f385eceeeb5fbfb522a63836ac8a3a0`

```dockerfile
```

-	Layers:
	-	`sha256:8c0d74a1e4558f8c5a41a1dda38166a4894c991dd4107473cff6c42902061fd5`  
		Last Modified: Sat, 17 Oct 2026 01:56:00 GMT  
		Size: 5.1 MB (5082932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d62338cd4365859fd54ad6170a619b0a6984f8c0fdca01c124e7ce8d1caf0e4`  
		Last Modified: Sat, 17 Oct 2026 01:56:00 GMT  
		Size: 16.0 KB (15983 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:bd8263a6d9a3583155c5d0c1a755bbf70e6f154bcc3005401a51c2a98d8da98c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.5 MB (189517693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb1461fac035a06e0dc18b345044b751ef40360ccd95cb492b136062132e3728`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:55:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:55:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:55:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:55:46 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:55:46 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:56:02 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:56:02 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:56:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:56:02 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:56:02 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f242ee30eb58dadcc4b7f3e89abdb4919117eb5ccf543a2b6f3ea4014a323cf5`  
		Last Modified: Sat, 17 Oct 2026 01:56:24 GMT  
		Size: 92.6 MB (92633114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dbfb19f74fdab0b36955991d64bc823852c74a06b3fbc2a6e4315a6b347a9b8`  
		Last Modified: Sat, 17 Oct 2026 01:56:24 GMT  
		Size: 68.7 MB (68746358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f10db337eb5be372016c09413fc01fded9bac021940a7b4bf5bf28e80591d00a`  
		Last Modified: Sat, 17 Oct 2026 01:56:21 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5206d629b590eeff08a85d1b0ce789e79a6efb39c3d76ac84c215d19b7edc20a`  
		Last Modified: Sat, 17 Oct 2026 01:56:21 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:94795b507dbbfc22ef063a53c5ad10e6ff95c9670163f5d20a504d695d293392
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5104791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60dcf63d4d31d3556c7b66a80ee0bbb1236d99b3310132fc71c2401cc8b54c4a`

```dockerfile
```

-	Layers:
	-	`sha256:3f1f5408f25fd4e70689bdc851a5bf09c6d7637b58e30f5f26f076ba9b47d135`  
		Last Modified: Sat, 17 Oct 2026 01:56:21 GMT  
		Size: 5.1 MB (5088690 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:238e1a38662d7d8374cbfbf12048cba9403c321baa50d68f5fe9590f65861451`  
		Last Modified: Sat, 17 Oct 2026 01:56:20 GMT  
		Size: 16.1 KB (16101 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:bafdae18c56d6486d60f0206c1471c63e498f649bd55d04c9edad022bee5a84a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.1 MB (199134112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7c3abbe6ea7465b70445ca8ea67de06311def0505eb03d9b78f3efd189030a3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Mon, 12 Oct 2026 18:20:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 12 Oct 2026 18:20:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 12 Oct 2026 18:20:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 18:20:58 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Mon, 12 Oct 2026 18:20:59 GMT
WORKDIR /tmp
# Mon, 12 Oct 2026 18:31:34 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Mon, 12 Oct 2026 18:31:34 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Mon, 12 Oct 2026 18:31:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Mon, 12 Oct 2026 18:31:35 GMT
ENTRYPOINT ["entrypoint"]
# Mon, 12 Oct 2026 18:31:35 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddeb2b8835072278f513221af23f0b3665df65ecdfdf91aec3478ef9ec12499d`  
		Last Modified: Mon, 12 Oct 2026 18:24:41 GMT  
		Size: 92.3 MB (92255814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:635d3391be7fdad162cd2fd3658acf9f326f83a6a8b44f526280979525efc721`  
		Last Modified: Mon, 12 Oct 2026 18:32:16 GMT  
		Size: 74.8 MB (74784820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac4ea0474fa249507e663a9f036b03be5c905f54669983f34dddb02d0c4a4e2`  
		Last Modified: Mon, 12 Oct 2026 18:32:14 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbf40024e1d9796fe8125da0527d098d0b2e88fcff147c0a6190dee006d1829f`  
		Last Modified: Mon, 12 Oct 2026 18:32:14 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c43e626640f45633af7f184b35e80ddfaedc028f9a30355cd7a53921b1e56d5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5088057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e478e793218b770c78f5c4b04bf7dd866dfa358a34ca6beec13917e91731ba9`

```dockerfile
```

-	Layers:
	-	`sha256:d339da784995f4c1f3483c78e3e8c74e47ae8a8239a8cbba332b4517d1622da3`  
		Last Modified: Mon, 12 Oct 2026 18:32:14 GMT  
		Size: 5.1 MB (5072026 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f7b36f477dc597a6b64beed4ef28c346662ae6611981ae87d93935c83ca6437`  
		Last Modified: Mon, 12 Oct 2026 18:32:14 GMT  
		Size: 16.0 KB (16031 bytes)  
		MIME: application/vnd.in-toto+json
