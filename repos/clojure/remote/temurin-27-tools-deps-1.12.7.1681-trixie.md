## `clojure:temurin-27-tools-deps-1.12.7.1681-trixie`

```console
$ docker pull clojure@sha256:279968cd20422a5c3fbbad84c9005053af7d153c2516f2420469ad9ea37d7229
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-27-tools-deps-1.12.7.1681-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:7dd782d492658bed915b0f7a4fe53d5b0f8196196ff3f3b0ec4e936739063d47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.6 MB (225633067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6be61f0143577d4c3d4a3167de12d789d32a7985c4e83fc25c261270331c8afd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 22:09:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:09:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:09:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:09:26 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:09:26 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:09:42 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:09:42 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:09:42 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:09:42 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:09:42 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61d06dbfe8cdaf51fde4e37a78b3723e0e50899f66677b6a8f2d457f7ee8d5b9`  
		Last Modified: Thu, 19 Nov 2026 22:10:02 GMT  
		Size: 93.6 MB (93647847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15c7713bccdccff64b55a3fc7c5581afe4ead3c186412cf0f4fa3224ce832c3b`  
		Last Modified: Thu, 19 Nov 2026 22:10:03 GMT  
		Size: 82.6 MB (82571164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3da54d717c1faf387e28d2b3281bc9388d0f65fc582f1a9c3c92a36d5a60eb3`  
		Last Modified: Thu, 19 Nov 2026 22:10:00 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83accc4b4b6f38a9c6ab36c989b2d19d871ad17be4a512a904989a9eb3b2fcce`  
		Last Modified: Thu, 19 Nov 2026 22:10:00 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-1.12.7.1681-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:3f993fe90f2d657bb3ccb4e0b254edb56e3546a1ab9286e65f1bd332cc607bfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7456324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:619620a38b1179ecc5df4ac31a075ce33389c7ed1ab9bacd1d47d621eb16a94e`

```dockerfile
```

-	Layers:
	-	`sha256:f5e659d2820c8b85a24286d2c053fca4d5194563053a85b46136320b49807dd8`  
		Last Modified: Thu, 19 Nov 2026 22:10:00 GMT  
		Size: 7.4 MB (7440423 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:739f6ee46f6472700440c657da4aff7c504c476d08d1f026424036ea5f4a6d53`  
		Last Modified: Thu, 19 Nov 2026 22:09:59 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-1.12.7.1681-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:0e0c9755007ff66e151f4b60429ca437df62ccd81169e8c4bb5c030b518dc5b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.8 MB (224834709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caebdac6216f42672f1f693c9503a3a8aae565c97a0b40f37822f5bbfc1c3622`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 22:09:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:09:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:09:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:09:29 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:09:29 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:09:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:09:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:09:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:09:47 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:09:47 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdd3c16fa8f8951161551513c25d20d7210e20b25f625ecc5a8e30439fbe6ef2`  
		Last Modified: Thu, 19 Nov 2026 22:10:09 GMT  
		Size: 92.7 MB (92660413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd809508df05e5846440f5deb91d2adb040522f7e9d057cb5354f58e65e45f68`  
		Last Modified: Thu, 19 Nov 2026 22:10:08 GMT  
		Size: 82.4 MB (82394149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ba86a1c0f03155f886ec9fa8ae4fb5af9df02d647194d31c60696b43475a3d1`  
		Last Modified: Thu, 19 Nov 2026 22:10:06 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5e81ee5641d81f5fe86d64256d1110aea2a12c0580da17daa680669db5c79a9`  
		Last Modified: Thu, 19 Nov 2026 22:10:05 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-1.12.7.1681-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:ac8e094b93185ad099c114bf083d6e725ac900722854cd0f179c019e7e01bff1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7462831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bedb44e88772e40de6156fca6446df7660ef1296e866711ffabdc01b03dabe87`

```dockerfile
```

-	Layers:
	-	`sha256:3f31ec8e1922f3d09110871906ca32717280a4fcec50c8652bf188c9c0cf41b6`  
		Last Modified: Thu, 19 Nov 2026 22:10:06 GMT  
		Size: 7.4 MB (7446813 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0348b72b91f57a0ca51deee76cad538fead0247c0ef4531f9ecaa0faf2b6840b`  
		Last Modified: Thu, 19 Nov 2026 22:10:06 GMT  
		Size: 16.0 KB (16018 bytes)  
		MIME: application/vnd.in-toto+json
