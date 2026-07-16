## `clojure:temurin-21-lein-bullseye`

```console
$ docker pull clojure@sha256:ab6badfab2c4266b5a384223e775a7759ba556a0269e8f406c1f8164be66e9a1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-lein-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:08a0b20961209ad89f393206e5b5e4cd2f1c13dcf0f3bd5f69e5d2b674ecef60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.4 MB (233388270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48f13a8badcd7f61d6b6205546d7f1f7c9df53d9058082ec5108ef0c59c134fc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Thu, 16 Jul 2026 01:33:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:33:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:33:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:33:28 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:33:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:33:28 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:34:37 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:34:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:34:37 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:34:39 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:34:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:34:39 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:34:39 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bce17d2fb4c920c181efd2cfcd9f2e7b2708fc151f3c536c7949501d8c1334bb`  
		Last Modified: Thu, 16 Jul 2026 01:35:00 GMT  
		Size: 158.2 MB (158166965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c326cbd19d0fb6892a9464037d1081c3edd837d80178a6a88b734ef366822e80`  
		Last Modified: Thu, 16 Jul 2026 01:34:57 GMT  
		Size: 16.9 MB (16929083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ccbab64dd7e8d6304bf7401ef94e9c413d855009de8ebd138266c8e945fd3c9`  
		Last Modified: Thu, 16 Jul 2026 01:34:57 GMT  
		Size: 4.5 MB (4515217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9465902584ccef7ab5b1683a9f62db55e8b34ce1e1a36474e8d88c4c46d8127f`  
		Last Modified: Thu, 16 Jul 2026 01:34:57 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:3e3c1cd0ec5023bed227cdeba620a39e108208878b5a2948223721d9f1e7ae4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4520617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a27805c245f1282ac10b8261daac9901d71e0ecef31db308e304a14b40d0e537`

```dockerfile
```

-	Layers:
	-	`sha256:61a3291de6055e76fdc51995656fbd704f662b0d6791d8125a0f5e1f63e59634`  
		Last Modified: Thu, 16 Jul 2026 01:34:57 GMT  
		Size: 4.5 MB (4502879 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a9e85ae6eb7a9461c588819379fadf4e36d3e2f71a7813b6427acea0fd04b1a`  
		Last Modified: Thu, 16 Jul 2026 01:34:56 GMT  
		Size: 17.7 KB (17738 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ebdfcd0613e7ecf8246e36d5cb79018da7e82b119877b26b9cef3654724d1b2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.2 MB (230165823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18595eabd0f330b03f73cb358644847be7a542f860ee07bde84abb21e3450b8a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Thu, 16 Jul 2026 01:28:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:28:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:28:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:28:22 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:28:22 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:28:22 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:29:32 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:29:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:29:32 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:29:33 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:29:33 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:29:33 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:29:33 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a2cdfedfddd04a61c97a991dcc8e4b3b4edf44daf58fb0ad8eb931e2ca114cd`  
		Last Modified: Thu, 16 Jul 2026 01:29:55 GMT  
		Size: 156.5 MB (156461259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a46d8e9dea55b160d939e408e45dbac7fbeab92595fb0539c26ed79b28ea0540`  
		Last Modified: Thu, 16 Jul 2026 01:29:52 GMT  
		Size: 16.9 MB (16928057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2464c1669eea4b71bfd785584e996e11076252f8119b54eb75ca0399e655bfad`  
		Last Modified: Thu, 16 Jul 2026 01:29:52 GMT  
		Size: 4.5 MB (4515187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:274ec894c8e80c5feb05cd2a5c9ced65e546c2aebf24df6eddfb1d76e263127a`  
		Last Modified: Thu, 16 Jul 2026 01:29:51 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:e20c2be4d880f3b26cabdca52b299d3a8aa50ded013765a18ee3d7f6765eb3ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4519711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caef6e960a4ba36ad837665c26f9ac943e7224effe7cdd71b06af5ab889c64a3`

```dockerfile
```

-	Layers:
	-	`sha256:e5f5d904de7335d2ffe3cb48a31368425a81405dc9709f8e09e8df6e645a721e`  
		Last Modified: Thu, 16 Jul 2026 01:29:51 GMT  
		Size: 4.5 MB (4501853 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b71fb70ff703af25232817de1c095db6957bccac3fb4fd446c80aab54e94cee`  
		Last Modified: Thu, 16 Jul 2026 01:29:51 GMT  
		Size: 17.9 KB (17858 bytes)  
		MIME: application/vnd.in-toto+json
