## `clojure:temurin-21-tools-deps-1.12.6.1673`

```console
$ docker pull clojure@sha256:26df226dc5a22b32684820bcf8bea44d78c5c62a8eeebddd049de957ca8671e0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-1.12.6.1673` - linux; amd64

```console
$ docker pull clojure@sha256:e795dde2d20283971b2f49524cf72d0e7064dfde9fa2bb17ccdb02e283c0b513
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.9 MB (284935365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2e8bd9ba46678b62103308eddb44ff1623c6b8f1ac9ed1aefda20097c025eea`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 00:49:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:49:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:49:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:49:44 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 00:49:44 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 00:49:58 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 00:49:58 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 00:49:58 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 00:49:58 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 00:49:58 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bb8a7179ab2510fa296b1038818927d25f19b2007690e0a3667bf84dd49f87b`  
		Last Modified: Thu, 12 Nov 2026 00:50:20 GMT  
		Size: 158.4 MB (158409397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f718116b1288a7faa8c0890ed80e5e11d6a6e59bb82b7051326aa5cf050f759b`  
		Last Modified: Thu, 12 Nov 2026 00:50:19 GMT  
		Size: 78.0 MB (77997939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e0d637ad95f8adb74d20d446ad138358188f20194796e966a7bf491e19878aa`  
		Last Modified: Thu, 12 Nov 2026 00:50:16 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bb5ba0c6b79ea4fafbcf8dfe5e66eefed3e9241574bc049688037eb975472be`  
		Last Modified: Thu, 12 Nov 2026 00:50:16 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673` - unknown; unknown

```console
$ docker pull clojure@sha256:acd75ac33d57b7bd7982c3d10ebabcc29bd1465e16d19fba2e701c87c3c54c2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7397785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:967d3d9b106865299171f7941f94ccdaae78f3f805fcf9b4672c5cbe38f082a1`

```dockerfile
```

-	Layers:
	-	`sha256:415c59ba8e6509cb5c75ae3a1b856c49f4e7ba4fd627a5bee52774732c9b1cc3`  
		Last Modified: Thu, 12 Nov 2026 00:50:16 GMT  
		Size: 7.4 MB (7381169 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b235c813927de55a896a71d537ab3f72646bf1342caa674363a6c8ad8a0e106`  
		Last Modified: Thu, 12 Nov 2026 00:50:15 GMT  
		Size: 16.6 KB (16616 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.6.1673` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:15b1ad3db7e94448c4255587fe6dedd0d177ef38679614443eb209a0879a494f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.1 MB (283105143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca81089fdeaf2dfcae5ce157f4ce8ff2ba3457789efe54e7b348d25bbdd3467b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 01:05:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:05:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:05:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:05:10 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 01:05:10 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:05:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 01:05:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 01:05:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 01:05:25 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 01:05:25 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9907f1d86968738ec66628345bac729859c13e922d0acb5d7a6558fbaa1b4d8`  
		Last Modified: Thu, 12 Nov 2026 01:05:50 GMT  
		Size: 156.7 MB (156691656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa09aff57e4e5ba7415f0220ed40c21d5b228864d58852c21eee87cf1431791e`  
		Last Modified: Thu, 12 Nov 2026 01:05:49 GMT  
		Size: 78.0 MB (77999488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c99533686d4747fbd8875cf2aecd5cb19b2c5ece3a1f09b21ace31f76579568`  
		Last Modified: Thu, 12 Nov 2026 01:05:45 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:119b2a891fa6b30d16609db3d37f0fcf425320f36f370f556a9947ca0f761fa2`  
		Last Modified: Thu, 12 Nov 2026 01:05:45 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673` - unknown; unknown

```console
$ docker pull clojure@sha256:6c8523eb487b185611a1824711a6126cb0fe74bcb57711f327f888a5c42b70ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7403714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:634ab276cb1d045021f8e9338c9d94213f825948b674eb4d2002ebe120d109e6`

```dockerfile
```

-	Layers:
	-	`sha256:c47a8fea12bca0b580cc6950c799e2067e7ef1c0b9c09eaf88346f86a9b44077`  
		Last Modified: Thu, 12 Nov 2026 01:05:46 GMT  
		Size: 7.4 MB (7386956 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34ff480cb48da27c1a54a62719f75a016fbce5304ae3d70911dfa9b4a800d8a3`  
		Last Modified: Thu, 12 Nov 2026 01:05:45 GMT  
		Size: 16.8 KB (16758 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.6.1673` - linux; ppc64le

```console
$ docker pull clojure@sha256:18edc27083afe69a411111d855799acd5080b74ebe6cca5a1463785bc61c5898
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.8 MB (293767391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14cfbce936194853c36974b82424809956cba6744558e1b3c212f104e65adb66`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 15:47:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:47:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:47:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:47:46 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 15:47:47 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 15:57:54 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 15:57:54 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 02:40:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 02:40:40 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 02:40:40 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43000e10f4cba449859ab339e1e184da2141ac608835cc850c77c1331117815d`  
		Last Modified: Thu, 05 Nov 2026 15:51:45 GMT  
		Size: 157.6 MB (157573237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4020661d5ac1d0d2b43b50067bdd8130b4f410efad0f84d87083bc4d5423868`  
		Last Modified: Thu, 05 Nov 2026 15:58:39 GMT  
		Size: 83.8 MB (83823989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e140ddc15ed731608bf90c15647c4638a5ab5ff5d7aba112ab1822c6e0f8b462`  
		Last Modified: Thu, 05 Nov 2026 15:58:37 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b7fe40fb61d0a1bcf0dc571a183254c9d632d53705babfa6c8e4234277edfc6`  
		Last Modified: Tue, 10 Nov 2026 02:41:08 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673` - unknown; unknown

```console
$ docker pull clojure@sha256:4dcd9c3d0d2ee5d3dcd87bbb8057360a0b11f74622e38ae5d09c6d2138661bfe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7401823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a34864d03b7cff2554855d7de18f80f54dfb390b8416dc61a7119266c686ded`

```dockerfile
```

-	Layers:
	-	`sha256:fc940aa778f7261758279272ca60f3562e193869a4febb3640db6f1c4ec123f5`  
		Last Modified: Thu, 12 Nov 2026 08:34:30 GMT  
		Size: 7.4 MB (7385147 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9ef083c14c65f36b11cf1616dc050df5b1cd9d1a349156419bf9e3dc0d6fbeb`  
		Last Modified: Thu, 12 Nov 2026 08:34:30 GMT  
		Size: 16.7 KB (16676 bytes)  
		MIME: application/vnd.in-toto+json
