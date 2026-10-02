## `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim`

```console
$ docker pull clojure@sha256:caaf52af18ecdb2b15db4b48ad56856bd9bf2f7b9ae2ba2d4728f11c089c039f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - linux; amd64

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

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

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

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - linux; arm64 variant v8

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

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

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

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:1a922f21206ed8316322315f1a0414f2e6be81dc1ffb317c033ac135e6bf0172
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.4 MB (244359225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a8f9202b5f40453c908a0b0b256fc3623f0007e4202528444efb5d5b29981bd`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 07:46:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 07:46:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 07:46:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 07:46:00 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 07:46:02 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 07:55:28 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 07:55:35 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 07:55:35 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56e9f3bbf0dc455cf49682b7c5301d36d3867551d020a4d6eb1b8a9b61154b3`  
		Last Modified: Fri, 02 Oct 2026 07:50:42 GMT  
		Size: 133.1 MB (133094687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:103ad82f79db549b8b360abc24706ca6affb5d21dfa567ba87df38739d67f98b`  
		Last Modified: Fri, 02 Oct 2026 07:56:15 GMT  
		Size: 77.6 MB (77622659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:551374491d2fd194452f56a507c4753786cf963b052f79fb20acf16890370af2`  
		Last Modified: Fri, 02 Oct 2026 07:56:13 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c3f9d655eed33f1c8c47ae94cfb5db7723680f48b9ecc3bd956469c9bdbe6f43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5301031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb6f8b152f8f734de6f174951e02c5ee8ac1b13c95a2269942f7c95303eebada`

```dockerfile
```

-	Layers:
	-	`sha256:383f4f9682d050eeea05e5a4c25b4c2e4748fea8da42a91e17f2a3eb4da19df8`  
		Last Modified: Fri, 02 Oct 2026 07:56:13 GMT  
		Size: 5.3 MB (5286586 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:246f97eafff7e1cf5366b7f3591f92c4c7a6bdd554792e1f3f7dc7a2f056019c`  
		Last Modified: Fri, 02 Oct 2026 07:56:12 GMT  
		Size: 14.4 KB (14445 bytes)  
		MIME: application/vnd.in-toto+json
