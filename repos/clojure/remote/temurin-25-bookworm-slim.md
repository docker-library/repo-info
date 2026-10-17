## `clojure:temurin-25-bookworm-slim`

```console
$ docker pull clojure@sha256:35ab9991d63ec006ecdb7be991228678c8a1f17fa6bb4f68d07678d3faed2c5f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:838edfd55a7a194825e36cae192fc77f2ccb6bf70242894d440c4d7b32ae88f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.7 MB (189654255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1ba545e80d377d60af7c94cac37db08b44f0c3948a2d2c83d012c1f541ef65b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:52:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:52:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:52:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:52:08 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:52:08 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:52:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:52:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:52:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:52:25 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:52:25 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a64707e81594c07262b53fa50bf733b1908502818c5f09c83fa5e6e743434f0f`  
		Last Modified: Sat, 17 Oct 2026 01:52:45 GMT  
		Size: 92.6 MB (92618008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8dd74be82468f34ba51cc6edcde55d1863f4c79a7ae2feca0e195f7c6a27c19`  
		Last Modified: Sat, 17 Oct 2026 01:52:45 GMT  
		Size: 68.8 MB (68785882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eebb926404dcada813e5a839292162d1a32ed71c23ce9d5cd416867c361ab976`  
		Last Modified: Sat, 17 Oct 2026 01:52:42 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10e22630e08a70de75a4b904a376d49fb6705138de335e9d10848c16be7be27d`  
		Last Modified: Sat, 17 Oct 2026 01:52:42 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3d50f97a3be3da5683043612b9ff9b89b88aceaade602a26d8b2f30cf0e0fc8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5104079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c071da3a86999f597b68ad4364c0c38af08f5ff1b91670b9fb995b52c6ac580d`

```dockerfile
```

-	Layers:
	-	`sha256:563cee51ee1a483c1f6958cc188a3fd442b2f4126607584d9bcc4b649f9e7b21`  
		Last Modified: Sat, 17 Oct 2026 01:52:42 GMT  
		Size: 5.1 MB (5087400 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14158467ec884be48f176d0f4b1a105c790e7cb68ba5c545c9ef4b9df7995805`  
		Last Modified: Sat, 17 Oct 2026 01:52:42 GMT  
		Size: 16.7 KB (16679 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7ed5ce9153d73c2e6ccf4bd846832b033d2ba83af89f721e08e90e57e519df5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.4 MB (188412868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af79c547ba0c0beb46c4e85b03dab5e5d0f15aa1ddfdbafc60e9479b511ed5aa`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:52:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:52:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:52:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:52:35 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:52:35 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:52:53 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:52:53 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:52:53 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:52:53 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:52:53 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00ae0df8b8dee8264636ea6627ee4305e386b677b13e539e4f843ed65bf9edd2`  
		Last Modified: Sat, 17 Oct 2026 01:53:14 GMT  
		Size: 91.5 MB (91528876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec5726b1922fac168e744e8fd93a2443bf73010b788e8d8ccab7631aa7327ff9`  
		Last Modified: Sat, 17 Oct 2026 01:53:13 GMT  
		Size: 68.7 MB (68745774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:373b1724307d32be77ded68d35d49f6a7488e3bd98f30370569d329f8294aedd`  
		Last Modified: Sat, 17 Oct 2026 01:53:10 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f232ba1c1079ea7e71bd705410cd426fd6d73b95f3b5e78b557ae8e7e9368973`  
		Last Modified: Sat, 17 Oct 2026 01:53:10 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:fb72e9ea968e1fd37443525db76168ded2e354ee69b61c197df23a16cc31078e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5110003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eedcfb89f0fd61d2bf08ebe660aed65ea86f41b17ebd4d30c1994ee44787b5cb`

```dockerfile
```

-	Layers:
	-	`sha256:4309d0803d69322b4d1a63a304f2105618194ffdb0a58452b1e54f4d09b11f40`  
		Last Modified: Sat, 17 Oct 2026 01:53:11 GMT  
		Size: 5.1 MB (5093182 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8670a8bdb16fc641b6a93931219df97a09c695b1d7d50aa18bba93cb732cf2e4`  
		Last Modified: Sat, 17 Oct 2026 01:53:10 GMT  
		Size: 16.8 KB (16821 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:5f32aa4249ba2c50ff80b1cde28a56dd8e2344762eafcc0df534dc2b66fd66b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.1 MB (198116306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f30dba1220f1b52a57f0437e358b1004f4491f504986b8a51af401cdaca0c927`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 10:33:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 10:33:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 10:33:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 10:33:36 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 10:33:37 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:42:27 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 10:42:29 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 10:42:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:42:32 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:42:32 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88907045d168f11890627eafe8ec8a437a3cb091d558a7d206b38791ae1d26f2`  
		Last Modified: Tue, 06 Oct 2026 10:37:50 GMT  
		Size: 91.3 MB (91256289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d56660ca3aa72f923e6d938f193c1ec327fe43ab97acfbfb69a3cb6ea8df71d`  
		Last Modified: Tue, 06 Oct 2026 10:43:15 GMT  
		Size: 74.8 MB (74766542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ca7374d07836825e0e3f9437d199021c3ff88e4381a63f5f50d07ce666a7542`  
		Last Modified: Tue, 06 Oct 2026 10:43:13 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f1507719796d4f7296ff8a691694510ab06c0d4412ff9d269d81803f2fecea1`  
		Last Modified: Tue, 06 Oct 2026 10:43:13 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0795e68e9626e4c158422515f29b0845d9bfad94f98d208a055dd7fbe96611fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5092621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cb6f3cb529894d55792813dc2fc346c58573f988e21b6d0147c92521e7cd3cb`

```dockerfile
```

-	Layers:
	-	`sha256:9c2a6b37b77c92439cb011626806b0ba1e3b67bfdc32ddb2ea2a817f5d7fa8c3`  
		Last Modified: Tue, 06 Oct 2026 10:43:13 GMT  
		Size: 5.1 MB (5075882 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c4fff7dc515f941275ec7b2af59b297644b7a4dd918d6ad47de699a100f5bc7`  
		Last Modified: Tue, 06 Oct 2026 10:43:13 GMT  
		Size: 16.7 KB (16739 bytes)  
		MIME: application/vnd.in-toto+json
