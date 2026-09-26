## `clojure:temurin-25-tools-deps-1.12.6.1673`

```console
$ docker pull clojure@sha256:cdeb07ab8f062eb5b8e3727a7959557e7d1219f4d51d9dfcb1676a0d100fa8e8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-1.12.6.1673` - linux; amd64

```console
$ docker pull clojure@sha256:925804a45b2bfdab075a2ee7b2006233f35fee5dc70a657622818c5d249b1078
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.3 MB (219304880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:055d2988c75a0f5dad02534a151b519b6ca16492116cdab0518e9c35474bf09e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:24:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:24:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:24:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:24:48 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:24:48 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:25:02 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:25:02 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:25:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:25:02 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:25:02 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e701949b7ded1a2f56dc4654c311b7a9d3033b5c79a9dce2eecd7e6079fafd12`  
		Last Modified: Fri, 25 Sep 2026 23:25:22 GMT  
		Size: 92.6 MB (92618041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43ff0d5fd74f0cd42513278373519240b34eb5348964194eaa011a7784ec1f42`  
		Last Modified: Fri, 25 Sep 2026 23:25:22 GMT  
		Size: 78.2 MB (78182356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b53e609c01874d6386d43c15816326f0487913c729490bfd36030d2ba74e2352`  
		Last Modified: Fri, 25 Sep 2026 23:25:19 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9123379e29bc36c2a71742ee932692acc8b8d833d57d3dd6afd227c19a1ff11c`  
		Last Modified: Fri, 25 Sep 2026 23:25:19 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.6.1673` - unknown; unknown

```console
$ docker pull clojure@sha256:4705dfe2c2535888dd4e69c2dc5442d6b23bbadf4cef85f33e340c5c9488b82f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7367960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e06f62c4a38552d5af58a5fa18e3cf6e0d299422cd1e7210e136723bafc1d798`

```dockerfile
```

-	Layers:
	-	`sha256:c9b11cb5d1dbd8caf2fb7bb57882e32afe4d08fe3ff64f1046d781cdac148df2`  
		Last Modified: Fri, 25 Sep 2026 23:25:19 GMT  
		Size: 7.4 MB (7350036 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f652d23f3732e23591dbec37b948dca2c2162b24d5faf11c77af879f29468a8`  
		Last Modified: Fri, 25 Sep 2026 23:25:19 GMT  
		Size: 17.9 KB (17924 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.6.1673` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:8ac7446579e7bde8415fd6609c151623a340a45846fe99772e5fa748576c8181
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.1 MB (218092119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddf00980daa45f26d951267f95e21f3be1b608fb5d43f8a15d2cc52f4d61b3a0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:22:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:22:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:22:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:22:33 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:22:33 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:22:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:22:48 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:22:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:22:48 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:22:48 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c53908993761817560f86b663868e3a6fb7cc1ececafc708859285d328cb4a3`  
		Last Modified: Fri, 25 Sep 2026 23:23:11 GMT  
		Size: 91.5 MB (91528869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56fad7115a8baddca161c7c8f91a5ecbd921d83332e4307bb5b18dd8c7c2ab08`  
		Last Modified: Fri, 25 Sep 2026 23:23:11 GMT  
		Size: 78.2 MB (78172305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d38c73048ab8eea1418aef808c061c2792ee5939931f97b9873d8db10265e2f`  
		Last Modified: Fri, 25 Sep 2026 23:23:08 GMT  
		Size: 609.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:483679269e3c772c467a5b6b1237f1d84cd903b99b11cbcfca25429710a6a5f8`  
		Last Modified: Fri, 25 Sep 2026 23:23:08 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.6.1673` - unknown; unknown

```console
$ docker pull clojure@sha256:da8f712a837513abaf3e098c700bd060f309584805564ba46280d524a49d76e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7373983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f599041b05cba8af2d5f6f236c2b4be9730608fd388c26dda3a8aa671353ed`

```dockerfile
```

-	Layers:
	-	`sha256:8347b2dedb0aba94432446c7c58f9825664be6d2bec01198faa0f81bdf6fde03`  
		Last Modified: Fri, 25 Sep 2026 23:23:08 GMT  
		Size: 7.4 MB (7355868 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8bfef83e7c1f5a0a83980cc31625374f8331368f9f07a7df589855d165abb966`  
		Last Modified: Fri, 25 Sep 2026 23:23:08 GMT  
		Size: 18.1 KB (18115 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.6.1673` - linux; ppc64le

```console
$ docker pull clojure@sha256:c20611b1aa0d0cc05b803d84bd8261f09922c403ad5ebbc84be7afe9e45a2c42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227596574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f34a1915a416be3908aef91b71cde4cfaa41ff3f51010b01951a62da9be7b445`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 07:33:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 07:33:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 07:33:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 07:33:08 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 07:33:11 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 08:20:13 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 08:20:14 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 08:20:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 08:20:14 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 08:20:14 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:303f9548080ec7733e94ce124ddb2d901dc024b0db2d3e171bdfe62a1d04513b`  
		Last Modified: Sat, 19 Sep 2026 00:02:50 GMT  
		Size: 52.3 MB (52349305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e144bdb34cfddeba81abf8a8bfde859fad0258615bc5463bba81aa5e20a8bf2b`  
		Last Modified: Sat, 19 Sep 2026 07:37:47 GMT  
		Size: 91.3 MB (91255822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab04d3b9eddc8b154d005e359108c9c01c21d037e2fb793fa01ffd71291b83bc`  
		Last Modified: Sat, 19 Sep 2026 08:21:04 GMT  
		Size: 84.0 MB (83990405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:708020b4c68ce3aecd55debf454d3d214e8f7f9b44c43c77bafabdda7186b3e8`  
		Last Modified: Sat, 19 Sep 2026 08:21:02 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d874ecdff76a3a823dc5da8867e9380488e54e69450d9bd4cc0143736e72b3ae`  
		Last Modified: Sat, 19 Sep 2026 08:21:02 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.6.1673` - unknown; unknown

```console
$ docker pull clojure@sha256:c6440f7a31d2f1d25964c7acb028dc425b9bfa93f5ba2302080ad355af2f863b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7356599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:364b83c462374f729388f83378b8b78d6f1d2fab6df3fe363916b168862bb47f`

```dockerfile
```

-	Layers:
	-	`sha256:79e4270dd260106ea36b12dac7f9faa48a9e2c72f95547c91209b49631000e86`  
		Last Modified: Sat, 19 Sep 2026 08:21:02 GMT  
		Size: 7.3 MB (7338590 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f68f8040736146711bb7b75a40be20bc17d29dbc418f8914c937239b0434bd3e`  
		Last Modified: Sat, 19 Sep 2026 08:21:02 GMT  
		Size: 18.0 KB (18009 bytes)  
		MIME: application/vnd.in-toto+json
