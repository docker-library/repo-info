## `clojure:temurin-17-trixie`

```console
$ docker pull clojure@sha256:d8d4e64db5ef721ef9be1286b518039738e9c0116a8c9082d26bb3a526d2d8d1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-17-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:483cc108aab390b40be189f0854b04889443609e742d916c2d4215012ce6cfd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277753789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:122ccb9642f7be2b6580f2323eea0b1b0072fa41f42e00b00605b6ec64ab1d82`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:32:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:32:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:32:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:32:42 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:32:42 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:32:58 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:32:58 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:32:58 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:32:58 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:32:58 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dfd225d58346e3e164318522866d83f9d454f5f5e08abb76f8fd6e9650c9d5a`  
		Last Modified: Thu, 16 Jul 2026 01:33:22 GMT  
		Size: 145.9 MB (145906318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2466b75e4c71e054b5327bf58f16d324438abb034e2db582e2a48c070c236208`  
		Last Modified: Thu, 16 Jul 2026 01:33:21 GMT  
		Size: 82.5 MB (82533857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d5d09c6ce8fea36ad77d47ef54e9515037ead3b06c1ae2fca95eb7965590ee`  
		Last Modified: Thu, 16 Jul 2026 01:33:17 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15edba4c28a0f031288cbf12058dc1b0612ecaadebeac6c5207ecf2996bd45f9`  
		Last Modified: Thu, 16 Jul 2026 01:33:17 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:f28ec1aacc93e20670386b664edbb2e0c6dfb1e88b543aae2f9fcabc18a49da3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7484768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d775059035aed4d64baac46a79d26882a242825d525f2277165f15d1e7a6dc5`

```dockerfile
```

-	Layers:
	-	`sha256:9325e1aaf5bc8b66297069cb0773b062980f8b709b40186b9bdcbf8f23e8722a`  
		Last Modified: Thu, 16 Jul 2026 01:33:18 GMT  
		Size: 7.5 MB (7468861 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84cb98a114eac5e6d9cba1396d9a103b1b8400c50e026be3958420b1cb2cf7d7`  
		Last Modified: Thu, 16 Jul 2026 01:33:17 GMT  
		Size: 15.9 KB (15907 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:841576c49529fda75cc133e22a4b83a941a75ac63e41c1cbc78c8756a0817df6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.7 MB (276743638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f70a96bf470253a3fc65fa74de26ce046b038799dd559cfd24530b9d1b2c35cf`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:27:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:27:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:27:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:27:27 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:27:27 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:27:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:27:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:27:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:27:45 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:27:45 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35f787c71aaa22c5c84e5a0d22abc1fbf07a6f719d0f364e77348d7992da1238`  
		Last Modified: Thu, 16 Jul 2026 01:28:08 GMT  
		Size: 144.7 MB (144724314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c764e69711b139fe2e391f3ec7a1f1df42e1587a8ca327ea85d43826725a1c8`  
		Last Modified: Thu, 16 Jul 2026 01:28:07 GMT  
		Size: 82.3 MB (82344097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92005ed414e44e3414679dd45306527ca9d2cb068ef5b15ca34ecc986501b117`  
		Last Modified: Thu, 16 Jul 2026 01:28:04 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca789d4fdc20a515c69ada9a43749446649ee822c3b0e9a3ed1f6a27fc7fa35f`  
		Last Modified: Thu, 16 Jul 2026 01:28:04 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:685670f24fef1b78754accb994f1267a981e15df494bc357e5c0cf18acc04dae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7491280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7409621cd1acf02b5c694c0db7d6d18d000c23afc75b5cb85f8ca59efe4fa88`

```dockerfile
```

-	Layers:
	-	`sha256:3f506f44cb0aeb793a526d9e33ec2b991c9a51fa32a38d59247f4f99d8cd03c4`  
		Last Modified: Thu, 16 Jul 2026 01:28:04 GMT  
		Size: 7.5 MB (7475254 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f6884ffe544f609cfcbcfc43200933cf07a133d818d1895345e22c47ef77a44`  
		Last Modified: Thu, 16 Jul 2026 01:28:04 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:20a50c77052290ad41ddfb90c6dd30310196809b74acaede1762ee54ec3bd8a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.8 MB (286839633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd5dfdedc704db248e202078143c3e54c9018b0769dae9135d85758861421f41`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 02:41:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 02:41:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 02:41:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:41:39 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 02:41:40 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 02:47:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 02:47:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 02:47:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 02:47:18 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 02:47:18 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:745b2c9d3139d6aed0b2af22d15f023d127776cd4cd5c9d5188be038d8d70a3e`  
		Last Modified: Tue, 14 Jul 2026 00:15:39 GMT  
		Size: 53.1 MB (53134011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7c238e024816cf59f7bcc40d6137f687e77402d51ca7aa991f5a3d83a53bafb`  
		Last Modified: Thu, 16 Jul 2026 02:44:59 GMT  
		Size: 145.8 MB (145766144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32e0b6e1f98427bc658342aa032104107ab4d571d81cc10c571a833a7d4e8e5f`  
		Last Modified: Thu, 16 Jul 2026 02:48:00 GMT  
		Size: 87.9 MB (87938436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2de192576673d0cfb67a8c42ed85c4c7bba7d449f0298d1f2a505844fb76c130`  
		Last Modified: Thu, 16 Jul 2026 02:47:57 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e81e17abe269d5103aba6a65316b9a4d779b5e9a84b6caaaf3d83491a98d380`  
		Last Modified: Thu, 16 Jul 2026 02:47:57 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:e1b5d6b5db03c0a2b9387ce592b86b63aea00c342c1fbfcb2e208399e360ef7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7489238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5db591e2d6d25c2924a96cfa48100a2a98aeb8b737c2250f09a0d5bbc521f2d8`

```dockerfile
```

-	Layers:
	-	`sha256:e50bd15882b6ad18d3099a78e85036c8ced9863c0a160b200d9968b978610884`  
		Last Modified: Thu, 16 Jul 2026 02:47:58 GMT  
		Size: 7.5 MB (7473282 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8525197ff6691b0c6b3583aa0439054c66bd7f647696fd27c49d0af5d7b1decc`  
		Last Modified: Thu, 16 Jul 2026 02:47:57 GMT  
		Size: 16.0 KB (15956 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:984c06d362d544f06cb0a74dfdbcb723d09d7b176d9a26eebddcafdce6897b3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.8 MB (268795647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12029818653da6e8cb66974996325080fbfb32b6e9219a2501a52417631a402c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:48:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:48:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:48:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:48:55 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:48:55 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:49:11 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:49:11 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:49:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:49:11 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:49:11 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3b67c0872a1a1dce2849ed0a6773531451a02c1a681d58d89f062b6003c72e9c`  
		Last Modified: Tue, 14 Jul 2026 00:17:47 GMT  
		Size: 49.4 MB (49381708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc4e9c6e4f76e585a45abc9e1e50e324756e09329e6feb3ed3f607bb78db5535`  
		Last Modified: Thu, 16 Jul 2026 01:49:43 GMT  
		Size: 135.9 MB (135910472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4428dbd0ecfdb7d99998924830081ba5677b3af9b2053fead81e0e54ccb63ed0`  
		Last Modified: Thu, 16 Jul 2026 01:49:42 GMT  
		Size: 83.5 MB (83502425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82191ca010e578f767c210f5579084d53b717e0256be61f341e82893ecfdc130`  
		Last Modified: Thu, 16 Jul 2026 01:49:40 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12b40c58c5eebd99292fb8eefd871b9b233ff63461c2b5ec69273e0ceb013b79`  
		Last Modified: Thu, 16 Jul 2026 01:49:40 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:2d2adc6fe4e226a6f998b5fe0483a2206f249be5c720f9a594eec227142d9c73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7480690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccb6a1acd26cbfec90334b91549ac1e6642db03300f5342353e1887797751049`

```dockerfile
```

-	Layers:
	-	`sha256:ddd463c38124080bb2cc3f356927f40554c7d63e9215e280c1d2b4ba292a2fd8`  
		Last Modified: Thu, 16 Jul 2026 01:49:40 GMT  
		Size: 7.5 MB (7464783 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b495f0ddb769648eb3f76a995d30d7e23cfcfd1bcff9e0e904781dc289ccbff`  
		Last Modified: Thu, 16 Jul 2026 01:49:40 GMT  
		Size: 15.9 KB (15907 bytes)  
		MIME: application/vnd.in-toto+json
