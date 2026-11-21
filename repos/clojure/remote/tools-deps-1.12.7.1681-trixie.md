## `clojure:tools-deps-1.12.7.1681-trixie`

```console
$ docker pull clojure@sha256:40763fb347fd1a60034fa50c97273ced677293a47a628fef561a2014771d40ae
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:tools-deps-1.12.7.1681-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:6cb8d6d3f48f75c53361670b7f1c567370c349848c2b81fe12a41bb0e50c7acd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.6 MB (224599560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:422dfb4fc9e30b50495aac3ac8458322812024a18969851a7f55225d753ba849`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 17:50:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:50:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 17:50:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:50:51 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 17:50:51 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 17:51:08 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 17:51:08 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 17:51:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 17:51:08 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 17:51:08 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:907525c5d8ee53380db6573a8de9215f677c8084eb74297bcc5abd42a40fa362`  
		Last Modified: Fri, 20 Nov 2026 17:51:29 GMT  
		Size: 92.6 MB (92613971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dcba78cc77a993f0f4cd2aeae338bf73d2125af1b3e832771945840e24fc59c`  
		Last Modified: Fri, 20 Nov 2026 17:51:29 GMT  
		Size: 82.6 MB (82571534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7a0db7d496aa22e08cf4c9f1e583ad588c3bb3853f297305194a1e722c069aa`  
		Last Modified: Fri, 20 Nov 2026 17:51:26 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f5c8e1f5fb65be9aa0d89b398fd4cb1405b7bd0d4fe5cfc27fe8a15d51c3432`  
		Last Modified: Fri, 20 Nov 2026 17:51:26 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.7.1681-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:42506a39a6ab906645da06b63426c56ba6dc91d8d322eb7bcaff9776dc7a2627
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7461401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e496c8497eee970406dd4206aed75b9f001ded9ef519287535184774745299c5`

```dockerfile
```

-	Layers:
	-	`sha256:598ee38f6faa12bf97af92f34a5b64839df588c444169c6ffb0692258dc188d3`  
		Last Modified: Fri, 20 Nov 2026 17:51:26 GMT  
		Size: 7.4 MB (7444833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9f84fcea871d575fa8f6d8e0c3b17ac6e4d56627edbbb7007813d836a1dd480`  
		Last Modified: Fri, 20 Nov 2026 17:51:26 GMT  
		Size: 16.6 KB (16568 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.7.1681-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4d00171c9d00df8380d84f9cc05f6c51e24f2265a23a67767353271edee2b5a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.7 MB (223729137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3d5f5bd21878a8c8a09de3dc8aa9c08dac38deaeb93b5febd801476d2cf0958`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 17:46:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:46:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 17:46:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:46:20 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 17:46:20 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 17:46:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 17:46:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 17:46:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 17:46:39 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 17:46:39 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c9c901f65e2d8d676639d18a93472cec040546d8b57026be006e5e5044c6f39`  
		Last Modified: Fri, 20 Nov 2026 17:47:03 GMT  
		Size: 91.6 MB (91554088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54cc200ea08152db0e5dd81f47846e58d252a3bada7cea0739271253e74a9e9e`  
		Last Modified: Fri, 20 Nov 2026 17:47:03 GMT  
		Size: 82.4 MB (82394900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55fe5f1846760b6d186d3b2d624d67d2956713f185c4d23269eca2164e734d2e`  
		Last Modified: Fri, 20 Nov 2026 17:46:59 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd81217d9e4267ee505f805c18e0a6058f6a70f65de66a1bd8696ac75b33904f`  
		Last Modified: Fri, 20 Nov 2026 17:46:59 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.7.1681-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:ff946b09317b35500694419478732a9ecb42b2ef60bd53d74257f3fab2e5ed7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7467958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ace94984b5281c28830a9d9713a8c2c1ab9f501c6ee951fbaa48af2e9c18cb2`

```dockerfile
```

-	Layers:
	-	`sha256:5b644e1a7b26cacf0412e638be7f9b0eb84651c49d9f5cc7c079636c927caef9`  
		Last Modified: Fri, 20 Nov 2026 17:46:59 GMT  
		Size: 7.5 MB (7451247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d230ff64daca0f78e60574f73f62b3cbead79312cc09ac54c8245f631afd3507`  
		Last Modified: Fri, 20 Nov 2026 17:46:59 GMT  
		Size: 16.7 KB (16711 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.7.1681-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:f0aca86cccb481ba4d2bca45cf63c8c261eac43b601a560847c4d17024a3423f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.3 MB (231336904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a51f49d33d2a7faba129b18eecb402be4b42224c6e298ae0022bb25fb24f1bd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 19:47:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 19:47:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 19:47:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 19:47:29 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 19:47:30 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 19:55:55 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 19:55:56 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 19:55:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 19:55:57 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 19:55:57 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:febe6297f2c0e01e55cab94b54945da73efad2a95f4b72148fe950b5d1274b6d`  
		Last Modified: Fri, 20 Nov 2026 19:51:33 GMT  
		Size: 90.1 MB (90119619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e190602994cceb7cc4ebb16709a0b05d89423ffe167d1dd6f688c13e4029ee76`  
		Last Modified: Fri, 20 Nov 2026 19:56:41 GMT  
		Size: 88.0 MB (87990149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3b7f4b632dbd9cf4cf1fded0b9a22ee1345f55f38304f2eee55e3df8f76d14e`  
		Last Modified: Fri, 20 Nov 2026 19:56:38 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30198785c3ecd66d13018174c11442b63bc9af108d104b97f2d9f76dcfbae180`  
		Last Modified: Fri, 20 Nov 2026 19:56:38 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.7.1681-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:43f86d6b32a581e24b2655ddca5e00751e75227d73ea5e4b37f81c210223e845
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7447342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e830d73219f170e99f9ba225d39f436aa5e5cdb818c0be887a2578e727e2333a`

```dockerfile
```

-	Layers:
	-	`sha256:b678b408b0ad15c0f1dba959d7afe8b929bc4431056d20bacd18b77b35298b91`  
		Last Modified: Fri, 20 Nov 2026 19:56:38 GMT  
		Size: 7.4 MB (7430713 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:469b2f168dfb23133bed3b9d10f6f60abc0e68f1ca30b3a4aa601b5eedda5879`  
		Last Modified: Fri, 20 Nov 2026 19:56:38 GMT  
		Size: 16.6 KB (16629 bytes)  
		MIME: application/vnd.in-toto+json
