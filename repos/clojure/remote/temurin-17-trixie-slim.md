## `clojure:temurin-17-trixie-slim`

```console
$ docker pull clojure@sha256:672e353af7f58d406fe0a95afca24107517ba1700cc52eb3f324a9a996cf1936
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

### `clojure:temurin-17-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:8303bd4b8368da1e8960e6ff5456cc1a17cf33e897f7a9edbd29fcea8b78215b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244660211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e13c49330fb468b1896e4f84d1f44ca6fabfe1be0feb56e46a304ae1c20f93d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:32:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:32:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:32:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:32:47 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:32:47 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:33:03 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:33:03 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:33:03 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:33:03 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:33:03 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3556a767e0ff28f303ae55fe255761d36c91955f8f82b5e909f5da787a5a8018`  
		Last Modified: Thu, 16 Jul 2026 01:33:26 GMT  
		Size: 145.9 MB (145906318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50f8ce52cb4d9215fa3f7aa87ec27597d9079b6b40ede10321747c5d8259fcb1`  
		Last Modified: Thu, 16 Jul 2026 01:33:24 GMT  
		Size: 69.0 MB (68971946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c232ba1fdc431d871b959166d2dfe0ac075d4fbe958944a34d139c91abfbed2`  
		Last Modified: Thu, 16 Jul 2026 01:33:21 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fbddb8818e4c0a00f75052b752fc163459fe9041c4b71d36f69e960dd8bf78c`  
		Last Modified: Thu, 16 Jul 2026 01:33:21 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1367611afbfc028086374ebbd30eb341e2d26c44a6804b6c99c3c2133e7bae10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5273298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8de3ae9d328311420fb13d4304a94666f296d16eafa6fe30afe3ec7270c78765`

```dockerfile
```

-	Layers:
	-	`sha256:3213cc4dec29a582a5ce46bf6e14b6e9885128d3b57718e0d81f047abf47cf2b`  
		Last Modified: Thu, 16 Jul 2026 01:33:21 GMT  
		Size: 5.3 MB (5257332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2852db55f5cab729723bebbb5b145d449bd73fecf10fbe489b954a653ef5a2e8`  
		Last Modified: Thu, 16 Jul 2026 01:33:21 GMT  
		Size: 16.0 KB (15966 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:19d2812953f1f3fc120d2e89a5ead9cb577e187117f49e380aea15afa94ec2d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.6 MB (243647180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25164eeae2e0335cf35bbdc78ce0bcbb50648bb2a294834ba07b1403e0fdb432`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:27:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:27:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:27:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:27:30 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:27:30 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:27:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:27:48 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:27:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:27:48 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:27:48 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1c9a85f2082f4c4000737089fec4b9b5c9315677943940f1b08d08434b8cb1a`  
		Last Modified: Thu, 16 Jul 2026 01:28:11 GMT  
		Size: 144.7 MB (144724326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1279b322980791e78ad6632fcd2fc6e7d206919ea9cfafcec2a7a05100131c8`  
		Last Modified: Thu, 16 Jul 2026 01:28:09 GMT  
		Size: 68.8 MB (68778111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7874dd7ea4b0ba620453897fcd381add22661d930327c2ef96fefb3c94a54d1`  
		Last Modified: Thu, 16 Jul 2026 01:28:06 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ee94f373ebe0a32741091dfc2187ddd11cbd86113869b4877a6ef644fbfa62b`  
		Last Modified: Thu, 16 Jul 2026 01:28:06 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a953fcb8aff6bbd1dfad7fa02628076479171f74570c4527b2fad0de7d29fccd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5279176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26931d223efdc52fa514a0e0b8529394f8d30f7eb53addcfb4656b78106fa3cf`

```dockerfile
```

-	Layers:
	-	`sha256:580c6a93a34a5c1c92a29a6073979a7fece5bc9b60ee6767269bccafce20d64c`  
		Last Modified: Thu, 16 Jul 2026 01:28:06 GMT  
		Size: 5.3 MB (5263093 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c112a5a643f309661126cf477fd6c1a9a6d103274b66ad0c1f05ea482a70fa4`  
		Last Modified: Thu, 16 Jul 2026 01:28:05 GMT  
		Size: 16.1 KB (16083 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:15eb2ff7b2f1b476525f42cc1836e93e94f26c788b21df29f3ca0725f60fba6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253741385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:441160f9c285663b6341cdaa5bc9bf59aa926448e819ec1ed4b0b1aa53efad33`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 08:30:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 08:30:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 08:30:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 08:30:05 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 08:30:05 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 08:30:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 08:30:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 08:30:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 08:30:40 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 08:30:40 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8720ca311664529620a125fd330bc746519e60c196880b637985787701431dd6`  
		Last Modified: Tue, 14 Jul 2026 08:31:22 GMT  
		Size: 145.8 MB (145766113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9fa51a5dce8f157a104bdf8ff5a68773d1a27637b0b8305e7af2bbd93ebc240`  
		Last Modified: Tue, 14 Jul 2026 08:31:21 GMT  
		Size: 74.4 MB (74372755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d21a33dc115761fc17b659f22d4e6fabaeaed5a0c1f7c2659c180fe67002f09e`  
		Last Modified: Tue, 14 Jul 2026 08:31:17 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:979a92df85293be9608adab79dc206521b7e9f7e6f74a1149adcb671cc32dca0`  
		Last Modified: Tue, 14 Jul 2026 08:31:17 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4477dcef916bf17da45d2b5b1284375060ce9a06c8bd34d1863637c5df5ef13d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5277717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a22beb7552fcf0becc90844dc638fb4990ee27ebc3cf251ee110820b1dd0c88`

```dockerfile
```

-	Layers:
	-	`sha256:ee8f0e89e426ee80797acae3520ae9ee13db348547e50ae44e5f59bd25ae6ab1`  
		Last Modified: Tue, 14 Jul 2026 08:31:17 GMT  
		Size: 5.3 MB (5261703 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:51f9c73e6a3291bea5ada99c59fdac4910be0354234f22ec0a603d2607916766`  
		Last Modified: Tue, 14 Jul 2026 08:31:17 GMT  
		Size: 16.0 KB (16014 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:41b19f5882910e905bec767ca84a35689ec7316c34d64eaaeffc03ee8a8a31c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.7 MB (235701341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87037c3bcbb997d9b7135e47e1f947671889ad6d70936455d3c8d2a3d75514ba`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:49:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:49:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:49:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:49:08 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:49:08 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:49:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:49:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:49:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:49:25 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:49:25 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27e0e4bb4ff6730f03d82fcda8b3082fe128c4df68ac862d30e9c05dc52f5ce9`  
		Last Modified: Thu, 16 Jul 2026 01:49:55 GMT  
		Size: 135.9 MB (135910475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f529f3cd442fd45ac6d5f15cbe60d15b68fd2e7d29632872a607dade101a520`  
		Last Modified: Thu, 16 Jul 2026 01:49:54 GMT  
		Size: 69.9 MB (69943191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd9064dbfaf51340ae90c0fc0080a1b211c2470bf216f21c23c098df52522222`  
		Last Modified: Thu, 16 Jul 2026 01:49:52 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b98f5e89efb5e3300e35441114e510ebae3f953c5633e896628f1b9fd10d950`  
		Last Modified: Thu, 16 Jul 2026 01:49:52 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:be16d1ca9ba1e943ed14fdd807bf34b26a965c8174d4363ad46e56d8cb5ce614
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5269222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ad195e7ee06ff29bc734f5707d1df150f48d4adb5000b2937920ea72a6a6639`

```dockerfile
```

-	Layers:
	-	`sha256:1e2eb250fc4b60d76361f6244712e0857dfb920f2e1e0fc0e20fa2951371db85`  
		Last Modified: Thu, 16 Jul 2026 01:49:52 GMT  
		Size: 5.3 MB (5253256 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1eeb5262ad6ac5df7fa77eb196e01711486982ee3afde6da958a0f0612252f5`  
		Last Modified: Thu, 16 Jul 2026 01:49:52 GMT  
		Size: 16.0 KB (15966 bytes)  
		MIME: application/vnd.in-toto+json
