## `clojure:temurin-27-tools-deps-1.12.6.1673-trixie`

```console
$ docker pull clojure@sha256:f957bf12b4c182c0176275b7a46755f035853dd9e8bb644f81721e035f14e07c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-tools-deps-1.12.6.1673-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:a5e3df08234c19eaa8a1f25c57dc4b88bdc9b73d545303252076d4bb1715485f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.6 MB (225605610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0110368455e40c374ebf675d765d65e68c59ae5587a7bd372e6aad4cfc8aac0f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:11:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:11:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:11:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:11:51 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:11:51 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:12:07 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:12:07 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:12:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:12:07 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:12:07 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc95eb9755e444f957fd4b894071fc7412acfc3fefe7ad34c91486610480f955`  
		Last Modified: Thu, 05 Nov 2026 08:12:28 GMT  
		Size: 93.6 MB (93622485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d86a7446885b91b1b398ece984be5764d535a521a57c93dcd4a366260ffa0c6e`  
		Last Modified: Thu, 05 Nov 2026 08:12:27 GMT  
		Size: 82.6 MB (82569577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14499e165a98c4e33fc847fdcc9065d0fb63d9cad134722919e1834c2c30677f`  
		Last Modified: Thu, 05 Nov 2026 08:12:24 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c03cd6c4f25e7fdca46f9080ea6c0e8f38afb438520a30c39e768672f7e96eb`  
		Last Modified: Thu, 05 Nov 2026 08:12:24 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:9a249004536cee4e790d89227054af2f891710521422fa3931876ca4d7696a59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7456292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcee0b1829ff6a01dc88db528c10d141b19b0d16278e57fe8c3f07465fd50878`

```dockerfile
```

-	Layers:
	-	`sha256:cd8588ad04092761d17b813814518832ea263a9eb37a15c5dece007ea0a43416`  
		Last Modified: Thu, 05 Nov 2026 08:12:25 GMT  
		Size: 7.4 MB (7440391 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:341c3dc4d6d9a03695ded06536846f7fb94e61191d36fcb1fc29bbf2db4a6c7c`  
		Last Modified: Thu, 05 Nov 2026 08:12:24 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-1.12.6.1673-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9a4b2c117cdbdcbfc23f47b4fc1a4ecbb49271f485347392e23effbac1eabdc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.8 MB (224805390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bc8ca73eb0e7fc38d9ed2d63aff7fcd3c68f95785bbc42c2967f88ff96f0bbc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:21:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:21:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:21:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:21:32 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:21:32 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:21:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:21:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:21:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:21:49 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:21:49 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0e2cf4bd5884b6232fe0dab0644a4d761ded166bb011cfd3484b051f0a9d7e6`  
		Last Modified: Thu, 05 Nov 2026 08:22:12 GMT  
		Size: 92.6 MB (92633118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5a4866d0aa24951d53eebba0a1073b9dd3bfb2c824b3e3b8c856a3d9d5ab442`  
		Last Modified: Thu, 05 Nov 2026 08:22:12 GMT  
		Size: 82.4 MB (82392626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da3f41b5f2fb9a2071f06e2ab97f44f91c3d5bf29c6c5a9b67cd0046905f61f7`  
		Last Modified: Thu, 05 Nov 2026 08:22:08 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1699371852ce0969e90b006ab26b6d9e94d13c5d87b68756798ebc704425d0e8`  
		Last Modified: Thu, 05 Nov 2026 08:22:08 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:ac9c0c9855c8b1b861fa095a3679bec61d0b2d5ca2e1ca4e69aa2e07b9677500
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7462800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed2a561addba18dd576c2c13f38204e90aa5d56098452c851fec849bc6c02fd8`

```dockerfile
```

-	Layers:
	-	`sha256:f355a0a1d1b2dcf765508a075f75b23d14f220e57a6ecbcd85724a794df6cb93`  
		Last Modified: Thu, 05 Nov 2026 08:22:09 GMT  
		Size: 7.4 MB (7446781 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb2833d4fc01d43ae841c016e19ae0e58e2ca4791b7a894f711b810fb7eca861`  
		Last Modified: Thu, 05 Nov 2026 08:22:08 GMT  
		Size: 16.0 KB (16019 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-1.12.6.1673-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:874aac3a20b07b6a4817b3a87f705d1dc7429962841c4b04b6a0e7924c05a2a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.5 MB (233479405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6820815d1fdb282d3e634e2760f30a7afe76e56ea4f7caa1471b468d9aa39eb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 16:18:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 16:18:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 16:18:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 16:18:50 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 16:18:50 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 16:26:44 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 16:26:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 16:26:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 16:26:47 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 16:26:47 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09b78c766a2a835bace291ec5559602dcec41a0fbc2a9622471f9f897bc91fbf`  
		Last Modified: Thu, 05 Nov 2026 16:23:46 GMT  
		Size: 92.3 MB (92255828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:437dfc6b50c8e40b6a81328ec92257b2d6177161e981d0217ecc223805e48a01`  
		Last Modified: Thu, 05 Nov 2026 16:27:36 GMT  
		Size: 88.0 MB (87996943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8021d8d5ba617b5cf77d9919406d8ea4816244bd4c58561747f330564c806f76`  
		Last Modified: Thu, 05 Nov 2026 16:27:33 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76977d958a6bfe9f981561ed0b6a62af2201f8e1e12b72eec1da3debdf8290b5`  
		Last Modified: Thu, 05 Nov 2026 16:27:33 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:dcd163e31ca335b491b2171e27099360fa58425a80ec30b5d52677c8998439d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7444693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca18a46a0080f48738feab196704bdbfe64b2d026af45ef66b1e7fd7e10ef770`

```dockerfile
```

-	Layers:
	-	`sha256:78f254b382267cfaac106d47029fa86cfd3e5b0218962ee66a1fa37315233427`  
		Last Modified: Thu, 05 Nov 2026 16:27:34 GMT  
		Size: 7.4 MB (7428744 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ecd748e5c352a03319c6389002811f93c30fe69115c8f1fcb7f188bfccaef33`  
		Last Modified: Thu, 05 Nov 2026 16:27:33 GMT  
		Size: 15.9 KB (15949 bytes)  
		MIME: application/vnd.in-toto+json
