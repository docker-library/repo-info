## `clojure:temurin-17-tools-deps-1.12.7.1681-trixie-slim`

```console
$ docker pull clojure@sha256:6ad9a9cb2e36ac03a3d21385c5f5e7290d1be9347bb8439f72ed759ab7c5840f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.7.1681-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:3022044b09b69617a0333f14266f4aabb8f10ed883960f2d6cca48b482718102
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.9 MB (244933866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89beee27c5977668720b23ec235dfcbb09e1160328aaa93f1bd4db5415a4eb2d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 22:08:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:08:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:08:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:08:04 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:08:05 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:08:22 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:08:22 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:08:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:08:22 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:08:22 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e8d0ae433fd3eef28ef11f6e441713edd4e90d2fb9c0c1b94a067d0957bc4f0`  
		Last Modified: Thu, 19 Nov 2026 22:08:44 GMT  
		Size: 146.1 MB (146086199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a99d7da6ada7801c559a0b53175c58ebbaab449873f470f3cd135fa532836ee2`  
		Last Modified: Thu, 19 Nov 2026 22:08:43 GMT  
		Size: 69.0 MB (68989986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46ae30a9ae790c8cc8084a78a182b5e6d25885a957ced02bec60720efface04b`  
		Last Modified: Thu, 19 Nov 2026 22:08:40 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dba14802ffa634d3a2f6f0245474b63a8aad581c3f22d9ac3f054ed5d8debc01`  
		Last Modified: Thu, 19 Nov 2026 22:08:40 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.7.1681-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:731bc1e74b2e212ff5615af01310357de4622705670abfc8b5ad419dba892214
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5278024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0176621bb5c094c5a97e9b0535ec8af2eeda9bdf119b9a4e39ce79bda7888cc`

```dockerfile
```

-	Layers:
	-	`sha256:e2b57eb2a911221ce491852bbef8db69d50fe0a652ae3b31349e34a09881b6dd`  
		Last Modified: Thu, 19 Nov 2026 22:08:40 GMT  
		Size: 5.3 MB (5262059 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6883f4ee09a772235982810884499ae63720d2ca111f82bfa9567a9c8b8851bb`  
		Last Modified: Thu, 19 Nov 2026 22:08:40 GMT  
		Size: 16.0 KB (15965 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.7.1681-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e45702ccb6f875ee8014efdd3df8143f02b4b44b322687bfeb83ab119e36b4c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.0 MB (243978507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3351fe9f797923098beb1a361f0a46e7c32113287e70def40bb2c63d65ad5dd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 22:07:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:07:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:07:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:07:19 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:07:19 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:07:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:07:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:07:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:07:37 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:07:37 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70f9da5ec857a5644fbec76ae0ecee81aa75fcc9e586318174976d3fb5a71d02`  
		Last Modified: Thu, 19 Nov 2026 22:07:59 GMT  
		Size: 145.0 MB (144957162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30a47cfea35d0fc5087a458f0548ef30239ae52026f2b487e6566a84b453de22`  
		Last Modified: Thu, 19 Nov 2026 22:07:57 GMT  
		Size: 68.8 MB (68805762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f192b5ff41db13b4a7771e2ab0f64bc1d70f66c27ad9aec10bea0134c816092f`  
		Last Modified: Thu, 19 Nov 2026 22:07:55 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:926cf2542a88a1ac99c8f47bd89e3b0d57b3f5a8aac2c7767c3031a5292d090b`  
		Last Modified: Thu, 19 Nov 2026 22:07:55 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.7.1681-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:85662273d4af8e1f880e6ef36bc712fac8a4baae6de0bd7ccd376243ddc3a715
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5283904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e819742c38e983b45f19ba1dbc756875c29ce2538133eca0f0e9c840dd4655b`

```dockerfile
```

-	Layers:
	-	`sha256:4b016da2b7a410905cba594452adfdcbbdc3ca1175300a4cbb34f6aabd7b3626`  
		Last Modified: Thu, 19 Nov 2026 22:07:55 GMT  
		Size: 5.3 MB (5267820 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7aff75bf035e8019d8ba17cb15ba3ad9ab83db989e8da8cbf1ac4f16ba52406`  
		Last Modified: Thu, 19 Nov 2026 22:07:55 GMT  
		Size: 16.1 KB (16084 bytes)  
		MIME: application/vnd.in-toto+json
