## `clojure:temurin-11-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:15fb3525d80a94e5b69529a37d70eaa15525d574902679ee3bd16a42a58ad383
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:9e5c8bed6f17c235eb6172c7229711ccddb4773d347cb96621299ab6de013d6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.7 MB (247650841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d5d7c8f79dbc34abd5aa7331a8ab23919497eba186c0f126acf05c68f7b0f94`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:25:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:25:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:25:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:25:54 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:44:56 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:45:13 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:45:13 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:45:13 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fff80f763353bc063b0ecf9eaca7d097948bab2c8c2b82b95b62ed0952cc5ed7`  
		Last Modified: Fri, 02 Oct 2026 02:26:54 GMT  
		Size: 145.9 MB (145864230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dc30d1293fda7092d0e9a0ee73496265d675d6c2abdb16467163605fe6c2041`  
		Last Modified: Fri, 02 Oct 2026 02:45:35 GMT  
		Size: 72.0 MB (71955550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4608e0b0eb48622d08d3cc3b4ea265e9af07cb0d5cbca93ed80dcc53733d4660`  
		Last Modified: Fri, 02 Oct 2026 02:45:33 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:edbe2557aea3ad14f9e2e8713177c6a85b385e3403e44c88cf4b681cab3c6648
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5296272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:032ecee976364401840d34de152d15fc24024ad15bfb166dc956240778d07b0d`

```dockerfile
```

-	Layers:
	-	`sha256:179bceb8ab6cb2bd25a1463df8fe54f081aac64333fd314c9ba4c56d633ab804`  
		Last Modified: Fri, 02 Oct 2026 02:45:33 GMT  
		Size: 5.3 MB (5282830 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd47af7a9de3283578906bf8670484352f65144b0c133cc2f6d6ead6a38702c0`  
		Last Modified: Fri, 02 Oct 2026 02:45:33 GMT  
		Size: 13.4 KB (13442 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:91fc5895f586824fc32f999177cf40565f3a0644ea55c54182e149e5ed3915ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.9 MB (244905312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8ea1befc898ad33f623b360196a22d78bd8227815476ee4ce63f55c852445cb`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:44:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:44:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:44:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:44:41 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:44:41 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:44:58 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:44:58 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:44:58 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b45a5245d3cf778b2a296a2cc0748ce458c7fc9463810ed19e6718ea2ad98cd2`  
		Last Modified: Fri, 02 Oct 2026 02:45:20 GMT  
		Size: 142.6 MB (142576526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c11ad5fbd55d265133f60674fd88d7ca6fe27acd37ac06ff2c7f84d28cede8c0`  
		Last Modified: Fri, 02 Oct 2026 02:45:19 GMT  
		Size: 72.1 MB (72138453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04fa82e7a830e280bfb8846ce3442200521176c574b546af1fdcf8d4e1ca6b39`  
		Last Modified: Fri, 02 Oct 2026 02:45:16 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a0ba47a01d7fc393e57637284ea7708cbb3d45c0f11f94001310d4c9e3c5f90b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5303724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fd4e546087d03b07277ba425bdbed07d2ea78a89a27188d8fcf4222de4e0829`

```dockerfile
```

-	Layers:
	-	`sha256:57f8bf38fd5850eb7a1536243cf8a8d205ac30e66da84db41f13cb0d38bdf211`  
		Last Modified: Fri, 02 Oct 2026 02:45:16 GMT  
		Size: 5.3 MB (5289209 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b38cd3fd9d1a18d26cfab7eaac72e926c647647563f7e606a285a5b1c085bba`  
		Last Modified: Fri, 02 Oct 2026 02:45:16 GMT  
		Size: 14.5 KB (14515 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:0d6444f128bb8a7bd9822c3461b61588368d8c13bc1661f5e24c4fab3ce28986
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.1 MB (241148362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa4a277fa7af206e28d4a2bc1281604e3b56bc1b7d9c5c205733b0a82bfe6a16`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 26 Sep 2026 04:10:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 04:10:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 04:10:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 04:10:49 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 26 Sep 2026 04:10:50 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 04:22:58 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 26 Sep 2026 04:22:59 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 26 Sep 2026 04:22:59 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f015418d8b6088bf9375f9aae3d0891166138c6a5b2e04f870db3900f3ba8bf`  
		Last Modified: Sat, 26 Sep 2026 04:14:12 GMT  
		Size: 133.1 MB (133094693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:409745529554cb7342ea9589d20815d0b35f3ee67d5bd4b27d06964624230d9b`  
		Last Modified: Sat, 26 Sep 2026 04:23:32 GMT  
		Size: 74.4 MB (74411789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd5512a397c64b1e65a78b142551029628e520e09b6c4cd6cba7509d28592e72`  
		Last Modified: Sat, 26 Sep 2026 04:23:30 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4d7155e98b0aa33e231c82ee7c5f3a7c775b46a690cfab72a1fabd6effd6564d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5301031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70502ca1b6d4b98b3e0d830af6c2f830a9ab8e114daf6004c4fd85dc58d2d202`

```dockerfile
```

-	Layers:
	-	`sha256:f2a7346fd093aa8e1613a58b3f13365762d09e00920de6bc1ee5d928a270fa63`  
		Last Modified: Sat, 26 Sep 2026 04:23:30 GMT  
		Size: 5.3 MB (5286586 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:366156adb4119f0dc6f8fc5919bc4c0b8efea9c1509f5076f704f39771d96f48`  
		Last Modified: Sat, 26 Sep 2026 04:23:30 GMT  
		Size: 14.4 KB (14445 bytes)  
		MIME: application/vnd.in-toto+json
