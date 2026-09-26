## `clojure:temurin-8-bookworm`

```console
$ docker pull clojure@sha256:cef49f0eba19a8d863d3f584219948ce759be4bcd096567b9048ddcb2a11affd
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

### `clojure:temurin-8-bookworm` - unknown; unknown

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

### `clojure:temurin-8-bookworm` - linux; arm64 variant v8

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

### `clojure:temurin-8-bookworm` - unknown; unknown

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

### `clojure:temurin-8-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:96e20ff297b9a4437c2d5510001384ed117c749f63d8e5aa6e0d8ec3c485f523
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.0 MB (189011677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b5c2d72680c62ab8f1c00e3b51fa629d6e656f85ef9d97caa70d8a632e50e57`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 07:33:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 07:33:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 07:33:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 07:33:09 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 07:33:11 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 07:34:08 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 07:34:09 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 07:34:09 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:303f9548080ec7733e94ce124ddb2d901dc024b0db2d3e171bdfe62a1d04513b`  
		Last Modified: Sat, 19 Sep 2026 00:02:50 GMT  
		Size: 52.3 MB (52349305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e9c5b3b2b671097e691daaedcc90c4b99dbf1dd0d8a4ed34eadb76dd2361f5e`  
		Last Modified: Sat, 19 Sep 2026 07:34:54 GMT  
		Size: 52.7 MB (52670666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:670adccd822c6b1f63eb1c8456bd4bc318d29b7637ae975dc20a9785001e05bb`  
		Last Modified: Sat, 19 Sep 2026 07:34:55 GMT  
		Size: 84.0 MB (83991060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69b44e451741143e2273c147f394ab0a21b19cac06ae3ae11048adfc4d4a87b2`  
		Last Modified: Sat, 19 Sep 2026 07:34:52 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:d93654eac325963ddd97d135299c59d46c8cc121349d9d5bfae3e14f76919519
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7521199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8b4e1bbaac59b0c5d839fcab878fdc4ad90cb6bb6518effca35f66ce73abc2d`

```dockerfile
```

-	Layers:
	-	`sha256:af6fea0ceb1001236bf91d2dffecd431f542aa4d9f724b69a230757e56a3f4dc`  
		Last Modified: Sat, 19 Sep 2026 07:34:52 GMT  
		Size: 7.5 MB (7506803 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a9dc92579ba103567332c0019746858199835f270a663e81a2f3761bc605d3b`  
		Last Modified: Sat, 19 Sep 2026 07:34:51 GMT  
		Size: 14.4 KB (14396 bytes)  
		MIME: application/vnd.in-toto+json
