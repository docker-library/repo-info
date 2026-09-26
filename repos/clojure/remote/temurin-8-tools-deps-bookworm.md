## `clojure:temurin-8-tools-deps-bookworm`

```console
$ docker pull clojure@sha256:9efa770df8a4fe63aa8c2836b591f6187ad1690bfba615db7437a12ee5c42756
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:f157778b8effe7f09ee3fc17bccbe539a80ec9af8a9b58ad0d07a5960b6824b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.9 MB (181878981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7dabd570cf039887a3e75ced7236a8dcfa2bee93d9a07e3edca141cb6d4413e`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:18:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:18:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:18:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:18:25 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:18:25 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:18:38 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:18:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:18:39 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0931b273da4fedc435c6f9a19bf08b058224cd04631f9c1b0fa51c4cd2590e01`  
		Last Modified: Fri, 25 Sep 2026 23:18:58 GMT  
		Size: 55.2 MB (55192249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d97239cc68d76d7110c21c5bc553f6f32ab3be7cb9251c2eebf8d50bd1aea54`  
		Last Modified: Fri, 25 Sep 2026 23:18:58 GMT  
		Size: 78.2 MB (78182645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbdae6034c3f513ed8c0a92369a86367584f677268e5aad486665389806576af`  
		Last Modified: Fri, 25 Sep 2026 23:18:55 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:c78042dcd804a189d7674d2a14f3d7aecffca69770838e3f1fe10d1caa6a7d52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7515342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58212a8ff8dc6da9ec89818c1a0f02871db469efc38556ac1442757d27bb2870`

```dockerfile
```

-	Layers:
	-	`sha256:aa436ebfb4c3e01273fd6d77a94440262a7cb3f3c17e11d93a33c1d01d1c9b55`  
		Last Modified: Fri, 25 Sep 2026 23:18:56 GMT  
		Size: 7.5 MB (7500994 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f8d2ae90de0e28207a409790e21af0d886f3bfb725b682e0748b8f1fe405f88`  
		Last Modified: Fri, 25 Sep 2026 23:18:55 GMT  
		Size: 14.3 KB (14348 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:146815886f899ea968c55c4113755ef58c432acbe7135987c1be91a605954f5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.8 MB (180817361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f060cd354ff8e41439238d49cb589ee482c81e5f2aa5f7443501b6a605e403e0`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:16:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:16:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:16:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:16:09 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:16:09 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:16:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:16:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:16:24 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dad56fb47ba4f39cfbd3940059392f05f51fa2e5923fc6a9d8b2db5581260215`  
		Last Modified: Fri, 25 Sep 2026 23:16:44 GMT  
		Size: 54.3 MB (54254273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2c6a8e08c5a7552440cc8cf208fc302b4ca0430f1a35d91b00386f74f2423ff`  
		Last Modified: Fri, 25 Sep 2026 23:16:44 GMT  
		Size: 78.2 MB (78172533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27375744989dafb7783e06871f8a935d825cb84bf3562e7d84c8794afc562299`  
		Last Modified: Fri, 25 Sep 2026 23:16:41 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:3e00dceb0e084d741a9c30952ed16dcfd982976325d97ddf91bca9aac808f097
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7521921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88307b2d98d019f49ff92fe6046420e45ec2c0d7b78da9bfbbde9dd8355e6a21`

```dockerfile
```

-	Layers:
	-	`sha256:80d7b2977764226f08ef6e658b254201a7a7e4e4ba8c953f21c5eb83eb418faa`  
		Last Modified: Fri, 25 Sep 2026 23:16:41 GMT  
		Size: 7.5 MB (7507457 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b90148f1717bad968d8524975d209a8d6b54410bd08f82cf2c0556ee487c648`  
		Last Modified: Fri, 25 Sep 2026 23:16:41 GMT  
		Size: 14.5 KB (14464 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:c4c55fc2858d219d1545d1f67897026f2bd2869699b9dfd5867863b4c6260250
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.0 MB (189010356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e1b7a1cc6b3d9b04722e87ef0b262bddbb1d27dfa4529b4da3978b857062188`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 26 Sep 2026 03:43:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 03:43:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 03:43:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 03:43:36 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 26 Sep 2026 03:43:36 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 03:44:13 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 26 Sep 2026 03:44:13 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 26 Sep 2026 03:44:13 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:303f9548080ec7733e94ce124ddb2d901dc024b0db2d3e171bdfe62a1d04513b`  
		Last Modified: Sat, 19 Sep 2026 00:02:50 GMT  
		Size: 52.3 MB (52349305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:597353bd3f036e38506926ecfad1af2b9bede5a39e5e1f5956aba3b82b934913`  
		Last Modified: Sat, 26 Sep 2026 03:44:50 GMT  
		Size: 52.7 MB (52667133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ff40d70c5d6838a7d7e674d6bbcbf106bc147aea3efb7a0be88581eda53acd7`  
		Last Modified: Sat, 26 Sep 2026 03:44:51 GMT  
		Size: 84.0 MB (83993272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66d1ff57abde652171fbb8130901193566953a8bf8db6dfe42f0eec17bddf747`  
		Last Modified: Sat, 26 Sep 2026 03:44:48 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:e03a0a737a37960fa42626f70636e66901421601edcc913239824876acbef1c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7521198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a44684742e0ef181aa67bda16d4986907f01b85ccd814bd30e1f12d542dcea07`

```dockerfile
```

-	Layers:
	-	`sha256:dbd79c7987ae3ab21a1d380ba3346643425712418556e6281019f2c0492b7337`  
		Last Modified: Sat, 26 Sep 2026 03:44:48 GMT  
		Size: 7.5 MB (7506803 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:062a84740296bb3400bc36917b7db77dfe2de7e279f41263f62e52c3c7f57e06`  
		Last Modified: Sat, 26 Sep 2026 03:44:48 GMT  
		Size: 14.4 KB (14395 bytes)  
		MIME: application/vnd.in-toto+json
