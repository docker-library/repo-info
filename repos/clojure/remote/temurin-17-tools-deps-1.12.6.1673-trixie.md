## `clojure:temurin-17-tools-deps-1.12.6.1673-trixie`

```console
$ docker pull clojure@sha256:e4c1ed1d24ee5b3afd4b6583ce5afbb0a916743f67523e3915f348970a0347ca
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:11d05fe506cb30a982341d931da66bc2eb77b0252bcfed43152c9e770f008d62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.8 MB (280759410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a0237e7460b68b69139523e14ce725cf8e133b2c87fd77c78723ac31c486e37`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:46:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:46:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:46:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:46:15 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:46:15 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:46:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:46:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:46:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:46:32 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:46:32 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e0d76fa68d69a95f1a325e98e3e9e6a5eae050bc7ff8482453284836a643ce1`  
		Last Modified: Fri, 02 Oct 2026 02:46:56 GMT  
		Size: 145.8 MB (145825477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b97c7bf9facaec81196afa320f935567ef96c9c07cb885fc07c08075c3672d0e`  
		Last Modified: Fri, 02 Oct 2026 02:46:55 GMT  
		Size: 85.6 MB (85553192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abf59e753b586e900d49969e33d7eae266739bb895b10752b3426d67b87f65b6`  
		Last Modified: Fri, 02 Oct 2026 02:46:52 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67442b050a7518870db5f0a214f792efb8c134585cf3a10cfe5b30ffd800eebc`  
		Last Modified: Fri, 02 Oct 2026 02:46:52 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:3fc6deb581923f3ba2fe5ff99ec6c4bbc746f9960d86b20c2061bf470502cca0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7494728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30def517087abadb8dac41f85742f9a99e05558e2308576730c66e8e35df1fe7`

```dockerfile
```

-	Layers:
	-	`sha256:7cd18f6d1fabc2f4ef1484a8a368e03fb3667af298e0d5ed22a542f343685f64`  
		Last Modified: Fri, 02 Oct 2026 02:46:52 GMT  
		Size: 7.5 MB (7478820 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b93411c8e650c1f791edcd951fce6dd4a9d9581da77196c0b5af0f4e3e0d50cb`  
		Last Modified: Fri, 02 Oct 2026 02:46:52 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:970d8059ac574800c82b3803f70385d63da6d9ddb65e9340f0a7284943e5cb2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.1 MB (280132415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f89df1471752a9f1407a75289cac5e961dd6e82cd761b31c372c8a1aa6b7158`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:46:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:46:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:46:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:46:08 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:46:08 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:46:26 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:46:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:46:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:46:26 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:46:26 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79513cfbe12efb71ac5fe5b10650d64780b9bd020b60a70c137161f7e21f0359`  
		Last Modified: Fri, 02 Oct 2026 02:46:50 GMT  
		Size: 144.6 MB (144648285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d69126883788f3d22220e99429e2febc07545f915444e74065e78ace24f37ba5`  
		Last Modified: Fri, 02 Oct 2026 02:46:48 GMT  
		Size: 85.7 MB (85734250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dbe4822d2a8d2e5eaacf4cd8e1304434f2582ae6b1f00c2b053453289855b16`  
		Last Modified: Fri, 02 Oct 2026 02:46:45 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6abdb4c9e3b3ff3a112cb120629cb3499697aaab1d804a7bb905cdb957353762`  
		Last Modified: Fri, 02 Oct 2026 02:46:45 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:033d9f1f02ca954fddcc50fadff8c465a67ae1b115d85e098e230acddb93bc26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7501239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07edc1db4141776284e03f1ae3058bfbc37b646e8e245759d3c5b5b289752ceb`

```dockerfile
```

-	Layers:
	-	`sha256:90ec49dd7887ea86c32284daeaf5f4c34635b632cdcc8cbd1a0d9c74ae6039cd`  
		Last Modified: Fri, 02 Oct 2026 02:46:46 GMT  
		Size: 7.5 MB (7485213 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be882237ded8f3e9693212328a38058976fe8d66b5c47ce5be07dc9402bcec35`  
		Last Modified: Fri, 02 Oct 2026 02:46:45 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:be74005ecd72981d8037db937fe493d94e57a9b681dc556f3d2f049ff4fd0eb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.1 MB (290084728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba5d34498981aa9b5f31152997b2d756385afc49c150afef556fa886ddbc79aa`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 08:05:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 08:05:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 08:05:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 08:05:03 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 08:05:03 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 08:14:07 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 08:14:07 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 08:14:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 08:14:08 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 08:14:08 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:fe57b34d87b4c3538e7b00694a21e5bd450391029c5c22b4da16fbe872c78d51`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 53.2 MB (53195075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37297aa2fe16576090d9bdcf300b9f1b566eafa697618e22f15a26b8c6dc3807`  
		Last Modified: Fri, 02 Oct 2026 08:09:53 GMT  
		Size: 145.7 MB (145671490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40daee010ad575fdd7c1d2921df2f4910fddf57bc32e5778655c8f2bf12603f0`  
		Last Modified: Fri, 02 Oct 2026 08:14:57 GMT  
		Size: 91.2 MB (91217121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d70a186a5502553e503233878a3fda2c95da2619930716e6ab1cd102494a22f4`  
		Last Modified: Fri, 02 Oct 2026 08:14:54 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e49bbce70435a5054a7836fe9fac318adf429349c3d98c6e6ffec1d2cd37659`  
		Last Modified: Fri, 02 Oct 2026 08:14:54 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:d14d0f42b9575b4c14db607222266b5119714afd3ca0e7a81f7b18ca41a6c693
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7499194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bfb030ed9a877d920db98d5cc47a3681a0621dd0fa8a3ad3aac78d9fbdfe5e8`

```dockerfile
```

-	Layers:
	-	`sha256:779e893b837a3ee974934776b5fe386dcad4d83b6aff934f5d7458a269d91775`  
		Last Modified: Fri, 02 Oct 2026 08:14:55 GMT  
		Size: 7.5 MB (7483239 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3a0904cb7dc3d9395d16a2502bc27f60dbcf98ef40252bc57c855da4319203f`  
		Last Modified: Fri, 02 Oct 2026 08:14:54 GMT  
		Size: 16.0 KB (15955 bytes)  
		MIME: application/vnd.in-toto+json
