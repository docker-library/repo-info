## `clojure:temurin-17-trixie-slim`

```console
$ docker pull clojure@sha256:846b81148fb0026bb39d1aa08f40193aed58959187c6674dfda04df3110ccea3
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
$ docker pull clojure@sha256:cd1a64c8d71ceeefc32e7ed4c62bc25041817a2d413eec77c3b361223dfe744f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244652320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41c6317df79e0135050139da029cb2441a75c5c7ff21369c4eeb1b9410721a9f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 17:56:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 17:56:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 17:56:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:56:24 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:56:24 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:56:41 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 17:56:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 17:56:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 17:56:41 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 17:56:41 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cecbe2fa85e1be3cd46562b4e1d294e22cb9475f9267ea45af5d542001d85197`  
		Last Modified: Wed, 29 Jul 2026 17:57:04 GMT  
		Size: 145.9 MB (145906318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8996631829affe2f375358d9a5545f0327bdb4ec3dd89661e9c79e1185f08d63`  
		Last Modified: Wed, 29 Jul 2026 17:57:03 GMT  
		Size: 69.0 MB (68964057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a58291b4c3f7ef20f72ddb85aa61ebe9a8d112442dc6b7226243702ca135ce28`  
		Last Modified: Wed, 29 Jul 2026 17:56:59 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2416ffd026e56cd595d78188b72ce6851d74e026c43e571232ad42a1f5b1c178`  
		Last Modified: Wed, 29 Jul 2026 17:56:59 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0feaf44db6d90f133146b1ba3a4ffcb625428f46de580ce64fca974b65004849
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5273298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:371076379ea70d5e483eebe1fcf7e17fbbb282c1b8274f3b6130b4f467b77724`

```dockerfile
```

-	Layers:
	-	`sha256:da57801cba10f02b6c2f675b8eb98231e524c9357c0e261a9d1f869e72fcd65a`  
		Last Modified: Wed, 29 Jul 2026 17:56:59 GMT  
		Size: 5.3 MB (5257332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aabf4ce25572c11eb970c467ae31e948ac068eaa29b22194755ce089af236a4e`  
		Last Modified: Wed, 29 Jul 2026 17:56:59 GMT  
		Size: 16.0 KB (15966 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d04fee3e8a3bda0e2f9c1ccf3787e4e0603d596940146033ec34e2069dedbd14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.7 MB (243657999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f71ced2237d2006a079e0062ae1f38cfd5e7e67ade1d2e62e57c6a6a82771305`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:04:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:04:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:04:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:04:54 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:04:54 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:05:11 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:05:11 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:05:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:05:11 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:05:11 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01d3983ffbd888c374341badc6beb61a5d6dbfe48f30fdbc672b985bd6eff70c`  
		Last Modified: Wed, 29 Jul 2026 18:05:34 GMT  
		Size: 144.7 MB (144724317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bf71f5d1f0bd69c2a35b4efc365af4d4f35f12ccd2bae7a930e6e73213532c2`  
		Last Modified: Wed, 29 Jul 2026 18:05:32 GMT  
		Size: 68.8 MB (68788935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cf0ccbd0c27025ba74bd64b36b2f583d9c378b67f1a32766ed549afaa3a7fb9`  
		Last Modified: Wed, 29 Jul 2026 18:05:29 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60d5c82d0dd0c49294654b24969dfa58842afdbf9eff60b712c02c07b855f5b9`  
		Last Modified: Wed, 29 Jul 2026 18:05:30 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0b1f6b0eecf7ad3b3f486a21d2b17d242f084497e01da46862a110d880d66cbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5279177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05e43c48af2268acc038d1c8b165c765ebd21393421a0ae3dfe903c1b7403e4b`

```dockerfile
```

-	Layers:
	-	`sha256:2f5d96630401a74cec56535e12adb6e104fec398ae3fbd827557998389705c81`  
		Last Modified: Wed, 29 Jul 2026 18:05:30 GMT  
		Size: 5.3 MB (5263093 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6510306cfa1252270889326a31bd9b456c1c09e427252f4febe8b90539d93b28`  
		Last Modified: Wed, 29 Jul 2026 18:05:30 GMT  
		Size: 16.1 KB (16084 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:ca082d2dd8b436504725c24ab5b6725defa068d5ca0ece7f8cd252ebdcc974ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.8 MB (253751910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cb9cc23fa84bf70e6b31933f301531d77bdbd9176497b0ace19df0496d82d0c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:04:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:04:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:04:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:04:46 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:04:46 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:05:29 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:05:29 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:05:29 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:05:29 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:05:29 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1884eefc7cbfbdfc40b8f45eb3587a40d76ff06f91878206818cfa76a275620`  
		Last Modified: Wed, 29 Jul 2026 18:06:12 GMT  
		Size: 145.8 MB (145766145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:798cdd98676163d2872d2e1574c516d74d3662b233a15e84bfcf05e363dbfd5f`  
		Last Modified: Wed, 29 Jul 2026 18:06:11 GMT  
		Size: 74.4 MB (74383246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d042767a5ee7120c9e2e6033849546cc7cbf73976e0458e87c42b60d71c37041`  
		Last Modified: Wed, 29 Jul 2026 18:06:07 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8d813f45471a2478bc9f4055273f66a225b43760b42f50d5d030f598757868b`  
		Last Modified: Wed, 29 Jul 2026 18:06:07 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a009530f6c1b333baf6458944c1a25c0e02ff79e7d32a0848d191b9762c2da92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5277717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5311c8beac93d7b50641dbb3e567853f8cf10d407e2c511862bde0a2db2f6933`

```dockerfile
```

-	Layers:
	-	`sha256:b612b3f3531583fbdc39fe44ca9a7f5bb7ea0d0b6f239e1806588350df36f693`  
		Last Modified: Wed, 29 Jul 2026 18:06:07 GMT  
		Size: 5.3 MB (5261703 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5359c747b5ff5475b5b726769b77eb5b697397a309748e5c840c5c6fb6a2bc8d`  
		Last Modified: Wed, 29 Jul 2026 18:06:07 GMT  
		Size: 16.0 KB (16014 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:158389c3aabb29f782ca20a3f8ee466313cc722318f0f1d690f767de64587451
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.7 MB (235707411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79ccefb6b1974eaa5433280751ad8ee03695dc73935172eeea7435ec3166ac60`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:20:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:20:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:20:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:20:41 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:20:41 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:21:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:21:06 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:21:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:21:06 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:21:06 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c881026b8953a014fb8919c6ea25ff6addb05446c116b6b6fac7acd5df10567c`  
		Last Modified: Wed, 29 Jul 2026 18:21:40 GMT  
		Size: 135.9 MB (135910432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3f82c07239bc963bbf07007141805f5e85db66d5bb6a32d0981d63e96e381d4`  
		Last Modified: Wed, 29 Jul 2026 18:21:39 GMT  
		Size: 69.9 MB (69949306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d696e91e22ec9a5223cd4068592e38e31985b003f6ea39866a63f7c7ea933885`  
		Last Modified: Wed, 29 Jul 2026 18:21:36 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a1250758e7fc50fd157d4fd87c9f3bea9faf0418fa4fc82ca29f42cfd8dcc38`  
		Last Modified: Wed, 29 Jul 2026 18:21:36 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:9faac6a94478ea6b020418b2f2d8ab50ef622498dacf352826e2ea6295cee503
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5269222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a77501affa6f17d6a28af3a5af9f5c70a3847b7025926eca8a55a484632ba2b8`

```dockerfile
```

-	Layers:
	-	`sha256:11950cf94d42822dfd990600138f1c086cf52fb93c4f3815d3342d85e18b5435`  
		Last Modified: Wed, 29 Jul 2026 18:21:37 GMT  
		Size: 5.3 MB (5253256 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f45f3419568624517bb4f784ad4f1ed7e634e105c76a83fc7a011a073f1e8fb2`  
		Last Modified: Wed, 29 Jul 2026 18:21:36 GMT  
		Size: 16.0 KB (15966 bytes)  
		MIME: application/vnd.in-toto+json
