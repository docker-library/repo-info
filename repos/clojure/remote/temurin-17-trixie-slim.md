## `clojure:temurin-17-trixie-slim`

```console
$ docker pull clojure@sha256:c5ce656b6b34a4c560bd3959458b866d8965868086f60fd746863985132fdf0c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:a049cd6cc22776c5c2552afa1fabb2731694ad7a175cc1402a69f06aa374c0a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.9 MB (244932763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bddd12055a6dbb32e441be8a9f820511cced0c7eb198bc6e75ecc1fe52e965d7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:08:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:08:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:08:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:08:54 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:08:54 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:09:10 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:09:10 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:09:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:09:10 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:09:10 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf890a12eb7634d3d6bedadb3d598b2aceca02e56c38d420948fde068d59e4ef`  
		Last Modified: Thu, 05 Nov 2026 08:09:32 GMT  
		Size: 146.1 MB (146086207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2253541c1db142229b4c17290ded621f0c584fe39e0fcdfd02a2839c3446183b`  
		Last Modified: Thu, 05 Nov 2026 08:09:31 GMT  
		Size: 69.0 MB (68989380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73bcb4c72f59933f2a21c750e3b831a24b36f7d73f824cf2a95e0bb28497941d`  
		Last Modified: Thu, 05 Nov 2026 08:09:27 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed92be5b8b0c0b45d45435cd309b86624f663d11f55a6e0771610cee510489fe`  
		Last Modified: Thu, 05 Nov 2026 08:09:27 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a893404354af1fb55174a904de59084fe9f62b47a3ec0b2605d210c9c2f6c221
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5278023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf620867c0cc601f5f094660ca426a24aa721ae6eb50dfa19b638ced0a3d75cc`

```dockerfile
```

-	Layers:
	-	`sha256:a375360e6be549c52b831f97730cc4f53746e5550b56accf3df746f5b7ac774e`  
		Last Modified: Thu, 05 Nov 2026 08:09:28 GMT  
		Size: 5.3 MB (5262057 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1fdc2a486abced2cc7c34e77928fe957eadf60690facac48a6462c85a137fcc0`  
		Last Modified: Thu, 05 Nov 2026 08:09:27 GMT  
		Size: 16.0 KB (15966 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:196e7b03a2da4ead78722f2ae11a2280304d33dbf84200139eff480b1bb726ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.0 MB (243977465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52ec51cbc9eb9260aba65fa043e8688c5cdf67d8adb829924dde7b82db88024e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:18:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:18:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:18:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:18:30 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:18:30 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:18:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:18:48 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:18:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:18:48 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:18:48 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dadd05fdb94ac11b598f427db0cfe444b6a52fcbc67ffe032c7245061c47ef1`  
		Last Modified: Thu, 05 Nov 2026 08:19:11 GMT  
		Size: 145.0 MB (144957202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b94866e4098aa192f5fd2180d61e7228bbc1d19b3ba0ec44ec5290c0836ba83b`  
		Last Modified: Thu, 05 Nov 2026 08:19:10 GMT  
		Size: 68.8 MB (68805182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ea912777b3a55fb6d30cfc9136bdb9c04554934eae3d2f06ac1e1c30a8867c9`  
		Last Modified: Thu, 05 Nov 2026 08:19:07 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffd14d80b0afc02be0109701466537f119d989f32d359e5b3e025dfcf651a261`  
		Last Modified: Thu, 05 Nov 2026 08:19:07 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a0aa59c07013d6a0d6510bbfb0a311c372e5f4c097175907344dc6fc96c60cab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5283902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4682dc26872e190b7a8715735e75051219890211ec6c31ef01df06213c2c48a3`

```dockerfile
```

-	Layers:
	-	`sha256:c20c3e1863ec2bdfaab3e24f66ccffd7775f63cd770b61213957bb4b8cf6a67c`  
		Last Modified: Thu, 05 Nov 2026 08:19:07 GMT  
		Size: 5.3 MB (5267818 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f741d83126e0982886a32265964a673e15744ad2f34a8a36b0be1906238dd997`  
		Last Modified: Thu, 05 Nov 2026 08:19:07 GMT  
		Size: 16.1 KB (16084 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:0ab188c792c53e7a484eeb70750252b67db1478fbf51756f65f359678143a85f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.9 MB (252947783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e66e5cf138cb606b8c7e252bb5331cc4a963cd6bb6bec849e923a9b4643f67d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 15:41:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:41:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:41:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:41:35 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 15:41:36 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 15:48:05 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 15:48:06 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 15:48:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 15:48:06 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 15:48:06 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:199bd1f0ba598dc223d976f04d012aa541bc41ffc8647af3bd3d9ec8c396327c`  
		Last Modified: Thu, 05 Nov 2026 15:47:01 GMT  
		Size: 144.9 MB (144860487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e30e820c98ed232cac7c86c69397cbd090f35a234bd725028357bf8ed834798`  
		Last Modified: Thu, 05 Nov 2026 15:48:55 GMT  
		Size: 74.4 MB (74418606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5e57381d59514d68a77cdfc7315cfa2e7d84e45655ac612b02c370ee4ab6bee`  
		Last Modified: Thu, 05 Nov 2026 15:48:53 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e099f76f60dafb9a4ae6b9d8f19701098d81991997fa6e7587a85ae9c44348c`  
		Last Modified: Thu, 05 Nov 2026 15:48:53 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1dd81e63e46655643a6bb30c16ceedfc8191ff232155a530fc829cc7a947519a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5280240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ed1cd6930fb56aea4faac74f15b3fbaf7992309881e21e770b8f7aedecbfde5`

```dockerfile
```

-	Layers:
	-	`sha256:14b473b930980f585b1ad760cc8b601134df46f4904a27eb60115c2f395e02c5`  
		Last Modified: Thu, 05 Nov 2026 15:48:53 GMT  
		Size: 5.3 MB (5265182 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8347a9b80ebea992fd29a3d5ce6713b64b2b69bb53be8f2ee0a293a7e309e7b3`  
		Last Modified: Thu, 05 Nov 2026 15:48:53 GMT  
		Size: 15.1 KB (15058 bytes)  
		MIME: application/vnd.in-toto+json
