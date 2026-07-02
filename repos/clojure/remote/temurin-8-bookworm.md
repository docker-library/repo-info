## `clojure:temurin-8-bookworm`

```console
$ docker pull clojure@sha256:c9f016057b32d0b48642ffcd7775a3299b2aa459b096b720107327becc56c828
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:6fd3bf15f508524f777e58ae8fe0ca935504b88e9e640e243af6768af20f8ca0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.8 MB (181826692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f419726136638c3d6a35a078bcdcb4457a862e1e5c5916849ac024d2ed55ea8e`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:47:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:05 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:47:05 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:47:19 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:47:19 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:47:19 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:425befdf76e52426879d2abe42093a00dca59a893e7b4fa2a7679b0180b71d4b`  
		Last Modified: Wed, 24 Jun 2026 00:27:40 GMT  
		Size: 48.5 MB (48502210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bdabbab12f33c96810e90cad605ffd0c6f82f6665d4ee05d75526b90cbe93f3`  
		Last Modified: Thu, 02 Jul 2026 05:47:39 GMT  
		Size: 55.2 MB (55198703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb25419d93ca7fedea038b2c76b3a3fbf9dc3b2a2c17f8b097e134d5dbce0f8f`  
		Last Modified: Thu, 02 Jul 2026 05:47:40 GMT  
		Size: 78.1 MB (78125133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6acec0c8991ee6d96a5d31cba4cbd3f2c8362610d5884f0d1e35eff7acb69f84`  
		Last Modified: Thu, 02 Jul 2026 05:47:36 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:3a3bdebc4c0264fa475cda45dfce6722311d3738decbc8cfed26ca2385160eec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7510842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64d4433c79b63907bdf43654ffd69f7afb7a5fc36c0fdc1ac79b98cfd3480c43`

```dockerfile
```

-	Layers:
	-	`sha256:76fb66b87b019f3977af765c6471bb4785051777a310cada0200c75176ab9692`  
		Last Modified: Thu, 02 Jul 2026 05:47:37 GMT  
		Size: 7.5 MB (7496494 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:899184d5a7b6a50c09b2b87ab48a2d694ee6bf8500716f441b2e9166c592f766`  
		Last Modified: Thu, 02 Jul 2026 05:47:36 GMT  
		Size: 14.3 KB (14348 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:935af2cbd4c8048a6eaf4c7536c8ba28a514698a7ba2cdcb907039737c2b427a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.8 MB (180792606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e5048d49a61e1cf6effd56fa64f8ea68d660cb1ed2b91071449d894aa7e2117`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:47:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:29 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:47:29 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:47:44 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:47:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:47:44 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:0fb1189398e2e4b474d43aac6502510d0da0318e70137a377c21087f198814db`  
		Last Modified: Wed, 24 Jun 2026 00:27:19 GMT  
		Size: 48.4 MB (48389201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:736e7be6eeb0af543f1c4ada2ab4d8016ddc2f47999b684bc8f487bc31dee0da`  
		Last Modified: Thu, 02 Jul 2026 05:48:02 GMT  
		Size: 54.3 MB (54272903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43fe5a3ea11c156a30052d48cbf8fe1d6449d3f870e443b7bd50b7def424b7f7`  
		Last Modified: Thu, 02 Jul 2026 05:48:05 GMT  
		Size: 78.1 MB (78129856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37e83b8813fc04ab136d77aa4cd1be3bc2cc7a87d13b18c70d680509b6794b6a`  
		Last Modified: Thu, 02 Jul 2026 05:48:02 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:7434895bdef3e15b95c11c2f1e6042f53715854022d773cb9fd66d2aef0baa56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7517423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e6c9e17d2bf6c828916a5a08e11f80862dc7b1479cb65520c7f37587bd0f412`

```dockerfile
```

-	Layers:
	-	`sha256:49c467c102f4154c9ba5a611f5eea1a2080471076193b58e810166fa7a5184f9`  
		Last Modified: Thu, 02 Jul 2026 05:48:02 GMT  
		Size: 7.5 MB (7502957 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:150226be2bf4ea89c8b852a03581005e841ba4a96ea14f24efc71c16df537d72`  
		Last Modified: Thu, 02 Jul 2026 05:48:02 GMT  
		Size: 14.5 KB (14466 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:70765161c8295fb06a739a3a28569551392215e52e3810dc6f8a5f60f5041f0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.0 MB (188975200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c8669dd83b92ae5c18d9e8eac2ed571d2474b9da625f741a674ebd935efce2c`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 06:44:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 06:44:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 06:44:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:44:29 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 06:44:29 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 06:45:07 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 06:45:07 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 06:45:07 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:55b0e891f4e8dc14bf4bc7e853254fcf1f3ba5a8e8e3c07c21e7dd5bd6d87882`  
		Last Modified: Wed, 24 Jun 2026 00:27:34 GMT  
		Size: 52.3 MB (52346847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e3f25c71b279c808bf2624d7342adac69c12ae66bd30cf36a5b1fc7b80dcc79`  
		Last Modified: Thu, 02 Jul 2026 06:45:49 GMT  
		Size: 52.7 MB (52669150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd1f307ebe8c89d5b883365469eab7d3f95eb4ad92f604c5bec1d595022a9c99`  
		Last Modified: Thu, 02 Jul 2026 06:45:50 GMT  
		Size: 84.0 MB (83958558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40477ca9ca17f73279c4c1613f5d4a091cfb8d8383ae1d6db90eeee160a17f8f`  
		Last Modified: Thu, 02 Jul 2026 06:45:46 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:76d16d535a75607ee9499e76df7e63588cb18121cae7971fb65c876a52cbe359
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7516701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfc07d13f65f1d74cb43c3eee9bd6bb08c2bf339b322758b706f45e673fde7c5`

```dockerfile
```

-	Layers:
	-	`sha256:8c33a124757cf17708a5c5d8e3698aa58b5aac48577822d8506fd1e8eff69053`  
		Last Modified: Thu, 02 Jul 2026 06:45:47 GMT  
		Size: 7.5 MB (7502305 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:534466a6f8e7d7ad233fe69ea18f80380bdaf30ca082c3138761dcabaceb00f7`  
		Last Modified: Thu, 02 Jul 2026 06:45:46 GMT  
		Size: 14.4 KB (14396 bytes)  
		MIME: application/vnd.in-toto+json
