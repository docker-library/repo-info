## `clojure:temurin-21-tools-deps-1.12.5.1654-bullseye-slim`

```console
$ docker pull clojure@sha256:78286ba0db3424c54d16f1fc4c08392ed4ed47bf8ad78e9293ba0001641767b0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-1.12.5.1654-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:a7f47b0102748dadc9f4c89e78cc8dc55fcd10287325cd44786b4698e39f54ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.5 MB (244527992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c994ec1434ad7e9abb29a338da97044f175e237b7496c733bd9d820e63b5e30`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Thu, 16 Jul 2026 01:33:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:33:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:33:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:33:48 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:33:48 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:34:01 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:34:01 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:34:01 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:34:01 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:34:01 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ab6b8caf16d7f68b8a98637a233a98f662552e76d428a4510f2c6950bbe017f9`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 30.3 MB (30259754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47aedd094699ab401e0972a83c4a53e7f43cab7c6f242eb830470b8319e6d3b8`  
		Last Modified: Thu, 16 Jul 2026 01:34:23 GMT  
		Size: 158.2 MB (158166935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a87c7544c7cbfa1ad763256b9b493b637d81bed7f748e1dd908542d2d10cc106`  
		Last Modified: Thu, 16 Jul 2026 01:34:21 GMT  
		Size: 56.1 MB (56100259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b57148cb99b48ec37cbccef2f08468a76fa4885023240774c286a9fa31af2a4`  
		Last Modified: Thu, 16 Jul 2026 01:34:19 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:776681f1d34ba4d01e9195125e588e1f90284dd523da4d0791d2d2c45b13bf19`  
		Last Modified: Thu, 16 Jul 2026 01:34:19 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1654-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:bcb76d1bb463b5dd04dd96ee92ab874240dc587f3226fa61fac3451643e2806a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5335691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f39aace4428dfac59a3794db43146ce3f03a4e04ffe3300e4844007f5b5d27b`

```dockerfile
```

-	Layers:
	-	`sha256:bb57505734fa6aa2fb5ade66c9e902c911cd47933881d993ac512ba6390bcc1b`  
		Last Modified: Thu, 16 Jul 2026 01:34:19 GMT  
		Size: 5.3 MB (5319701 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42aadc59a1588e5afa307a91ee799a40cc0714b2f4d5f77f424dfec5ae9568e2`  
		Last Modified: Thu, 16 Jul 2026 01:34:19 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1654-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:be0c726feff05006b1c93b5bcbcd3373cba0c50bc5dfa478e4cc792548ca185e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.5 MB (241479132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2525ba9a68acda0da014bdc2f5aa7048901b9fe58da7b9a7ec3a298c0718100`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Thu, 16 Jul 2026 01:28:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:28:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:28:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:28:19 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:28:19 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:30:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:30:15 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:30:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:30:15 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:30:15 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:61f836bad84b9e0ba9e3fe1a558be02d0d6378b8ecb4f3c1ef8f656e9e30e1f5`  
		Last Modified: Tue, 14 Jul 2026 00:14:15 GMT  
		Size: 28.7 MB (28748984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3c4c8f1b837b782a88abe261b25d2c1759bad5ddc86d47332f5a2b034d7336`  
		Last Modified: Thu, 16 Jul 2026 01:29:54 GMT  
		Size: 156.5 MB (156461260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b970cbeef2103b17364eb0e54bb1741923de2851280991b54bf223b81accf3a`  
		Last Modified: Thu, 16 Jul 2026 01:30:30 GMT  
		Size: 56.3 MB (56267848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c036f907d1646caeb2adb3041082a49626cb0eb099d85fddb36885e853654b5f`  
		Last Modified: Thu, 16 Jul 2026 01:30:28 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0351fd1831f0e87b8b1a85e0679d96f86552459cd27cb810d468edf00638a7f`  
		Last Modified: Thu, 16 Jul 2026 01:30:28 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1654-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c13491593497f473b03a8497822d3ff2d94f0de5c8cea4ee38f8fac078582ffc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5341541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81f6331a43a58d7dfbca82c6ce692c8d46afb755ba1fb71ff81a6ab5081b2660`

```dockerfile
```

-	Layers:
	-	`sha256:c6e4c20447790597770fb7bba6685b9e1d6933d456abb9360516c936aab66836`  
		Last Modified: Thu, 16 Jul 2026 01:30:28 GMT  
		Size: 5.3 MB (5325433 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0cc0832a6e7b2c88f1a84aa6c71e3c16811b06999ae8ca57fcffd91d78ff3ff3`  
		Last Modified: Thu, 16 Jul 2026 01:30:28 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json
