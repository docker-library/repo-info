## `clojure:tools-deps-1.12.7.1681-bookworm`

```console
$ docker pull clojure@sha256:70322eeb47e2f199dedf74477f4de0179f3c65abb39f42d802f168c1f932ddb3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:tools-deps-1.12.7.1681-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:a47a83372e86d8c20647846104104eee719209b31109fcbbea2998fdb50f0dc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219128428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bde97083d9482e8a9efdc8f1d03bded56e2657ff5a803a3192ccca434e9e8b4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 19 Nov 2026 22:06:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:06:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:06:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:06:36 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:06:36 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:09:03 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:09:03 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:09:03 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:09:03 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:09:03 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e1936ee9b3f5bb6c9d79344283bf39dbe641cb99f05c6276e67ef1ceeae9430`  
		Last Modified: Thu, 19 Nov 2026 22:08:41 GMT  
		Size: 92.6 MB (92598912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf181cf6ef91a0be60aa8ec49051fc3619fdbc83ee6f9d53583d919edca49b58`  
		Last Modified: Thu, 19 Nov 2026 22:09:20 GMT  
		Size: 78.0 MB (78001485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:365b9f1e723ced2ecfcc789ffda8373e86ee587cbca3d75954ff5bebfd310bb8`  
		Last Modified: Thu, 19 Nov 2026 22:09:18 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cf7449e6975e4f076239b4f8745d030c0522e45760f9dad7b80cb22fdfc26af`  
		Last Modified: Thu, 19 Nov 2026 22:09:18 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.7.1681-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:bf5bc1de9953f83eacf0101585ceb5aff461a8d583f47971c7b2942f6ef188c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7365956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac635471d6f766178f9c9e45ec643835fc9bbc52c039e48c93008733da6ac855`

```dockerfile
```

-	Layers:
	-	`sha256:5c5b081d1b9f95353d656e4aed4d48d770d803ca1ff48d2dea4e9fe42e54b2c4`  
		Last Modified: Thu, 19 Nov 2026 22:09:18 GMT  
		Size: 7.3 MB (7348031 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad81139bded993a5272449d7dcc31cbf9a415a70e40269d7a955360a2df2c913`  
		Last Modified: Thu, 19 Nov 2026 22:09:18 GMT  
		Size: 17.9 KB (17925 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.7.1681-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:491b5b7ebc4f11514fa3a50a609089d923d188151d71f26e975aeddccf9c1e54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.9 MB (217936868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bf7e9104bc09114141c0810c41ff22007a4aa1dda4eb14f03982f046e070038`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 19 Nov 2026 22:08:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:08:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:08:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:08:21 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:08:21 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:08:35 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:08:35 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:08:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:08:35 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:08:35 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a888f0bfab74c0d60d4fee24cdba4eaa351cca3348e89379b93f0484bbed7e4`  
		Last Modified: Thu, 19 Nov 2026 22:08:57 GMT  
		Size: 91.5 MB (91525618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90c0a2e46c506ed4a5605290516573998f5c5890f78ea53d36df0ec2775f3c88`  
		Last Modified: Thu, 19 Nov 2026 22:08:57 GMT  
		Size: 78.0 MB (77997253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9acd0b29a27aee88d52281a22d84b07ebe3972e050305fb508bb30ba575b4503`  
		Last Modified: Thu, 19 Nov 2026 22:08:53 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22b626ba580ae47fb37657ae7c8824e9e867927fe0686b62a798f68e2ebcfff7`  
		Last Modified: Thu, 19 Nov 2026 22:08:54 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.7.1681-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:fda3fec546a8823da261e6fa9ebe61aa7991b2aacad01d6f0cf2b0afc6a14b34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7371978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f780587fd40e410fab43aed2b95e82b532bda3a349a1c30ea68651a068920ab1`

```dockerfile
```

-	Layers:
	-	`sha256:bb169c7f6c8b8f9f5331e4555ab2c59241dcb120f5cc0748f1daf9d820ca27a7`  
		Last Modified: Thu, 19 Nov 2026 22:08:54 GMT  
		Size: 7.4 MB (7353863 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b6ea50efa03112f9e3826b2d7e0baff9d5a96a59ca0e54290a0d32878132b70b`  
		Last Modified: Thu, 19 Nov 2026 22:08:53 GMT  
		Size: 18.1 KB (18115 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.7.1681-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:ecbc621f8b2e63f4a7bfd07e3dd0e3c4bdf70cf23e0381ad4a93b50551747029
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.3 MB (226305601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:645da5a17316017205e45782ae58d9ff8a1ac66b03a6d0cc95aad8ec18b81fbe`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 01:19:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 01:19:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 01:19:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 01:19:48 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 01:19:48 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 01:51:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 01:51:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 01:51:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 01:51:19 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 01:51:19 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17b03e25c2d33e9869f0b918e0ca2ceb62ce5112bcb1a83b1e741f898e9fb158`  
		Last Modified: Fri, 20 Nov 2026 01:24:34 GMT  
		Size: 90.1 MB (90111717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4baace37b518cf76ea9bc64a8f0ff3bbb5f3915934a9c6dbd415dd812cb26bd1`  
		Last Modified: Fri, 20 Nov 2026 01:52:07 GMT  
		Size: 83.8 MB (83823716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:706f20e98dfbd0e7866e069a9996371483a85ed5d4e6a93c410133384de45edf`  
		Last Modified: Fri, 20 Nov 2026 01:52:05 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a74123b887de687afe027c72d6aadd3b4e2af160bcedd45f39757acbb9aaa6ae`  
		Last Modified: Fri, 20 Nov 2026 01:52:05 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.7.1681-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:0b8e04950d621fff3aefdcf938933953653eee610a61abff2eade41d6f104065
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7351786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dad3af1f74d2259c54157734af8b0c621dcac5af0f4c1088475b153407276ca5`

```dockerfile
```

-	Layers:
	-	`sha256:b311473b8d46082f04f91227d4f7e28b44495fe5ca427a0ce38f54bcb7144f71`  
		Last Modified: Fri, 20 Nov 2026 01:52:05 GMT  
		Size: 7.3 MB (7334730 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:014e2b7a31b6b16ff5ac4ebce516562d07cb97437e9d01d10898f4c38494d3ff`  
		Last Modified: Fri, 20 Nov 2026 01:52:05 GMT  
		Size: 17.1 KB (17056 bytes)  
		MIME: application/vnd.in-toto+json
