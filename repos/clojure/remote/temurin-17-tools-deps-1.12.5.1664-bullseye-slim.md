## `clojure:temurin-17-tools-deps-1.12.5.1664-bullseye-slim`

```console
$ docker pull clojure@sha256:e58091e8b9c462aa2acaf73efd41c8aab1278c4ea0b91bd4c67b348344570d0d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.5.1664-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:911f954dfe9b0f8c090e974eb188336c5984150ceccf2d938c36a0f6ff7978fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.2 MB (232197947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c22de4a5199b38cab16b40e150f1fa008f0af24307456ca1d515c12380cd951d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:28:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:28:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:28:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:28:35 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:28:35 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:28:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:28:48 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:28:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:28:48 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:28:48 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4705738e5e0492efae5d2523aa791e06c852e2e1acb5e70a365cc08f9da0c556`  
		Last Modified: Mon, 24 Aug 2026 23:20:36 GMT  
		Size: 30.3 MB (30259727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaa592a7761226fe744dd04b23aec254b95269fb44915b793b5d67940701d0de`  
		Last Modified: Tue, 25 Aug 2026 01:29:09 GMT  
		Size: 145.8 MB (145822642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b82edb712124fa652c43653fc2226c4cdbc7042ffe9961bfd9fe41b7aec6a9e3`  
		Last Modified: Tue, 25 Aug 2026 01:29:07 GMT  
		Size: 56.1 MB (56114535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:993b17743ad3f5500fdc49c88a5d50a2688ae46e9964ca63df241a82cceaead6`  
		Last Modified: Tue, 25 Aug 2026 01:29:05 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddc44f519e630b3913db2f7679d45fa96fcbeb16fa0a191ea284f8a3416643c8`  
		Last Modified: Tue, 25 Aug 2026 01:29:05 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1664-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:76db20866f67de3b47cb19b8f29b1f0194e671c064e2864b9ddc342068fdbfcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5339040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:594b29c6d50536cdde6d342fb7bfcc5aa94af6d13e3406c89c79018dbb32f6df`

```dockerfile
```

-	Layers:
	-	`sha256:20fbd488376abae4cb1bbb689999eeb8fcf3d510970fd6e10974fcbb91ccb332`  
		Last Modified: Tue, 25 Aug 2026 01:29:05 GMT  
		Size: 5.3 MB (5323050 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c07aafc7d8f53239233ab2de0a3ac011951c7d3d00d6733ef60c4abd176231c`  
		Last Modified: Tue, 25 Aug 2026 01:29:05 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.5.1664-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:47292dca9c853921a465859566e936c0e7e123049d44ffe7a82311966a84afa7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229678868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:643ad2dfce44b20f0b7c25f7d3fe8d1cfdba44b57c9fc3572910922018ad34e3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:32:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:32:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:32:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:32:30 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:32:30 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:32:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:32:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:32:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:32:43 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:32:43 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:104799d4ff5b18bad31a13cbbc383730eebef29a1cac161b7905792a8dbe5bd3`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 28.7 MB (28749031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a7f9d68856195ccd054fd53c876246ad0274e7a0ba5887b3b2e3a23af044932`  
		Last Modified: Tue, 25 Aug 2026 01:33:04 GMT  
		Size: 144.6 MB (144647524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa10981ef110f936caa1e796f8ac4e1b14075c13ee238c9e943b7b185368bff2`  
		Last Modified: Tue, 25 Aug 2026 01:33:02 GMT  
		Size: 56.3 MB (56281272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:009d05c3a024174b67aa7907e21888f91f0205b40f1391688d8c698248b6493d`  
		Last Modified: Tue, 25 Aug 2026 01:33:00 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:063eb99f2493f9c742a2b324e31b01fec9eb32f408117fd90375f35f20a526ca`  
		Last Modified: Tue, 25 Aug 2026 01:33:00 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1664-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ad8b6737d5e45a64a11e9839b8fc031c77f06198d6c57b15beed2df6090c9255
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5344890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd8f715d3c6eaadcdcd3e8a7ddc3be64d7683b36f02ffda18a39b731242c0426`

```dockerfile
```

-	Layers:
	-	`sha256:acca0c404b48b77da8484bcf54e3fd071f6804ab30a957fc94d298a99e38c154`  
		Last Modified: Tue, 25 Aug 2026 01:33:01 GMT  
		Size: 5.3 MB (5328782 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:98df3c30b9b0873286ffb6001093df1dc494b079febcd31eb8e16fae897643f0`  
		Last Modified: Tue, 25 Aug 2026 01:33:00 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json
