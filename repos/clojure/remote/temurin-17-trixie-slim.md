## `clojure:temurin-17-trixie-slim`

```console
$ docker pull clojure@sha256:c0192686132a429bd1344cd6f989d9e56a3b4869e70890d78ff894d376121fe6
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
$ docker pull clojure@sha256:3233ed6686ba946703626de20b6ac709ac12802a395b5f03a63b974f359af843
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.9 MB (252946491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:648a4b6003989c3fac71ce3509b7165c8863e2323fae03e5892f0e67fa859cf2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Tue, 03 Nov 2026 22:42:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 22:42:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 03 Nov 2026 22:42:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 22:42:28 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 03 Nov 2026 22:42:29 GMT
WORKDIR /tmp
# Tue, 03 Nov 2026 22:51:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 03 Nov 2026 22:51:19 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 03 Nov 2026 22:51:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 03 Nov 2026 22:51:19 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 03 Nov 2026 22:51:19 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caa1439eedc0664cd6ab9b06966ee483aca719e4ede6de00d0dfdd8f2f09ce66`  
		Last Modified: Tue, 03 Nov 2026 22:46:53 GMT  
		Size: 144.9 MB (144860490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02f133aa9d9fe2198d118c1662c238f3edf4c475f4b2138aa90b7527bf289b57`  
		Last Modified: Tue, 03 Nov 2026 22:51:56 GMT  
		Size: 74.4 MB (74418695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7a0bd7f05092c0b5ff47cf47e84d270c76a6d6c8c314982b11c55743155a7ed`  
		Last Modified: Tue, 03 Nov 2026 22:51:54 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30783d8ecce5c8bc536c2eca746b1fdcfccd15073b6723e0201aaed91197dba3`  
		Last Modified: Tue, 03 Nov 2026 22:51:54 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3cb193670510968f4ce0cfead219d808df1ca2e013cb21d32977af5d78ecabf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5281196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae4c832c248ef49646fed34a8bf0afc1253f9ba9ce0a64d64363e8a3784689d0`

```dockerfile
```

-	Layers:
	-	`sha256:26a7612279fe1c464f83d1bfe7f9c91695a064c24a1e86359f2fe1106e9024c4`  
		Last Modified: Tue, 03 Nov 2026 22:51:54 GMT  
		Size: 5.3 MB (5265182 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a419b6f0bcc21a26854ca4b18a1d57cba929f8cf26041d17f36859711a385ae5`  
		Last Modified: Tue, 03 Nov 2026 22:51:54 GMT  
		Size: 16.0 KB (16014 bytes)  
		MIME: application/vnd.in-toto+json
