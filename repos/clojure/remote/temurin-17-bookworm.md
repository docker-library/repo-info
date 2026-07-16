## `clojure:temurin-17-bookworm`

```console
$ docker pull clojure@sha256:ce6679128b29fcef7212011ac754fb2ff8e27040b63b39196620d004063dd359
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

### `clojure:temurin-17-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:01cb8640dbb6ff816c8eca82311742f4839caf9250c85e781b9c305b27152c70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272534959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8acf1ca577a4fb09338eb178134f8ea9c669301a7a34637f17f9ad9ff9c17b0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:31:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:31:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:31:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:31:55 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:31:55 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:32:09 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:32:09 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:32:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:32:09 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:32:09 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8db0b6c17664e3c45c0771f404b66529677cbe6349206f1a0c082b7c277f56e`  
		Last Modified: Thu, 16 Jul 2026 01:32:33 GMT  
		Size: 145.9 MB (145906317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2c19f8a78fa7a86159cc2f22f7fa3dab6691091669da06e65d98da4ee02e163`  
		Last Modified: Thu, 16 Jul 2026 01:32:31 GMT  
		Size: 78.1 MB (78130199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcc06072ae5096965dda3206220fd1dca606e3a063b9ece5e08fe123daa00514`  
		Last Modified: Thu, 16 Jul 2026 01:32:28 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fec18276214327b9c025be9df295d7d304a8fe6bdb221da00e6775f915694e5`  
		Last Modified: Thu, 16 Jul 2026 01:32:28 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:9fe27dec633d2dc4941a3edccf9913c3133672de98a5dfbf83fbf6cc5f7fb0e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7392102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87c45cff3bb49ac985c6633f0a75c79e5b9b6234926dcd747fdc6d94a0e515f9`

```dockerfile
```

-	Layers:
	-	`sha256:7d9f91bc97ae9c34dd81f25c7974f0c84c506d2a794b70d9c2502fa7c5c1c707`  
		Last Modified: Thu, 16 Jul 2026 01:32:28 GMT  
		Size: 7.4 MB (7376170 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:18a83d4ced919058e95a864028ddedb78ca5d1546df19b65f4cc41b3ae1c0501`  
		Last Modified: Thu, 16 Jul 2026 01:32:28 GMT  
		Size: 15.9 KB (15932 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:3e88ae9662ccd6628df515a5586d6f331b674066538cc37fb4c70526b0797a49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.2 MB (271230623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1acbca97f464936029e3b946c9eaa1f99d4f5d7d8a72f903b9a0349525182fe`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:26:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:26:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:26:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:26:13 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:26:13 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:26:27 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:26:27 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:26:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:26:27 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:26:27 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c585aa2ae4c4f7f3dc814304d640f985dd6567b5d04141308a055b169df0aef`  
		Last Modified: Thu, 16 Jul 2026 01:26:51 GMT  
		Size: 144.7 MB (144724327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d1ded5e944c654b52585d1f58f4a61e7f6c6c3c8f75ea481666aee32de053a1`  
		Last Modified: Thu, 16 Jul 2026 01:26:49 GMT  
		Size: 78.1 MB (78121565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e8cb83c925d19707c1c6bd47f737fad5064ded2db61e92955b914cfe290023`  
		Last Modified: Thu, 16 Jul 2026 01:26:47 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fad97ad6e88aed992175f4ff8be76904327424489bcd47facbb7829ec650b345`  
		Last Modified: Thu, 16 Jul 2026 01:26:46 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:64536e24eb678a52d2530e5404fe7815d7eddee0c6a989e8e1f5ddba8f3d6662
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7397983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dd62ac8d4df570ec65303b9687e0eabe641465599a22f9247129b255d762902`

```dockerfile
```

-	Layers:
	-	`sha256:6de88ef2289307a66cbaf4d837834cd2b4e7cc9f1ea43e04acd44970d0b6e8cf`  
		Last Modified: Thu, 16 Jul 2026 01:26:47 GMT  
		Size: 7.4 MB (7381933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7eaba0e3074a03fef78d4af0ca95a80e804de28590d80e4e2da967bd6d3fa4b`  
		Last Modified: Thu, 16 Jul 2026 01:26:46 GMT  
		Size: 16.1 KB (16050 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:f91e193ce7968bd87670368c0adc085f6c1aecfaf24b22eae02589c96bc7d7f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.1 MB (282068963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f26e4ff14793dd584e56d567b16657f0358c6ed469f99a0549fc5bef5927363`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 08:21:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 08:21:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 08:21:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 08:21:53 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 08:21:54 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 08:26:44 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 08:26:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 08:26:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 08:26:46 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 08:26:46 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:380d3eabd945505d4db48078d6d4aeda6a011b9da5c9767fd7ea92fdb78f37f3`  
		Last Modified: Tue, 14 Jul 2026 00:12:57 GMT  
		Size: 52.3 MB (52341834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd2e25ff25be1eddeb1ba9b54263149b269f8a03b6d5309bcd84972d7662b9a4`  
		Last Modified: Tue, 14 Jul 2026 08:25:39 GMT  
		Size: 145.8 MB (145766183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2b97a0ffdef1d185264b08f8563576223c27550a6e30ad25cccc911c91793b7`  
		Last Modified: Tue, 14 Jul 2026 08:27:29 GMT  
		Size: 84.0 MB (83959906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03b670158ff701c63e44108e236a3d8832c4b2257a281881ee88991aedca1494`  
		Last Modified: Tue, 14 Jul 2026 08:27:27 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d974e4199edfbc96e626ebc0b209e0944b44760e642dd8dbd5db91fb4bf19a`  
		Last Modified: Tue, 14 Jul 2026 08:27:26 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:ccf93dc393c242c2cefa997d4bec52e25fab9ee63acad1bca8bdcf9f1d749061
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7397366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e3bfc503ac2892de22e3ee82aca53a8426bcc351091524c57a4b4793891a911`

```dockerfile
```

-	Layers:
	-	`sha256:3f7ef38c34bce0bfa82828fc28470c1c2b7a396b5de509067a991a4e086c75bd`  
		Last Modified: Tue, 14 Jul 2026 08:27:27 GMT  
		Size: 7.4 MB (7381386 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56641c1eb0fcf79c152c0654718fe5e1e1f4b4e3a9136f77a800d59f17155223`  
		Last Modified: Tue, 14 Jul 2026 08:27:26 GMT  
		Size: 16.0 KB (15980 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:363dd2469dee38a2a20d6811f272d3811e68e4d3396bf321dbca966d576139cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.0 MB (260007575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdc94cb9455a02b34cc537335c1bad75246d8d2294a6e34f1fc66b406be9f44a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:48:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:48:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:48:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:48:05 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:48:05 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:48:19 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:48:19 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:48:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:48:19 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:48:19 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e0d5bc8665b18aed0d7befb981728c49ad18ac110ba92d1dbc1a24962eb8cfc`  
		Last Modified: Thu, 16 Jul 2026 01:48:50 GMT  
		Size: 135.9 MB (135910472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09994a84c41ddd3fbf1b977ce7cc2c96c652ebe768e3bbedaaab2cf5d8fa0c79`  
		Last Modified: Thu, 16 Jul 2026 01:48:49 GMT  
		Size: 76.9 MB (76938782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0d783d4c40ff4911a8fc5efa5d452e57d693cfbf606620253419428ee56aff2`  
		Last Modified: Thu, 16 Jul 2026 01:48:47 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bb1ec6cc964dcf169f1be5281139aa56daf57b8f288244ab0fe016bac3c94c3`  
		Last Modified: Thu, 16 Jul 2026 01:48:47 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:4bb8b6a6440c4b20a39a5e85cd4d307da969c5e62fc318c28d7e97806d1d394e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7383421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc59775bfebad15202e20c386b41d1e874306bfdfd481e22ea03551661f39acb`

```dockerfile
```

-	Layers:
	-	`sha256:78fee2d8a75d53a1d27bcdba8663d1018eb97c351b83bdfba2d2183c3a02d389`  
		Last Modified: Thu, 16 Jul 2026 01:48:47 GMT  
		Size: 7.4 MB (7367489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e95787ebe33ae6989f2038e8ba9244567fa35f5791e77485ff949ed597a4ca0a`  
		Last Modified: Thu, 16 Jul 2026 01:48:47 GMT  
		Size: 15.9 KB (15932 bytes)  
		MIME: application/vnd.in-toto+json
