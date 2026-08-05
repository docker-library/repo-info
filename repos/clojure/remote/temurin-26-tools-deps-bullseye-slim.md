## `clojure:temurin-26-tools-deps-bullseye-slim`

```console
$ docker pull clojure@sha256:c928ddb846c75746b77892f147f2f0298c37b0da5c2cecb7092e3d8a498a3327
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-26-tools-deps-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:33b1c1e66fb14764b64ce8689459773071d4cba0703b1d76998d1e9f863b1fb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.9 MB (180890999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afa071b68a26ba8522867ec54e864bd8de050387bbd2a74212d647fb19c3df11`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:26:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:26:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:26:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:26:23 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:26:23 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:26:36 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:26:36 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:26:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:26:36 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:26:36 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ab75afe6a0f0027cc830f1ca4a2c484e7056871a1adf91bd3a0b73c6ffb517b1`  
		Last Modified: Tue, 04 Aug 2026 23:52:04 GMT  
		Size: 30.3 MB (30259620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49d94c3ec99edbde4fb314975654d89536e2a256935197c55ce83a42dfeb59a4`  
		Last Modified: Wed, 05 Aug 2026 01:26:58 GMT  
		Size: 94.5 MB (94524353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:587bc30220abbaab976e5dc011a67e48e6ddb9c79e0096a43517342aee8aba94`  
		Last Modified: Wed, 05 Aug 2026 01:26:58 GMT  
		Size: 56.1 MB (56105986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff62a7ec1663c63cd7a67a4254eebc1bead9b37bb475ff36fa67d6cb7333de5d`  
		Last Modified: Wed, 05 Aug 2026 01:26:55 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:536b693cba29774b7b4b35ab8ffe999b81f9c756fc5338fd3c609cd2eab120c3`  
		Last Modified: Wed, 05 Aug 2026 01:26:55 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:160c7ce14587b5c999af1fdab123662689cccd01a1a0506883ab7fe21c562d57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5298722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b780a7959be252141a7341d43fb9f6d1c20944b9845d1b27dcb1e31f7ffb8818`

```dockerfile
```

-	Layers:
	-	`sha256:e370ecce2252cdb150d86e791e6370e028dadd883973c496eacf86695d293d7c`  
		Last Modified: Wed, 05 Aug 2026 01:26:55 GMT  
		Size: 5.3 MB (5282740 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78cbeca5ce1025659b383dc816fadbd556c0bb167d2074369c1d153456b9a02d`  
		Last Modified: Wed, 05 Aug 2026 01:26:55 GMT  
		Size: 16.0 KB (15982 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:bd93285ef35265b117b502bc49879fc4fbb66bd9225349cfa2c1a62d03628d5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.5 MB (178530272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:476effb4f0d2a349aeb87d44249a189c9d85e8adc5e6e9dbe95618c4d47c1c90`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:32:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:32:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:32:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:32:56 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:32:56 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:33:09 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:33:09 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:33:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:33:09 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:33:09 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:93e0ff6a69cbbe5e567bea0ae7560cdd816fd4205541e7cb6b0fd3998b169541`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 28.7 MB (28748907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:705132c53078b7a0fc9a08f02ffa812857d8c103b2fd6f9a62b7d67d7a8e3dbd`  
		Last Modified: Wed, 05 Aug 2026 01:33:31 GMT  
		Size: 93.5 MB (93504343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e61fab4d31f844bdb88fa254a10971aa07b006531d03b3b3c3fc1a3ba4ca9617`  
		Last Modified: Wed, 05 Aug 2026 01:33:30 GMT  
		Size: 56.3 MB (56275983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e317dbcf212d406e5f977293741a3370a48bcffd8e8513bb8c49b834cac6329`  
		Last Modified: Wed, 05 Aug 2026 01:33:28 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dee75adedd91f70ebe46e3c0e2ed783f71dd9684ddf359a17929d58ed28e485`  
		Last Modified: Wed, 05 Aug 2026 01:33:28 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:85332886ee4173d74eaa3ebed14f37a45a7475326f02b6f8fbe7e545d2476bc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5304570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a919edbd4206653b7d328141861ba39f2b14903a7912c7a69c4603d8b83be81`

```dockerfile
```

-	Layers:
	-	`sha256:3414e047ca63a08f2e6e61e486774421218a5a3bcc11a38ee33578c9e3ae7e4d`  
		Last Modified: Wed, 05 Aug 2026 01:33:28 GMT  
		Size: 5.3 MB (5288469 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a36dcb12467a9194b400ee3ead14ad5fc214c56fa82ac87a9657a6402f37768`  
		Last Modified: Wed, 05 Aug 2026 01:33:28 GMT  
		Size: 16.1 KB (16101 bytes)  
		MIME: application/vnd.in-toto+json
