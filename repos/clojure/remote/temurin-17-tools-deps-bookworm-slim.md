## `clojure:temurin-17-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:e5c2c6e289daf727744434a072c25cfd39d0f235c8a5e447de549dd7c221976d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:70328004f62b73914d52815041546bc77998807183a093b4ae4a275e71279227
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.9 MB (242861882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e92c6ad13678a0a7e87819221b7ab5f6b513af7ea15670bf1bc5d42d6f619d73`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:49:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:49:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:49:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:49:06 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:49:06 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:49:23 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:49:23 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:49:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:49:23 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:49:23 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f75ce6fdeeedcc05c108fcffd51c38b283419ad10fd8a1ebf21e8fe6df3e588`  
		Last Modified: Sat, 17 Oct 2026 01:49:46 GMT  
		Size: 145.8 MB (145825508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bd350accc9548dd4d0fc7c3d534954f515cfca7399e502d76963ef0176de75e`  
		Last Modified: Sat, 17 Oct 2026 01:49:45 GMT  
		Size: 68.8 MB (68786012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0112ba66e9f35381ba57a5f7473b0ff9e496c6f260e3d0103d29cbac5941c67`  
		Last Modified: Sat, 17 Oct 2026 01:49:42 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db54489e73d1e5d56dd50c8d933c95f0488aa4d51d1fff40c8f51b322761abfa`  
		Last Modified: Sat, 17 Oct 2026 01:49:42 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e8cccc17a9cbebb23bc8b6ea17af21997f01e8f1c0a0eeff26cf520bd1fd1dd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5135298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bc127bb7f3f1d51bf87362a6ed2f37317ed6f443471ab875fc528dcebb5097e`

```dockerfile
```

-	Layers:
	-	`sha256:daa5ef413b6573355b72fc30b7a3de62ccdb47a680f4a1d6a4f50dc3c44c4bf7`  
		Last Modified: Sat, 17 Oct 2026 01:49:42 GMT  
		Size: 5.1 MB (5119308 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ddf3e7a9d9cacbf0b7e03dc9cfbca0ad82bb9ca7f62a89587ca0fe974eafd38d`  
		Last Modified: Sat, 17 Oct 2026 01:49:42 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:3adac82b7f4f00b258c8cf0f9607d992b35d142ba864fa6054d1f10c2974f5e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.5 MB (241532123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f2c9871b2cf1b3c8dc81da9f05180ad9f8356b86000d91012e8c3df1d1d9d91`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:49:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:49:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:49:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:49:05 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:49:05 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:49:22 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:49:22 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:49:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:49:22 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:49:22 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e9752d66c519da0d8b9fc130d4d3b878413d562ce9b15cf49e2c9af4fbeb581`  
		Last Modified: Sat, 17 Oct 2026 01:49:44 GMT  
		Size: 144.6 MB (144648269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdd5e4a34430c5f43f2c76c2bd1e15d2c640e6c59fed81418f6b384b76683264`  
		Last Modified: Sat, 17 Oct 2026 01:49:43 GMT  
		Size: 68.7 MB (68745635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eebafcd2b9f6d44d66f6e54c14cbaf8fe4354be0c4d27ada739fe8c3cfb07d65`  
		Last Modified: Sat, 17 Oct 2026 01:49:40 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73a117e6fc18e95d2d98a6746b0c169ab1f83da8a54b74a97815954d4250c46e`  
		Last Modified: Sat, 17 Oct 2026 01:49:40 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4d062fffba8d2eca0c904f3473283660c51d552111883adf59337921dbe464ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5141176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4fc94e716965f4677547a234811816ed8670569cf7a6e87cbf9e41909d14a88`

```dockerfile
```

-	Layers:
	-	`sha256:ab1b7ad25ce8b0714c49280d480ac570542e8fe27c30eaf797d2342934dcd88b`  
		Last Modified: Sat, 17 Oct 2026 01:49:40 GMT  
		Size: 5.1 MB (5125069 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4685c38d0acfd18a9a610a8f5fdd5c117a3c951b2699ff71f56880da9190b40`  
		Last Modified: Sat, 17 Oct 2026 01:49:40 GMT  
		Size: 16.1 KB (16107 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:8e635032eeabfa1aff52b873db78e59453962b8fefbc9bbd343617b3fbb7dc4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.5 MB (252531720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d210a0b1b6e062d57a35237d56d68ccbe4ed6c9f8cc380821e9eed44a13f8e8f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 10:01:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 10:01:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 10:01:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 10:01:36 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 10:01:42 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:13:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 10:13:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 10:13:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:13:48 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:13:48 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51a3330add54adab18a22cd08383f7e4def1d22934544cb2baa835ed88e94414`  
		Last Modified: Tue, 06 Oct 2026 10:06:14 GMT  
		Size: 145.7 MB (145671490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54f1d74b47ce77a06b1894a38f704e1f974a5d32fe44ea008bbec34d59b53f44`  
		Last Modified: Tue, 06 Oct 2026 10:14:35 GMT  
		Size: 74.8 MB (74766751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca3484a74e9c12c9d30b1acc26769d07257812a29428934b88986087768c0fd5`  
		Last Modified: Tue, 06 Oct 2026 10:14:33 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c31a4ff9a728ad327c7002691e07816bbf391ce17877911929f59b35673c972d`  
		Last Modified: Tue, 06 Oct 2026 10:14:33 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:08c746e957eb15a0c9fa44fa9db0c1c82620a9210d6f48657daa69a18fd0e904
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5140502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87fc1ee0627d6d12a877a944124645e55f737651d85de77dbbda05480b1fcf23`

```dockerfile
```

-	Layers:
	-	`sha256:e15f1ad1cf8cc98425c6319276acea6f3ef3b1c30d12ea53305edc457c6c1b47`  
		Last Modified: Tue, 06 Oct 2026 10:14:33 GMT  
		Size: 5.1 MB (5124466 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d62edb3597cd347b2bdd35ff2fd0a63001436ab27732d8ea0e941e0f1aa2e30`  
		Last Modified: Tue, 06 Oct 2026 10:14:32 GMT  
		Size: 16.0 KB (16036 bytes)  
		MIME: application/vnd.in-toto+json
