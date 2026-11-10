## `clojure:temurin-21-bookworm`

```console
$ docker pull clojure@sha256:c620efbea3fedd2eaff71dd2cc3d0fdd4263b21eda838c2b9ea0ad47a005ad7f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:27d67081d2b9659dae6d0f7dc302873df9d66a56a1d4649fc8faf2a264c00266
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.9 MB (284935903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ed74f06e6b576295555caa5071bc7576c31bafd84139c41854f48b6726aa91f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:41:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:41:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:41:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:41:39 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:41:39 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:41:54 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:41:54 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:41:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:41:54 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:41:54 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ce876270b641cbe6d9586e73e36d6f0a0eeba99eeab8edff728c4e5a883b831`  
		Last Modified: Tue, 10 Nov 2026 00:42:20 GMT  
		Size: 158.4 MB (158409449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a14207c187b4cfc9994b337e56c02a9d5f5ea4a55543f4c40a9731a3da434cc`  
		Last Modified: Tue, 10 Nov 2026 00:42:18 GMT  
		Size: 78.0 MB (77998424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc80e64e2d0475f3688b225ed8fceb2999cde41852997730687db109873cb487`  
		Last Modified: Tue, 10 Nov 2026 00:42:15 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dafea2b9bb544d7fb9b1aeb26183501f11930f06f280cc3db554da9810a5003d`  
		Last Modified: Tue, 10 Nov 2026 00:42:15 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:948219633ae0510ccc2d97f9440af0344eb0aa30086ea81f1e9f13c21db25e57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7397785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71fd3d562bb16946303587437507f03d4f8fb3d8279bac5583e260fa6e4f9464`

```dockerfile
```

-	Layers:
	-	`sha256:1c9425addafb752eef3df4f96eb743f7d5aefea00b2c7f6558f27f5616897e10`  
		Last Modified: Tue, 10 Nov 2026 00:42:15 GMT  
		Size: 7.4 MB (7381169 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f3ff540f458bd578e3e62cedf688737f5fa9b10ed78da41c6395e00c5fc8585`  
		Last Modified: Tue, 10 Nov 2026 00:42:15 GMT  
		Size: 16.6 KB (16616 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:734752a347e0c394455fe468dfd9ed0440a1d7e3191b1a0500b08c973be38670
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.1 MB (283105432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6b3befc19f088b12c9d6065e74df61552cc9372fcfdedd9b032e8a0d61349cd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:40:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:40:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:40:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:40:49 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:40:49 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:41:05 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:41:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:41:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:41:05 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:41:05 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a6b46c0f729d0eee56f2115331f491bb2e63a1c866b36780640131451d8cc27`  
		Last Modified: Tue, 10 Nov 2026 00:41:30 GMT  
		Size: 156.7 MB (156691635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e6d03d0d2852d2f2c7aa0135deb68811093fd3bc13233896782469216e874d6`  
		Last Modified: Tue, 10 Nov 2026 00:41:29 GMT  
		Size: 78.0 MB (77999794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f5c6d331662b73da014aa3c0d26104f07ddf6a19500fba83a14959793a85f11`  
		Last Modified: Tue, 10 Nov 2026 00:41:26 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7e0e456ab724bae8039e12de5c9214052ceb67edef657b026c64c45314c4a78`  
		Last Modified: Tue, 10 Nov 2026 00:41:26 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:b47558e672e4d80eff780c14a4221996c909799aaf1f3e8dd7a5d4c4ce27680f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7403714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:618cff58117d21e3b694d6b99a90b7c935a5f9ce7fb7dd1cf4ad054d1d78ec3d`

```dockerfile
```

-	Layers:
	-	`sha256:3f688691fc444de65fa532a4923b860c2ea89b369682479700b72f4d16321a2a`  
		Last Modified: Tue, 10 Nov 2026 00:41:26 GMT  
		Size: 7.4 MB (7386956 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c241facfbec1baf33cff908658df7a03a3dea171682f1841c4acc3ed60f9a27`  
		Last Modified: Tue, 10 Nov 2026 00:41:26 GMT  
		Size: 16.8 KB (16758 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:2dea6ae12fc86bb984e997f0db88e8051a040c64a9adf9b6b8858ec2947060fa
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

### `clojure:temurin-21-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:9b15f9f34f586e4d77e36ed1cf86818109525b6fc6ab93e6b6d7582dd03ae90c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7400868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:945762ff16c4d6439be3d77035fda54c7a3e9a6fa9a50aa4fb6e3765d3728226`

```dockerfile
```

-	Layers:
	-	`sha256:c73fd02f992197b33a573c9942c57db6624c8617d6cf17330fd0e682f2045195`  
		Last Modified: Tue, 10 Nov 2026 02:41:08 GMT  
		Size: 7.4 MB (7385147 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31ecc734092aa26019dfd43805772835dd7b2bce2d7e950dab118784d72a5237`  
		Last Modified: Tue, 10 Nov 2026 02:41:07 GMT  
		Size: 15.7 KB (15721 bytes)  
		MIME: application/vnd.in-toto+json
