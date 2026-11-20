## `clojure:temurin-21-tools-deps-1.12.7.1681-trixie-slim`

```console
$ docker pull clojure@sha256:aad662bf1198f79bfd5afa39e21f8f9f0cd3438023d2d19b64a6dc8b10f3aaf3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-1.12.7.1681-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:dd2812427c12d83973e241f21f8ee590635a80b25606ef8f5552f58d30a23388
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.3 MB (257257085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cea5b51a88cbf2b50e6180ea55921e985354ec11c6a25bf96001e3fffffee26`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 22:08:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:08:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:08:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:08:36 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:08:36 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:08:52 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:08:52 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:08:52 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:08:52 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:08:52 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69b250fade6db6528953e1f88a310cc4b7514142a6afd16ed4593bd7499b7c75`  
		Last Modified: Thu, 19 Nov 2026 22:09:14 GMT  
		Size: 158.4 MB (158409398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8b0cd861c1337ed5eff4dde896a9354e3581e083b62d70dedc0043d52d2fae2`  
		Last Modified: Thu, 19 Nov 2026 22:09:13 GMT  
		Size: 69.0 MB (68990012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b285a40977c0d53e7a1aadf1e8ad77dc1cb1d0f6e6d408e73988a9a9d0c6cf9`  
		Last Modified: Thu, 19 Nov 2026 22:09:09 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:351b6a0818f51cd4065ab1ae9d70a7c44bea96076f4b4d33b4d7bada3965cd51`  
		Last Modified: Thu, 19 Nov 2026 22:09:10 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.7.1681-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a64d7ea5f0ef0ed72ece43683c577e6aa7317eb8a944a2ab6f99a0ed509d81f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5279877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdfd40c64ee59b86a7ce9757e7f405ba4e8813c72ad7b5ed4cf9d31bbbcd11ce`

```dockerfile
```

-	Layers:
	-	`sha256:58f591c55bdb12e47f9b6c66b8b6ae2c1a911f4c455b23c50e9e68ee0ee99123`  
		Last Modified: Thu, 19 Nov 2026 22:09:10 GMT  
		Size: 5.3 MB (5263911 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5bb8c71fba8e044c966d9da3d47bdffd4148389c8ad713996c9c5cca999df14`  
		Last Modified: Thu, 19 Nov 2026 22:09:10 GMT  
		Size: 16.0 KB (15966 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.7.1681-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:76f487a8e5374fa7d3722bd9355e46f71aa5368ada1ff380fec9083bbda6983a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.7 MB (255712820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:692631e1ba2314292c76803353d4890cfd37c4d1409f84150ffb0655d6523a4f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 22:08:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:08:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:08:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:08:13 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:08:13 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:08:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:08:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:08:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:08:32 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:08:32 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcb886cca630352c5568b38d19f03c167803c39cb7ac85375fcd209c6d9a6d36`  
		Last Modified: Thu, 19 Nov 2026 22:08:57 GMT  
		Size: 156.7 MB (156691649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db024aeb47aef4d4fba4c86cc5e59a00fabe2d429186a0b1415388fdb08ca484`  
		Last Modified: Thu, 19 Nov 2026 22:08:54 GMT  
		Size: 68.8 MB (68805588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63fe77afc9218072d342b56453824b6d9e083d5f1fecc5c2d598575cd5971432`  
		Last Modified: Thu, 19 Nov 2026 22:08:51 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b841f0dd26adcc2ac36378184e48cade70c53877d2c0aa1f04fbd6d2ddbb57a`  
		Last Modified: Thu, 19 Nov 2026 22:08:51 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.7.1681-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:63d95b14e593ae0f02e7e93c943207f9c2c2fd7762f921556bf8c17be27e2928
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5285756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca100204e85e4724b23858d26606b624f5e12552acf4e8872d8ca0cd362ef6d1`

```dockerfile
```

-	Layers:
	-	`sha256:af032211b24262fc167318623f7feb9577ecb28d0d9dc1fc225f6fc365a3b386`  
		Last Modified: Thu, 19 Nov 2026 22:08:51 GMT  
		Size: 5.3 MB (5269672 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d718c94ba2a8b55dac7d412970087578fd7300851e9bbff23a8826eca5144148`  
		Last Modified: Thu, 19 Nov 2026 22:08:51 GMT  
		Size: 16.1 KB (16084 bytes)  
		MIME: application/vnd.in-toto+json
