## `clojure:temurin-11-lein-trixie-slim`

```console
$ docker pull clojure@sha256:8e5ff6b2c2bc4820511ae45d0cf45bd28bc9cd5a09aa77fa019594d12165930f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-11-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:d595bec99f552afd2e59e1d4138573e197cd91df6b5d58b0a85474eb85d0a272
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196925897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bdd36172cded121cf502841074c950d53a3a060379168825458f33075ffa729`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:30:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:30:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:30:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:30:17 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:30:17 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:30:17 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:31:33 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:31:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:31:33 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:31:35 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:31:35 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cdb4633a6a8a5d8d950fc6eef50903840bba2a34104d86d157b9ea42b35a348`  
		Last Modified: Thu, 16 Jul 2026 01:31:54 GMT  
		Size: 145.9 MB (145886149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c438e68ee0eb5261e5c06d38860b25a4d8f4cb8ffc800ab8b1292b3ee6c342b`  
		Last Modified: Thu, 16 Jul 2026 01:31:51 GMT  
		Size: 16.7 MB (16743597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aff292d7650094b48c7fec9c434a67551dcd782c62bf09c5cf8d8e5ab776f34`  
		Last Modified: Thu, 16 Jul 2026 01:31:51 GMT  
		Size: 4.5 MB (4515214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b7a76757a359def8e76126ed70036f6d7c1d329976426f4a95e66aac3d1a9503
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2402397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:547f44608c5fb9a371c028a39babe819cdd285fbffeed0f49a6362f53048f046`

```dockerfile
```

-	Layers:
	-	`sha256:f02560433c90f3c4f2a8eed4282e0ecc1c28d66cbf86fffc3f2858d47d3a91aa`  
		Last Modified: Thu, 16 Jul 2026 01:31:50 GMT  
		Size: 2.4 MB (2386633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a099c93014478a59fd1a01f072caf1978db946a93e5864e9035657bcc9f11bc`  
		Last Modified: Thu, 16 Jul 2026 01:31:50 GMT  
		Size: 15.8 KB (15764 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:67364bc79eadb20459f024dbf5ea0c7b75078edba1d01898857928226b0875f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.0 MB (193962598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2153545939100f568d02105d6b68a558747cf95cf467ed87e581fd0e002ddc2`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:22:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:22:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:22:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:22:17 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:22:17 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:22:17 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:23:35 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:23:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:23:35 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:23:37 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:23:37 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2282393049219364b0461c7d2c32727cd96ce57d81be667f81fa77e724e3041`  
		Last Modified: Thu, 16 Jul 2026 01:23:56 GMT  
		Size: 142.6 MB (142582185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:317433667b8c5b3d140f8b8e08efec2fee17ced4f3325c7096af8451119b438d`  
		Last Modified: Thu, 16 Jul 2026 01:23:53 GMT  
		Size: 16.7 MB (16721460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74dc68ca561f27e47e61cad752abf8692bc5422bdbfe1b239ddacc4ebc6c8629`  
		Last Modified: Thu, 16 Jul 2026 01:23:53 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:cd449990eca253214f5589975b2d3f976798c9035237c9d7b7e7547713117a78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2402746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f67b605ed7b296d0e49046c5da7730dc1f457959d7a622cc5d77d4773aac9909`

```dockerfile
```

-	Layers:
	-	`sha256:8eba14aaf96078be8520a95fa302103e01f0bc402ea242f852f7987acfa25781`  
		Last Modified: Thu, 16 Jul 2026 01:23:52 GMT  
		Size: 2.4 MB (2386861 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:25c2ffbc43d58c01bcba337a37a0fc0675f3c1c06783fb6403f035ebc8aa66fc`  
		Last Modified: Thu, 16 Jul 2026 01:23:52 GMT  
		Size: 15.9 KB (15885 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:acb57320434821e838426250d4ea31d93ae797b62e5a6c8cc0201cac1d5bed70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (188009041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d189aae633285079e554c2a043275a26058bf17157de371bc0c70103a6a586f8`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 02:30:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 02:30:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 02:30:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:30:46 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 02:30:46 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 02:30:46 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 02:33:39 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 02:33:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 02:33:39 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 02:33:42 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 02:33:42 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cda8dcee80cacabbfe25ee9d301ec3b6b3ad5e3f005457a77b06ce75248ffb60`  
		Last Modified: Thu, 16 Jul 2026 02:34:20 GMT  
		Size: 133.1 MB (133109949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17dae1c1c0e93cfdd345b345d8203cf1d7604517c611e08316b47dd0577cde6`  
		Last Modified: Thu, 16 Jul 2026 02:34:17 GMT  
		Size: 16.8 MB (16782347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d01b42d66f440a9b8f778e1bbf5fe32bacfc3682db86fa06731ec378fabb0eb1`  
		Last Modified: Thu, 16 Jul 2026 02:34:16 GMT  
		Size: 4.5 MB (4515235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f123867d56c01e26cfde6d82d49e231e6e9f4eb5f27b4e9e8a1c8c73d705c792
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2402806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ba4b65cf25f4d6f11f1ae6b59916b4444b5018858874dae7c6adb89e941fc61`

```dockerfile
```

-	Layers:
	-	`sha256:8dadba9a5d43a53a23b28fb5d341d1cda21ab7c035ba60ec883f712ea0c114f9`  
		Last Modified: Thu, 16 Jul 2026 02:34:16 GMT  
		Size: 2.4 MB (2386998 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:59dc976d8443e0b6ec4d8adee8bbda953dffec0b1bb2ed8e397bf16a81902754`  
		Last Modified: Thu, 16 Jul 2026 02:34:16 GMT  
		Size: 15.8 KB (15808 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:1585f20cfdc8ac644443eb7587955df6199af80eb209deb77677152b8f022303
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.8 MB (177793659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d32d8f1b0c320d4b4f20d4bee1de94de09b16788055aefd53a6cdcb9c53d833`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:43:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:43:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:43:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:43:32 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:43:32 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:43:32 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:44:55 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:44:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:44:55 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:44:57 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:44:57 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1980e5c4acf8730a0184045da9a5a9232b90f1ac25a49b0a8a2b4bb8e4760d29`  
		Last Modified: Thu, 16 Jul 2026 01:45:21 GMT  
		Size: 126.7 MB (126651679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcfc3c2c8b16b033b9b5e607053a8f05a648bd83fd28873e44a8d7f952ee1924`  
		Last Modified: Thu, 16 Jul 2026 01:45:18 GMT  
		Size: 16.8 MB (16780092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86fec5626d2010a5f885b39dde63b2c11fdaa7a25f68705e5715a75ede50bd9c`  
		Last Modified: Thu, 16 Jul 2026 01:45:18 GMT  
		Size: 4.5 MB (4515224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:698bdb2372183915f5878dc6c8c64b2299bd6dd7d0ea88489f1c9fd734632ded
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2398828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:196180f1521d47fa4c82994e711562d9fb3a2d135253fca8d3192d452ba03b94`

```dockerfile
```

-	Layers:
	-	`sha256:98303951e71dc083ae9fa93b04dd20624907a52a7794a40e36288bc2bdba9a5f`  
		Last Modified: Thu, 16 Jul 2026 01:45:18 GMT  
		Size: 2.4 MB (2383064 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff74cf59e1492b96cfb2505e227fdf82dd1589dffe0ffee4c09656a7ac405ed5`  
		Last Modified: Thu, 16 Jul 2026 01:45:18 GMT  
		Size: 15.8 KB (15764 bytes)  
		MIME: application/vnd.in-toto+json
